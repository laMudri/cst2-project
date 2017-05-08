{-# LANGUAGE EmptyDataDecls, ExistentialQuantification,
             ScopedTypeVariables, NoMonomorphismRestriction, Rank2Types #-}
module MAlonzo.Code.Data.Conat where

import MAlonzo.RTE (coe, erased, addInt, subInt, mulInt, quotInt,
                    remInt, geqInt, ltInt, eqInt, eqFloat)
import qualified Control.Exception
import qualified Data.Text
import qualified Data.Text.IO
import qualified MAlonzo.RTE
import qualified System.Environment
import qualified System.IO
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Builtin.Coinduction
import qualified MAlonzo.Code.Relation.Binary
import qualified MAlonzo.Code.Relation.Binary.Core

name4 = "Data.Conat.Co\8469"
d4 = ()
data T4 a0 = C6 | C10 a0
name11 = "Data.Conat._.\9839-0"
d11 v0 = coe MAlonzo.Code.Agda.Builtin.Coinduction.d16 (coe d12 v0)
name12 = "Data.Conat.from\8469"
d12 v0
  = case coe v0 of
      0 -> coe C6
      _ -> let v1 = coe subInt v0 (1 :: Integer) in coe C10 (coe d11 v1)
name16 = "Data.Conat.\8734\8469"
d16 = coe C10 d39
name18 = "Data.Conat._+_"
d18 v0 v1
  = case coe v0 of
      C6 -> coe v1
      C10 v2 -> coe C10 (coe d57 v2 v1)
      _ -> coe MAlonzo.RTE.mazUnreachableError
name26 = "Data.Conat._\8776_"
d26 a0 a1 = ()
data T26 a0 a1 a2 = C28 | C36 a0 a1 a2
name38 = "Data.Conat.setoid"
d38
  = coe
      MAlonzo.Code.Relation.Binary.C143
      (coe MAlonzo.Code.Relation.Binary.Core.C889 d44 d48 d52)
name39 = "Data.Conat._.\9839-1"
d39 = coe MAlonzo.Code.Agda.Builtin.Coinduction.d16 d16
name44 = "Data.Conat._.refl"
d44 v0
  = case coe v0 of
      C6 -> coe C28
      C10 v1 -> coe C36 v1 v1 (coe d137 v1)
      _ -> coe MAlonzo.RTE.mazUnreachableError
name48 = "Data.Conat._.sym"
d48 v0 v1 v2 = du48 v2
du48 v0
  = case coe v0 of
      C28 -> coe v0
      C36 v1 v2 v3 -> coe C36 v2 v1 (coe d213 v1 v2 v3)
      _ -> coe MAlonzo.RTE.mazUnreachableError
name52 = "Data.Conat._.trans"
d52 v0 v1 v2 v3 v4 = du52 v3 v4
du52 v0 v1
  = case coe v0 of
      C28 -> coe seq v1 v0
      C36 v2 v3 v4
        -> case coe v1 of
             C36 v5 v6 v7 -> coe C36 v2 v6 (coe d443 v3 v6 v2 v4 v7)
             _ -> coe MAlonzo.RTE.mazUnreachableError
      _ -> coe MAlonzo.RTE.mazUnreachableError
name57 = "Data.Conat._.\9839-2"
d57 v0 v1
  = coe
      MAlonzo.Code.Agda.Builtin.Coinduction.d16
      (coe d18 (coe MAlonzo.Code.Agda.Builtin.Coinduction.d22 v0) v1)
name137 = "Data.Conat._._.\9839-3"
d137 v0
  = coe
      MAlonzo.Code.Agda.Builtin.Coinduction.d16
      (coe d44 (coe MAlonzo.Code.Agda.Builtin.Coinduction.d22 v0))
name213 = "Data.Conat._._.\9839-5"
d213 v0 v1 v2
  = coe
      MAlonzo.Code.Agda.Builtin.Coinduction.d16
      (coe du48 (coe MAlonzo.Code.Agda.Builtin.Coinduction.d22 v2))
name443 = "Data.Conat._._.\9839-7"
d443 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Agda.Builtin.Coinduction.d16
      (coe
         du52 (coe MAlonzo.Code.Agda.Builtin.Coinduction.d22 v3)
         (coe MAlonzo.Code.Agda.Builtin.Coinduction.d22 v4))