open import Algebra using (Semiring)

module SpecialSemirings {c ℓ} (K : Semiring c ℓ) where
open Semiring K renaming (Carrier to C)

open import Algebra.FunctionProperties _≈_ as FP hiding (Idempotent)
open import Algebra.Operations K
open import Sum K

open import Level
open import Data.List using (List; []; _∷_)
open import Data.Nat as ℕ using (ℕ)
open import Data.Nat.Properties.Simple using (+-suc)
open import Data.Product using (proj₁; proj₂)

import Relation.Binary.EqReasoning as EqReasoning
open import Relation.Binary.PropositionalEquality as PEq using (cong)

-- Definition 2: idempotent
Idempotent : Set _
Idempotent = FP.Idempotent _+_

-- Definition 5: bounded
Bounded : Set _
Bounded = Zero 1# _+_

-- Definition 6: k-closed
record KClosed : Set (c ⊔ ℓ) where
  field
    k : ℕ
    closed : ∀ a → geo-∑ (ℕ.suc k) a ≈ geo-∑ k a

  -- Lemma 4: the closure property extends to furter sums
  closed+ : ∀ l a → geo-∑ (l ℕ.+ k) a ≈ geo-∑ k a
  closed+ ℕ.zero a = refl
  closed+ (ℕ.suc l) a =
    begin
      geo-∑ (ℕ.suc l ℕ.+ k) a
    ≡⟨ cong (λ x → geo-∑ x a) (PEq.sym (+-suc l k)) ⟩
      geo-∑ (l ℕ.+ ℕ.suc k) a
    ≈⟨ split-geo-∑ l (ℕ.suc k) a ⟩
      geo-∑ l a + a ^ l * geo-∑ (ℕ.suc k) a
    ≈⟨ +-cong refl (*-cong refl (closed a)) ⟩
      geo-∑ l a + a ^ l * geo-∑ k a
    ≈⟨ sym (split-geo-∑ l k a) ⟩
      geo-∑ (l ℕ.+ k) a
    ≈⟨ closed+ l a ⟩
      geo-∑ k a
    ∎
    where open EqReasoning setoid
