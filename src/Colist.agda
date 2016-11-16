module Colist where
  open import Data.Colist public

  open import Coinduction

  open import Data.Cofin using (Cofin; zero; suc)
  open import Data.Conat using (Coℕ; zero; suc)
  open import Data.Maybe as Maybe using (Maybe; just; nothing)
  open import Data.Product using (∃; _,_)

  open import Function
  open import Function.Inverse using (_↔_)

  open import Level

  open import Relation.Binary.PropositionalEquality

  infix 4 _≃_
  -- Permutation
  _≃_ : ∀ {a} {A : Set a} → Colist A → Colist A → Set a
  xs ≃ ys = ∀ {x} → x ∈ xs ↔ x ∈ ys

  infixr 5 _∷⁺_

  record Colist⁺ {a} (A : Set a) : Set a where
    constructor _∷_
    field
      head : A
      tail : ∞ (Colist A)

  _∷⁺_ : ∀ {a} {A : Set a} → A → Colist⁺ A → Colist⁺ A
  x ∷⁺ (y ∷ ys) = x ∷ ♯ (y ∷ ys)

  toColist : ∀ {a} {A : Set a} → Colist⁺ A → Colist A
  toColist (x ∷ ♯xs) = x ∷ ♯xs

  concat∞ : ∀ {a} {A : Set a} → Colist (Colist⁺ A) → Colist A
  concat∞ [] = []
  concat∞ ((x ∷ ♯xs) ∷ ♯xss) with ♭ ♯xs
  concat∞ ((x ∷ ♯xs) ∷ ♯xss) | [] = x ∷ ♯ (concat∞ (♭ ♯xss))
  concat∞ ((x ∷ ♯xs) ∷ ♯xss) | y ∷ ♯ys = x ∷ ♯ concat∞ ((y ∷ ♯ys) ∷ ♯xss)

  product-with :
    ∀ {a b c} {A : Set a} {B : Set b} {C : Set c} →
    (A → B → C) → Colist⁺ A → Colist⁺ B → Colist C
  product-with {A = A} {B} {C} f orig-xs = go orig-xs
    where
    go : Colist⁺ A → Colist⁺ B → Colist C
    go (x ∷ ♯xs) ys with ♭ ♯xs
    go (x ∷ ♯xs) (y ∷ ♯ys) | [] with ♭ ♯ys
    go (x ∷ ♯xs) (y ∷ ♯ys) | [] | [] = f x y ∷ ♯ []
    go (x ∷ ♯xs) (y ∷ ♯ys) | [] | y′ ∷ ♯ys′ = f x y ∷ ♯ go orig-xs (y′ ∷ ♯ys′)
    go (x ∷ ♯xs) (y ∷ ♯ys) | x′ ∷ ♯xs′ = f x y ∷ ♯ go (x′ ∷ ♯xs′) (y ∷ ♯ys)

  data Zip-with {a b p} {A : Set a} {B : Set b} (P : A → B → Set p) :
                Colist A → Colist B → Set (a ⊔ b ⊔ p) where
    [] : Zip-with P [] []
    _∷_ : ∀ {x y xs ys} (pxy : P x y) (pxsys : ∞ (Zip-with P (♭ xs) (♭ ys))) →
                        Zip-with P (x ∷ xs) (y ∷ ys)
