{-# LANGUAGE EmptyDataDecls, ExistentialQuantification,
             ScopedTypeVariables, NoMonomorphismRestriction, Rank2Types #-}
module MAlonzo.Code.Data.Cofin where

import MAlonzo.RTE (coe, erased, addInt, subInt, mulInt, quotInt,
                    remInt, geqInt, ltInt, eqInt, eqFloat)
import qualified Control.Exception
import qualified Data.Text
import qualified Data.Text.IO
import qualified MAlonzo.RTE
import qualified System.Environment
import qualified System.IO
import qualified Data.Text
import qualified MAlonzo.Code.Data.Conat
import qualified MAlonzo.Code.Data.Fin

name4 = "Data.Cofin.Cofin"
d4 a0 = ()
data T4 a0 a1 = C8 a0 | C14 a0 a1
name16 = "Data.Cofin.from\8469"
d16 v0
  = case coe v0 of
      0 -> coe C8 MAlonzo.Code.Data.Conat.d39
      _ -> let v1 = coe subInt v0 (1 :: Integer) in
           coe C14 MAlonzo.Code.Data.Conat.d39 (coe d16 v1)
name22 = "Data.Cofin.to\8469"
d22 v0 v1 = du22 v1
du22 v0
  = case coe v0 of
      C8 v1 -> 0 :: Integer
      C14 v1 v2 -> coe addInt (1 :: Integer) (coe du22 v2)
      _ -> coe MAlonzo.RTE.mazUnreachableError
name28 = "Data.Cofin.fromFin"
d28 v0 v1 = du28 v1
du28 v0
  = case coe v0 of
      MAlonzo.Code.Data.Fin.C8 v1
        -> coe C8 (coe MAlonzo.Code.Data.Conat.d11 v1)
      MAlonzo.Code.Data.Fin.C14 v1 v2
        -> coe C14 (coe MAlonzo.Code.Data.Conat.d11 v1) (coe du28 v2)
      _ -> coe MAlonzo.RTE.mazUnreachableError
name34 = "Data.Cofin.toFin"
d34 v0 v1
  = let v2 = coe subInt v0 (1 :: Integer) in
    case coe v1 of
      C8 v3 -> coe MAlonzo.Code.Data.Fin.C8 v2
      C14 v3 v4 -> coe MAlonzo.Code.Data.Fin.C14 v2 (coe d34 v2 v4)
      _ -> coe MAlonzo.RTE.mazUnreachableError