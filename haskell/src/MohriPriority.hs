{-# LANGUAGE ScopedTypeVariables #-}
module MohriPriority where

import Prelude hiding (elem)

import Data.Array
import Data.Graph

import Types

data AlgState k q =
  AlgState { knownDistances :: [k], addedWeight :: [k], vertexQueue :: q }
  deriving (Show, Eq)

mohrip :: forall k q. (Eq k, Semiring k, Ord k, PriorityQueue k q) =>
          Phantom q -> Graph -> (Edge -> k) -> Vertex -> [k]
mohrip ph g w source = let AlgState d _ _ = result in d
  where
  n :: Int
  n = length (vertices g)

  initialState :: AlgState k q
  initialState = AlgState d d s
    where
    d :: [k]
    d = setAt (replicate n zero) source one

    s :: q
    s = psingleton one source

  doStep :: AlgState k q -> Maybe (AlgState k q)
  doStep (AlgState d r s) = do
    (q , s) <- extract s
    let r' = r !! q
    let rN = setAt r q zero
    let condition e = d !! (snd e) > r' `times` w e
    let relaxedEdges = filter condition (zip [q, q..] (reachable g q))

    let newWeights a = foldr (\ e a ->
          setAt a (snd e) ((r' `times` w e) `plus` (a !! snd e)))
                             a
                             relaxedEdges

    let dN = newWeights d
    let rNN = newWeights rN

    let enqueuedVertices = filter (not . (`elem` s)) (map snd relaxedEdges)
    let sN = foldr (\ q' -> pinsert (dN !! q') q') s
                   enqueuedVertices
    return (AlgState dN rNN sN)

  result :: AlgState k q
  result = fixMaybe doStep initialState
