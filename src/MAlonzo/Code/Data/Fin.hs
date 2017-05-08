{-# LANGUAGE EmptyDataDecls, ExistentialQuantification,
             ScopedTypeVariables, NoMonomorphismRestriction, Rank2Types #-}
module MAlonzo.Code.Data.Fin where

import MAlonzo.RTE (coe, erased, addInt, subInt, mulInt, quotInt,
                    remInt, geqInt, ltInt, eqInt, eqFloat)
import qualified Control.Exception
import qualified Data.Text
import qualified Data.Text.IO
import qualified MAlonzo.RTE
import qualified System.Environment
import qualified System.IO
import qualified Data.Text
import qualified MAlonzo.Code.Data.Nat.Base
import qualified MAlonzo.Code.Function
import qualified MAlonzo.Code.Relation.Nullary.Decidable

name4 = "Data.Fin.Fin"
d4 a0 = ()
data T4 a0 a1 = C8 a0 | C14 a0 a1
name18 = "Data.Fin.to\8469"
d18 v0 v1 = du18 v1
du18 v0
  = case coe v0 of
      C8 v1 -> 0 :: Integer
      C14 v1 v2 -> coe addInt (1 :: Integer) (coe du18 v2)
      _ -> coe MAlonzo.RTE.mazUnreachableError
name24 = "Data.Fin.Fin\8242"
d24 = erased
name30 = "Data.Fin.from\8469"
d30 v0
  = case coe v0 of
      0 -> coe C8 (0 :: Integer)
      _ -> let v1 = coe subInt v0 (1 :: Integer) in
           coe C14 v0 (coe d30 v1)
name38 = "Data.Fin.from\8469\8804"
d38 v0 v1 v2 = du38 v2
du38 v0
  = case coe v0 of
      MAlonzo.Code.Data.Nat.Base.C18 v1 v2 v3
        -> case coe v3 of
             MAlonzo.Code.Data.Nat.Base.C10 v4 -> coe C8 v2
             MAlonzo.Code.Data.Nat.Base.C18 v4 v5 v6
               -> coe C14 (coe addInt (1 :: Integer) v5) (coe du38 v3)
             _ -> coe MAlonzo.RTE.mazUnreachableError
      _ -> coe MAlonzo.RTE.mazUnreachableError
name46 = "Data.Fin.from\8469\8804\8243"
d46 v0 v1 v2 = du46 v0 v2
du46 v0 v1
  = case coe v0 of
      0 -> case coe v1 of
             MAlonzo.Code.Data.Nat.Base.C112 v2 -> coe C8 v2
             _ -> coe MAlonzo.RTE.mazUnreachableError
      _ -> let v2 = coe subInt v0 (1 :: Integer) in
           case coe v1 of
             MAlonzo.Code.Data.Nat.Base.C112 v3
               -> coe
                    C14 (coe addInt v0 v3)
                    (coe du46 v2 (coe MAlonzo.Code.Data.Nat.Base.C112 v3))
             _ -> coe MAlonzo.RTE.mazUnreachableError
name56 = "Data.Fin.#_"
d56 v0 v1 v2 = du56 v0 v1
du56 v0 v1
  = coe
      du38
      (coe
         MAlonzo.Code.Relation.Nullary.Decidable.du34
         (coe
            MAlonzo.Code.Data.Nat.Base.d258 (coe addInt (1 :: Integer) v0) v1))
name64 = "Data.Fin.raise"
d64 v0 v1 v2
  = case coe v1 of
      0 -> coe v2
      _ -> let v3 = coe subInt v1 (1 :: Integer) in
           coe C14 (coe addInt v3 v0) (coe d64 v0 v3 v2)
name80 = "Data.Fin.reduce\8805"
d80 v0 v1 v2 v3 = du80 v0 v2 v3
du80 v0 v1 v2
  = case coe v0 of
      0 -> coe v1
      _ -> let v3 = coe subInt v0 (1 :: Integer) in
           case coe v1 of
             C14 v4 v5
               -> case coe v2 of
                    MAlonzo.Code.Data.Nat.Base.C18 v6 v7 v8 -> coe du80 v3 v5 v8
                    _ -> coe MAlonzo.RTE.mazUnreachableError
             _ -> coe MAlonzo.RTE.mazUnreachableError
name98 = "Data.Fin.inject"
d98 v0 v1 v2 = du98 v1 v2
du98 v0 v1
  = case coe v0 of
      C14 v2 v3
        -> case coe v1 of
             C8 v4 -> coe C8 v2
             C14 v4 v5 -> coe C14 v2 (coe du98 v3 v5)
             _ -> coe MAlonzo.RTE.mazUnreachableError
      _ -> coe MAlonzo.RTE.mazUnreachableError
name110 = "Data.Fin.inject!"
d110 v0 v1 v2
  = let v3 = coe subInt v0 (1 :: Integer) in
    case coe v1 of
      C14 v4 v5
        -> case coe v2 of
             C8 v6 -> coe C8 v3
             C14 v6 v7 -> coe C14 v3 (coe d110 v3 v5 v7)
             _ -> coe MAlonzo.RTE.mazUnreachableError
      _ -> coe MAlonzo.RTE.mazUnreachableError
name118 = "Data.Fin.inject+"
d118 v0 v1 v2 = du118 v1 v2
du118 v0 v1
  = case coe v1 of
      C8 v2 -> coe C8 (coe addInt v0 v2)
      C14 v2 v3 -> coe C14 (coe addInt v0 v2) (coe du118 v0 v3)
      _ -> coe MAlonzo.RTE.mazUnreachableError
name128 = "Data.Fin.inject\8321"
d128 v0 v1 = du128 v1
du128 v0
  = case coe v0 of
      C8 v1 -> coe C8 (coe addInt (1 :: Integer) v1)
      C14 v1 v2 -> coe C14 (coe addInt (1 :: Integer) v1) (coe du128 v2)
      _ -> coe MAlonzo.RTE.mazUnreachableError
name136 = "Data.Fin.inject\8804"
d136 v0 v1 v2 v3 = du136 v2 v3
du136 v0 v1
  = case coe v0 of
      C8 v2
        -> case coe v1 of
             MAlonzo.Code.Data.Nat.Base.C18 v3 v4 v5 -> coe C8 v4
             _ -> coe MAlonzo.RTE.mazUnreachableError
      C14 v2 v3
        -> case coe v1 of
             MAlonzo.Code.Data.Nat.Base.C18 v4 v5 v6
               -> coe C14 v5 (coe du136 v3 v6)
             _ -> coe MAlonzo.RTE.mazUnreachableError
      _ -> coe MAlonzo.RTE.mazUnreachableError
name148 = "Data.Fin.strengthen"
d148 v0 v1 = du148 v1
du148 v0
  = case coe v0 of
      C8 v1 -> coe C8 (0 :: Integer)
      C14 v1 v2 -> coe C14 (coe du18 v0) (coe du148 v2)
      _ -> coe MAlonzo.RTE.mazUnreachableError
name160 = "Data.Fin.fold"
d160 v0 v1 v2 v3 v4 = du160 v2 v3 v4
du160 v0 v1 v2
  = case coe v2 of
      C8 v3 -> coe v1 v3
      C14 v3 v4 -> coe v0 v3 (coe du160 v0 v1 v4)
      _ -> coe MAlonzo.RTE.mazUnreachableError
name186 = "Data.Fin.fold\8242"
d186 v0 v1 v2 v3 v4 v5 = du186 v0 v3 v4 v5
du186 v0 v1 v2 v3
  = case coe v3 of
      C8 v4 -> coe v2
      C14 v4 v5
        -> let v6 = coe subInt v0 (1 :: Integer) in
           coe
             v1 v5
             (coe
                du186 v6 (coe MAlonzo.Code.Function.du38 (\ v7 -> v1) du128) v2 v5)
      _ -> coe MAlonzo.RTE.mazUnreachableError
name216 = "Data.Fin.lift"
d216 v0 v1 v2 v3 v4 = du216 v1 v2 v3 v4
du216 v0 v1 v2 v3
  = case coe v1 of
      0 -> coe v2 v3
      _ -> let v4 = coe subInt v1 (1 :: Integer) in
           case coe v3 of
             C8 v5 -> coe C8 (coe addInt v4 v0)
             C14 v5 v6 -> coe C14 (coe addInt v4 v0) (coe du216 v0 v4 v2 v6)
             _ -> coe MAlonzo.RTE.mazUnreachableError
name240 = "Data.Fin._+_"
d240 v0 v1 v2 v3 = du240 v1 v2 v3
du240 v0 v1 v2
  = case coe v1 of
      C8 v3 -> coe v2
      C14 v3 v4
        -> coe C14 (coe addInt (coe du18 v4) v0) (coe du240 v0 v4 v2)
      _ -> coe MAlonzo.RTE.mazUnreachableError
name254 = "Data.Fin._-_"
d254 v0 v1 v2 = du254 v1 v2
du254 v0 v1
  = case coe v1 of
      C8 v2 -> coe v0
      C14 v2 v3
        -> case coe v0 of
             C14 v4 v5 -> coe du254 v5 v3
             _ -> coe MAlonzo.RTE.mazUnreachableError
      _ -> coe MAlonzo.RTE.mazUnreachableError
name266 = "Data.Fin._\8469-_"
d266 v0 v1
  = case coe v1 of
      C8 v2 -> coe d30 v0
      C14 v2 v3
        -> let v4 = coe subInt v0 (1 :: Integer) in coe d266 v4 v3
      _ -> coe MAlonzo.RTE.mazUnreachableError
name276 = "Data.Fin._\8469-\8469_"
d276 v0 v1
  = case coe v1 of
      C8 v2 -> coe v0
      C14 v2 v3
        -> let v4 = coe subInt v0 (1 :: Integer) in coe d276 v4 v3
      _ -> coe MAlonzo.RTE.mazUnreachableError
name286 = "Data.Fin.pred"
d286 v0 v1 = du286 v1
du286 v0
  = case coe v0 of
      C8 v1 -> coe v0
      C14 v1 v2 -> coe du128 v2
      _ -> coe MAlonzo.RTE.mazUnreachableError
name292 = "Data.Fin._\8804_"
d292 = erased
name300 = "Data.Fin._\8804?_"
d300 v0 v1 v2 = du300 v1 v2
du300 v0 v1
  = coe MAlonzo.Code.Data.Nat.Base.d258 (coe du18 v0) (coe du18 v1)
name308 = "Data.Fin._<_"
d308 = erased
name310 = "Data.Fin._\8826_"
d310 a0 a1 = ()
data T310 a0 a1 = C316 a0 a1
name320 = "Data.Fin.Ordering"
d320 a0 a1 a2 = ()
data T320 a0 a1 = C328 a0 a1 | C332 a0 | C338 a0 a1
name346 = "Data.Fin.compare"
d346 v0 v1 v2 = du346 v1 v2
du346 v0 v1
  = case coe v0 of
      C8 v2
        -> case coe v1 of
             C8 v3 -> coe C332 v0
             C14 v3 v4 -> coe C328 (coe C14 v2 v4) (coe C8 (coe du18 v4))
             _ -> coe MAlonzo.RTE.mazUnreachableError
      C14 v2 v3
        -> case coe v1 of
             C8 v4 -> coe C338 v0 (coe C8 (coe du18 v3))
             C14 v4 v5
               -> let v6 = coe du346 v3 v5 in
                  case coe v6 of
                    C328 v7 v8 -> coe C328 (coe C14 v2 v7) (coe C14 (coe du18 v7) v8)
                    C332 v7 -> coe C332 (coe C14 v2 v7)
                    C338 v7 v8 -> coe C338 (coe C14 v2 v7) (coe C14 (coe du18 v7) v8)
                    _ -> coe MAlonzo.RTE.mazUnreachableError
             _ -> coe MAlonzo.RTE.mazUnreachableError
      _ -> coe MAlonzo.RTE.mazUnreachableError