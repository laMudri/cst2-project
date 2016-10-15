-- stdlib Stream is not universe-polymorphic.
module Stream where

open import Coinduction

open import Data.List using (List; []; _∷_)
open import Data.Nat using (ℕ; zero; suc)

infixr 5 _∷_

data Stream {a} (A : Set a) : Set a where
  _∷_ : (x : A) (xs : ∞ (Stream A)) → Stream A

{-# HASKELL data AgdaStream a = Cons a (AgdaStream a) #-}
{-# COMPILED_DATA Stream MAlonzo.Code.Data.Stream.AgdaStream
                         MAlonzo.Code.Data.Stream.Cons #-}

take : ∀ {a} {A : Set a} → ℕ → Stream A → List A
take zero xs = []
take (suc n) (x ∷ xs) = x ∷ take n (♭ xs)
