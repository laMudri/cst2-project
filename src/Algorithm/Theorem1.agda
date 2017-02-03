{-# OPTIONS --allow-unsolved-metas #-}

open import Semiring as K
open import Semiring.Definitions using (Decidable)
open import Queue as Q
open import Graph as G
import Graph.Definitions as GD
open import Data.Fin using (Fin; zero; suc)
open import Data.Nat as ℕ using (ℕ; zero; suc; _≤_; z≤n; s≤s)

module Algorithm.Theorem1
       {c n ℓ ℓ′} (K : Semiring c ℓ) (De : Decidable K)
       (Q : QueueDiscipline (Fin n) ℓ′) (G : Graph K n) (s : Fin n)
       {k : ℕ} (closed : let open GD {K = K} G in k ClosedOnG) where
  open import Algorithm K De Q G s
  open import Algorithm.Properties K De Q G s
  open Semiring K renaming (Carrier to C)
  open import Semiring.Definitions K
  open import Semiring.Properties K
  open import Sum K
  open QueueDiscipline Q
  open import Graph.Definitions {K = K} G
  open import Graph.Properties {K = K} G
  open import Graph.Cycle {K = K} G s

  open import Algorithm.Lemma5 K De Q G s
  open import Algorithm.Lemma9 K De Q G s closed

  open import Computation

  open import Data.Empty using (⊥; ⊥-elim)
  open import Data.List as List using (List; []; _∷_)
  open import Data.Product using (∃; _×_; _,_; proj₁; proj₂)
  open import Star using (Star; Starˡ; ε; _◅_)
  open import Vec using (Vec; lookup)

  open import Function.Surjection using (Surjection; _↠_)

  open import Relation.Binary.PropositionalEquality as PEq
    using (_≡_; inspect; [_]; Reveal_·_is_)
  open import Relation.Nullary using (¬_)

  -- The number of times each vertex q is enqueued is less than card (P k q).
  -- There is a surjection from P k q to Fin (I q).
  enqueues-finite :
    ∀ {i} → Reachable-with-sets i →
    let open Alg-state-abbrev (proj₁ i) in
    let open Helper-sets (proj₂ i) in
    ∀ q → Surjection (P k q) (PEq.setoid (Fin (I q)))
  enqueues-finite = {!!}

  E≤I : ∀ {i} → Reachable-with-sets i →
        let open Alg-state-abbrev (proj₁ i) in
        let open Helper-sets (proj₂ i) in
        ∀ q → E q ≤ I q
  E≤I ε q = z≤n
  E≤I (r@(hi , PEq.refl) ◅ rs) q = {!Eᵢ!}
    where open Internals-ij-from-↝ r

  terminates-from :
    ∀ {i} → Reachable-with-sets i →
    Terminates (gsssd-loop-computation-with-sets i)
  terminates-from {alg-state d r S , _} rs with count S | inspect count S
  terminates-from {alg-state d r S , _} rs | ℕ.zero | [ eq ] =
    now (λ { _ (hi , _) → zero-not-suc (PEq.subst Is-suc eq hi) })
  terminates-from {alg-state d r S , _} rs | ℕ.suc z | [ eq ] = {!!}

  terminates : Terminates gsssd-computation-with-sets
  terminates = terminates-from ε

  result : Vec C n
  result = d
    where open Alg-state-abbrev (proj₁ (Terminates-result terminates))

  k-correct : ∀ q → ∑ (List.map path-weight (all-P k q)) ≈ lookup q result
  k-correct q = {!!}

  correct : ∀ q → shortest-distance s q (lookup q result)
  correct q = {!!}
