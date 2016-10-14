module Posemiring where

open import Algebra using (Semiring)
open import Algebra.FunctionProperties as FunctionProperties using (Op₂)
open import Algebra.Structures using (IsSemiring)
open import Level
open import Relation.Binary using (Rel; IsPartialOrder; Poset)

record IsPosemiring {a ℓ₁ ℓ₂} {A : Set a}
                                  (≈ : Rel A ℓ₁) (≤ : Rel A ℓ₂) (+ * : Op₂ A)
                                  (0# 1# : A) : Set (a ⊔ ℓ₁ ⊔ ℓ₂) where
  open FunctionProperties ≈
  field
    isSemiring : IsSemiring ≈ + * 0# 1#
    isPartialOrder : IsPartialOrder ≈ ≤

  open IsSemiring isSemiring public
  open IsPartialOrder isPartialOrder public
    hiding (isEquivalence)
    renaming (reflexive to ≤-reflexive; trans to ≤-trans; refl to ≤-refl)

record Posemiring c ℓ₁ ℓ₂ : Set (suc (c ⊔ ℓ₁ ⊔ ℓ₂)) where
  infixl 7 _*_
  infixl 6 _+_
  infix 4 _≈_ _≤_
  field
    Carrier : Set c
    _≈_ : Rel Carrier ℓ₁
    _≤_ : Rel Carrier ℓ₂
    _+_ : Op₂ Carrier
    _*_ : Op₂ Carrier
    0# : Carrier
    1# : Carrier
    isPosemiring :
      IsPosemiring _≈_ _≤_ _+_ _*_ 0# 1#

  open IsPosemiring isPosemiring public

  semiring : Semiring c ℓ₁
  semiring = record { isSemiring = isSemiring }

  poset : Poset c ℓ₁ ℓ₂
  poset = record { isPartialOrder = isPartialOrder }
