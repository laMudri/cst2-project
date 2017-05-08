{-# LANGUAGE EmptyDataDecls, ExistentialQuantification,
             ScopedTypeVariables, NoMonomorphismRestriction, Rank2Types #-}
module MAlonzo.Code.App where

import MAlonzo.RTE (coe, erased, addInt, subInt, mulInt, quotInt,
                    remInt, geqInt, ltInt, eqInt, eqFloat)
import qualified Control.Exception
import qualified Data.Text
import qualified Data.Text.IO
import qualified MAlonzo.RTE
import qualified System.Environment
import qualified System.IO
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Builtin.Bool
import qualified MAlonzo.Code.Data.Fin
import qualified MAlonzo.Code.Data.Fin.Properties
import qualified MAlonzo.Code.Data.Vec
import qualified MAlonzo.Code.Function
import qualified MAlonzo.Code.Relation.Nullary

name4 = "App.\8739_\8739"
d4 v0
  = coe
      MAlonzo.Code.Function.du38 (\ v1 -> MAlonzo.Code.Data.Vec.du522)
      (coe MAlonzo.Code.Data.Vec.du732 v0)
name18 = "App._\10216_\10217\8788_"
d18 v0 v1 v2 v3 v4 v5 v6 = du18 v3 v4 v5 v6
du18 v0 v1 v2 v3
  = let v4 = coe MAlonzo.Code.Data.Fin.Properties.du82 v1 v3 in
    case coe v4 of
      MAlonzo.Code.Relation.Nullary.C22 v5 -> coe v2
      MAlonzo.Code.Relation.Nullary.C26 -> coe v0 v3
      _ -> coe MAlonzo.RTE.mazUnreachableError
name64 = "App.appAt"
d64 v0 v1 v2 v3 v4 v5 v6 = du64 v3 v4 v5 v6
du64 v0 v1 v2 v3
  = let v4 = coe MAlonzo.Code.Data.Fin.Properties.du82 v0 v3 in
    case coe v4 of
      MAlonzo.Code.Relation.Nullary.C22 v5 -> coe v1 (coe v2 v0)
      MAlonzo.Code.Relation.Nullary.C26 -> coe v2 v3
      _ -> coe MAlonzo.RTE.mazUnreachableError
name102 = "App.appWhen"
d102 v0 v1 v2 v3 v4 v5 v6 = du102 v3 v4 v5 v6
du102 v0 v1 v2 v3
  = let v4 = coe v0 v3 in
    case coe v4 of
      False -> coe v2 v3
      True -> coe v1 (coe v2 v3)
      _ -> coe MAlonzo.RTE.mazUnreachableError
name140 = "App.appAtV"
d140 v0 v1 v2 v3 v4 v5 = du140 v3 v4 v5
du140 v0 v1 v2
  = case coe v0 of
      MAlonzo.Code.Data.Fin.C8 v3
        -> case coe v2 of
             MAlonzo.Code.Data.Vec.C22 v4 v5 v6
               -> coe MAlonzo.Code.Data.Vec.C22 v3 (coe v1 v5) v6
             _ -> coe MAlonzo.RTE.mazUnreachableError
      MAlonzo.Code.Data.Fin.C14 v3 v4
        -> case coe v2 of
             MAlonzo.Code.Data.Vec.C22 v5 v6 v7
               -> coe MAlonzo.Code.Data.Vec.C22 v3 v6 (coe du140 v4 v1 v7)
             _ -> coe MAlonzo.RTE.mazUnreachableError
      _ -> coe MAlonzo.RTE.mazUnreachableError
name164 = "App.appWhenV"
d164 v0 v1 v2 v3 v4 v5 = du164 v3 v4 v5
du164 v0 v1 v2
  = case coe v2 of
      MAlonzo.Code.Data.Vec.C14 -> coe v2
      MAlonzo.Code.Data.Vec.C22 v3 v4 v5
        -> let v6 = coe v0 (coe MAlonzo.Code.Data.Fin.C8 v3) in
           case coe v6 of
             False
               -> coe
                    MAlonzo.Code.Data.Vec.C22 v3 v4
                    (coe
                       du164
                       (coe
                          MAlonzo.Code.Function.du38 (\ v7 -> v0)
                          (coe MAlonzo.Code.Data.Fin.C14 v3))
                       v1 v5)
             True
               -> coe
                    MAlonzo.Code.Data.Vec.C22 v3 (coe v1 v4)
                    (coe
                       du164
                       (coe
                          MAlonzo.Code.Function.du38 (\ v7 -> v0)
                          (coe MAlonzo.Code.Data.Fin.C14 v3))
                       v1 v5)
             _ -> coe MAlonzo.RTE.mazUnreachableError
      _ -> coe MAlonzo.RTE.mazUnreachableError