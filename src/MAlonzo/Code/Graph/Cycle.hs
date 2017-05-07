{-# LANGUAGE EmptyDataDecls, ExistentialQuantification,
             ScopedTypeVariables, NoMonomorphismRestriction, Rank2Types #-}
module MAlonzo.Code.Graph.Cycle where

import MAlonzo.RTE (coe, erased, addInt, subInt, mulInt, quotInt,
                    remInt, geqInt, ltInt, eqInt, eqFloat)
import qualified Control.Exception
import qualified Data.Text
import qualified Data.Text.IO
import qualified MAlonzo.RTE
import qualified System.Environment
import qualified System.IO
import qualified Data.Text
import qualified MAlonzo.Code.Graph.Definitions

name190 = "Graph.Cycle._.Cycle"
d190 = erased
name196 = "Graph.Cycle._.Path"
d196 = erased
name230 = "Graph.Cycle._.\8707-Path-setoid"
d230 v0 v1 v2 v3 v4 v5 = du230
du230 v0 v1 = coe MAlonzo.Code.Graph.Definitions.du300
name256 = "Graph.Cycle.Cycle_occurs_times-in_"
d256 = erased
name274 = "Graph.Cycle.Most-occurring-cycle"
d274 a0 a1 a2 a3 a4 a5 a6 a7 a8 a9 a10 = ()
data T274 a0 a1 a2 = C99 a0 a1 a2
name298 = "Graph.Cycle.Most-occurring-cycle.m"
d298 v0
  = case coe v0 of
      C99 v1 v2 v3 -> coe v1
      _ -> coe MAlonzo.RTE.mazUnreachableError
name300 = "Graph.Cycle.Most-occurring-cycle.occurs"
d300 v0
  = case coe v0 of
      C99 v1 v2 v3 -> coe v2
      _ -> coe MAlonzo.RTE.mazUnreachableError
name308 = "Graph.Cycle.Most-occurring-cycle.most"
d308 v0
  = case coe v0 of
      C99 v1 v2 v3 -> coe v3
      _ -> coe MAlonzo.RTE.mazUnreachableError
name310 = "Graph.Cycle.P"
d310 v0 v1 v2 v3 v4 v5 v6 v7 = du310
du310 = MAlonzo.Code.Graph.Definitions.du300
name326 = "Graph.Cycle.all-P"
d326
  = error
      "MAlonzo Runtime Error: postulate evaluated: Graph.Cycle.all-P"
name334 = "Graph.Cycle.all-P-correct"
d334
  = error
      "MAlonzo Runtime Error: postulate evaluated: Graph.Cycle.all-P-correct"