{-# OPTIONS --allow-unsolved-metas #-}

open import Semiring as K
open import Semiring.Definitions using (Decidable)
open import Queue as Q
open import Graph as G
open import Data.Fin using (Fin; zero; suc)

module Algorithm.Lemma8
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
  open import Data.Sum using (_⊎_; inj₁; inj₂)
  open import Vec as Vec
    using (Vec; []; _∷_; lookup; replicate; _[_]≔_; allFin; foldl;
          foldl-preserves; function→All; toList; intersperse⁺)

  lemma-8 :
    ∀ {j} → Reachable-with-sets j → let _ , helper-sets Dⱼ _ _ = j in
    ∀ {m q} (πb : Path s m) (πs : Vec (Path m m) n) (πe : Path m q)
    (c : Cycle m) →
    let path-with-cycles = πe ◅◅ concat-vec (intersperse⁺ c πs) ◅◅ πb in
    let path-without-cycles = πe ◅◅ concat-vec πs ◅◅ πb in
    path-with-cycles ∈ Dⱼ q →
    path-without-cycles ∈ Dⱼ q
      ⊎ ∃ λ x → ∀ {i} → Starˡ _↝S_ j i →
        let alg-state dᵢ _ _ , _ = i in
        lookup q dᵢ ≈ lookup q dᵢ + path-weight path-without-cycles + x
  lemma-8 = {!!}
