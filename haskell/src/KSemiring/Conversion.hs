{-# LANGUAGE DataKinds, KindSignatures, ScopedTypeVariables, GADTs #-}
module KSemiring.Conversion where

import KSemiring
import Types

import Data.Graph
import Data.List
import Data.Proxy
import GHC.TypeLits

convertWeight :: forall k w. (KnownNat k, Semiring w) => w -> KSemiring k w
convertWeight w = K $ w : genericTake (pred k) (repeat zero)
  where k = natVal (Proxy :: Proxy k)

convertWeighting :: (KnownNat k, Semiring w) =>
                    (Edge -> w) -> (Edge -> KSemiring k w)
convertWeighting w e = convertWeight (w e)
