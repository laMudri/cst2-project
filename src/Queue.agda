module Queue where
  open import Data.Bool using (Bool; false; true; T)
  open import Data.List using (List; []; _∷_)
  open import Data.Product using (∃; _×_; _,_)
  open import Data.Unit using (⊤; tt)

  open import Level

  record Queue {a} (A : Set a) ℓ : Set (a ⊔ suc ℓ) where
    field
      Carrier : Set ℓ
      empty : Carrier
      has-items : Carrier → Bool
      enqueue : A → Carrier → ∃ λ q → T (has-items q)
      dequeue : (q : Carrier) → T (has-items q) → A × Carrier

  -- An example
  stack : ∀ {a} (A : Set a) → Queue A a
  stack A = record
    { Carrier = List A
    ; empty = []
    ; has-items = λ { [] → false ; (_ ∷ _) → true }
    ; enqueue = λ x q → (x ∷ q) , tt
    ; dequeue = λ { [] () ; (x ∷ q) i → x , q }
    }
