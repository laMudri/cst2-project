{-# LANGUAGE EmptyDataDecls, ExistentialQuantification,
             ScopedTypeVariables, NoMonomorphismRestriction, Rank2Types #-}
module MAlonzo.Code.Relation.Binary.Consequences where

import MAlonzo.RTE (coe, erased, addInt, subInt, mulInt, quotInt,
                    remInt, geqInt, ltInt, eqInt, eqFloat)
import qualified Control.Exception
import qualified Data.Text
import qualified Data.Text.IO
import qualified MAlonzo.RTE
import qualified System.Environment
import qualified System.IO
import qualified Data.Text
import qualified MAlonzo.Code.Data.Empty
import qualified MAlonzo.Code.Data.Product
import qualified MAlonzo.Code.Data.Sum
import qualified MAlonzo.Code.Relation.Binary.Core
import qualified MAlonzo.Code.Relation.Nullary

name12 = "Relation.Binary.Consequences.Total"
d12 = erased
name32 = "Relation.Binary.Consequences.trans\8743irr\10230asym"
d32 = erased
name56 = "Relation.Binary.Consequences.irr\8743antisym\10230asym"
d56 = erased
name78 = "Relation.Binary.Consequences.asym\10230antisym"
d78 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 = du78 v1
du78 v0 = coe MAlonzo.Code.Data.Empty.d10 v0 erased erased
name98 = "Relation.Binary.Consequences.asym\10230irr"
d98 = erased
name120 = "Relation.Binary.Consequences._.y<y"
d120 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12
  = du120 v6 v9 v10 v11 v12
du120 v0 v1 v2 v3 v4
  = coe MAlonzo.Code.Data.Product.d28 v0 v2 v1 v2 v3 v4
name122 = "Relation.Binary.Consequences._.y<x"
d122 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12
  = du122 v6 v7 v9 v10 v11 v12
du122 v0 v1 v2 v3 v4 v5
  = coe
      MAlonzo.Code.Data.Product.d26 v0 v3 v3 v2 (coe v1 v2 v3 v4)
      (coe du120 v0 v2 v3 v4 v5)
name136 = "Relation.Binary.Consequences.total\10230refl"
d136 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 = du136 v6 v7 v8 v9 v10
du136 v0 v1 v2 v3 v4 = coe du152 v0 v1 v2 v3 v4
name152 = "Relation.Binary.Consequences._.refl"
d152 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13
  = du152 v6 v7 v8 v11 v12 v13
du152 v0 v1 v2 v3 v4 v5
  = let v6 = coe v2 v3 v4 in
    case coe v6 of
      Left v7 -> coe v7
      Right v7
        -> coe
             MAlonzo.Code.Data.Product.d26 v0 v3 v3 v4 v5
             (coe
                MAlonzo.Code.Data.Product.d28 v0 v3 v4 v3 (coe v1 v3 v4 v5) v7)
      _ -> coe MAlonzo.RTE.mazUnreachableError
name192 = "Relation.Binary.Consequences.total+dec\10230dec"
d192 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 = du192 v6 v8 v9
du192 v0 v1 v2 = coe du210 v0 v1 v2
name210 = "Relation.Binary.Consequences._.dec"
d210 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 = du210 v6 v8 v9 v10 v11
du210 v0 v1 v2 v3 v4
  = let v5 = coe v1 v3 v4 in
    case coe v5 of
      Left v6 -> coe MAlonzo.Code.Relation.Nullary.C22 v6
      Right v6
        -> let v7 = coe v2 v3 v4 in
           case coe v7 of
             MAlonzo.Code.Relation.Nullary.C22 v8
               -> coe MAlonzo.Code.Relation.Nullary.C22 (coe v0 v3 v4 v8)
             MAlonzo.Code.Relation.Nullary.C26
               -> coe MAlonzo.Code.Relation.Nullary.C26
             _ -> coe MAlonzo.RTE.mazUnreachableError
      _ -> coe MAlonzo.RTE.mazUnreachableError
name266 = "Relation.Binary.Consequences.tri\10230asym"
d266 = erased
name330 = "Relation.Binary.Consequences.tri\10230irr"
d330 = erased
name346 = "Relation.Binary.Consequences._.irr"
d346 = erased
name410
  = "Relation.Binary.Consequences.trans\8743tri\10230resp\8776"
d410 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 = du410 v2 v9
du410 v0 v1
  = coe
      MAlonzo.Code.Data.Product.C30
      (\ v2 v3 v4 v5 v6 -> coe du434 v0 v1 v2 v4)
      (\ v2 v3 v4 v5 v6 -> coe du484 v0 v1 v2 v4)
name434 = "Relation.Binary.Consequences._.resp\691"
d434 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14
  = du434 v2 v9 v10 v12
du434 v0 v1 v2 v3
  = let v4 = coe v1 v2 v3 in
    case coe v4 of
      MAlonzo.Code.Relation.Binary.Core.C400 v5 -> coe v5
      MAlonzo.Code.Relation.Binary.Core.C408 v6
        -> coe MAlonzo.Code.Data.Empty.d10 v0 erased erased
      MAlonzo.Code.Relation.Binary.Core.C416 v7
        -> coe MAlonzo.Code.Data.Empty.d10 v0 erased erased
      _ -> coe MAlonzo.RTE.mazUnreachableError
name484 = "Relation.Binary.Consequences._.resp\737"
d484 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14
  = du484 v2 v9 v10 v12
du484 v0 v1 v2 v3
  = let v4 = coe v1 v3 v2 in
    case coe v4 of
      MAlonzo.Code.Relation.Binary.Core.C400 v5 -> coe v5
      MAlonzo.Code.Relation.Binary.Core.C408 v6
        -> coe MAlonzo.Code.Data.Empty.d10 v0 erased erased
      MAlonzo.Code.Relation.Binary.Core.C416 v7
        -> coe MAlonzo.Code.Data.Empty.d10 v0 erased erased
      _ -> coe MAlonzo.RTE.mazUnreachableError
name540 = "Relation.Binary.Consequences.tri\10230dec\8776"
d540 v0 v1 v2 v3 v4 v5 v6 v7 v8 = du540 v6 v7 v8
du540 v0 v1 v2
  = let v3 = coe v0 v1 v2 in
    case coe v3 of
      MAlonzo.Code.Relation.Binary.Core.C400 v4
        -> coe MAlonzo.Code.Relation.Nullary.C26
      MAlonzo.Code.Relation.Binary.Core.C408 v5
        -> coe MAlonzo.Code.Relation.Nullary.C22 v5
      MAlonzo.Code.Relation.Binary.Core.C416 v6
        -> coe MAlonzo.Code.Relation.Nullary.C26
      _ -> coe MAlonzo.RTE.mazUnreachableError
name588 = "Relation.Binary.Consequences.tri\10230dec<"
d588 v0 v1 v2 v3 v4 v5 v6 v7 v8 = du588 v6 v7 v8
du588 v0 v1 v2
  = let v3 = coe v0 v1 v2 in
    case coe v3 of
      MAlonzo.Code.Relation.Binary.Core.C400 v4
        -> coe MAlonzo.Code.Relation.Nullary.C22 v4
      MAlonzo.Code.Relation.Binary.Core.C408 v5
        -> coe MAlonzo.Code.Relation.Nullary.C26
      MAlonzo.Code.Relation.Binary.Core.C416 v6
        -> coe MAlonzo.Code.Relation.Nullary.C26
      _ -> coe MAlonzo.RTE.mazUnreachableError
name640 = "Relation.Binary.Consequences.map-NonEmpty"
d640 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 = du640 v8 v9
du640 v0 v1
  = coe
      MAlonzo.Code.Relation.Binary.Core.C480
      (coe MAlonzo.Code.Relation.Binary.Core.d474 v1)
      (coe MAlonzo.Code.Relation.Binary.Core.d476 v1)
      (coe
         v0 (coe MAlonzo.Code.Relation.Binary.Core.d474 v1)
         (coe MAlonzo.Code.Relation.Binary.Core.d476 v1)
         (coe MAlonzo.Code.Relation.Binary.Core.d478 v1))