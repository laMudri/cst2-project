open import Semiring as K
open import Semiring.Definitions using (Decidable)
open import Queue as Q
open import Graph as G
open import Data.Fin using (Fin; zero; suc)

module Algorithm.Lemma7
       {c n ℓ ℓ′} (K : Semiring c ℓ) (De : Decidable K)
       (Q : QueueDiscipline (Fin n) ℓ′) (G : Graph K n) (s : Fin n) where
  open import Algorithm K De Q G s
  open import Algorithm.Properties K De Q G s
  open Semiring K renaming (Carrier to C)
  open import Semiring.Definitions K
  open import Semiring.Properties K
  open import Graph.Definitions {K = K} G
  open import Graph.Properties {K = K} G

  open import Data.Empty using (⊥; ⊥-elim)
  open import Data.List using (List; []; _∷_; map; _++_)
  open import Data.List.Any as Any
    using (module Membership-≡; Any; here; there; any)
  open Membership-≡ using (_∈_; _∉_; _⊆_; find; ⊆-preorder)
  open import Data.Product using (∃; _×_; _,_; proj₁; proj₂)
  open import Star using ( Starˡ; ε; _◅_; _◅◅_; ◅-injective′; fold-preorder
                         ; concat-vec)
  import Star.TransitionMembership as ↝
  open import Vec as Vec
    using (Vec; []; _∷_; lookup; replicate; _[_]≔_; allFin; foldl;
          foldl-preserves; function→All; toList; intersperse⁺)

  lemma-7 :
    ∀ {i j k l} →
    Reachable-with-sets l → Starˡ _↝S_ l k → (r : k ↝S j) → Starˡ _↝S_ j i →
    let alg-state dₗ _ _ , _ = l in
    let alg-state dᵢ _ _ , _ = i in
    ∀ {pe ne} (e : Edge pe ne) (x : C) → Relaxed r e →
    lookup pe dₗ ≈ lookup pe dₗ + x →
    lookup ne dᵢ ≈ lookup ne dᵢ + (x * edge-weight e)
  lemma-7 = {!!}
