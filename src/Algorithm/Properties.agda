open import Semiring as K
open import Semiring.Definitions using (Decidable)
open import Queue as Q
open import Graph as G
open import Data.Fin using (Fin; zero; suc)

module Algorithm.Properties
       {c n ℓ ℓ′} (K : Semiring c ℓ) (De : Decidable K)
       (Q : Queue (Fin n) ℓ′) (G : Graph K n) (s : Fin n) where
  open import Algorithm K De Q G s
  open import Graph.Definitions {K = K} G

  open import Data.Empty using (⊥; ⊥-elim)
  open import Data.Fin using (Fin; zero; suc)
  open import Data.Fin.Properties renaming (_≟_ to _F≟_)
  open import Data.List using (List; []; _∷_; map)
  open import Data.List.Any using (module Membership-≡; Any; here; there)
  open Membership-≡ using (_∈_; _∉_)
  open import Data.Product using (_×_; proj₁; proj₂)
  open import Star using (Starˡ; ε; _◅_; _▻_; _◅◅_)
  open import Data.Vec using (Vec; []; _∷_; lookup)

  open import Relation.Binary.PropositionalEquality as PEq using (_≡_; _≢_)
  open import Relation.Nullary using (Dec; yes; no)

  lemma-5 :
    ∀ i → Reachable-with-sets i →
    let open Helper-sets (proj₂ i) in
    ∀ q q′ π (e : Edge q q′) → π ∈ D q′ → π ∈ map (λ ρ → e ◅ ρ) (R q) → ⊥
  lemma-5 .initial-state-with-sets ε q q′ π e π∈D π∈R with s F≟ q′
  lemma-5 ._ ε q .s .ε e (here PEq.refl) ε∈R | yes PEq.refl = ε∉ ε∈R
    where
      ε≢ : ∀ {x y} (ρ : Path x y) → ε ≢ edge ◅ ρ
      ε≢ ε ()
      ε≢ (e ◅ ρ) ()

      ε∉ : {ρs : List (Path s q)} → ε ∉ map (λ ρ → e ◅ ρ) ρs
      ε∉ {[]} ()
      ε∉ {ρ ∷ ρs} (here eq) = ε≢ ρ eq
      ε∉ {ρ ∷ ρs} (there ε∈) = ε∉ ε∈
  lemma-5 ._ ε q q′ π e (there ()) π∈R | yes eq
  lemma-5 ._ ε q q′ π e () π∈R | no neq

  lemma-5 i (_◅_ {j = j} r rs) q q′ π e π∈D π∈R =
    let open Helper-sets (proj₂ i) renaming (D to Di; R to Ri) in
    let open Helper-sets (proj₂ j) renaming (D to Dj; R to Rj) in
    {!lemma-5 j rs q′!}
