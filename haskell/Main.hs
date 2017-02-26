{-# LANGUAGE ScopedTypeVariables, TypeFamilies, DeriveFunctor #-}
module Main where

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

-- Utils

setAt :: [a] -> Int -> a -> [a]
setAt [] _ y = []
setAt (x : xs) 0 y = y : xs
setAt (x : xs) i y = x : setAt xs (i - 1) y

fixMaybe :: (a -> Maybe a) -> a -> a
fixMaybe f x =
  case f x of
       Nothing -> x
       Just fx -> fixMaybe f fx

data Phantom a = Ph

-- Algorithm

data AlgState k q =
  AlgState { knownDistances :: [k], addedWeight :: [k], vertexQueue :: q }
  deriving (Show, Eq)

go :: forall k q. (Eq k, Semiring k, Ord k, Queue q) =>
      Phantom q -> Graph -> (Edge -> k) -> Vertex -> [k]
go ph g w source = let AlgState d _ _ = result in d
  where
  n :: Int
  n = length (vertices g)

  initialState :: AlgState k q
  initialState = AlgState d d s
    where
    d :: [k]
    d = setAt (replicate n zero) source one

    s :: q
    s = singleton source

  doStep :: AlgState k q -> Maybe (AlgState k q)
  doStep (AlgState d r s) = do
    (q , s) <- extract s
    let r' = r !! q
    let rN = setAt r q zero
    let condition e = d !! (snd e) > times r' (w e)
    let relaxedEdges = filter condition (zip [q, q..] (reachable g q))

    let newWeights a = foldr (\ e a ->
          setAt a (snd e) (plus (times r' (w e)) (a !! snd e)))
                             a
                             relaxedEdges

    let dN = newWeights d
    let rNN = newWeights rN

    let enqueuedVertices = filter (not . (`elem` s)) (map snd relaxedEdges)
    let sN = foldr insert s enqueuedVertices
    return (AlgState dN rNN sN)

  result :: AlgState k q
  result = fixMaybe doStep initialState

-- Test data

phantom :: Phantom [Vertex]
phantom = Ph

graph :: Graph
graph = array (0 , 2) [ (i , [0 .. 2]) | i <- [0 .. 2] ]

weight :: Edge -> Weight
weight (0 , 0) = W $ Top
weight (0 , 1) = W $ Fin 2
weight (0 , 2) = W $ Fin 4
weight (1 , 0) = W $ Fin 2
weight (1 , 1) = W $ Top
weight (1 , 2) = W $ Fin 1
weight (2 , 0) = W $ Fin 4
weight (2 , 1) = W $ Fin 1
weight (2 , 2) = W $ Top

source :: Vertex
source = 0

main :: IO ()
main = do
  let d = go phantom graph weight source
  print d
