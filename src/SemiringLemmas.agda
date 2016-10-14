open import Algebra using (Semiring)

module SemiringLemmas {c ℓ} (K : Semiring c ℓ) where
open Semiring K renaming (Carrier to C)
open import SpecialSemirings K

open import Posemiring as PS
import SpecialPosemirings

open import Data.Product using (proj₁; proj₂)
open import Relation.Binary using (Rel; IsPartialOrder; Poset)
import Relation.Binary.EqReasoning as EqReasoning

-- Lemma 1: the natural order is a partial order
infix 4 _≤K_
_≤K_ : Rel C ℓ
a ≤K b = a + b ≈ a

≤K-isPartialOrder : Idempotent → IsPartialOrder _≈_ _≤K_
≤K-isPartialOrder idempotent = record
  { isPreorder = record
    { isEquivalence = isEquivalence
    ; reflexive = λ {a} {b} a≈b → begin
        a + b  ≈⟨ +-cong refl (sym a≈b) ⟩
        a + a  ≈⟨ idempotent a ⟩
        a      ∎
    ; trans = λ {a} {b} {c} a+b≈a b+c≈b → begin
        a + c        ≈⟨ +-cong (sym a+b≈a) refl ⟩
        (a + b) + c  ≈⟨ +-assoc a b c ⟩
        a + (b + c)  ≈⟨ +-cong refl b+c≈b ⟩
        a + b        ≈⟨ a+b≈a ⟩
        a            ∎
    }
  ; antisym = λ {a} {b} a+b≈a b+a≈b → begin
      a      ≈⟨ sym a+b≈a ⟩
      a + b  ≈⟨ +-comm a b ⟩
      b + a  ≈⟨ b+a≈b ⟩
      b      ∎
  }
  where open EqReasoning setoid

≤K-poset : Idempotent → Poset c ℓ ℓ
≤K-poset idempotent = record
  { _≈_ = _≈_
  ; _≤_ = _≤K_
  ; isPartialOrder = ≤K-isPartialOrder idempotent
  }

≤K-posemiring : Idempotent → Posemiring c ℓ ℓ
≤K-posemiring idempotent = record
  { Carrier = C
  ; _≈_ = _≈_
  ; _≤_ = _≤K_
  ; _+_ = _+_
  ; _*_ = _*_
  ; 0# = 0#
  ; 1# = 1#
  ; isPosemiring = record
    { isSemiring = isSemiring
    ; isPartialOrder = ≤K-isPartialOrder idempotent
    }
  }

-- Lemma 2: the natural order makes the semiring negative and monotonic
natural-order-negative :
  (i : Idempotent) → SpecialPosemirings.Negative (≤K-posemiring i)
natural-order-negative idempotent = begin
  1# + 0#  ≈⟨ proj₂ +-identity 1# ⟩
  1#       ∎
  where open EqReasoning setoid

natural-order-monotonic :
  (i : Idempotent) → SpecialPosemirings.Monotonic (≤K-posemiring i)
natural-order-monotonic idempotent = record
  { +-preserves-≤ˡ = λ c {a} {b} a+b≈a → begin
    (a + c) + (b + c)  ≈⟨ sym (+-assoc (a + c) b c) ⟩
    ((a + c) + b) + c  ≈⟨ +-cong (+-assoc a c b) refl ⟩
    (a + (c + b)) + c  ≈⟨ +-cong (+-cong refl (+-comm c b)) refl ⟩
    (a + (b + c)) + c  ≈⟨ +-cong (sym (+-assoc a b c)) refl ⟩
    ((a + b) + c) + c  ≈⟨ +-assoc (a + b) c c ⟩
    (a + b) + (c + c)  ≈⟨ +-cong a+b≈a (idempotent c) ⟩
    a + c              ∎
  ; *-preserves-≤ = λ {a} {b} {c} {d} a+b≈a c+d≈c → begin
    a * c + b * d            ≈⟨ +-cong (*-cong (sym a+b≈a) refl) refl ⟩
    (a + b) * c + b * d      ≈⟨ +-cong (proj₂ distrib c a b) refl ⟩
    (a * c + b * c) + b * d  ≈⟨ +-assoc (a * c) (b * c) (b * d) ⟩
    a * c + (b * c + b * d)  ≈⟨ +-cong refl (sym (proj₁ distrib b c d)) ⟩
    a * c + b * (c + d)      ≈⟨ +-cong refl (*-cong refl c+d≈c) ⟩
    a * c + b * c            ≈⟨ sym (proj₂ distrib c a b) ⟩
    (a + b) * c              ≈⟨ *-cong a+b≈a refl ⟩
    a * c                    ∎
  }
  where open EqReasoning setoid
