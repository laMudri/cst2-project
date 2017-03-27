{-# LANGUAGE DataKinds, KindSignatures, ScopedTypeVariables,
             FlexibleContexts #-}
module Mohri.KShortest where

import Types
import KSemiring
import KSemiring.Conversion
import Mohri
import MohriPriority

import Data.Graph
import Data.Proxy
import GHC.TypeLits

mohriKShortest ::
  forall k q l. (Eq k, Semiring k, Ord k, Queue q, KnownNat l) =>
  Proxy l -> Proxy q -> Graph -> (Edge -> k) -> Vertex -> [KSemiring l k]
mohriKShortest _ ph g w source = mohri ph g (convertWeighting w) source

mohripKShortest ::
  forall k q l.
    (Eq k, Semiring k, Ord k, PriorityQueue (KSemiring l k) q, KnownNat l) =>
  Proxy l -> Proxy q -> Graph -> (Edge -> k) -> Vertex -> [KSemiring l k]
mohripKShortest _ ph g w source = mohrip ph g (convertWeighting w) source
