{-# LANGUAGE TupleSections #-}
module Main where

import Control.Monad.Random.Lazy
import Data.Graph
import Data.Ratio
import System.Environment
import Text.Read
import Types

geo :: (MonadRandom m, Integral int) => Rational -> m int
geo p = do
  r <- getRandomR (1 , denominator p)
  if r <= numerator p then return 0 else succ <$> geo p

-- Requires lazy instance of MonadRandom
getRandomDs :: (MonadRandom m) => m a -> m [a]
getRandomDs r = do
  x <- r
  xs <- getRandomDs r
  return (x : xs)

completeGraph :: Vertex -> Graph
completeGraph n = buildG (0 , pred n) [ (x , y) | x <- [0 .. pred n]
                                                , y <- [0 .. pred n]
                                      ]

completeWeights :: (MonadRandom m) => m Int -> Vertex ->
                                      m (Edge -> Weight)
completeWeights r n = do
  ws <- getRandomDs r
  return $ \ (x , y) -> W . Fin $ ws !! (x + n * y)

bimodalWeights :: (MonadRandom m) => m Int -> Vertex ->
                                     m (Edge -> Weight)
bimodalWeights r n = do
  ws <- getRandomDs r
  -- Vertices of the same parity are connected.
  -- Also, vertices n - 2 and n - 1 are connected.
  let w (x , y)
        | x `mod` 2 == y `mod` 2   = W . Fin $ ws !! (x + n * y)
        | x == n - 2 && y == n - 1 = W . Fin $ ws !! (x + n * y)
        | x == n - 1 && y == n - 2 = W . Fin $ ws !! (x + n * y)
        | otherwise                = W Top
  return w

uniformWeights :: Edge -> Weight
uniformWeights _ = W $ Fin 1

data Alg = C | B | U

defAlg = C
defN = 60
defFilename = "test-data.txt"

readArgs'' :: [String] -> Maybe String
readArgs'' [] = return defFilename
readArgs'' (arg : args) = return arg

readArgs' :: [String] -> Maybe (Int , String)
readArgs' [] = return (defN , defFilename)
readArgs' (arg : args) = (,) <$> readMaybe arg <*> readArgs'' args

readArgs :: [String] -> Maybe (Alg , (Int , String))
readArgs [] = return (defAlg , (defN , defFilename))
readArgs ("c" : args) = (C ,) <$> readArgs' args
readArgs ("b" : args) = (B ,) <$> readArgs' args
readArgs ("u" : args) = (U ,) <$> readArgs' args
readArgs (_ : args) = Nothing

main :: IO ()
main = do
  args <- getArgs
  let Just (alg , (n , filename)) = readArgs args
  let g = completeGraph n
  let weightAlg = case alg of { C -> completeWeights; B -> bimodalWeights }
  w <- evalRandIO $ weightAlg (geo (1 % 120)) n
  writeFile filename (show (n , g , tabulate n w))
