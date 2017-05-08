{-# OPTIONS --allow-unsolved-metas #-}

open import Semiring as K
open import Semiring.Definitions using (Decidable)
open import Queue as Q
open import Graph as G
import Graph.Definitions as GD
open import Data.Fin using (Fin; zero; suc)
open import Data.Nat using (ℕ)

module Algorithm.Lemma6
       {c n ℓ ℓ′} (K : Semiring c ℓ) (De : Decidable K)
       (Q : QueueDiscipline (Fin n) ℓ′) (G : Graph K n) (s : Fin n) where
  open import Algorithm K De Q G s
  open import Algorithm.Properties K De Q G s
  open import Graph.Definitions {K = K} G
  open import Graph.Properties {K = K} G

  open import Data.List using (List; []; _∷_; map; _++_)
  open import Data.List.Any as Any
    using (module Membership-≡; Any; here; there; any)
  open Membership-≡ using (_∈_; _∉_; _⊆_; find; ⊆-preorder)
  open import Data.Product using (∃; _×_; _,_; proj₁; proj₂)
  open import Star using ( Starˡ; ε; _◅_; _◅◅_; ◅-injective′; fold-preorder
                         ; concat-vec)
  import Star.TransitionMembership as ↝

  lemma-6-step :
    ∀ i → Reachable-with-sets i →
    let open Helper-sets (proj₂ i) in
    ∀ {m q} (π : Path s m) (e : Edge m q) → (e ◅ π) ∈ D q → π ∈ D m
  lemma-6-step i rs {m} {q} π e e◅π∈Dq =
    let j , k , r , r∈rs , m≡dequeued , π∈Rₖm =
         ↝.find (path-in-D-gives-path-in-R′ rs π e e◅π∈Dq) in
    let π∈Dₖm = R⊆D (↝.take-after-∈ r∈rs) π∈Rₖm in
    D-grows {i} {k} (↝.take-before-∈ r∈rs ◅◅ r ◅ ε) π∈Dₖm

  lemma-6 :
    ∀ i → Reachable-with-sets i →
    let open Helper-sets (proj₂ i) in
    ∀ {m q} (π₁ : Path s m) (π₂ : Path m q) → (π₂ ◅◅ π₁) ∈ D q → π₁ ∈ D m
  lemma-6 i rs π₁ ε π∈Dq = π∈Dq
  lemma-6 i rs π₁ (e ◅ π₂) e◅π∈Dq =
    let π∈Dq = lemma-6-step i rs (π₂ ◅◅ π₁) e e◅π∈Dq in
    lemma-6 i rs π₁ π₂ π∈Dq

