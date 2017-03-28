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
import KSemiring
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
  print $ {-# SCC "mycc_mohri" #-} mohri phantom g w 0
  print $ {-# SCC "mycc_mohrip" #-} mohrip phantomp g w 0
  print $ {-# SCC "mycc_dijkstra" #-} dijkstra phantomp g w 0

  print $ {-# SCC "mycc_mohriKShortest4" #-} mohriKShortest (Proxy :: Proxy 4) phantom g w 0
  print $ {-# SCC "mycc_mohriKShortest8" #-} mohriKShortest (Proxy :: Proxy 8) phantom g w 0
  print $ {-# SCC "mycc_mohriKShortest12" #-} mohriKShortest (Proxy :: Proxy 12) phantom g w 0
  print $ {-# SCC "mycc_mohriKShortest16" #-} mohriKShortest (Proxy :: Proxy 16) phantom g w 0
  print $ {-# SCC "mycc_mohriKShortest20" #-} mohriKShortest (Proxy :: Proxy 20) phantom g w 0

  print $ {-# SCC "mycc_mohripKShortest4" #-} mohripKShortest (Proxy :: Proxy 4) (Proxy :: Proxy (OrdPSQ Vertex (KSemiring 4 Weight) Vertex)) g w 0
  print $ {-# SCC "mycc_mohripKShortest8" #-} mohripKShortest (Proxy :: Proxy 8) (Proxy :: Proxy (OrdPSQ Vertex (KSemiring 8 Weight) Vertex)) g w 0
  print $ {-# SCC "mycc_mohripKShortest12" #-} mohripKShortest (Proxy :: Proxy 12) (Proxy :: Proxy (OrdPSQ Vertex (KSemiring 12 Weight) Vertex)) g w 0
  print $ {-# SCC "mycc_mohripKShortest16" #-} mohripKShortest (Proxy :: Proxy 16) (Proxy :: Proxy (OrdPSQ Vertex (KSemiring 16 Weight) Vertex)) g w 0
  print $ {-# SCC "mycc_mohripKShortest20" #-} mohripKShortest (Proxy :: Proxy 20) (Proxy :: Proxy (OrdPSQ Vertex (KSemiring 20 Weight) Vertex)) g w 0
