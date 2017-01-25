open import Semiring as K
open import Semiring.Definitions using (Decidable)
open import Queue as Q
open import Graph as G
open import Data.Fin using (Fin; zero; suc)

module Algorithm.Lemma5
       {c n ℓ ℓ′} (K : Semiring c ℓ) (De : Decidable K)
       (Q : QueueDiscipline (Fin n) ℓ′) (G : Graph K n) (s : Fin n) where
  open import Algorithm K De Q G s
  open import Algorithm.Properties K De Q G s
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

  lemma-5 :
    ∀ i → Reachable-with-sets i →
    let open Helper-sets (proj₂ i) in
    ∀ m q π (e : Edge m q) → let eπ = e ◅ π in
    eπ ∈ D q → eπ ∈ map (λ ρ → e ◅ ρ) (R m) → ⊥

  lemma-5 = {!!}

  {-
  lemma-5 .initial-state-with-sets ε m q π e π∈D π∈R with s F≟ q
  lemma-5 _ ε m .s π e (here ()) π∈R | yes PEq.refl
  lemma-5 _ ε m q π e (there ()) π∈R | yes p
  lemma-5 _ ε m q π e () π∈R | no ¬p

  lemma-5 i@.(do-step-with-sets j hi) (_◅_ {j = j} r@(hi , PEq.refl) rs) m q π e eπ∈Dᵢq eπ∈eRᵢm =
    let j′ , k′ , r′ , elem , pr′ = ↝.find stuff in
    {!take-after-∈ elem!}
    where
    open Internals-ij j hi

    π∈Rᵢm : π ∈ Rᵢ m
    π∈Rᵢm = take-the-edge-off eπ∈eRᵢm

    ih = lemma-5 j rs q
    stuff = path-in-D-gives-path-in-R′ (r ◅ rs) π e eπ∈Dᵢq
    more-stuff = path-in-D-gives-path-in-R′ rs π e {!D-grows r q ?!}
  -}
