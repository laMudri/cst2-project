open import Posemiring as PS

module PosemiringLemmas {c ℓ₁ ℓ₂} (K : Posemiring c ℓ₁ ℓ₂) where
open Posemiring K
open import SpecialPosemirings K
open import SpecialSemirings semiring
open import SemiringLemmas semiring

open import Data.Product using (proj₁; proj₂)
import Relation.Binary.PartialOrderReasoning as POR

-- Proposition 1: the natural order coincides with the partial order.
≤⇒≤K : Negative → Idempotent → Monotonic → ∀ {a b} → a ≤ b → a ≤K b
≤⇒≤K neg idem mono {a} {b} a≤b = antisym
  (begin
    a + b   ≤⟨ +-preserves-≤ ≤-refl (≤0 b) ⟩
    a + 0#  ≈⟨ proj₂ +-identity a ⟩
    a       ∎)
  (begin
    a      ≈⟨ sym (idem a) ⟩
    a + a  ≤⟨ +-preserves-≤ ≤-refl a≤b ⟩
    a + b  ∎)
  where
  open Monotonic mono
  open POR poset

  ≤0 : ∀ c → c ≤ 0#
  ≤0 c = begin
    c ≈⟨ sym (proj₁ *-identity c) ⟩
    1# * c ≤⟨ *-preserves-≤ neg (≤-refl {c}) ⟩
    0# * c ≈⟨ proj₁ zero c ⟩
    0# ∎

≤K⇒≤ : Negative → Idempotent → Monotonic → ∀ {a b} → a ≤K b → a ≤ b
≤K⇒≤ neg idem mono {a} {b} a+b≈a = begin
  a       ≈⟨ sym a+b≈a ⟩
  a + b   ≤⟨ +-preserves-≤ (≤0 a) ≤-refl ⟩
  0# + b  ≈⟨ proj₁ +-identity b ⟩
  b       ∎
  where
  open Monotonic mono
  open POR poset

  ≤0 : ∀ c → c ≤ 0#
  ≤0 c = begin
    c ≈⟨ sym (proj₁ *-identity c) ⟩
    1# * c ≤⟨ *-preserves-≤ neg (≤-refl {c}) ⟩
    0# * c ≈⟨ proj₁ zero c ⟩
    0# ∎
