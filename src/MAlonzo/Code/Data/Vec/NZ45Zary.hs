{-# LANGUAGE EmptyDataDecls, ExistentialQuantification,
             ScopedTypeVariables, NoMonomorphismRestriction, Rank2Types #-}
module MAlonzo.Code.Data.Vec.NZ45Zary where

import MAlonzo.RTE (coe, erased, addInt, subInt, mulInt, quotInt,
                    remInt, geqInt, ltInt, eqInt, eqFloat)
import qualified Control.Exception
import qualified Data.Text
import qualified Data.Text.IO
import qualified MAlonzo.RTE
import qualified System.Environment
import qualified System.IO
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Primitive
import qualified MAlonzo.Code.Data.Product
import qualified MAlonzo.Code.Data.Vec
import qualified MAlonzo.Code.Function
import qualified MAlonzo.Code.Function.Equivalence

name6 = "Data.Vec.N-ary.N-ary-level"
d6 v0 v1 v2
  = case coe v2 of
      0 -> coe v1
      _ -> let v3 = coe subInt v2 (1 :: Integer) in
           coe MAlonzo.Code.Agda.Primitive.d16 v0 (coe d6 v0 v1 v3)
name24 = "Data.Vec.N-ary.N-ary"
d24 = erased
name46 = "Data.Vec.N-ary.curry\8319"
d46 v0 v1 v2 v3 v4 v5 = du46 v0 v5
du46 v0 v1
  = case coe v0 of
      0 -> coe v1 MAlonzo.Code.Data.Vec.C14
      _ -> let v2 = coe subInt v0 (1 :: Integer) in
           \ v3 ->
             coe
               du46 v2
               (coe
                  MAlonzo.Code.Function.du38 (\ v4 -> v1)
                  (coe MAlonzo.Code.Data.Vec.C22 v2 v3))
name66 = "Data.Vec.N-ary._$\8319_"
d66 v0 v1 v2 v3 v4 v5 v6 = du66 v5 v6
du66 v0 v1
  = case coe v1 of
      MAlonzo.Code.Data.Vec.C14 -> coe v0
      MAlonzo.Code.Data.Vec.C22 v2 v3 v4 -> coe du66 (coe v0 v3) v4
      _ -> coe MAlonzo.RTE.mazUnreachableError
name84 = "Data.Vec.N-ary.\8704\8319"
d84 = erased
name102 = "Data.Vec.N-ary.\8704\8319\688"
d102 = erased
name120 = "Data.Vec.N-ary.\8707\8319"
d120 = erased
name146 = "Data.Vec.N-ary.Eq"
d146 = erased
name174 = "Data.Vec.N-ary.Eq\688"
d174 = erased
name200 = "Data.Vec.N-ary.left-inverse"
d200 = erased
name222 = "Data.Vec.N-ary.right-inverse"
d222 v0 v1 v2 v3 v4 v5 = du222 v4
du222 v0
  = case coe v0 of
      0 -> coe erased
      _ -> let v1 = coe subInt v0 (1 :: Integer) in \ v2 -> coe du222 v1
name244 = "Data.Vec.N-ary.uncurry-\8704\8319"
d244 v0 v1 v2 v3 v4 = du244 v0
du244 v0
  = coe
      MAlonzo.Code.Function.Equivalence.du56 (coe du264 v0)
      (coe du282 v0)
name264 = "Data.Vec.N-ary._.\8658"
d264 v0 v1 v2 v3 v4 v5 v6 v7 v8 = du264 v5 v7 v8
du264 v0 v1 v2
  = case coe v0 of
      0 -> coe seq v2 v1
      _ -> let v3 = coe subInt v0 (1 :: Integer) in
           case coe v2 of
             MAlonzo.Code.Data.Vec.C22 v4 v5 v6 -> coe du264 v3 (coe v1 v5) v6
             _ -> coe MAlonzo.RTE.mazUnreachableError
name282 = "Data.Vec.N-ary._.\8656"
d282 v0 v1 v2 v3 v4 v5 v6 v7 = du282 v5 v7
du282 v0 v1
  = case coe v0 of
      0 -> coe v1 MAlonzo.Code.Data.Vec.C14
      _ -> let v2 = coe subInt v0 (1 :: Integer) in
           \ v3 ->
             coe
               du282 v2
               (coe
                  MAlonzo.Code.Function.du38 (\ v4 -> v1)
                  (coe MAlonzo.Code.Data.Vec.C22 v2 v3))
name304 = "Data.Vec.N-ary.uncurry-\8707\8319"
d304 v0 v1 v2 v3 v4 = du304 v0
du304 v0
  = coe
      MAlonzo.Code.Function.Equivalence.du56 (coe du324 v0)
      (coe du340 v0)
name324 = "Data.Vec.N-ary._.\8658"
d324 v0 v1 v2 v3 v4 v5 v6 v7 = du324 v5 v7
du324 v0 v1
  = case coe v0 of
      0 -> coe MAlonzo.Code.Data.Product.C30 MAlonzo.Code.Data.Vec.C14 v1
      _ -> let v2 = coe subInt v0 (1 :: Integer) in
           coe
             MAlonzo.Code.Data.Product.du188
             (coe
                MAlonzo.Code.Data.Vec.C22 v2
                (coe MAlonzo.Code.Data.Product.d26 v1))
             (\ v3 v4 -> v4)
             (coe du324 v2 (coe MAlonzo.Code.Data.Product.d28 v1))
name340 = "Data.Vec.N-ary._.\8656"
d340 v0 v1 v2 v3 v4 v5 v6 v7 = du340 v5 v7
du340 v0 v1
  = case coe v0 of
      0 -> case coe v1 of
             MAlonzo.Code.Data.Product.C30 v2 v3 -> coe seq v2 v3
             _ -> coe MAlonzo.RTE.mazUnreachableError
      _ -> let v2 = coe subInt v0 (1 :: Integer) in
           case coe v1 of
             MAlonzo.Code.Data.Product.C30 v3 v4
               -> case coe v3 of
                    MAlonzo.Code.Data.Vec.C22 v5 v6 v7
                      -> coe
                           MAlonzo.Code.Data.Product.C30 v6
                           (coe du340 v2 (coe MAlonzo.Code.Data.Product.C30 v7 v4))
                    _ -> coe MAlonzo.RTE.mazUnreachableError
             _ -> coe MAlonzo.RTE.mazUnreachableError
name376 = "Data.Vec.N-ary.curry\8319-cong"
d376 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 = du376 v0 v11
du376 v0 v1
  = case coe v0 of
      0 -> coe v1 MAlonzo.Code.Data.Vec.C14
      _ -> let v2 = coe subInt v0 (1 :: Integer) in
           \ v3 ->
             coe
               du376 v2 (\ v4 -> coe v1 (coe MAlonzo.Code.Data.Vec.C22 v2 v3 v4))
name424 = "Data.Vec.N-ary.curry\8319-cong\8315\185"
d424 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 = du424 v11 v12
du424 v0 v1
  = case coe v1 of
      MAlonzo.Code.Data.Vec.C14 -> coe v0
      MAlonzo.Code.Data.Vec.C22 v2 v3 v4 -> coe du424 (coe v0 v3) v4
      _ -> coe MAlonzo.RTE.mazUnreachableError
name470 = "Data.Vec.N-ary.app\8319-cong"
d470 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 = du470 v11 v12
du470 v0 v1
  = case coe v1 of
      MAlonzo.Code.Data.Vec.C14 -> coe v0
      MAlonzo.Code.Data.Vec.C22 v2 v3 v4 -> coe du470 (coe v0 v3) v4
      _ -> coe MAlonzo.RTE.mazUnreachableError
name516 = "Data.Vec.N-ary.app\8319-cong\8315\185"
d516 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 = du516 v0 v11
du516 v0 v1
  = case coe v0 of
      0 -> coe v1 MAlonzo.Code.Data.Vec.C14
      _ -> let v2 = coe subInt v0 (1 :: Integer) in
           \ v3 ->
             coe
               du516 v2 (\ v4 -> coe v1 (coe MAlonzo.Code.Data.Vec.C22 v2 v3 v4))
name562 = "Data.Vec.N-ary.Eq-to-Eq\688"
d562 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 = du562 v7 v11
du562 v0 v1
  = case coe v0 of
      0 -> coe v1
      _ -> let v2 = coe subInt v0 (1 :: Integer) in
           \ v3 -> coe du562 v2 (coe v1 v3)
name596 = "Data.Vec.N-ary.Eq\688-to-Eq"
d596 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 = du596 v7 v11
du596 v0 v1
  = case coe v0 of
      0 -> coe v1
      _ -> let v2 = coe subInt v0 (1 :: Integer) in
           \ v3 -> coe du596 v2 (coe v1 v3)