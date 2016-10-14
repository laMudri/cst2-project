open import Posemiring as PS

module SpecialPosemirings {c ℓ₁ ℓ₂} (K : Posemiring c ℓ₁ ℓ₂) where
open Posemiring K

open import Algebra.FunctionProperties _≈_ as FP
open import Level
open import Relation.Binary using (_Preserves_⟶_; _Preserves₂_⟶_⟶_)
import Relation.Binary.PartialOrderReasoning as PartialOrderReasoning

Negative : Set ℓ₂
Negative = 1# ≤ 0#

Positive : Set ℓ₂
Positive = 0# ≤ 1#

record Monotonic : Set (c ⊔ ℓ₁ ⊔ ℓ₂) where
  field
    +-preserves-≤ˡ : ∀ b → (λ a → a + b) Preserves _≤_ ⟶ _≤_
    *-preserves-≤ : _*_ Preserves₂ _≤_ ⟶ _≤_ ⟶ _≤_

  +-preserves-≤ : _+_ Preserves₂ _≤_ ⟶ _≤_ ⟶ _≤_
  +-preserves-≤ {a} {a′} {b} {b′} a≤a′ b≤b′ =
    begin
      a + b
    ≤⟨ +-preserves-≤ˡ b a≤a′ ⟩
      a′ + b
    ≈⟨ +-comm a′ b ⟩
      b + a′
    ≤⟨ +-preserves-≤ˡ a′ b≤b′ ⟩
      b′ + a′
    ≈⟨ +-comm b′ a′ ⟩
      a′ + b′
    ∎
    where
      open PartialOrderReasoning (record { isPartialOrder = isPartialOrder })
