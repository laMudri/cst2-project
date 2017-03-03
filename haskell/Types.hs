{-# LANGUAGE TypeFamilies, DeriveFunctor #-}
module Types where

import Prelude hiding (elem)

import Data.Array
import Data.Graph

-- Semiring

class Semiring k where
  zero :: k
  one :: k
  plus :: k -> k -> k
  times :: k -> k -> k

-- Maybe, but with Just x < Nothing
data Topped a = Fin a | Top deriving (Show, Eq, Ord, Functor)

instance Applicative Topped where
  pure = Fin
  Top <*> x = Top
  Fin f <*> Top = Top
  Fin f <*> Fin x = Fin (f x)

newtype Weight = W (Topped Int) deriving (Eq, Show)

instance Semiring Weight where
  zero = W Top
  one = W (Fin 0)
  plus (W a) (W b) = W (min a b)
  times (W a) (W b) = W ((+) <$> a <*> b)

--instance (Eq k, Semiring k) => Ord k where
--  a <= b = plus b a == a
instance Ord Weight where
  a <= b = plus b a == a

-- Queue

class Queue q where
  empty :: q
  insert :: Vertex -> q -> q
  extract :: q -> Maybe (Vertex, q)
  elem :: Vertex -> q -> Bool

singleton :: (Queue q) => Vertex -> q
singleton x = insert x empty

instance (vertex ~ Vertex) => Queue [vertex] where
  empty = []
  insert = (:)
  extract [] = Nothing
  extract (x : xs) = Just (x , xs)
  elem x = any (x ==)
