open import Semiring as K
open import Semiring.Definitions using (Decidable)
open import Queue as Q
open import Graph as G
import Graph.Definitions as GD
open import Data.Fin using (Fin; zero; suc)
open import Data.Nat as ℕ using (ℕ; zero; suc)

module Algorithm.Lemma9
       {c n ℓ ℓ′} (K : Semiring c ℓ) (De : Decidable K)
       (Q : QueueDiscipline (Fin n) ℓ′) (G : Graph K n) (s : Fin n)
       {k : ℕ} (closed : let open GD {K = K} G in k ClosedOnG) where
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

  open import Relation.Nullary using (¬_)

  -- To go in Graph.Definitions, probably under a better name
  postulate
    P : ℕ → Path-family

  lemma-9 :
    ∀ {i j} → Reachable-with-sets j → (r : j ↝S i) →
    let open Internals-ij-from-↝ r in
    ∀ {ne} (e : Edge dequeued ne) (π : Path s ne) →
    (π ∈ map (e ◅_) R′ → π ∈ P k ne → ⊥) →
    lookup ne dⱼ ≤K r′ * edge-weight e → ⊥
  lemma-9 rs r e π nin le = {!!}
