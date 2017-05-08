{-# LANGUAGE EmptyDataDecls, ExistentialQuantification,
             ScopedTypeVariables, NoMonomorphismRestriction, Rank2Types #-}
module MAlonzo.Code.Data.Star where

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

name12 = "Data.Star.Star"
d12 a0 a1 a2 a3 a4 a5 = ()
data T12 a0 a1 a2 a3 a4 = C22 a0 | C34 a0 a1 a2 a3 a4
name44 = "Data.Star._\9669\9669_"
d44 v0 v1 v2 v3 v4 v5 v6 v7 v8 = du44 v4 v6 v7 v8
du44 v0 v1 v2 v3
  = case coe v2 of
      C22 v4 -> coe v3
      C34 v4 v5 v6 v7 v8 -> coe C34 v0 v5 v1 v7 (coe du44 v5 v1 v8 v3)
      _ -> coe MAlonzo.RTE.mazUnreachableError
name68 = "Data.Star._\9659_"
d68 v0 v1 v2 v3 v4 v5 v6 = du68 v4 v5 v6
du68 v0 v1 v2 = coe MAlonzo.Code.Function.du138 (coe C34 v0 v1 v2)
name84 = "Data.Star._\9659\9659_"
d84 v0 v1 v2 v3 v4 v5 v6 = du84 v4 v6
du84 v0 v1 = coe MAlonzo.Code.Function.du138 (coe du44 v0 v1)
name104 = "Data.Star.gmap"
d104 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12
  = du104 v8 v9 v10 v11 v12
du104 v0 v1 v2 v3 v4
  = case coe v4 of
      C22 v5 -> coe C22 (coe v0 v2)
      C34 v5 v6 v7 v8 v9
        -> coe
             C34 (coe v0 v2) (coe v0 v6) (coe v0 v3) (coe v1 v2 v6 v8)
             (coe du104 v0 v1 v6 v3 v9)
      _ -> coe MAlonzo.RTE.mazUnreachableError
name130 = "Data.Star.map"
d130 v0 v1 v2 v3 v4 v5 = du130
du130 = coe du104 (\ v0 -> v0)
name150 = "Data.Star.gfold"
d150 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14
  = du150 v9 v10 v12 v13 v14
du150 v0 v1 v2 v3 v4
  = case coe v4 of
      C22 v5 -> coe v3
      C34 v5 v6 v7 v8 v9 -> coe v0 v1 v6 v2 v8 (coe du150 v0 v6 v2 v3 v9)
      _ -> coe MAlonzo.RTE.mazUnreachableError
name184 = "Data.Star.fold"
d184 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 = du184 v6 v7 v8 v9
du184 v0 v1 v2 v3
  = coe du150 (\ v4 v5 v6 -> coe v0 v4 v5 v6) v2 v3 (coe v1 v3)
name210 = "Data.Star.gfoldl"
d210 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14
  = du210 v9 v10 v11 v13 v14
du210 v0 v1 v2 v3 v4
  = case coe v4 of
      C22 v5 -> coe v3
      C34 v5 v6 v7 v8 v9 -> coe du210 v0 v1 v6 (coe v0 v1 v2 v6 v3 v8) v9
      _ -> coe MAlonzo.RTE.mazUnreachableError
name244 = "Data.Star.foldl"
d244 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 = du244 v6 v7 v8
du244 v0 v1 v2
  = coe du210 (\ v3 v4 v5 -> coe v0 v3 v4 v5) v2 v2 (coe v1 v2)
name260 = "Data.Star.concat"
d260 v0 v1 v2 v3 v4 v5 = du260 v4 v5
du260 v0 v1
  = coe du184 (\ v2 v3 v4 v5 v6 -> coe du44 v2 v4 v5 v6) C22 v0 v1
name282 = "Data.Star.revApp"
d282 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 = du282 v6 v8 v9 v10 v11
du282 v0 v1 v2 v3 v4
  = case coe v3 of
      C22 v5 -> coe v4
      C34 v5 v6 v7 v8 v9
        -> coe du282 v0 v6 v2 v9 (coe C34 v6 v1 v2 (coe v0 v1 v6 v8) v4)
      _ -> coe MAlonzo.RTE.mazUnreachableError
name308 = "Data.Star.reverse"
d308 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 = du308 v6 v7 v9
du308 v0 v1 v2 = coe du282 v0 v1 v1 v2 (coe C22 v1)
name322 = "Data.Star.return"
d322 v0 v1 v2 v3 v4 v5 v6 = du322 v4 v5 v6
du322 v0 v1 v2 = coe C34 v0 v1 v1 v2 (coe C22 v1)
name344 = "Data.Star.kleisliStar"
d344 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 = du344 v8 v9 v10 v11
du344 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Function.du58 (coe du260 (coe v0 v2) (coe v0 v3))
      (coe du104 v0 v1 v2 v3)
name362 = "Data.Star._\8902"
d362 v0 v1 v2 v3 v4 v5 = du362
du362 = coe du344 (\ v0 -> v0)
name380 = "Data.Star._>>=_"
d380 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 = du380 v6 v7 v8 v9
du380 v0 v1 v2 v3 = coe du362 v3 v0 v1 v2