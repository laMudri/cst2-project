{-# LANGUAGE EmptyDataDecls, ExistentialQuantification,
             ScopedTypeVariables, NoMonomorphismRestriction, Rank2Types #-}
module MAlonzo.Code.Relation.Binary.PreorderReasoning where

import MAlonzo.RTE (coe, erased, addInt, subInt, mulInt, quotInt,
                    remInt, geqInt, ltInt, eqInt, eqFloat)
import qualified Control.Exception
import qualified Data.Text
import qualified Data.Text.IO
import qualified MAlonzo.RTE
import qualified System.Environment
import qualified System.IO
import qualified Data.Text
import qualified MAlonzo.Code.Relation.Binary
import qualified MAlonzo.Code.Relation.Binary.Core

name48 = "Relation.Binary.PreorderReasoning._IsRelatedTo_"
d48 a0 a1 a2 a3 a4 a5 = ()
newtype T48 a0 = C56 a0
name62 = "Relation.Binary.PreorderReasoning.begin_"
d62 v0
  = case coe v0 of
      C56 v1 -> coe v1
      _ -> coe MAlonzo.RTE.mazUnreachableError
name72 = "Relation.Binary.PreorderReasoning._\8764\10216_\10217_"
d72 v0 v1 v2 v3 v4 v5 v6 v7 v8 = du72 v3 v4 v5 v6 v7 v8
du72 v0 v1 v2 v3 v4 v5
  = case coe v5 of
      C56 v6
        -> coe
             C56
             (coe
                MAlonzo.Code.Relation.Binary.d40
                (coe MAlonzo.Code.Relation.Binary.d92 v0) v1 v2 v3 v4 v6)
      _ -> coe MAlonzo.RTE.mazUnreachableError
name84 = "Relation.Binary.PreorderReasoning._\8776\10216_\10217_"
d84 v0 v1 v2 v3 v4 v5 v6 v7 v8 = du84 v3 v4 v5 v6 v7 v8
du84 v0 v1 v2 v3 v4 v5
  = case coe v5 of
      C56 v6
        -> coe
             C56
             (coe
                MAlonzo.Code.Relation.Binary.d40
                (coe MAlonzo.Code.Relation.Binary.d92 v0) v1 v2 v3
                (coe
                   MAlonzo.Code.Relation.Binary.d38
                   (coe MAlonzo.Code.Relation.Binary.d92 v0) v1 v2 v4)
                v6)
      _ -> coe MAlonzo.RTE.mazUnreachableError
name94 = "Relation.Binary.PreorderReasoning._\8776\10216\10217_"
d94 v0 = coe v0
name100 = "Relation.Binary.PreorderReasoning._\8718"
d100 v0 v1
  = coe
      C56
      (coe
         MAlonzo.Code.Relation.Binary.d38
         (coe MAlonzo.Code.Relation.Binary.d92 v0) v1 v1
         (coe
            MAlonzo.Code.Relation.Binary.Core.d516
            (coe
               MAlonzo.Code.Relation.Binary.d36
               (coe MAlonzo.Code.Relation.Binary.d92 v0))
            v1))