{-# LANGUAGE EmptyDataDecls, ExistentialQuantification,
             ScopedTypeVariables, NoMonomorphismRestriction, Rank2Types #-}
module MAlonzo.Code.Data.List.All where

import MAlonzo.RTE (coe, erased, addInt, subInt, mulInt, quotInt,
                    remInt, geqInt, ltInt, eqInt, eqFloat)
import qualified Control.Exception
import qualified Data.Text
import qualified Data.Text.IO
import qualified MAlonzo.RTE
import qualified System.Environment
import qualified System.IO
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Builtin.List
import qualified MAlonzo.Code.Data.List.Any
import qualified MAlonzo.Code.Function
import qualified MAlonzo.Code.Relation.Nullary
import qualified MAlonzo.Code.Relation.Nullary.Decidable

name14 = "Data.List.All.All"
d14 a0 a1 a2 a3 a4 = ()
data T14 a0 a1 a2 a3 = C24 | C34 a0 a1 a2 a3
name48 = "Data.List.All.head"
d48 v0 v1 v2 v3 v4 v5 v6 = du48 v6
du48 v0
  = case coe v0 of
      C34 v1 v2 v3 v4 -> coe v3
      _ -> coe MAlonzo.RTE.mazUnreachableError
name66 = "Data.List.All.tail"
d66 v0 v1 v2 v3 v4 v5 v6 = du66 v6
du66 v0
  = case coe v0 of
      C34 v1 v2 v3 v4 -> coe v4
      _ -> coe MAlonzo.RTE.mazUnreachableError
name84 = "Data.List.All.lookup"
d84 v0 v1 v2 v3 v4 v5 v6 v7 = du84 v5 v7
du84 v0 v1
  = case coe v0 of
      C34 v2 v3 v4 v5
        -> case coe v1 of
             MAlonzo.Code.Data.List.Any.C30 v6 v7 v8 -> coe v4
             MAlonzo.Code.Data.List.Any.C38 v6 v7 v8 -> coe du84 v5 v8
             _ -> coe MAlonzo.RTE.mazUnreachableError
      _ -> coe MAlonzo.RTE.mazUnreachableError
name108 = "Data.List.All.tabulate"
d108 v0 v1 v2 v3 v4 v5 = du108 v4 v5
du108 v0 v1
  = case coe v0 of
      [] -> coe C24
      (:) v2 v3
        -> coe
             C34 v2 v3
             (coe v1 v2 (coe MAlonzo.Code.Data.List.Any.C30 v2 v3 erased))
             (coe
                du108 v3
                (\ v4 ->
                   coe
                     MAlonzo.Code.Function.du38 (\ v5 -> coe v1 v4)
                     (coe MAlonzo.Code.Data.List.Any.C38 v2 v3)))
      _ -> coe MAlonzo.RTE.mazUnreachableError
name130 = "Data.List.All.map"
d130 v0 v1 v2 v3 v4 v5 v6 v7 v8 = du130 v6 v8
du130 v0 v1
  = case coe v1 of
      C24 -> coe v1
      C34 v2 v3 v4 v5 -> coe C34 v2 v3 (coe v0 v2 v4) (coe du130 v0 v5)
      _ -> coe MAlonzo.RTE.mazUnreachableError
name148 = "Data.List.All.all"
d148 v0 v1 v2 v3 v4 v5 = du148 v4 v5
du148 v0 v1
  = case coe v1 of
      [] -> coe MAlonzo.Code.Relation.Nullary.C22 C24
      (:) v2 v3
        -> let v4 = coe v0 v2 in
           case coe v4 of
             MAlonzo.Code.Relation.Nullary.C22 v5
               -> coe
                    MAlonzo.Code.Relation.Nullary.Decidable.du98 (coe C34 v2 v3 v5)
                    du66 (coe du148 v0 v3)
             MAlonzo.Code.Relation.Nullary.C26
               -> coe MAlonzo.Code.Relation.Nullary.C26
             _ -> coe MAlonzo.RTE.mazUnreachableError
      _ -> coe MAlonzo.RTE.mazUnreachableError