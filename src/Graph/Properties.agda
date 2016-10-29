open import Semiring as S
open import Graph as G

module Graph.Properties {c ℓ n} {K : Semiring c ℓ} (G : Graph K n) where
  open Semiring K renaming (Carrier to C)
  open import Semiring.Definitions K
  open import Graph.Definitions {K = K} G

  open import Finite

  open import Data.Product using (∃; _,_)

  P-finite : ∀ l q q′ → Finite (P l q q′)
  P-finite l q q′ = {!!}
