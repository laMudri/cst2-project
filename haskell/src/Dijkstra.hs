{-# LANGUAGE ScopedTypeVariables, TupleSections #-}
module Dijkstra where

import Prelude hiding (elem)

import Data.Array
import Data.Graph
import Data.OrdPSQ (OrdPSQ)
import qualified Data.OrdPSQ as PSQ
import Data.Set (Set)
import qualified Data.Set as S

import Types

data AlgState k q =
  AlgState { knownDistances :: [k]
           , fixedVertices :: Set Vertex
           , vertexQueue :: q
           }
  deriving (Show, Eq)

dijkstra :: forall k q. (Eq k, Semiring k, Ord k, PriorityQueue k q) =>
            Phantom q -> Graph -> (Edge -> k) -> Vertex -> [k]
dijkstra ph g w source = let AlgState d _ _ = result in d
  where
  n :: Int
  n = length (vertices g)

  initialState :: AlgState k q
  initialState = AlgState d v s
    where
    d :: [k]
    d = setAt (replicate n zero) source one

    v :: Set Vertex
    v = S.empty

    s :: q
    s = psingleton one source

  doStep :: AlgState k q -> Maybe (AlgState k q)
  doStep (AlgState d v s) = do
    (q , s) <- extract s
    let vN = S.insert q v
    let dq = d !! q

    let activeEdges = S.mapMonotonic (q ,) (S.fromList (reachable g q) S.\\ v)
    let dN = foldr (\ e d' ->
                    setAt d' (snd e) ((dq `times` w e) `plus` (d !! snd e)))
                   d
                   activeEdges

    let sN = S.foldr (\ q' -> pinsert (dN !! q') q') s
                     (S.mapMonotonic snd activeEdges)
    return (AlgState dN vN sN)

  result :: AlgState k q
  result = fixMaybe doStep initialState
