{-# OPTIONS --allow-unsolved-metas #-}

open import Semiring as K
open import Semiring.Definitions using (Decidable)
open import Queue as Q
open import Graph as G
import Graph.Definitions as GD
open import Data.Fin using (Fin; zero; suc)
open import Data.Nat as ℕ
  using (ℕ; zero; suc; _≤_; z≤n; s≤s; _≤′_; ≤′-refl; ≤′-step)

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
  open import Graph.Definitions {K = K} G
  open import Graph.Properties {K = K} G
  open import Graph.Cycle {K = K} G s

  --open import Algorithm.Lemma5 K De Q G s
  --open import Algorithm.Lemma9 K De Q G s closed

  open import Computation

  open import Data.Empty using (⊥; ⊥-elim)
  open import Data.Fin.Properties as FP using () renaming (_≟_ to _F≟_)
  open import Data.List as List using (List; []; _∷_)
  open import Data.Nat.Properties.Simple using (+-suc)
  open import Data.Product using (∃; _×_; _,_; proj₁; proj₂)
  open import Star using (Star; Starˡ; ε; _◅_)
  open import Vec as V using (Vec; []; _∷_; lookup; sum; tabulate; tail)

  open import Function using (_∘_)
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

  E≤I : ∀ {i} → Reachable-with-sets i →
        let open Alg-state-abbrev (proj₁ i) in
        let open Helper-sets (proj₂ i) in
        ∀ q → E q ≤ I q
  E≤I ε q = z≤n
  E≤I (r@(hi , PEq.refl) ◅ rs) q = {!Eᵢ!}
    where open Internals-ij-from-↝ r

  extractions-≤ :
    ∀ {i} → Reachable-with-sets i →
    let open Alg-state-abbrev (proj₁ i) in
    let open Helper-sets (proj₂ i) in
    sum (tabulate E) ≤ sum (tabulate (List.length ∘ all-P k))
  extractions-≤ = {!!}

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
  appAt-∘-suc i f g .i | yes PEq.refl = PEq.sym (appAt-diagonal i f (g ∘ suc))
  appAt-∘-suc i f g j | no ¬p = PEq.sym (appAt-non-diagonal i f (g ∘ suc) j (¬p ∘ {!PEq.cong suc!}))
  {-
    tabulate (appAt (suc i) f g ∘ suc)   ≡⟨ PEq.refl ⟩
    tail (tabulate (appAt (suc i) f g))  ≡⟨ {!!} ⟩
    tabulate (appAt i f (g ∘ suc))       ∎
  -}
    where open ≡-Reasoning

  tabulate-cong : ∀ {a n} {A : Set a} {f g : Fin n → A} →
                  (∀ i → f i ≡ g i) → tabulate f ≡ tabulate g
  tabulate-cong {n = zero} {f = f} {g} eq = PEq.refl
  tabulate-cong {n = suc n} {f = f} {g} eq = PEq.cong₂ _∷_ (eq Fin.zero) (tabulate-cong {n = n} (eq ∘ suc))

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
                  sum (tabulate (appAt i suc f)) ≡ suc (sum (tabulate f))
  appAt-sum-suc i f = begin
    sum (tabulate (appAt i suc f))
      ≡⟨ PEq.cong sum (PEq.sym (appAtV-appAt i suc f)) ⟩
    sum (appAtV i suc (tabulate f))
      ≡⟨ appAtV-sum-suc i (tabulate f) ⟩
    suc (sum (tabulate f))
      ∎
    where open ≡-Reasoning

  extractions-suc :
    ∀ {i j} (r : j ↝S i) → let open Internals-ij-from-↝ r in
    sum (tabulate Eᵢ) ≡ suc (sum (tabulate Eⱼ))
  extractions-suc r@(hi , PEq.refl) = appAt-sum-suc dequeued Eⱼ
    where open Internals-ij-from-↝ r

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

  terminates : Terminates gsssd-computation-with-sets
  terminates = terminates-from ε

  result : Vec C n
  result = d
    where open Alg-state-abbrev (proj₁ (Terminates-result terminates))

  k-correct : ∀ q → ∑ (List.map path-weight (all-P k q)) ≈ lookup q result
  k-correct q = {!!}

  correct : ∀ q → shortest-distance s q (lookup q result)
  correct q = {!!}
