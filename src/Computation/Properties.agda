open import Relation.Binary using (Rel)

module Computation.Properties {st ℓ} {St : Set st} (R : Rel St ℓ) where
  open import Computation

  open import Data.Fin as Fin using (Fin)
  open import Data.Nat as ℕ using (ℕ; zero; suc)
  open import Star using (Star; ε; _◅_)

  open import Function.Surjection using (Surjection; _↠_)

  open import Relation.Binary.PropositionalEquality using (_≡_)

  bounded-terminates :
    (m : St → ℕ) → (∀ {i j} → R i j → m j ≡ suc (m i)) → (bound : ℕ) →
    (∀ {i j} → Star R i j → Fin bound ↠ Fin (m j)) →
    ∀ {i} (c : Computation R i) → Terminates c
  bounded-terminates m grows bound surj c = {!!}
