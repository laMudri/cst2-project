open import Algebra using (Semiring)

module SemiringLemmas {c ℓ} (K : Semiring c ℓ) where
open Semiring K renaming (Carrier to C)
open import SpecialSemirings K

open import Data.Product using (_,_; proj₁; proj₂)
open import Relation.Binary
  using (Rel; IsPartialOrder; Poset; _Preserves_⟶_; _Preserves₂_⟶_⟶_)
import Relation.Binary.EqReasoning as EqReasoning
import Relation.Binary.PartialOrderReasoning as POR

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

-- Lemma 2: the natural order makes the semiring negative and monotonic.
natural-order-negative : (i : Idempotent) → Negative _≤K_
natural-order-negative idempotent = begin
  1# + 0#  ≈⟨ proj₂ +-identity 1# ⟩
  1#       ∎
  where open EqReasoning setoid

natural-order-monotonic : (i : Idempotent) → Monotonic _≤K_
natural-order-monotonic idempotent =
  (λ c {a} {b} a+b≈a → begin
    (a + c) + (b + c)  ≈⟨ sym (+-assoc (a + c) b c) ⟩
    ((a + c) + b) + c  ≈⟨ +-cong (+-assoc a c b) refl ⟩
    (a + (c + b)) + c  ≈⟨ +-cong (+-cong refl (+-comm c b)) refl ⟩
    (a + (b + c)) + c  ≈⟨ +-cong (sym (+-assoc a b c)) refl ⟩
    ((a + b) + c) + c  ≈⟨ +-assoc (a + b) c c ⟩
    (a + b) + (c + c)  ≈⟨ +-cong a+b≈a (idempotent c) ⟩
    a + c              ∎)
  ,
  (λ {a} {b} {c} {d} a+b≈a c+d≈c → begin
    a * c + b * d            ≈⟨ +-cong (*-cong (sym a+b≈a) refl) refl ⟩
    (a + b) * c + b * d      ≈⟨ +-cong (proj₂ distrib c a b) refl ⟩
    (a * c + b * c) + b * d  ≈⟨ +-assoc (a * c) (b * c) (b * d) ⟩
    a * c + (b * c + b * d)  ≈⟨ +-cong refl (sym (proj₁ distrib b c d)) ⟩
    a * c + b * (c + d)      ≈⟨ +-cong refl (*-cong refl c+d≈c) ⟩
    a * c + b * c            ≈⟨ sym (proj₂ distrib c a b) ⟩
    (a + b) * c              ≈⟨ *-cong a+b≈a refl ⟩
    a * c                    ∎)
  where open EqReasoning setoid

-- Proposition 1: the natural order coincides with the partial order.
≤⇒≤K :
  ∀ {ℓ₂} (_≤_ : Rel C ℓ₂) → IsPartialOrder _≈_ _≤_ →
  Negative _≤_ → Idempotent → Monotonic _≤_ → ∀ {a b} → a ≤ b → a ≤K b
≤⇒≤K _≤_ po neg idem mono {a} {b} a≤b = antisym
  (begin
    a + b   ≤⟨ +-preserves-≤ʳ a (≤0 b) ⟩
    a + 0#  ≈⟨ proj₂ +-identity a ⟩
    a       ∎)
  (begin
    a      ≈⟨ sym (idem a) ⟩
    a + a  ≤⟨ +-preserves-≤ʳ a a≤b ⟩
    a + b  ∎)
  where
  poset : Poset _ _ _
  poset = record { Carrier = C ; _≈_ = _≈_ ; _≤_ = _≤_ ; isPartialOrder = po }

  open Poset poset hiding (_≤_) renaming (refl to ≤-refl)
  open POR poset

  +-preserves-≤ˡ = proj₁ mono
  *-preserves-≤ = proj₂ mono

  +-preserves-≤ʳ : ∀ c → (λ b → c + b) Preserves _≤_ ⟶ _≤_
  +-preserves-≤ʳ c {a} {b} a≤b = begin
    c + a  ≈⟨ +-comm c a ⟩
    a + c  ≤⟨ +-preserves-≤ˡ c a≤b ⟩
    b + c  ≈⟨ +-comm b c ⟩
    c + b  ∎

  ≤0 : ∀ c → c ≤ 0#
  ≤0 c = begin
    c ≈⟨ sym (proj₁ *-identity c) ⟩
    1# * c ≤⟨ *-preserves-≤ neg (≤-refl {c}) ⟩
    0# * c ≈⟨ proj₁ zero c ⟩
    0# ∎

≤K⇒≤ :
  ∀ {ℓ₂} (_≤_ : Rel C ℓ₂) → IsPartialOrder _≈_ _≤_ →
  Negative _≤_ → Idempotent → Monotonic _≤_ → ∀ {a b} → a ≤K b → a ≤ b
≤K⇒≤ _≤_ po neg idem mono {a} {b} a+b≈a = begin
  a       ≈⟨ sym a+b≈a ⟩
  a + b   ≤⟨ +-preserves-≤ˡ b (≤0 a) ⟩
  0# + b  ≈⟨ proj₁ +-identity b ⟩
  b       ∎
  where
  poset : Poset _ _ _
  poset = record { Carrier = C ; _≈_ = _≈_ ; _≤_ = _≤_ ; isPartialOrder = po }

  open Poset poset hiding (_≤_) renaming (refl to ≤-refl)
  open POR poset

  +-preserves-≤ˡ = proj₁ mono
  *-preserves-≤ = proj₂ mono

  ≤0 : ∀ c → c ≤ 0#
  ≤0 c = begin
    c ≈⟨ sym (proj₁ *-identity c) ⟩
    1# * c ≤⟨ *-preserves-≤ neg (≤-refl {c}) ⟩
    0# * c ≈⟨ proj₁ zero c ⟩
    0# ∎
