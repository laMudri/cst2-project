{-# LANGUAGE EmptyDataDecls, ExistentialQuantification,
             ScopedTypeVariables, NoMonomorphismRestriction, Rank2Types #-}
module MAlonzo.Code.Relation.Binary.InducedPreorders where

import MAlonzo.RTE (coe, erased, addInt, subInt, mulInt, quotInt,
                    remInt, geqInt, ltInt, eqInt, eqFloat)
import qualified Control.Exception
import qualified Data.Text
import qualified Data.Text.IO
import qualified MAlonzo.RTE
import qualified System.Environment
import qualified System.IO
import qualified Data.Text
import qualified MAlonzo.Code.Function
import qualified MAlonzo.Code.Relation.Binary

name38 = "Relation.Binary.InducedPreorders.InducedPreorder\8321"
d38 v0 v1 v2 v3 = du38 v0 v3
du38 v0 v1
  = coe
      MAlonzo.Code.Relation.Binary.C125
      (coe
         MAlonzo.Code.Relation.Binary.C17
         (coe MAlonzo.Code.Relation.Binary.d136 v0) v1
         (\ v2 v3 v4 ->
            coe MAlonzo.Code.Function.du138 MAlonzo.Code.Function.du58))
name58 = "Relation.Binary.InducedPreorders.InducedPreorder\8322"
d58 v0 v1 v2 v3 v4 v5 = du58 v0 v5
du58 v0 v1
  = coe
      MAlonzo.Code.Relation.Binary.C125
      (coe
         MAlonzo.Code.Relation.Binary.C17
         (coe MAlonzo.Code.Relation.Binary.d136 v0)
         (\ v2 v3 v4 v5 -> coe v1 v5 v2 v3 v4)
         (\ v2 v3 v4 v5 v6 v7 ->
            coe MAlonzo.Code.Function.du38 (\ v8 -> coe v6 v7) (coe v5 v7)))