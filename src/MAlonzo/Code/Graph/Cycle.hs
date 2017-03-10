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

name186 = "Graph.Cycle._.Cycle"
d186 = erased
name192 = "Graph.Cycle._.Path"
d192 = erased
name226 = "Graph.Cycle._.\8707-Path-setoid"
d226 v0 v1 v2 v3 v4 v5 = du226
du226 v0 v1 = coe MAlonzo.Code.Graph.Definitions.du296
name252 = "Graph.Cycle.Cycle_occurs_times-in_"
d252 = erased
name270 = "Graph.Cycle.Most-occurring-cycle"
d270 a0 a1 a2 a3 a4 a5 a6 a7 a8 a9 a10 = ()
data T270 a0 a1 a2 = C99 a0 a1 a2
name294 = "Graph.Cycle.Most-occurring-cycle.m"
d294 v0
  = case coe v0 of
      C99 v1 v2 v3 -> coe v1
      _ -> coe MAlonzo.RTE.mazUnreachableError
name296 = "Graph.Cycle.Most-occurring-cycle.occurs"
d296 v0
  = case coe v0 of
      C99 v1 v2 v3 -> coe v2
      _ -> coe MAlonzo.RTE.mazUnreachableError
name304 = "Graph.Cycle.Most-occurring-cycle.most"
d304 v0
  = case coe v0 of
      C99 v1 v2 v3 -> coe v3
      _ -> coe MAlonzo.RTE.mazUnreachableError
name306 = "Graph.Cycle.P"
d306 v0 v1 v2 v3 v4 v5 v6 v7 = du306
du306 = MAlonzo.Code.Graph.Definitions.du296
name322 = "Graph.Cycle.all-P"
d322
  = error
      "MAlonzo Runtime Error: postulate evaluated: Graph.Cycle.all-P"
name330 = "Graph.Cycle.all-P-correct"
d330
  = error
      "MAlonzo Runtime Error: postulate evaluated: Graph.Cycle.all-P-correct"