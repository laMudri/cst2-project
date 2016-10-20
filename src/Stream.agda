-- stdlib Stream is not universe-polymorphic.
module Stream where

open import Coinduction

open import Data.List using (List; []; _∷_)
open import Data.Nat using (ℕ; zero; suc)
open import Data.Product using (_×_)

infixr 5 _∷_

data Stream {a} (A : Set a) : Set a where
  _∷_ : (x : A) (xs : ∞ (Stream A)) → Stream A

{-# HASKELL data AgdaStream a = Cons a (AgdaStream a) #-}
{-# COMPILED_DATA Stream MAlonzo.Code.Data.Stream.AgdaStream
                         MAlonzo.Code.Data.Stream.Cons #-}

take : ∀ {a} {A : Set a} → ℕ → Stream A → List A
take zero xs = []
take (suc n) (x ∷ xs) = x ∷ take n (♭ xs)

zipWith :
  ∀ {a b c} {A : Set a} {B : Set b} {C : Set c} →
  (A → B → C) → Stream A → Stream B → Stream C
zipWith f (x ∷ xs) (y ∷ ys) = f x y ∷ ♯ zipWith f (♭ xs) (♭ ys)

infix 4 _∈_ _⊆_

data _∈_ {a} {A : Set a} : A → Stream A → Set a where
  here : ∀ {x xs} → x ∈ x ∷ xs
  there : ∀ {x y xs} → y ∈ xs → y ∈ x ∷ ♯ xs

_⊆_ : ∀ {a} {A : Set a} → Stream A → Stream A → Set a
xs ⊆ ys = ∀ x → x ∈ xs → x ∈ ys

-- xs is a permutation of ys
_≃_ : ∀ {a} {A : Set a} → Stream A → Stream A → Set a
xs ≃ ys = xs ⊆ ys × ys ⊆ xs
