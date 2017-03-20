{-# LANGUAGE ScopedTypeVariables, DataKinds #-}
module Main where

import Prelude hiding (elem)

import Data.Array
import Data.Graph
import Data.OrdPSQ (OrdPSQ)
import Data.Proxy
import Data.Ratio

import System.Environment

import Types
import Mohri
import MohriPriority
import Dijkstra
import Mohri.KShortest

-- Test data

phantom :: Proxy [Vertex]
phantom = Proxy

phantomp :: Proxy (OrdPSQ Vertex Weight Vertex)
phantomp = Proxy

main :: IO ()
main = do
  let n = 60
  args <- getArgs
  let filename = case args of { [] -> "test-data.txt" ; (s : _) -> s }
  testData <- readFile filename
  let (n :: Vertex , g :: Graph , l :: [[Weight]]) = read testData
  let w = untabulate l
  print $ mohri phantom g w 0
  print $ mohrip phantomp g w 0
  print $ dijkstra phantomp g w 0
  print $ mohriKShortest (Proxy :: Proxy 20) phantom g w 0
