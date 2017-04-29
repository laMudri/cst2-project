{-# LANGUAGE TupleSections, ScopedTypeVariables #-}
module Main where

import Types

import Control.Monad
import Data.Graph
import Data.List
import System.Environment
import System.FilePath

data Nat = Z | S Nat

nat :: Vertex -> Nat
nat 0 = Z
nat n = S (nat (n - 1))

showForAgda :: Vertex -> (Edge -> Weight) -> String
showForAgda n w = "G : Graph " ++ show n ++ body
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

main :: IO ()
main = do
  fp : _ <- getArgs
  --print $ takeExtension fp
  guard $ takeExtension fp == ".txt"
  let newFp = fp -<.> "agda"

  dat <- readFile fp
  let (n :: Vertex , g :: Graph , l :: [[Weight]]) = read dat
  let w = untabulate l
  let output = "module TestData." ++ takeBaseName fp ++ " where\n\n"
               ++ showForAgda n w
  writeFile newFp output
