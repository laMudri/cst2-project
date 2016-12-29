open import Relation.Binary using (Rel)

module Star.Order {i t} {I : Set i} {T : Rel I t} where
  open import Star
  open import Star.StateMembership {i} {t} {I} {T}
  open import Star.Properties {i} {t} {I} {T}

  open import Data.Product using (∃; _×_; _,_)

  -- A variant of _⊑_ focusing on endpoints
  infix 4 _⊨_≼_
  _⊨_≼_ : ∀ {i j} → Star T i j → Rel I _
  ys ⊨ m ≼ n = ∃ λ (xs : Star T m n) → xs ⊑ ys

  refl : ∀ {i j m} {ys : Star T i j} → m ∈ ys → ys ⊨ m ≼ m
  refl {m = m} {ys} m∈ys = ε , ε⊑ m∈ys

  trans : ∀ {i j m n o} {ys : Star T i j} → ys ⊨ m ≼ n → ys ⊨ n ≼ o → ys ⊨ m ≼ o
  trans (xs , xszs) (ys , yszs) = (xs ◅◅ ys) , {!!}
