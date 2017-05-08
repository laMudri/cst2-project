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
  open import Algorithm.Properties K De Q G s
  open import Algorithm.Properties.KClosed K De Q G s closed
  open Semiring K renaming (Carrier to C)
  open import Semiring.Definitions K
  open import Semiring.Properties K
  open import Sum K hiding (tabulate)
  open QueueDiscipline Q
  open import Queue.Properties Q
  open import Graph.Definitions {K = K} G
  open import Graph.Properties {K = K} G
  open import Graph.Cycle {K = K} G s

  open import App
  open import App.Properties

  --open import Algorithm.Lemma5 K De Q G s
  --open import Algorithm.Lemma9 K De Q G s closed

  open import Computation
  open import Computation.Properties _↝S_
  open import Computation.Properties.Decidable {R = _↝S_} {!!} IS₀

  open import Data.Bool using (Bool; false; true; if_then_else_; not; _∧_)
  open import Data.Empty using (⊥; ⊥-elim)
  open import Data.Fin.Properties as FP using () renaming (_≟_ to _F≟_)
  open import Data.List as List using (List; []; _∷_; filter)
  open import Data.Nat.Properties as ℕP using (≤″⇒≤; ≤′⇒≤)
  open import Data.Nat.Properties.Simple as ℕS using (+-suc)
  open import Data.Product using (∃; _×_; _,_; proj₁; proj₂)
  open import Star using (Star; Starˡ; ε; _◅_; length; states)
  open import Star.Properties using (Star→Starˡ; Star↔Starˡ; length≡)
  open import Vec as V using (Vec; []; _∷_; lookup; sum; tabulate; tail; toList; allFin)

  open import Function using (_∘_; _∘′_)
  open import Function.Equality using (_⟨$⟩_)
  open import Function.Inverse using (Inverse)
  open import Function.Surjection using (Surjection; _↠_)

  open import Relation.Binary using (Preorder; DecTotalOrder)
  open import Relation.Binary.PropositionalEquality as PEq
    using (_≡_; _≢_; inspect; [_]; Reveal_·_is_; module ≡-Reasoning)
  open import Relation.Nullary using (¬_; Dec; yes; no)

  max-steps : ℕ
  max-steps = ∣ List.length ∘ all-P k ∣

  max-steps-bound-l : ∀ {i} (rs : Starˡ _↝S_ IS₀ i) →
                      length rs ≤ max-steps
  max-steps-bound-l {i , is} rs = {!!}

  max-steps-bound : ∀ {i} (rs : Star _↝S_ IS₀ i) →
                    length rs ≤ max-steps
  max-steps-bound rs = begin
    length rs  ≡⟨ PEq.sym (length≡ rs) ⟩
    length (Star→Starˡ rs)  ≤⟨ max-steps-bound-l (Star→Starˡ rs) ⟩
    max-steps  ∎
    where
    open ≤-Reasoning

  strongly-normalizing : StronglyNormalizing _↝S_ IS₀
  strongly-normalizing = bound-norm max-steps max-steps-bound

  ---------------------------------------------------------------------------
  -- Termination

  Lq≤Pₖq : ∀ t q → Helper-sets.L (proj₂ (σS t IS₀)) q ≤ List.length (all-P k q)
  Lq≤Pₖq ℕ.zero q = z≤n
  Lq≤Pₖq (suc t) q with σS t IS₀ | inspect (σS t) IS₀
  ... | (state′ , hs′) | [ eq ] with Has-items? (Alg-state-abbrev.S state′)
<<<<<<< HEAD
  ...   | no ¬hi = PEq.subst (λ x → Helper-sets.L x q ≤ List.length (all-P k q)) (PEq.cong proj₂ eq) (Lq≤Pₖq t q)
=======
  ...   | no ¬hi = {!PEq.subst (λ x → Helper-sets.L x q ≤ List.length (all-P k q)) (PEq.cong proj₂ eq) (L≤Pₖq q t)!}
>>>>>>> origin/master
  ...   | yes hi with suc (Helper-sets.L hs′ q) ℕ.≤? List.length (all-P k q)
  ...     | yes Lq<Pₖq = begin
    appWhen conditon suc Lⱼ q  ≤⟨ {!Lq-increase t IS₀ q!} ⟩
    Helper-sets.L (proj₂ (σS t IS₀)) q  ≤⟨ Lq≤Pₖq t q ⟩
    List.length (all-P k q)  ∎ --{!trans {!L-increase q t IS₀!} (L≤Pₖq q t)!}
    where
    open DecTotalOrder ℕ.decTotalOrder
    open ≤-Reasoning
    open Internals-ij (state′ , hs′) hi
  ...     | no Lq≥Pₖq = {!L-no-suc!}

  conditon-stops-passing : ∀ q → ∃ λ t → ∀ t′ → t ≤′ t′ → let open St-at t; open St′-at t′ in L q ≡ L′ q
  conditon-stops-passing q = {!!}

  q-stops-being-insterted : ∀ q → ∃ λ t → ∀ t′ → t ≤′ t′ → let open St-at t; open St′-at t′ in I q ≡ I′ q
  q-stops-being-insterted q with conditon-stops-passing q
  ... | t , prf = t , (λ t′ ge → antisym (≤′⇒≤ (prf≤ t′ ge)) (≤′⇒≤ (prf≥ t′ ge)))
    where
    open DecTotalOrder ℕ.decTotalOrder

    ≤′-trans : ∀ {m n o} → m ≤′ n → n ≤′ o → m ≤′ o
    ≤′-trans x ≤′-refl = x
    ≤′-trans x (≤′-step y) = ≤′-step (≤′-trans x y)

    prf≤ : ∀ t′ → t ≤′ t′ → let open St-at t; open St′-at t′ in I q ≤′ I′ q
    prf≤ .t ≤′-refl = ≤′-refl
    prf≤ (suc t′) (≤′-step ge) = ≤′-trans (prf≤ t′ ge) (Iq-monotonic t′ IS₀ q)

    prf≥ : ∀ t′ → t ≤′ t′ → let open St-at t; open St′-at t′ in I′ q ≤′ I q
    prf≥ .t ≤′-refl = ≤′-refl
    prf≥ (suc t′) (≤′-step ge) = ≤′-trans {!!} (prf≥ t′ ge)

  postulate vertex-finished : ∀ q → ∃ λ t → ∀ t′ → t ≤′ t′ → ¬ q ∈Q Alg-state-abbrev.S (proj₁ (σS t′ IS₀))

  postulate terminates : ∃ λ t → ¬ Has-items (Alg-state-abbrev.S (σ t I₀))
  --terminates = {!!}

  result : Vec C n
  result = Alg-state-abbrev.d (σ (proj₁ terminates) I₀)

  ---------------------------------------------------------------------------
  -- Correctness

  k-correct : ∀ q → ∑ (List.map path-weight (all-P k q)) ≈ lookup q result
  k-correct q = {!!}

  correct : ∀ q → shortest-distance s q (lookup q result)
  correct q = {!!}
