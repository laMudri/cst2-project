module Computation where

  open import Coinduction

  open import Level

  open import Relation.Binary using (Rel)
  open import Relation.Nullary using (¬_)

  infixr 5 _⇒_ _⇏
  data Computation {st ℓ} {St : Set st} (R : Rel St ℓ) : St → Set (st ⊔ ℓ) where
    _⇏ : ∀ {i} → (∀ j → ¬ R i j) → Computation R i
    _⇒_ : ∀ {i j} → R i j → ∞ (Computation R j) → Computation R i

  data Terminates {st ℓ} {St : Set st} {R : Rel St ℓ}
                  : {i : St} → Computation R i → Set (st ⊔ ℓ) where
    now : ∀ {i} → (t : ∀ j → ¬ R i j) → Terminates {i = i} (t ⇏)
    later : ∀ {i j} (r : R i j) {c : Computation R j} →
            Terminates c → Terminates (r ⇒ ♯ c)

  data StronglyNormalizing {st ℓ} {St : Set st} (R : Rel St ℓ)
                           : St → Set (st ⊔ ℓ) where
    now : ∀ {i} (¬r : ∀ {j} → ¬ R i j) → StronglyNormalizing R i
    later : ∀ {i j} (r : R i j) (rs : StronglyNormalizing R j) →
            StronglyNormalizing R i

  Terminates-result :
    ∀ {st ℓ} {St : Set st} {R : Rel St ℓ} {i : St}
    {c : Computation R i} → Terminates c → St
  Terminates-result (now {i} t) = i
  Terminates-result (later r t) = Terminates-result t

  normalize :
    ∀ {st ℓ} {St : Set st} {R : Rel St ℓ}
    {cf : ∀ i → Computation R i} → (∀ i → Terminates (cf i)) →
    St → St
  normalize p i = Terminates-result (p i)
