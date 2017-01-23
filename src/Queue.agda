module Queue where
  open import Data.Bool using (Bool; false; true; T)
  open import Data.List using (List; []; _∷_; length)
  open import Data.Nat using (ℕ; zero; suc)
  open import Data.Product using (∃; _×_; _,_)
  open import Data.Unit using (⊤; tt)

  open import Function

  import Level as L

  open import Relation.Binary using (DecSetoid)
  open import Relation.Nullary using (Dec; yes; no; ¬_)

  data Is-suc : ℕ → Set where
    is-suc : ∀ {n} → Is-suc (suc n)

  zero-not-suc : ¬ Is-suc zero
  zero-not-suc ()

  record QueueDiscipline {a} (A : Set a) ℓ : Set (a L.⊔ L.suc ℓ) where
    field
      Carrier : Set ℓ
      empty : Carrier
      count : Carrier → ℕ
      enqueue : A → Carrier → Carrier
      dequeue : (q : Carrier) → Is-suc (count q) → A × Carrier
      contains : A → Carrier → Bool

    has-items : Carrier → Bool
    has-items q = case count q of λ where zero → false ; (suc _) → true

    Has-items : Carrier → Set
    Has-items = Is-suc ∘ count

  -- An example
  stack : ∀ {c ℓ} (A : DecSetoid c ℓ) → QueueDiscipline (DecSetoid.Carrier A) c
  stack A = record
    { Carrier = List Carrier
    ; empty = []
    ; count = length
    ; enqueue = λ x q → (x ∷ q)
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
