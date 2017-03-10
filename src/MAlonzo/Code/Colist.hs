{-# LANGUAGE EmptyDataDecls, ExistentialQuantification,
             ScopedTypeVariables, NoMonomorphismRestriction, Rank2Types #-}
module MAlonzo.Code.Colist where

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

name6 = "Colist._\8771_"
d6 = erased
name18 = "Colist.Colist\8314"
d18 a0 a1 = ()
data T18 a0 a1 = C32 a0 a1
name28 = "Colist.Colist\8314.head"
d28 v0
  = case coe v0 of
      C32 v1 v2 -> coe v1
      _ -> coe MAlonzo.RTE.mazUnreachableError
name30 = "Colist.Colist\8314.tail"
d30 v0
  = case coe v0 of
      C32 v1 v2 -> coe v2
      _ -> coe MAlonzo.RTE.mazUnreachableError
name38 = "Colist._\8759\8314_"
d38 v0 v1 v2 v3 = du38 v2 v3
du38 v0 v1 = coe C32 v0 (coe du71 (coe d28 v1) (coe d30 v1))
name50 = "Colist.toColist"
d50 v0 = coe (:) (coe d28 v0) (coe d30 v0)
name60 = "Colist.concat\8734"
d60 v0 v1 v2 = du60 v0 v2
du60 v0 v1
  = case coe v1 of
      [] -> coe v1
      (:) v2 v3
        -> let v4
                 = coe MAlonzo.Code.Agda.Builtin.Coinduction.d22 (coe d30 v2) in
           let v5 = coe d28 v2 in
           case coe v4 of
             [] -> coe (:) v5 (coe du317 v0 v3)
             (:) v6 v7 -> coe (:) v5 (coe du409 v0 v6 v7 v3)
             _ -> coe MAlonzo.RTE.mazUnreachableError
      _ -> coe MAlonzo.RTE.mazUnreachableError
name71 = "Colist._.\9839-0"
d71 v0 v1 v2 v3 v4 = du71 v3 v4
du71 v0 v1
  = coe MAlonzo.Code.Agda.Builtin.Coinduction.d16 (coe (:) v0 v1)
name100 = "Colist.product-with"
d100 v0 v1 v2 v3 v4 v5 v6 v7 = du100 v0 v1 v2 v6 v7
du100 v0 v1 v2 v3 v4 = coe du116 v0 v1 v2 v3 v4 v4
name116 = "Colist._.go"
d116 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 = du116 v0 v1 v2 v6 v7 v8 v9
du116 v0 v1 v2 v3 v4 v5 v6
  = let v7
          = coe MAlonzo.Code.Agda.Builtin.Coinduction.d22 (coe d30 v5) in
    let v8 = coe d28 v5 in
    case coe v7 of
      []
        -> let v9
                 = coe MAlonzo.Code.Agda.Builtin.Coinduction.d22 (coe d30 v6) in
           let v10 = coe d28 v6 in
           case coe v9 of
             [] -> coe (:) (coe v3 v8 v10) du1235
             (:) v11 v12
               -> coe (:) (coe v3 v8 v10) (coe du1407 v1 v11 v12 v0 v2 v3 v4)
             _ -> coe MAlonzo.RTE.mazUnreachableError
      (:) v9 v10
        -> coe
             (:) (coe v3 v8 (coe d28 v6))
             (coe du1801 v0 v1 v2 v3 v4 v9 v10 (coe d28 v6) (coe d30 v6))
      _ -> coe MAlonzo.RTE.mazUnreachableError
name184 = "Colist.Zip-with"
d184 a0 a1 a2 a3 a4 a5 a6 a7 = ()
data T184 a0 a1 a2 a3 a4 a5 = C198 | C212 a0 a1 a2 a3 a4 a5
name317 = "Colist._.\9839-2"
d317 v0 v1 v2 v3 v4 = du317 v0 v4
du317 v0 v1
  = coe
      MAlonzo.Code.Agda.Builtin.Coinduction.d16
      (coe du60 v0 (coe MAlonzo.Code.Agda.Builtin.Coinduction.d22 v1))
name409 = "Colist._.\9839-3"
d409 v0 v1 v2 v3 v4 v5 v6 = du409 v0 v3 v4 v6
du409 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Agda.Builtin.Coinduction.d16
      (coe du60 v0 (coe (:) (coe C32 v1 v2) v3))
name1235 = "Colist._._.\9839-4"
d1235 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 = du1235
du1235 = coe MAlonzo.Code.Agda.Builtin.Coinduction.d16 []
name1407 = "Colist._._.\9839-6"
d1407 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13
  = du1407 v0 v3 v4 v5 v6 v9 v10
du1407 v0 v1 v2 v3 v4 v5 v6
  = coe
      MAlonzo.Code.Agda.Builtin.Coinduction.d16
      (coe du116 v3 v0 v4 v5 v6 v6 (coe C32 v1 v2))
name1801 = "Colist._._.\9839-7"
d1801 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13
  = du1801 v0 v1 v2 v6 v7 v9 v10 v12 v13
du1801 v0 v1 v2 v3 v4 v5 v6 v7 v8
  = coe
      MAlonzo.Code.Agda.Builtin.Coinduction.d16
      (coe du116 v0 v1 v2 v3 v4 (coe C32 v5 v6) (coe C32 v7 v8))