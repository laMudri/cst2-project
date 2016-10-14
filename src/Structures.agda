open import Relation.Binary using (Rel)

module Structures {a ℓ} {A : Set a} (_≈_ : Rel A ℓ) where

open import Algebra.FunctionProperties _≈_ as FunctionProperties

open import Algebra using (Semiring)
--open import Algebra.FunctionProperties as FunctionProperties using (Op₂)
open import Algebra.Structures using (IsSemiring)

open import Function
open import Level

open import Relation.Binary using (Rel; Poset; IsPartialOrder; _Preserves_⟶_)
open import Relation.Binary.PropositionalEquality using (_≡_)
import Relation.Binary.EqReasoning as EqReasoning
import Relation.Binary.PartialOrderReasoning as PartialOrderReasoning

-- Definition 2: idempotent semiring
open FunctionProperties public using (Idempotent)

-- Lemma 1: natural order is a partial order
natural-order : (+ : Op₂ A) → Rel A ℓ
natural-order _+_ a b = (a + b) ≈ b
--natural-order K = record
--  { Carrier = Carrier
--  ; _≈_ = _≈_
--  ; _≤_ = λ a b → a + b ≈ a
--  ; isPartialOrder = record
--    { isPreorder = record
--      { isEquivalence = isEquivalence
--      ; reflexive = λ {i} {j} i≈j → begin
--        i + j  ≈⟨ +-cong i≈j refl ⟩
--        j + j  ≈⟨ idempotent j ⟩
--        j      ≈⟨ sym i≈j ⟩
--        i      ∎
--      ; trans = λ {i} {j} {k} i+j≈i j+k≈j → begin
--        i + k        ≈⟨ +-cong (sym i+j≈i) refl ⟩
--        (i + j) + k  ≈⟨ +-assoc i j k ⟩
--        i + (j + k)  ≈⟨ +-cong refl j+k≈j ⟩
--        i + j        ≈⟨ i+j≈i ⟩
--        i            ∎
--      }
--    ; antisym = λ {x} {y} x+y≈x y+x≈y → begin
--      x      ≈⟨ sym x+y≈x ⟩
--      x + y  ≈⟨ +-comm x y ⟩
--      y + x  ≈⟨ y+x≈y ⟩
--      y      ∎
--    }
--  }
--  where
--    open IdempotentSemiring K
--    open EqReasoning setoid

-- Definition 3: Negative/positive semirings
Negative : (≤ : Rel A ℓ) (0# 1# : A) → Set ℓ
Negative _≤_ 0# 1# = 1# ≤ 0#

-- Definition 4: Monotonic
{-
record IsMonotonicSemiring {a ℓ₁ ℓ₂} {A : Set a} (≈ : Rel A ℓ₁) (≤ : Rel A ℓ₂)
                           (+ * : Op₂ A) (0# 1# : A) : Set (a ⊔ ℓ₁ ⊔ ℓ₂) where
  open FunctionProperties ≈
  field
    isSemiring : IsSemiring ≈ + * 0# 1#
    isPartialOrder : IsPartialOrder ≈ ≤
    +-preserves-≤ˡ : ∀ c → + c Preserves ≤ ⟶ ≤
    *-preserves-≤ˡ : ∀ c → * c Preserves ≤ ⟶ ≤
    *-preserves-≤ʳ : ∀ c → flip * c Preserves ≤ ⟶ ≤

  open IsSemiring isSemiring public
    hiding (isEquivalence; refl; sym; trans; reflexive)
  open IsPartialOrder isPartialOrder public

  +-preserves-≤ʳ : ∀ c → flip + c Preserves ≤ ⟶ ≤
  +-preserves-≤ʳ c {a} {b} a≤b =
    begin
      + a c
    ≈⟨ +-comm a c ⟩
      + c a
    ≤⟨ +-preserves-≤ˡ c a≤b ⟩
      + c b
    ≈⟨ +-comm c b ⟩
      + b c
    ∎
    where open PartialOrderReasoning (record { Carrier = A
                                             ; _≈_ = ≈
                                             ; _≤_ = ≤
                                             ; isPartialOrder = isPartialOrder
                                             })

record MonotonicSemiring c ℓ₁ ℓ₂ : Set (suc (c ⊔ ℓ₁ ⊔ ℓ₂)) where
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
    isMonotonicSemiring : IsMonotonicSemiring _≈_ _≤_ _+_ _*_ 0# 1#

  open IsMonotonicSemiring isMonotonicSemiring public

  semiring : Semiring c ℓ₁
  semiring = record { isSemiring = isSemiring }

  poset : Poset c ℓ₁ ℓ₂
  poset = record { isPartialOrder = isPartialOrder }

  open Semiring semiring public using
    ( setoid
    ; +-semigroup; +-rawMonoid; +-monoid; +-commutativeMonoid
    ; *-semigroup; *-rawMonoid; *-monoid
    )

  open Poset poset public using (preorder)

test : ∀ {c ℓ₁ ℓ₂} → MonotonicSemiring c ℓ₁ ℓ₂ → Relation.Binary.Setoid c ℓ₁
test K = setoid
  where open MonotonicSemiring K

-- Definition 5: bounded
record IsBoundedSemiring {a ℓ} {A : Set a} (≈ : Rel A ℓ)
                         (+ * : Op₂ A) (0# 1# : A) : Set (a ⊔ ℓ) where
  open FunctionProperties ≈
  field
    isSemiring : IsSemiring ≈ + * 0# 1#
    one : Zero 1# +

  open IsSemiring isSemiring public

record BoundedSemiring c ℓ : Set (suc (c ⊔ ℓ)) where
  infixl 7 _*_
  infixl 6 _+_
  infix 4 _≈_
  field
    Carrier : Set c
    _≈_ : Rel Carrier ℓ
    _+_ : Op₂ Carrier
    _*_ : Op₂ Carrier
    0# : Carrier
    1# : Carrier
    isBoundedSemiring : IsBoundedSemiring _≈_ _+_ _*_ 0# 1#

  open IsBoundedSemiring isBoundedSemiring public

  semiring : Semiring c ℓ
  semiring = record { isSemiring = isSemiring }

  open Semiring semiring public using
    ( setoid
    ; +-semigroup; +-rawMonoid; +-monoid; +-commutativeMonoid
    ; *-semigroup; *-rawMonoid; *-monoid
    )
-}

-- Definition 6: k-closed
open import Data.Nat using (ℕ)
open import Data.List using (List; []; _∷_)

module SemiringHelpers (K : Semiring a ℓ) where
  open Semiring K renaming (Carrier to C)

  pow : C → ℕ → C
  pow a ℕ.zero = 1#
  pow a (ℕ.suc k) = a * pow a k

  -- \sum, not \Sigma
  ∑ : List C → C
  ∑ [] = 0#
  ∑ (a ∷ as) = a + ∑ as

tabulate : (ℕ → A) → ℕ → List A
tabulate f n = go n 0
  where
  go : ℕ → ℕ → List A
  go ℕ.zero i = []
  go (ℕ.suc n) i = f i ∷ go n (ℕ.suc i)

KClosed : ℕ → Semiring a ℓ → Set (a ⊔ ℓ)
KClosed k K = ∀ a → let sum = ∑ (tabulate (pow a) k) in a + sum ≈ sum
  where
    open Semiring K
    open SemiringHelpers K

{-
record IsKClosedSemiring {a ℓ} {A : Set a} (≈ : Rel A ℓ)
                         (+ * : Op₂ A) (0# 1# : A) (k : ℕ) : Set (a ⊔ ℓ) where
  open FunctionProperties ≈
  field
    isSemiring : IsSemiring ≈ + * 0# 1#
    --kClosed : ∀ a →

  open IsSemiring isSemiring public

record KClosedSemiring c ℓ : Set (suc (c ⊔ ℓ)) where
  infixl 7 _*_
  infixl 6 _+_
  infix 4 _≈_
  field
    Carrier : Set c
    _≈_ : Rel Carrier ℓ
    _+_ : Op₂ Carrier
    _*_ : Op₂ Carrier
    0# : Carrier
    1# : Carrier
    k : ℕ
    isKClosedSemiring : IsKClosedSemiring _≈_ _+_ _*_ 0# 1# k

  open IsKClosedSemiring isKClosedSemiring public

  semiring : Semiring c ℓ
  semiring = record { isSemiring = isSemiring }

  open Semiring semiring public using
    ( setoid
    ; +-semigroup; +-rawMonoid; +-monoid; +-commutativeMonoid
    ; *-semigroup; *-rawMonoid; *-monoid
    )
-}
