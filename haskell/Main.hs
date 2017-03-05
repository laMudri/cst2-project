{-# LANGUAGE ScopedTypeVariables #-}
module Main where

import Prelude hiding (elem)

import Data.Array
import Data.Graph

import Types
import Mohri

-- Test data

phantom :: Phantom [Vertex]
phantom = Ph

graph :: Graph
graph = array (0 , 2) [ (i , [0 .. 2]) | i <- [0 .. 2] ]

weight :: Edge -> Weight
weight (0 , 0) = W $ Top
weight (0 , 1) = W $ Fin 2
weight (0 , 2) = W $ Fin 4
weight (1 , 0) = W $ Fin 2
weight (1 , 1) = W $ Top
weight (1 , 2) = W $ Fin 1
weight (2 , 0) = W $ Fin 4
weight (2 , 1) = W $ Fin 1
weight (2 , 2) = W $ Top

source :: Vertex
source = 0

main :: IO ()
main = do
  let d = mohri phantom graph weight source
  print d
