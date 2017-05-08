{-# LANGUAGE EmptyDataDecls, ExistentialQuantification,
             ScopedTypeVariables, NoMonomorphismRestriction, Rank2Types #-}
module MAlonzo.Code.IO where

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
import qualified MAlonzo.Code.Data.Colist
import qualified MAlonzo.Code.Data.String
import qualified MAlonzo.Code.Function
import qualified MAlonzo.Code.IO.Primitive
import qualified MAlonzo.Code.Level

name6 = "IO.IO"
d6 a0 a1 = ()
data T6 a0 a1 = C14 a0 | C18 a0 | C28 a0 a1 | C36 a0 a1
name42 = "IO.run"
d42 v0 v1 v2 = du42 v0 v2
du42 v0 v1
  = case coe v1 of
      C14 v2 -> coe v2
      C18 v2 -> coe MAlonzo.Code.IO.Primitive.d8 v0 erased v2
      C28 v3 v4
        -> coe
             MAlonzo.Code.IO.Primitive.d18 v0 v0 erased erased
             (coe du42 v0 (coe MAlonzo.Code.Agda.Builtin.Coinduction.d22 v3))
             (\ v5 ->
                coe
                  du42 v0
                  (coe MAlonzo.Code.Agda.Builtin.Coinduction.d22 (coe v4 v5)))
      C36 v3 v4
        -> coe
             MAlonzo.Code.IO.Primitive.d18 v0 v0 erased erased
             (coe du42 v0 (coe MAlonzo.Code.Agda.Builtin.Coinduction.d22 v3))
             (\ v5 ->
                coe du42 v0 (coe MAlonzo.Code.Agda.Builtin.Coinduction.d22 v4))
      _ -> coe MAlonzo.RTE.mazUnreachableError
name64 = "IO.sequence"
d64 v0 v1 v2 = du64 v0 v2
du64 v0 v1
  = case coe v1 of
      [] -> coe C18 v1
      (:) v2 v3 -> coe C28 (coe du271 v2) (coe du307 v0 v3)
      _ -> coe MAlonzo.RTE.mazUnreachableError
name78 = "IO.sequence\8242"
d78 v0 v1 v2 = du78 v0 v2
du78 v0 v1
  = case coe v1 of
      [] -> coe C18 (coe MAlonzo.Code.Level.C20 erased)
      (:) v2 v3 -> coe C36 (coe du819 v2) (coe du855 v0 v3)
      _ -> coe MAlonzo.RTE.mazUnreachableError
name92 = "IO.mapM"
d92 v0 v1 v2 v3 v4 = du92 v0 v1 v4
du92 v0 v1 v2
  = coe
      MAlonzo.Code.Function.du38 (\ v3 -> coe du64 v1)
      (coe MAlonzo.Code.Data.Colist.du150 v0 () v2)
name100 = "IO.mapM\8242"
d100 v0 v1 v2 = du100 v2
du100 v0
  = coe
      MAlonzo.Code.Function.du38 (\ v1 -> coe du78 ())
      (coe MAlonzo.Code.Data.Colist.du150 () () v0)
name104 = "IO.getContents"
d104 = coe C14 MAlonzo.Code.IO.Primitive.d20
name106 = "IO.readFile"
d106 v0 = coe C14 (coe MAlonzo.Code.IO.Primitive.d22 v0)
name110 = "IO.readFiniteFile"
d110 v0 = coe C14 (coe MAlonzo.Code.IO.Primitive.d32 v0)
name114 = "IO.writeFile\8734"
d114 v0 v1 = coe C36 (coe d1219 v0 v1) du1239
name120 = "IO.writeFile"
d120 v0 v1 = coe d114 v0 (coe MAlonzo.Code.Data.String.d12 v1)
name126 = "IO.appendFile\8734"
d126 v0 v1 = coe C36 (coe d1275 v0 v1) du1295
name132 = "IO.appendFile"
d132 v0 v1 = coe d126 v0 (coe MAlonzo.Code.Data.String.d12 v1)
name138 = "IO.putStr\8734"
d138 v0 = coe C36 (coe d1327 v0) du1339
name142 = "IO.putStr"
d142 v0 = coe d138 (coe MAlonzo.Code.Data.String.d12 v0)
name146 = "IO.putStrLn\8734"
d146 v0 = coe C36 (coe d1359 v0) du1371
name150 = "IO.putStrLn"
d150 v0 = coe d146 (coe MAlonzo.Code.Data.String.d12 v0)
name271 = "IO._.\9839-0"
d271 v0 v1 v2 v3 = du271 v2
du271 v0 = coe MAlonzo.Code.Agda.Builtin.Coinduction.d16 v0
name307 = "IO._.\9839-1"
d307 v0 v1 v2 v3 v4 = du307 v0 v3 v4
du307 v0 v1 v2
  = coe
      MAlonzo.Code.Agda.Builtin.Coinduction.d16
      (coe C28 (coe du341 v0 v1) (coe du385 v2))
name341 = "IO._._.\9839-2"
d341 v0 v1 v2 v3 v4 = du341 v0 v3
du341 v0 v1
  = coe
      MAlonzo.Code.Agda.Builtin.Coinduction.d16
      (coe du64 v0 (coe MAlonzo.Code.Agda.Builtin.Coinduction.d22 v1))
name385 = "IO._._.\9839-3"
d385 v0 v1 v2 v3 v4 v5 = du385 v4 v5
du385 v0 v1
  = coe
      MAlonzo.Code.Agda.Builtin.Coinduction.d16
      (coe C18 (coe (:) v0 (coe du447 v1)))
name447 = "IO._._._.\9839-5"
d447 v0 v1 v2 v3 v4 v5 = du447 v5
du447 v0 = coe MAlonzo.Code.Agda.Builtin.Coinduction.d16 v0
name819 = "IO._.\9839-6"
d819 v0 v1 v2 v3 = du819 v2
du819 v0 = coe MAlonzo.Code.Agda.Builtin.Coinduction.d16 v0
name855 = "IO._.\9839-7"
d855 v0 v1 v2 v3 = du855 v0 v3
du855 v0 v1
  = coe
      MAlonzo.Code.Agda.Builtin.Coinduction.d16
      (coe C36 (coe du883 v0 v1) du919)
name883 = "IO._._.\9839-8"
d883 v0 v1 v2 v3 = du883 v0 v3
du883 v0 v1
  = coe
      MAlonzo.Code.Agda.Builtin.Coinduction.d16
      (coe du78 v0 (coe MAlonzo.Code.Agda.Builtin.Coinduction.d22 v1))
name919 = "IO._._.\9839-9"
d919 v0 v1 v2 v3 = du919
du919
  = coe
      MAlonzo.Code.Agda.Builtin.Coinduction.d16
      (coe C18 (coe MAlonzo.Code.Level.C20 erased))
name1219 = "IO._.\9839-10"
d1219 v0 v1
  = coe
      MAlonzo.Code.Agda.Builtin.Coinduction.d16
      (coe C14 (coe MAlonzo.Code.IO.Primitive.d24 v0 v1))
name1239 = "IO._.\9839-12"
d1239 v0 v1 = du1239
du1239
  = coe MAlonzo.Code.Agda.Builtin.Coinduction.d16 (coe C18 erased)
name1275 = "IO._.\9839-13"
d1275 v0 v1
  = coe
      MAlonzo.Code.Agda.Builtin.Coinduction.d16
      (coe C14 (coe MAlonzo.Code.IO.Primitive.d26 v0 v1))
name1295 = "IO._.\9839-15"
d1295 v0 v1 = du1295
du1295
  = coe MAlonzo.Code.Agda.Builtin.Coinduction.d16 (coe C18 erased)
name1327 = "IO._.\9839-16"
d1327 v0
  = coe
      MAlonzo.Code.Agda.Builtin.Coinduction.d16
      (coe C14 (coe MAlonzo.Code.IO.Primitive.d28 v0))
name1339 = "IO._.\9839-18"
d1339 v0 = du1339
du1339
  = coe MAlonzo.Code.Agda.Builtin.Coinduction.d16 (coe C18 erased)
name1359 = "IO._.\9839-19"
d1359 v0
  = coe
      MAlonzo.Code.Agda.Builtin.Coinduction.d16
      (coe C14 (coe MAlonzo.Code.IO.Primitive.d30 v0))
name1371 = "IO._.\9839-21"
d1371 v0 = du1371
du1371
  = coe MAlonzo.Code.Agda.Builtin.Coinduction.d16 (coe C18 erased)