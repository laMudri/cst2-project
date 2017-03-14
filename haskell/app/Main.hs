{-# LANGUAGE ScopedTypeVariables #-}
module Main where

import Prelude hiding (elem)

import Data.Array
import Data.Graph
import Data.OrdPSQ (OrdPSQ)
import Data.Ratio

import System.Environment

import Types
import Mohri
import MohriPriority
import Dijkstra

-- Test data

phantom :: Phantom [Vertex]
phantom = Ph

phantomp :: Phantom (OrdPSQ Vertex Weight Vertex)
phantomp = Ph

main :: IO ()
main = do
  let n = 60
  args <- getArgs
  let filename = case args of { [] -> "test-data.txt" ; (s : _) -> s }
  testData <- readFile filename
  let (n :: Vertex , g :: Graph , l :: [[Weight]]) = read testData
  let w = untabulate l
  let d0 = mohri phantom g w 0
  let d1 = mohrip phantomp g w 0
  let d2 = dijkstra phantomp g w 0
  print [d0, d1, d2]
