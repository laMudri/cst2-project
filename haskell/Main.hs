{-# LANGUAGE ScopedTypeVariables #-}
module Main where

import Data.Graph

type Q = [Vertex]

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

empty :: Q
empty = []

enqueue :: Vertex -> Q -> Q
enqueue = (:)

dequeue :: Q -> Maybe (Vertex , Q)
dequeue [] = Nothing
dequeue (q : s) = Just (q , s)

contains :: Q -> Vertex -> Bool
contains s q = elem q s

setAt :: [a] -> Int -> a -> [a]
setAt [] _ y = []
setAt (x : xs) 0 y = y : xs
setAt (x : xs) i y = x : setAt xs (i - 1) y

fixMaybe :: (a -> Maybe a) -> a -> a
fixMaybe f x =
  case f x of
       Nothing -> x
       Just fx -> fixMaybe f fx

data AlgState k = AlgState [k] [k] Q

go :: forall k. (Eq k, Semiring k, Ord k) =>
      Graph -> (Edge -> k) -> Vertex -> [k]
go g w start = let AlgState d r s = result in d
  where
  n :: Int
  n = length (vertices g)

  initialState :: AlgState k
  initialState = AlgState d d s
    where
    d :: [k]
    d = setAt (replicate n zero) start one

    s :: Q
    s = enqueue start empty

  doStep :: AlgState k -> Maybe (AlgState k)
  doStep (AlgState d r s) = do
    (q , s) <- dequeue s
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

    let enqueuedVertices = filter (not . contains s) (map snd relaxedEdges)
    let sN = foldr enqueue s enqueuedVertices
    return (AlgState dN rNN sN)

  result :: AlgState k
  result = fixMaybe doStep initialState

main :: IO ()
main = return ()
