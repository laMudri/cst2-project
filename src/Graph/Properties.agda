open import Semiring as S
open import Graph as G

module Graph.Properties {c ℓ q e} {K : Semiring c ℓ} (G : Graph K q e) where
  open Semiring K renaming (Carrier to C)
  open import Semiring.Definitions K
  open Graph G
  open import Graph.Definitions G

  open import Listing

  open import Data.Product using (∃; _,_)

  P-listing : ∀ l q q′ → IsFiniteGraph K Q E w → Listing (P l q q′)
  P-listing l q q′ record { qs = qs ; es = es } = {!!}
