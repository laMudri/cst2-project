{-# OPTIONS --allow-unsolved-metas #-}

open import Semiring as K
open import Semiring.Definitions using (Decidable)
open import Queue as Q
open import Graph as G
import Graph.Definitions as GD
open import Data.Fin using (Fin; zero; suc)
open import Data.Nat as ℕ
  using ( ℕ; zero; suc; _≤_; z≤n; s≤s; _≤′_; ≤′-refl; ≤′-step
        ; module ≤-Reasoning
        )

module Algorithm.Theorem1
       {c n ℓ ℓ′} (K : Semiring c ℓ) (De : Decidable K)
       (Q : QueueDiscipline (Fin n) ℓ′) (G : Graph K n) (s : Fin n)
       {k : ℕ} (closed : let open GD {K = K} G in k ClosedOnG) where
  open import Algorithm K De Q G s
  --open import Algorithm.Properties K De Q G s
  open Semiring K renaming (Carrier to C)
  open import Semiring.Definitions K
  open import Semiring.Properties K
  open import Sum K hiding (tabulate)
  open QueueDiscipline Q
  open import Queue.Properties Q
  open import Graph.Definitions {K = K} G
  open import Graph.Properties {K = K} G
  open import Graph.Cycle {K = K} G s

  --open import Algorithm.Lemma5 K De Q G s
  --open import Algorithm.Lemma9 K De Q G s closed

  open import Computation
  open import Computation.Properties _↝S_
  open import Computation.Properties.Decidable {R = _↝S_} {!!} initial-state-with-sets

  open import Data.Bool using (Bool; false; true; if_then_else_; not; _∧_)
  open import Data.Empty using (⊥; ⊥-elim)
  open import Data.Fin.Properties as FP using () renaming (_≟_ to _F≟_)
  open import Data.List as List using (List; []; _∷_; filter)
  open import Data.Nat.Properties as ℕP using (≤″⇒≤)
  open import Data.Nat.Properties.Simple as ℕS using (+-suc)
  open import Data.Product using (∃; _×_; _,_; proj₁; proj₂)
  open import Star using (Star; Starˡ; ε; _◅_; length; states)
  open import Star.Properties using (Star→Starˡ; Star↔Starˡ; length≡)
  open import Vec as V using (Vec; []; _∷_; lookup; sum; tabulate; tail; toList; allFin)

  open import Function using (_∘_; _∘′_)
  open import Function.Equality using (_⟨$⟩_)
  open import Function.Inverse using (Inverse)
  open import Function.Surjection using (Surjection; _↠_)

  open import Relation.Binary.PropositionalEquality as PEq
    using (_≡_; _≢_; inspect; [_]; Reveal_·_is_; module ≡-Reasoning)
  open import Relation.Nullary using (¬_; Dec; yes; no)

  -- The number of times each vertex q is enqueued is less than card (P k q).
  -- There is a surjection from P k q to Fin (I q).
  insertions-finite :
    ∀ {i} → Reachable-with-sets i →
    let open Alg-state-abbrev (proj₁ i) in
    let open Helper-sets (proj₂ i) in
    ∀ q → Surjection (P k q) (PEq.setoid (Fin (I q)))
  insertions-finite = {!!}

  sum-0 : ∀ n → ∣_∣ {n = n} (λ _ → 0) ≡ 0
  sum-0 zero = PEq.refl
  sum-0 (suc n) = sum-0 n

  x+[y+z]=y+[x+z] : ∀ x y z → x ℕ.+ (y ℕ.+ z) ≡ y ℕ.+ (x ℕ.+ z)
  x+[y+z]=y+[x+z] x y z = begin
    x ℕ.+ (y ℕ.+ z)  ≡⟨ PEq.sym (ℕS.+-assoc x y z) ⟩
    (x ℕ.+ y) ℕ.+ z  ≡⟨ PEq.cong (ℕ._+ z) (ℕS.+-comm x y) ⟩
    (y ℕ.+ x) ℕ.+ z  ≡⟨ ℕS.+-assoc y x z ⟩
    y ℕ.+ (x ℕ.+ z)  ∎
    where open ≡-Reasoning

  extractions-≤ :
    ∀ {i} → Reachable-with-sets i →
    let open Alg-state-abbrev (proj₁ i) in
    let open Helper-sets (proj₂ i) in
    ∣ E ∣ ≤ ∣ List.length ∘ all-P k ∣
  extractions-≤ {_ , helper-sets _ _ _ _ E} ε =
    PEq.subst (_≤ ∣ List.length ∘ all-P k ∣) (PEq.sym (sum-0 n)) z≤n
  extractions-≤ (r@(hi , PEq.refl) ◅ rs) = {!!}
    where open Internals-ij-from-↝ r

  appAtV : ∀ {a n} {A : Set a} (i : Fin n) → (A → A) → (Vec A n → Vec A n)
  appAtV zero f (x ∷ xs) = f x ∷ xs
  appAtV (suc i) f (x ∷ xs) = x ∷ appAtV i f xs

  appAtV-sum-suc : ∀ {n} i (xs : Vec ℕ n) → sum (appAtV i suc xs) ≡ suc (sum xs)
  appAtV-sum-suc zero (x ∷ xs) = PEq.refl
  appAtV-sum-suc (suc i) (x ∷ xs) = begin
    x ℕ.+ sum (appAtV i suc xs)  ≡⟨ PEq.cong (x ℕ.+_) (appAtV-sum-suc i xs) ⟩
    x ℕ.+ suc (sum xs)           ≡⟨ +-suc x (sum xs) ⟩
    suc (x ℕ.+ sum xs)           ∎
    where open ≡-Reasoning

  appAt-diagonal :
    ∀ {a n} {A : Fin n → Set a} i (f : A i → A i) (g : ∀ j → A j) →
    appAt i f g i ≡ f (g i)
  appAt-diagonal i f g with i F≟ i
  appAt-diagonal i f g | yes PEq.refl = PEq.refl
  appAt-diagonal i f g | no ¬p = ⊥-elim (¬p PEq.refl)

  appAt-non-diagonal :
    ∀ {a n} {A : Fin n → Set a} i (f : A i → A i) (g : ∀ j → A j) j →
    i ≢ j → appAt i f g j ≡ g j
  appAt-non-diagonal i f g j neq with i F≟ j
  appAt-non-diagonal i f g j neq | yes p = ⊥-elim (neq p)
  appAt-non-diagonal i f g j neq | no ¬p = PEq.refl

  appAt-∘-suc : ∀ {a n} {A : Set a} i (f : A → A) (g : Fin (suc n) → A) →
                ∀ j → appAt (suc i) f g (suc j) ≡ appAt i f (g ∘ suc) j
  appAt-∘-suc i f g j with suc i F≟ suc j
  appAt-∘-suc i f g .i | yes PEq.refl =
    PEq.sym (appAt-diagonal i f (g ∘ suc))
  appAt-∘-suc i f g j | no ¬p =
    PEq.sym (appAt-non-diagonal i f (g ∘ suc) j (¬p ∘ PEq.cong suc))

  tabulate-cong : ∀ {a n} {A : Set a} {f g : Fin n → A} →
                  (∀ i → f i ≡ g i) → tabulate f ≡ tabulate g
  tabulate-cong {n = zero} {f = f} {g} eq = PEq.refl
  tabulate-cong {n = suc n} {f = f} {g} eq =
    PEq.cong₂ _∷_ (eq Fin.zero) (tabulate-cong {n = n} (eq ∘ suc))

  appAtV-appAt : ∀ {a n} {A : Set a} i (f : A → A) (g : Fin n → A) →
                 appAtV i f (tabulate g) ≡ tabulate (appAt i f g)
  appAtV-appAt zero f g = PEq.refl
  appAtV-appAt (suc i) f g = PEq.cong (g Fin.zero ∷_) (begin
    appAtV i f (tabulate (g ∘ suc))
      ≡⟨ appAtV-appAt i f (g ∘ suc) ⟩
    tabulate (appAt i f (g ∘ suc))
      ≡⟨ PEq.sym (tabulate-cong (appAt-∘-suc i f g)) ⟩
    tabulate (appAt (suc i) f g ∘ suc)
      ∎)
    where open ≡-Reasoning

  appAt-sum-suc : ∀ {n} i (f : Fin n → ℕ) →
                  ∣ appAt i suc f ∣ ≡ suc ∣ f ∣
  appAt-sum-suc i f = begin
    ∣ appAt i suc f ∣
      ≡⟨ PEq.cong sum (PEq.sym (appAtV-appAt i suc f)) ⟩
    sum (appAtV i suc (tabulate f))
      ≡⟨ appAtV-sum-suc i (tabulate f) ⟩
    suc ∣ f ∣
      ∎
    where open ≡-Reasoning

  extractions-suc :
    ∀ {i j} (r : j ↝S i) → let open Internals-ij-from-↝ r in
    ∣ Eᵢ ∣ ≡ suc ∣ Eⱼ ∣
  extractions-suc r@(hi , PEq.refl) = appAt-sum-suc dequeued Eⱼ
    where open Internals-ij-from-↝ r

  count-S : ∀ {i j} (r : j ↝S i) → let open Internals-ij-from-↝ r in
            suc (count Sᵢ) ≡ enqueued-# ℕ.+ count Sⱼ
  count-S r@(hi , PEq.refl) = begin
    suc (count Sᵢ)
      ≡⟨ PEq.cong suc (enqueue-+ enqueued-vertices _) ⟩
    suc (enqueued-# ℕ.+ count S₁)
      ≡⟨ PEq.sym (+-suc enqueued-# _) ⟩
    enqueued-# ℕ.+ suc (count S₁)
      ≡⟨ PEq.cong (enqueued-# ℕ.+_) (dequeue-pred Sⱼ hi) ⟩
    enqueued-# ℕ.+ count Sⱼ
      ∎
    where
    open Internals-ij-from-↝ r
    open ≡-Reasoning

  appWhenV : ∀ {a n} {A : Set a} (p : Fin n → Bool) →
             (A → A) → (Vec A n → Vec A n)
  appWhenV p f [] = []
  appWhenV p f (x ∷ xs) with p Fin.zero
  appWhenV p f (x ∷ xs) | false = x ∷ appWhenV (p ∘ suc) f xs
  appWhenV p f (x ∷ xs) | true = f x ∷ appWhenV (p ∘ suc) f xs

  appWhenV-sum-suc :
    ∀ {n} p (xs : Vec ℕ n) →
    sum (appWhenV p suc xs) ≡ List.length (filter p (toList (allFin n))) ℕ.+ sum xs
  appWhenV-sum-suc p [] = PEq.refl
  appWhenV-sum-suc {suc n} p (x ∷ xs) with p Fin.zero
  appWhenV-sum-suc {suc n} p (x ∷ xs) | false = {-begin
    x ℕ.+ sum (appWhenV (p ∘ suc) suc xs)
      ≡⟨ PEq.cong (x ℕ.+_) (appWhenV-sum-suc (p ∘ suc) xs) ⟩
    x ℕ.+ (List.length (filter (p ∘ suc) (toList (allFin n))) ℕ.+ sum xs)
      ≡⟨ x+[y+z]=y+[x+z] x (List.length (filter (p ∘ suc) (toList (allFin n)))) (sum xs) ⟩
    _ ℕ.+ (x ℕ.+ sum xs)
      ∎-}
    --PEq.trans (PEq.cong (x ℕ.+_) (appWhenV-sum-suc (p ∘ suc) xs))
    --          (x+[y+z]=y+[x+z] x (List.length (filter (p ∘ suc) (toList (allFin n)))) (sum xs))
    --where open ≡-Reasoning
    {!!}
  appWhenV-sum-suc {suc n} p (x ∷ xs) | true = PEq.cong suc {!appWhenV-sum-suc (p ∘ suc) xs!}

  appWhen-∘-suc : ∀ {a n} {A : Set a} p f (g : Fin (suc n) → A) i →
                  appWhen (p ∘ suc) f (g ∘ suc) i ≡ appWhen p f g (suc i)
  appWhen-∘-suc p f g i with p (suc i)
  appWhen-∘-suc p f g i | false = PEq.refl
  appWhen-∘-suc p f g i | true = PEq.refl

  appWhenV-appWhen : ∀ {a n} {A : Set a} p (f : A → A) (g : Fin n → A) →
                     appWhenV p f (tabulate g) ≡ tabulate (appWhen p f g)
  appWhenV-appWhen {n = ℕ.zero} p f g = PEq.refl
  appWhenV-appWhen {n = suc n} p f g with p Fin.zero
  appWhenV-appWhen {_} {suc n} p f g | false =
    PEq.cong (g Fin.zero ∷_) (PEq.trans (appWhenV-appWhen (p ∘ suc) f (g ∘ suc))
                                        (tabulate-cong (appWhen-∘-suc p f g)))
  appWhenV-appWhen {_} {suc n} p f g | true =
    PEq.cong (f (g (Fin.zero)) ∷_) (PEq.trans (appWhenV-appWhen (p ∘ suc) f (g ∘ suc))
                                              (tabulate-cong (appWhen-∘-suc p f g)))

  appWhen-sum-suc :
    ∀ {n} p (f : Fin n → ℕ) →
    ∣ appWhen p suc f ∣ ≡ List.length (filter p (toList (allFin n))) ℕ.+ ∣ f ∣
  appWhen-sum-suc {n} p f = begin
    ∣ appWhen p suc f ∣
      ≡⟨ PEq.cong sum (PEq.sym (appWhenV-appWhen p suc f)) ⟩
    sum (appWhenV p suc (tabulate f))
      ≡⟨ appWhenV-sum-suc p (tabulate f) ⟩
    List.length (filter p (toList (allFin n))) ℕ.+ ∣ f ∣
      ∎
    where open ≡-Reasoning

  ∣I∣ : ∀ {i j} (r : j ↝S i) → let open Internals-ij-from-↝ r in
        ∣ Iᵢ ∣ ≡ enqueued-# ℕ.+ ∣ Iⱼ ∣
  ∣I∣ r@(hi , PEq.refl) = begin
    ∣ Iᵢ ∣  ≡⟨ {!enqueued-#!} ⟩
    enqueued-# ℕ.+ ∣ Iⱼ ∣  ∎
    where
    open Internals-ij-from-↝ r
    open ≡-Reasoning

  1+I=E+S : ∀ {i} (rs : Reachable-with-sets i) →
            let open Alg-state-abbrev (proj₁ i) in
            let open Helper-sets (proj₂ i) in
            suc ∣ I ∣ ≡ ∣ E ∣ ℕ.+ count S
  1+I=E+S {i , is} ε = begin
    suc ∣ I ∣          ≡⟨ PEq.cong suc (sum-0 n) ⟩
    suc 0              ≡⟨ PEq.cong suc (PEq.sym empty-zero) ⟩
    suc (count empty)  ≡⟨ PEq.sym (enqueue-suc _ empty) ⟩
    count S            ≡⟨⟩
    0 ℕ.+ count S      ≡⟨ PEq.cong (ℕ._+ count S) (PEq.sym (sum-0 n)) ⟩
    ∣ E ∣ ℕ.+ count S  ∎
    where
    open ≡-Reasoning
    open Alg-state-abbrev i
    open Helper-sets is
  1+I=E+S (r@(hi , PEq.refl) ◅ rs) = begin
    suc ∣ Iᵢ ∣  ≡⟨ PEq.cong suc (∣I∣ r) ⟩
    suc (enqueued-# ℕ.+ ∣ Iⱼ ∣)
      ≡⟨ PEq.sym (+-suc enqueued-# (∣ Iⱼ ∣)) ⟩
    enqueued-# ℕ.+ suc ∣ Iⱼ ∣
      ≡⟨ PEq.cong (enqueued-# ℕ.+_) (1+I=E+S rs) ⟩
    enqueued-# ℕ.+ (∣ Eⱼ ∣ ℕ.+ count Sⱼ)
      ≡⟨ x+[y+z]=y+[x+z] enqueued-# (∣ Eⱼ ∣) (count Sⱼ) ⟩
    ∣ Eⱼ ∣ ℕ.+ (enqueued-# ℕ.+ count Sⱼ)
      ≡⟨ PEq.cong (∣ Eⱼ ∣ ℕ.+_) (PEq.sym (count-S r)) ⟩
    ∣ Eⱼ ∣ ℕ.+ suc (count Sᵢ)
      ≡⟨ +-suc (∣ Eⱼ ∣) (count Sᵢ) ⟩
    suc ∣ Eⱼ ∣ ℕ.+ count Sᵢ
      ≡⟨ PEq.cong (ℕ._+ count Sᵢ) (PEq.sym (extractions-suc r)) ⟩
    ∣ Eᵢ ∣ ℕ.+ count Sᵢ
      ∎
    where
    open Internals-ij-from-↝ r
    open ≡-Reasoning

  E≤I : ∀ {i} → Reachable-with-sets i →
        let open Helper-sets (proj₂ i) in
        ∀ q → E q ≤ I q
  E≤I ε q = z≤n
  E≤I (r@(hi , PEq.refl) ◅ rs) q = {!Eᵢ!}
    where open Internals-ij-from-↝ r

  ∣E∣≤1+∣I∣ : ∀ {i} → Reachable-with-sets i →
              let open Helper-sets (proj₂ i) in
              ∣ E ∣ ≤ suc ∣ I ∣
  ∣E∣≤1+∣I∣ rs = ≤″⇒≤ (ℕ.less-than-or-equal (PEq.sym (1+I=E+S rs)))

  ∣E∣-time : ∀ {i} (rs : Reachable-with-sets i) →
             let open Helper-sets (proj₂ i) in
             ∣ E ∣ ≡ length rs
  ∣E∣-time ε = sum-0 n
  ∣E∣-time (r@(hi , PEq.refl) ◅ rs) = begin
    ∣ Eᵢ ∣           ≡⟨ extractions-suc r ⟩
    suc ∣ Eⱼ ∣       ≡⟨ PEq.cong suc (∣E∣-time rs) ⟩
    suc (length rs)  ∎
    where
    open Internals-ij-from-↝ r
    open ≡-Reasoning

  terminates-from-∣E∣ :
    ∀ {j} → Reachable-with-sets j →
    let open Alg-state-abbrev (proj₁ j) in
    let open Helper-sets (proj₂ j) in
    ∀ Emax {i} → Starˡ _↝S_ j i → ∣ Helper-sets.E (proj₂ i) ∣ ≤′ Emax →
    Terminates (gsssd-loop-computation-with-sets i)
  terminates-from-∣E∣ rs Emax ss bound = {!!}

  terminates-from′ :
    ∀ {i} → Reachable-with-sets i →
    let open Alg-state-abbrev (proj₁ i) in
    let open Helper-sets (proj₂ i) in
    (∀ q → L q ≤′ List.length (all-P k q)) →
    Terminates (gsssd-loop-computation-with-sets i)
  terminates-from′ {i} rs bound = {!!}

  terminates-from :
    ∀ {i} → Reachable-with-sets i →
    Terminates (gsssd-loop-computation-with-sets i)
  terminates-from {alg-state d r S , _} rs with count S | inspect count S
  terminates-from {alg-state d r S , _} rs | ℕ.zero | [ eq ] =
    now (λ { _ (hi , _) → zero-not-suc (PEq.subst Is-suc eq hi) })
  terminates-from {alg-state d r S , helper-sets D R L I E} rs | suc z | [ eq ] = {!!}

  terminates-∣E∣ :
    ∀ Emax {i} → Reachable-with-sets i →
    let open Alg-state-abbrev (proj₁ i) in
    let open Helper-sets (proj₂ i) in
    ∣ E ∣ ≤′ Emax → Terminates (gsssd-loop-computation-with-sets i)
  terminates-∣E∣ .(∣ E ∣) {alg-state d r S , helper-sets D R L I E} rs ≤′-refl = {!!}
  terminates-∣E∣ .(suc _) {alg-state d r S , helper-sets D R L I E} rs (≤′-step bound) with count S | inspect count S
  terminates-∣E∣ .(suc _) {alg-state d r S , helper-sets D R L I E} rs (≤′-step bound) | ℕ.zero | [ eq ] = now (λ { j (hi , _) → zero-not-suc (PEq.subst Is-suc eq hi) })
  terminates-∣E∣ .(suc _) {alg-state d r S , helper-sets D R L I E} rs (≤′-step bound) | suc z | [ eq ] = {!later ? ?!}

  terminates : Terminates gsssd-computation-with-sets
  terminates = terminates-from ε

  max-steps : ℕ
  max-steps = {!!}

  max-steps-bound-l : ∀ {i} (rs : Starˡ _↝S_ initial-state-with-sets i) → length rs ≤ max-steps
  max-steps-bound-l {i , is} rs = {!!}

  max-steps-bound : ∀ {i} (rs : Star _↝S_ initial-state-with-sets i) → length rs ≤ max-steps
  max-steps-bound rs = begin
    length rs  ≡⟨ PEq.sym (length≡ rs) ⟩
    length (Star→Starˡ rs)  ≤⟨ max-steps-bound-l (Star→Starˡ rs) ⟩
    max-steps  ∎
    where
    open Inverse Star↔Starˡ
    open ≤-Reasoning

  strongly-normalizing : StronglyNormalizing _↝S_ initial-state-with-sets
  strongly-normalizing = bound-norm max-steps max-steps-bound

  result : Vec C n
  result = d
    where open Alg-state-abbrev (proj₁ (Terminates-result terminates))

  k-correct : ∀ q → ∑ (List.map path-weight (all-P k q)) ≈ lookup q result
  k-correct q = {!!}

  correct : ∀ q → shortest-distance s q (lookup q result)
  correct q = {!!}
