module Queue where
  open import Data.Bool using (Bool; false; true; T)
  open import Data.List using (List; []; _∷_)
  open import Data.Product using (∃; _×_; _,_)
  open import Data.Unit using (⊤; tt)

  open import Function

  open import Level

  open import Relation.Binary using (DecSetoid)
  open import Relation.Nullary using (Dec; yes; no)

  record Queue {a} (A : Set a) ℓ : Set (a ⊔ suc ℓ) where
    field
      Carrier : Set ℓ
      empty : Carrier
      has-items : Carrier → Bool
      enqueue : A → Carrier → ∃ λ q → T (has-items q)
      dequeue : (q : Carrier) → T (has-items q) → A × Carrier
      contains : A → Carrier → Bool

  -- An example
  stack : ∀ {c ℓ} (A : DecSetoid c ℓ) → Queue (DecSetoid.Carrier A) c
  stack A = record
    { Carrier = List Carrier
    ; empty = []
    ; has-items = λ { [] → false ; (_ ∷ _) → true }
    ; enqueue = λ x q → (x ∷ q) , tt
    ; dequeue = λ { [] () ; (x ∷ q) i → x , q }
    ; contains = contains
    }
    where
      open DecSetoid A

      contains : Carrier → List Carrier → Bool
      contains x [] = false
      contains x (y ∷ q) with x ≟ y
      contains x (y ∷ q) | yes p = true
      contains x (y ∷ q) | no ¬p = contains x q
