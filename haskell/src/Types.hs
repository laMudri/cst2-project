{-# LANGUAGE TypeFamilies, DeriveFunctor, MultiParamTypeClasses,
    AllowAmbiguousTypes, FunctionalDependencies, FlexibleInstances #-}
module Types where

import Prelude hiding (elem)

import Data.Array hiding ((//))
import Data.Graph
import Data.OrdPSQ (OrdPSQ)
import qualified Data.OrdPSQ as PSQ
import Text.PrettyPrint.Boxes

--------------------------------------------------------------------------------
-- Semiring

class Semiring k where
  zero :: k
  one :: k
  plus :: k -> k -> k
  times :: k -> k -> k

-- Maybe, but with Just x < Nothing
data Topped a = Fin a | Top deriving (Eq, Ord, Functor, Show, Read)
--instance (Show a) => Show (Topped a) where
--  show (Fin x) = show x
--  show Top = "∞"

instance Applicative Topped where
  pure = Fin
  Top <*> x = Top
  Fin f <*> Top = Top
  Fin f <*> Fin x = Fin (f x)

newtype Weight = W (Topped Int) deriving (Eq, Show, Read)
--instance Show Weight where
--  show (W x) = show x

instance Semiring Weight where
  zero = W Top
  one = W (Fin 0)
  plus (W a) (W b) = W (min a b)
  times (W a) (W b) = W ((+) <$> a <*> b)

--instance (Eq k, Semiring k) => Ord k where
--  a <= b = plus b a == a
instance Ord Weight where
  a <= b = plus b a == a

showWeightMatrix :: Vertex -> (Edge -> Weight) -> String
showWeightMatrix n w = render box
  where
  bss :: [[Box]]
  bss = [ [ text (show (w (x , y)))
          | x <- [0 .. pred n]
          ]
        | y <- [0 .. pred n]
        ]

  values :: Box
  values = hsep 1 top (map (vcat right) bss)

  box :: Box
  box = (char '\\' <> hcat top (replicate (cols values) (char '-'))) // (vcat right (replicate (rows values) (char '|')) <> values)

tabulate :: Vertex -> (Edge -> Weight) -> [[Weight]]
tabulate n w = [ [ w (x , y) | y <- [0 .. pred n] ] | x <- [0 .. pred n] ]

untabulate :: [[Weight]] -> (Edge -> Weight)
untabulate l (x , y) = l !! x !! y

--------------------------------------------------------------------------------
-- Queue

class Queue q where
  empty :: q
  singleton :: Vertex -> q
  insert :: Vertex -> q -> q
  extract :: q -> Maybe (Vertex, q)
  elem :: Vertex -> q -> Bool

  singleton x = insert x empty

class Queue q => PriorityQueue w q | q -> w where
  psingleton :: w -> Vertex -> q
  pinsert :: w -> Vertex -> q -> q

  psingleton w x = pinsert w x empty
  pinsert _ = insert

-- Basic LIFO
instance (vertex ~ Vertex) => Queue [vertex] where
  empty = []
  insert = (:)
  extract [] = Nothing
  extract (x : xs) = Just (x , xs)
  elem x = any (x ==)

-- Okazaki-style FIFO
newtype Fifo a = Fifo ([a] , [a])

fifoExtract :: Fifo a -> Maybe (a , Fifo a)
fifoExtract (Fifo ([] , [])) = Nothing
fifoExtract (Fifo ([] , back)) = fifoExtract (Fifo (reverse back , []))
fifoExtract (Fifo (x : front , back)) = Just (x , Fifo (front , back))

instance (vertex ~ Vertex) => Queue (Fifo vertex) where
  empty = Fifo ([] , [])
  insert x (Fifo (front , back)) = Fifo (x : front , back)
  extract = fifoExtract
  elem x (Fifo (front , back)) = any (x ==) front || any (x ==) back

-- Dijkstra-style shortest-first queue
-- Key is redundant, and just the associated vertex.
instance (vertex ~ Vertex, weight ~ Weight, vertex' ~ Vertex)
      => Queue (OrdPSQ vertex weight vertex') where
  empty = PSQ.empty
  singleton x = PSQ.singleton x (W (Fin 0)) x
  insert x = PSQ.insert x (W (Fin 0)) x
  extract h = (\ (_ , _ , x , h) -> (x , h)) <$> PSQ.minView h
  elem = PSQ.member

instance (vertex ~ Vertex, weight ~ Weight, vertex' ~ Vertex)
      => PriorityQueue weight (OrdPSQ vertex weight vertex') where
  psingleton w x = PSQ.singleton x w x
  pinsert w x = PSQ.insert x w x

-- Utilities

setAt :: [a] -> Int -> a -> [a]
setAt [] _ y = []
setAt (x : xs) 0 y = y : xs
setAt (x : xs) i y = x : setAt xs (i - 1) y

fixMaybe :: (a -> Maybe a) -> a -> a
fixMaybe f x =
  case f x of
       Nothing -> x
       Just fx -> fixMaybe f fx
