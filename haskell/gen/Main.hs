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

data Alg = C | B | U deriving (Show)

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

{-
main :: IO ()
main = do
  args <- getArgs
  let Just (alg , (n , filename)) = readArgs args
  let g = completeGraph n
  let weightAlg = case alg of { C -> completeWeights; B -> bimodalWeights }
  w <- evalRandIO $ weightAlg (geo (1 % 120)) n
  writeFile filename (show (n , g , tabulate n w))
-}

data Nat = Z | S Nat
nat :: Vertex -> Nat
nat 0 = Z
nat n = S (nat (n - 1))

showForAgda :: Vertex -> (Edge -> Weight) -> String
showForAgda n w = "module TestData where\n\nG : Graph " ++ show n ++ body
  where
  body :: String
  body = concat (map ("\n" ++) (equations ++ absurds))

  equations :: [String]
  equations = [ lhs x y ++ " = " ++ rhs (w (x , y))
              | x <- [0 .. pred n], y <- [0 .. pred n]
              ]

  absurds :: [String]
  absurds = ["G " ++ absurdFin (nat n) ++ " _", "G _ " ++ absurdFin (nat n)]

  absurdFin :: Nat -> String
  absurdFin Z = "()"
  absurdFin (S Z) = "suc ()"
  absurdFin (S x) = "suc (" ++ absurdFin x ++ ")"

  lhs :: Vertex -> Vertex -> String
  lhs x y = "G " ++ showFin (nat x) ++ " " ++ showFin (nat y)

  showFin :: Nat -> String
  showFin Z = "zero"
  showFin (S Z) = "suc zero"
  showFin (S x) = "suc (" ++ showFin x ++ ")"

  rhs :: Weight -> String
  rhs (W (Fin x)) = "just " ++ show x
  rhs (W Top) = "nothing"

produceGraph :: (Alg , Int , Rational , String) -> IO ()
produceGraph (alg , n , p , filename) = do
  let g = completeGraph n
  let rv = geo p
  let weightAlg =
       case alg of
            C -> completeWeights rv n
            B -> bimodalWeights rv n
            U -> return uniformWeights
  w <- evalRandIO weightAlg
  writeFile filename (show (n , g , tabulate n w))

main :: IO ()
main = do
  mapM_ produceGraph $ do
    n <- [50, 100 .. 450]
    alg <- [C, B, U]
    p <- case alg of { U ->  return 1; _ -> map (\ i -> 1 % 2 ^ i) [1 .. 8] }
    let filename =
         "data/test-"
           ++ show alg ++ "-"
           ++ show n ++ "-"
           ++ show (denominator p) ++ ".txt"
    return (alg , n , p , filename)
