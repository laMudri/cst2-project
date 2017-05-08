{-# LANGUAGE EmptyDataDecls, ExistentialQuantification,
             ScopedTypeVariables, NoMonomorphismRestriction, Rank2Types #-}
module MAlonzo.Code.Data.Nat.Base where

import MAlonzo.RTE (coe, erased, addInt, subInt, mulInt, quotInt,
                    remInt, geqInt, ltInt, eqInt, eqFloat)
import qualified Control.Exception
import qualified Data.Text
import qualified Data.Text.IO
import qualified MAlonzo.RTE
import qualified System.Environment
import qualified System.IO
import qualified Data.Text
import qualified MAlonzo.Code.Relation.Nullary

name6 = "Data.Nat.Base._\8804_"
d6 a0 a1 = ()
data T6 a0 a1 a2 = C10 a0 | C18 a0 a1 a2
name20 = "Data.Nat.Base._<_"
d20 = erased
name26 = "Data.Nat.Base._\8805_"
d26 = erased
name32 = "Data.Nat.Base._>_"
d32 = erased
name38 = "Data.Nat.Base._\8816_"
d38 = erased
name44 = "Data.Nat.Base._\8814_"
d44 = erased
name50 = "Data.Nat.Base._\8817_"
d50 = erased
name56 = "Data.Nat.Base._\8815_"
d56 = erased
name64 = "Data.Nat.Base._\8804\8242_"
d64 a0 a1 = ()
data T64 a0 a1 = C68 | C74 a0 a1
name76 = "Data.Nat.Base._<\8242_"
d76 = erased
name82 = "Data.Nat.Base._\8805\8242_"
d82 = erased
name88 = "Data.Nat.Base._>\8242_"
d88 = erased
name98 = "Data.Nat.Base._\8804\8243_"
d98 a0 a1 = ()
newtype T98 a0 a1 = C112 a0
name108 = "Data.Nat.Base._\8804\8243_.k"
d108 v0
  = case coe v0 of
      C112 v1 -> coe v1
      _ -> coe MAlonzo.RTE.mazUnreachableError
name110 = "Data.Nat.Base._\8804\8243_.proof"
d110 = erased
name114 = "Data.Nat.Base._<\8243_"
d114 = erased
name120 = "Data.Nat.Base._\8805\8243_"
d120 = erased
name126 = "Data.Nat.Base._>\8243_"
d126 = erased
name136 = "Data.Nat.Base.erase"
d136 v0 v1 v2 = du136 v2
du136 v0 = coe C112 (coe d108 v0)
name144 = "Data.Nat.Base.fold"
d144 v0 v1 v2 v3 v4 = du144 v2 v3 v4
du144 v0 v1 v2
  = case coe v2 of
      0 -> coe v0
      _ -> let v3 = coe subInt v2 (1 :: Integer) in
           coe v1 (coe du144 v0 v1 v3)
name166 = "Data.Nat.Base.GeneralisedArithmetic.add"
d166 v0 v1 v2 v3 v4 v5 = du166 v3 v4 v5
du166 v0 v1 v2 = coe du144 v2 v0 v1
name174 = "Data.Nat.Base.GeneralisedArithmetic.mul"
d174 v0 v1 v2 v3 v4 v5 v6 = du174 v2 v4 v5 v6
du174 v0 v1 v2 v3 = coe du144 v0 (coe v1 v3) v2
name184 = "Data.Nat.Base.pred"
d184 v0
  = case coe v0 of
      0 -> 0 :: Integer
      _ -> coe subInt v0 (1 :: Integer)
name188 = "Data.Nat.Base._+\8910_"
d188 v0 v1
  = case coe v0 of
      0 -> coe v1
      _ -> let v2 = coe subInt v0 (1 :: Integer) in
           coe addInt (1 :: Integer) (coe d188 v1 v2)
name196 = "Data.Nat.Base._\8852_"
d196 v0 v1
  = case coe v0 of
      0 -> coe v1
      _ -> let v2 = coe subInt v0 (1 :: Integer) in
           case coe v1 of
             0 -> coe v0
             _ -> let v3 = coe subInt v1 (1 :: Integer) in
                  coe addInt (1 :: Integer) (coe d196 v2 v3)
name206 = "Data.Nat.Base._\8851_"
d206 v0 v1
  = case coe v0 of
      0 -> 0 :: Integer
      _ -> let v2 = coe subInt v0 (1 :: Integer) in
           case coe v1 of
             0 -> 0 :: Integer
             _ -> let v3 = coe subInt v1 (1 :: Integer) in
                  coe addInt (1 :: Integer) (coe d206 v2 v3)
name216 = "Data.Nat.Base.\8970_/2\8971"
d216 v0
  = case coe v0 of
      0 -> 0 :: Integer
      1 -> 0 :: Integer
      _ -> let v1 = coe subInt v0 (2 :: Integer) in
           coe addInt (1 :: Integer) (coe d216 v1)
name220 = "Data.Nat.Base.\8968_/2\8969"
d220 v0 = coe d216 (coe addInt (1 :: Integer) v0)
name224 = "Data.Nat.Base._\8799_"
d224 v0 v1
  = case coe v0 of
      0 -> case coe v1 of
             0 -> coe MAlonzo.Code.Relation.Nullary.C22 erased
             _ -> coe MAlonzo.Code.Relation.Nullary.C26
      _ -> let v2 = coe subInt v0 (1 :: Integer) in
           case coe v1 of
             0 -> coe MAlonzo.Code.Relation.Nullary.C26
             _ -> let v3 = coe subInt v1 (1 :: Integer) in coe d224 v2 v3
name254 = "Data.Nat.Base.\8804-pred"
d254 v0 v1 v2 = du254 v2
du254 v0
  = case coe v0 of
      C18 v1 v2 v3 -> coe v3
      _ -> coe MAlonzo.RTE.mazUnreachableError
name258 = "Data.Nat.Base._\8804?_"
d258 v0 v1
  = case coe v0 of
      0 -> coe MAlonzo.Code.Relation.Nullary.C22 (coe C10 v1)
      _ -> let v2 = coe subInt v0 (1 :: Integer) in
           case coe v1 of
             0 -> coe MAlonzo.Code.Relation.Nullary.C26
             _ -> let v3 = coe subInt v1 (1 :: Integer) in
                  let v4 = coe d258 v2 v3 in
                  case coe v4 of
                    MAlonzo.Code.Relation.Nullary.C22 v5
                      -> coe MAlonzo.Code.Relation.Nullary.C22 (coe C18 v2 v3 v5)
                    MAlonzo.Code.Relation.Nullary.C26
                      -> coe MAlonzo.Code.Relation.Nullary.C26
                    _ -> coe MAlonzo.RTE.mazUnreachableError
name282 = "Data.Nat.Base.Ordering"
d282 a0 a1 = ()
data T282 a0 a1 = C288 a0 a1 | C292 a0 | C298 a0 a1
name304 = "Data.Nat.Base.compare"
d304 v0 v1
  = case coe v0 of
      0 -> case coe v1 of
             0 -> coe C292 (0 :: Integer)
             _ -> let v2 = coe subInt v1 (1 :: Integer) in
                  coe C288 (0 :: Integer) v2
      _ -> let v2 = coe subInt v0 (1 :: Integer) in
           case coe v1 of
             0 -> coe C298 (0 :: Integer) v2
             _ -> let v3 = coe subInt v1 (1 :: Integer) in
                  let v4 = coe d304 v2 v3 in
                  case coe v4 of
                    C288 v5 v6 -> coe C288 (coe addInt (1 :: Integer) v5) v6
                    C292 v5 -> coe C292 (coe addInt (1 :: Integer) v5)
                    C298 v5 v6 -> coe C298 (coe addInt (1 :: Integer) v5) v6
                    _ -> coe MAlonzo.RTE.mazUnreachableError
name769 = "Data.Nat.Base..absurdlambda"
d769 = erased
name789 = "Data.Nat.Base..absurdlambda"
d789 = erased
name1093 = "Data.Nat.Base..absurdlambda"
d1093 = erased