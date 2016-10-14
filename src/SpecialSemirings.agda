open import Algebra using (Semiring)

module SpecialSemirings {c ℓ} (K : Semiring c ℓ) where
open Semiring K renaming (Carrier to C)

open import Algebra.FunctionProperties _≈_ as FP hiding (Idempotent)

open import Level
open import Data.Nat using (ℕ)
open import Data.List using (List; []; _∷_)

Idempotent : Set _
Idempotent = FP.Idempotent _+_

Bounded : Set _
Bounded = Zero 1# _+_

pow : C → ℕ → C
pow a ℕ.zero = a
pow a (ℕ.suc n) = a * pow a n

∑ : List C → C
∑ [] = 0#
∑ (a ∷ as) = a + ∑ as

tabulateDown : (ℕ → C) → ℕ → List C
tabulateDown f ℕ.zero = []
tabulateDown f (ℕ.suc n) = f n ∷ tabulateDown f n

record KClosed : Set (c ⊔ ℓ) where
  field
    k : ℕ
    closed : ∀ a → let sum = ∑ (tabulateDown (pow a) (ℕ.suc k)) in
             pow a (ℕ.suc k) + sum ≈ sum
