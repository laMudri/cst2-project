{-# LANGUAGE DataKinds, KindSignatures, ScopedTypeVariables, GADTs #-}
module Mohri.KShortest where

import Types
import KSemiring
import KSemiring.Conversion
import Mohri

import Data.Graph
import Data.Proxy
import GHC.TypeLits

mohriKShortest ::
  forall k q l. (Eq k, Semiring k, Ord k, Queue q, KnownNat l) =>
  Proxy l -> Proxy q -> Graph -> (Edge -> k) -> Vertex -> [KSemiring l k]
mohriKShortest _ ph g w source = mohri ph g (convertWeighting w) source
