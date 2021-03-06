open import Semiring as S using (Semiring)

module Semiring.Definitions {c ℓ} (K : Semiring c ℓ) where
  open Semiring K renaming (Carrier to C)

  open import Algebra.FunctionProperties _≈_ as FP hiding (Idempotent)
  open import Algebra.Operations K using (_^_)
  open import Sum K

  open import Colist
    using ( Colist; []; _∷_; toColist; concat∞; product-with; _≃_; Zip-with
          ; map)
  open import Data.List using (List; []; _∷_)
  open import Data.Nat as ℕ using (ℕ)
  open import Data.Nat.Properties.Simple using (+-suc)
  open import Data.Product using (∃; _×_; proj₁; proj₂)

  open import Level

  open import Relation.Binary using (Rel; _Preserves_⟶_; _Preserves₂_⟶_⟶_; IsTotalOrder)
  import Relation.Binary.EqReasoning as EqReasoning
  open import Relation.Binary.PropositionalEquality as PEq using (cong)
  open import Relation.Nullary using (Dec)

  -- Definition 2: idempotent
  Idempotent : Set _
  Idempotent = FP.Idempotent _+_

  -- Definition 3: positive/negative
  Negative : ∀ {ℓ₂} → Rel C ℓ₂ → Set ℓ₂
  Negative _≤_ = 1# ≤ 0#

  Positive : ∀ {ℓ₂} → Rel C ℓ₂ → Set ℓ₂
  Positive _≤_ = 0# ≤ 1#

  -- Definition 4: monotonic
  Monotonic : ∀ {ℓ₂} → Rel C ℓ₂ → Set (c ⊔ ℓ₂)
  Monotonic ≤ =
    (∀ c → (λ a → a + c) Preserves ≤ ⟶ ≤) × (_*_ Preserves₂ ≤ ⟶ ≤ ⟶ ≤)

  -- Definition 5: bounded
  Bounded : Set _
  Bounded = Zero 1# _+_

  -- Definition 6: k-closed
  record _ClosedAt_ (k : ℕ) (a : C) : Set (c ⊔ ℓ) where
    field
      closed : geo-∑ (ℕ.suc k) a ≈ geo-∑ k a

    -- Lemma 4: the closure property extends to furter sums
    closed+ : ∀ l → geo-∑ (l ℕ.+ k) a ≈ geo-∑ k a
    closed+ ℕ.zero = refl
    closed+ (ℕ.suc l) =
      begin
        geo-∑ (ℕ.suc l ℕ.+ k) a
      ≡⟨ cong (λ x → geo-∑ x a) (PEq.sym (+-suc l k)) ⟩
        geo-∑ (l ℕ.+ ℕ.suc k) a
      ≈⟨ split-geo-∑ l (ℕ.suc k) a ⟩
        geo-∑ l a + a ^ l * geo-∑ (ℕ.suc k) a
      ≈⟨ +-cong refl (*-cong refl closed) ⟩
        geo-∑ l a + a ^ l * geo-∑ k a
      ≈⟨ sym (split-geo-∑ l k a) ⟩
        geo-∑ (l ℕ.+ k) a
      ≈⟨ closed+ l ⟩
        geo-∑ k a
      ∎
      where open EqReasoning setoid

  record _Closed (k : ℕ) : Set (c ⊔ ℓ) where
    field
      closed : ∀ a → k ClosedAt a

    closed+ : ∀ l a → geo-∑ (l ℕ.+ k) a ≈ geo-∑ k a
    closed+ l a = _ClosedAt_.closed+ (closed a) l

  -- Definition 7: closed
  record Closed : Set (c ⊔ ℓ) where
    field
      ∑-defined : ∀ a → ∃ (geo-∑∞ a)
      ∑-assoc :
        ∀ {ass as a} → Zip-with ∑∞ (map toColist ass) as → ∑∞ as a →
                       ∑∞ (concat∞ ass) a
      ∑-comm : ∀ {as bs a b} → as ≃ bs → ∑∞ as a → ∑∞ bs b → a ≈ b
      ∑-distrib :
        ∀ {as bs s a b} → ∑∞ (product-with _*_ as bs) s →
                          ∑∞ (toColist as) a → ∑∞ (toColist bs) b → s ≈ a * b

  -- Lemma 1 (definition): the natural order
  infix 4 _≤K_
  _≤K_ : Rel C ℓ
  a ≤K b = a + b ≈ a

  -- Has decidable equality, so we can use it in the algorithm
  Decidable : Set _
  Decidable = ∀ a b → Dec (a ≈ b)

  TotallyOrdered : Set _
  TotallyOrdered = IsTotalOrder _≈_ _≤K_
