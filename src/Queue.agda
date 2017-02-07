module Queue where
  open import Data.Bool using (Bool; false; true; T)
  open import Data.List using (List; []; _∷_; length)
  open import Data.Nat using (ℕ; zero; suc)
  open import Data.Product using (∃; _×_; _,_; proj₁; proj₂)
  open import Data.Unit using (⊤; tt)

  open import Function

  import Level as L

  open import Relation.Binary using (DecSetoid)
  open import Relation.Binary.PropositionalEquality as PEq using (_≡_)
  open import Relation.Nullary using (Dec; yes; no; ¬_)

  data Is-suc : ℕ → Set where
    is-suc : ∀ {n} → Is-suc (suc n)

  Is-suc? : ∀ n → Dec (Is-suc n)
  Is-suc? zero = no (λ ())
  Is-suc? (suc n) = yes is-suc

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

      empty-zero : count empty ≡ zero
      enqueue-suc : ∀ a q → count (enqueue a q) ≡ suc (count q)
      dequeue-pred : ∀ q s → suc (count (proj₂ (dequeue q s))) ≡ count q

    has-items : Carrier → Bool
    has-items q = case count q of λ where zero → false ; (suc _) → true

    Has-items : Carrier → Set
    Has-items = Is-suc ∘ count

    Has-items? : ∀ q → Dec (Has-items q)
    Has-items? = Is-suc? ∘ count

  -- An example
  stack : ∀ {c ℓ} (A : DecSetoid c ℓ) → QueueDiscipline (DecSetoid.Carrier A) c
  stack A = record
    { Carrier = List Carrier
    ; empty = []
    ; count = length
    ; enqueue = λ x q → (x ∷ q)
    ; dequeue = λ { [] () ; (x ∷ q) i → x , q }
    ; contains = contains
    ; empty-zero = PEq.refl
    ; enqueue-suc = λ a q → PEq.refl
    ; dequeue-pred = λ { [] () ; (x ∷ q) s → PEq.refl }
    }
    where
    open DecSetoid A

    contains : Carrier → List Carrier → Bool
    contains x [] = false
    contains x (y ∷ q) with x ≟ y
    contains x (y ∷ q) | yes p = true
    contains x (y ∷ q) | no ¬p = contains x q
