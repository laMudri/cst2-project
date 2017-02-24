{-# LANGUAGE ScopedTypeVariables, TypeFamilies, AllowAmbiguousTypes #-}
module Main where

import Prelude hiding (elem)

import Data.Graph

-- Semiring

class Semiring k where
  zero :: k
  one :: k
  plus :: k -> k -> k
  times :: k -> k -> k

newtype Weight = W (Maybe Int) deriving (Eq, Show)

instance Semiring Weight where
  zero = W Nothing
  one = W (Just 0)
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

-- Algorithm

data AlgState k q =
  AlgState { knownDistances :: [k], addedWeight :: [k], vertexQueue :: q }

go :: forall k q. (Eq k, Semiring k, Ord k, Queue q) =>
      Graph -> (Edge -> k) -> Vertex -> [k]
go g w start = let AlgState d _ _ = result in d
  where
  n :: Int
  n = length (vertices g)

  initialState :: AlgState k q
  initialState = AlgState d d s
    where
    d :: [k]
    d = setAt (replicate n zero) start one

    s :: q
    s = singleton start

  doStep :: AlgState k q -> Maybe (AlgState k q)
  doStep (AlgState d r s) = do
    (q , s) <- extract s
    let r' = r !! q
    let rN = setAt r q zero
    let condition e = d !! (snd e) <= times r' (w e)
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

main :: IO ()
main = return ()
