module App where
  open import Data.Bool using (Bool; true; false)
  open import Data.Fin
  open import Data.Fin.Properties using (_≟_)
  open import Data.Nat using (ℕ; zero; suc; _+_)
  open import Data.Vec using (Vec; []; _∷_; tabulate; sum)

  open import Function

  open import Relation.Binary.PropositionalEquality
  open import Relation.Nullary using (Dec; yes; no; ¬_)

  ∣_∣ : ∀ {n} → (Fin n → ℕ) → ℕ
  ∣_∣ = sum ∘ tabulate

  -- Like vector update notation _[_]≔_, but for dependent functions from Fin.
  _⟨_⟩≔_ :
    ∀ {a n} {A : Fin n → Set a} →
    ((x : Fin n) → A x) → (y : Fin n) → A y → ((x : Fin n) → A x)
  (f ⟨ x ⟩≔ a) y with x ≟ y
  _⟨_⟩≔_ {A = A} f x a y | yes eq = subst A eq a
  (f ⟨ x ⟩≔ a) y | no _ = f y

  appAt : ∀ {a n} {A : Fin n → Set a} (i : Fin n) →
          (A i → A i) → ((∀ j → A j) → (∀ j → A j))
  appAt i f g j with i ≟ j
  appAt i f g .i | yes refl = f (g i)
  appAt i f g j | no ¬p = g j

  appWhen : ∀ {a n} {A : Set a} (p : Fin n → Bool) →
            (A → A) → ((Fin n → A) → (Fin n → A))
  appWhen p f g i with p i
  appWhen p f g i | false = g i
  appWhen p f g i | true = f (g i)

  appAtV : ∀ {a n} {A : Set a} (i : Fin n) → (A → A) → (Vec A n → Vec A n)
  appAtV zero f (x ∷ xs) = f x ∷ xs
  appAtV (suc i) f (x ∷ xs) = x ∷ appAtV i f xs

  appWhenV : ∀ {a n} {A : Set a} (p : Fin n → Bool) →
             (A → A) → (Vec A n → Vec A n)
  appWhenV p f [] = []
  appWhenV p f (x ∷ xs) with p Fin.zero
  appWhenV p f (x ∷ xs) | false = x ∷ appWhenV (p ∘ suc) f xs
  appWhenV p f (x ∷ xs) | true = f x ∷ appWhenV (p ∘ suc) f xs
