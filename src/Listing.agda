module Listing where
  open import Data.Fin using (Fin)
  open import Data.Product using (∃)
  open import Function.Related using (Kind; bijection; _∼[_]_)

  Listing : ∀ {a} (A : Set a) → Set a
  Listing A = ∃ λ n → A ∼[ bijection ] Fin n
