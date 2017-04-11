{-# LANGUAGE DataKinds, KindSignatures, ScopedTypeVariables #-}
module KSemiring where

import Types

import Data.List
import Data.Proxy
import GHC.TypeLits

data KSemiring (k :: Nat) a = K [a] deriving (Eq, Show, Read)

merge :: (Ord a) => [a] -> [a] -> [a]
merge [] bs = bs
merge as [] = as
merge (a : as) (b : bs)
  | a <= b    = a : merge as (b : bs)
  | otherwise = b : merge (a : as) bs

instance (KnownNat k', Semiring a, Ord a) => Semiring (KSemiring k' a) where
  zero = K $ genericTake k (repeat zero)
    where k = natVal (Proxy :: Proxy k')
  one = K $ one : genericTake (pred k) (repeat zero)
    where k = natVal (Proxy :: Proxy k')
  plus (K as) (K bs) = K . genericTake k $ merge as bs
    where k = natVal (Proxy :: Proxy k')
  times (K as) (K bs) =
    K . genericTake k $ sort [ times a b | a <- as, b <- bs ]
    where k = natVal (Proxy :: Proxy k')

instance (KnownNat k, Semiring a, Ord a) => Ord (KSemiring k a) where
  a <= b = plus b a == a
