{-# LANGUAGE EmptyDataDecls, ExistentialQuantification,
             ScopedTypeVariables, NoMonomorphismRestriction, Rank2Types #-}
module MAlonzo.Code.Data.Product where

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

name12 = "Data.Product.\931"
d12 a0 a1 a2 a3 = ()
data T12 a0 a1 = C30 a0 a1
name26 = "Data.Product.\931.proj\8321"
d26 v0
  = case coe v0 of
      C30 v1 v2 -> coe v1
      _ -> coe MAlonzo.RTE.mazUnreachableError
name28 = "Data.Product.\931.proj\8322"
d28 v0
  = case coe v0 of
      C30 v1 v2 -> coe v2
      _ -> coe MAlonzo.RTE.mazUnreachableError
name38 = "Data.Product.\931-syntax"
d38 = erased
name46 = "Data.Product.\8707"
d46 = erased
name54 = "Data.Product.\8708"
d54 = erased
name72 = "Data.Product.\8707\8322"
d72 = erased
name88 = "Data.Product._\215_"
d88 = erased
name104 = "Data.Product._,\8242_"
d104 v0 v1 v2 v3 = du104
du104 = C30
name114 = "Data.Product.\8707!"
d114 = erased
name134 = "Data.Product.,_"
d134 v0 v1 v2 v3 v4 v5 = du134 v4 v5
du134 v0 v1 = coe C30 v0 v1
name160 = "Data.Product.<_,_>"
d160 v0 v1 v2 v3 v4 v5 v6 v7 v8 = du160 v6 v7 v8
du160 v0 v1 v2 = coe C30 (coe v0 v2) (coe v1 v2)
name188 = "Data.Product.map"
d188 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 = du188 v8 v9 v10
du188 v0 v1 v2
  = coe C30 (coe v0 (coe d26 v2)) (coe v1 (coe d26 v2) (coe d28 v2))
name228 = "Data.Product.zip"
d228 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15
  = du228 v12 v13 v14 v15
du228 v0 v1 v2 v3
  = coe
      C30 (coe v0 (coe d26 v2) (coe d26 v3))
      (coe v1 (coe d26 v2) (coe d26 v3) (coe d28 v2) (coe d28 v3))
name250 = "Data.Product.swap"
d250 v0 v1 v2 v3 v4 = du250 v4
du250 v0 = coe C30 (coe d28 v0) (coe d26 v0)
name268 = "Data.Product._-\215-_"
d268 = erased
name290 = "Data.Product._-,-_"
d290 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 = du290 v8 v9
du290 v0 v1 = coe MAlonzo.Code.Function.du226 v0 C30 v1
name314 = "Data.Product.curry"
d314 v0 v1 v2 v3 v4 v5 v6 v7 v8 = du314 v6 v7 v8
du314 v0 v1 v2 = coe v0 (coe C30 v1 v2)
name340 = "Data.Product.uncurry"
d340 v0 v1 v2 v3 v4 v5 v6 v7 = du340 v6 v7
du340 v0 v1 = coe v0 (coe d26 v1) (coe d28 v1)
name360 = "Data.Product.uncurry\8242"
d360 v0 v1 v2 v3 v4 v5 = du360
du360 = du340