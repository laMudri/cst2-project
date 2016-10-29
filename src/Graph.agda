open import Semiring as S

module Graph {c ℓ} (K : Semiring c ℓ) where
  open Semiring K renaming (Carrier to C)

  open import Data.Fin using (Fin)
  open import Data.Nat using (ℕ)

  -- Adjacency matrix
  Graph : ℕ → Set c
  Graph n = Fin n → Fin n → C
