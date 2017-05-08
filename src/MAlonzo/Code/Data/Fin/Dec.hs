{-# LANGUAGE EmptyDataDecls, ExistentialQuantification,
             ScopedTypeVariables, NoMonomorphismRestriction, Rank2Types #-}
module MAlonzo.Code.Data.Fin.Dec where

import MAlonzo.RTE (coe, erased, addInt, subInt, mulInt, quotInt,
                    remInt, geqInt, ltInt, eqInt, eqFloat)
import qualified Control.Exception
import qualified Data.Text
import qualified Data.Text.IO
import qualified MAlonzo.RTE
import qualified System.Environment
import qualified System.IO
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Builtin.Bool
import qualified MAlonzo.Code.Algebra
import qualified MAlonzo.Code.Data.Bool
import qualified MAlonzo.Code.Data.Empty
import qualified MAlonzo.Code.Data.Fin
import qualified MAlonzo.Code.Data.Fin.Subset
import qualified MAlonzo.Code.Data.Fin.Subset.Properties
import qualified MAlonzo.Code.Data.Product
import qualified MAlonzo.Code.Data.Vec
import qualified MAlonzo.Code.Data.Vec.Equality
import qualified MAlonzo.Code.Function
import qualified MAlonzo.Code.Function.Equivalence
import qualified MAlonzo.Code.Relation.Nullary
import qualified MAlonzo.Code.Relation.Nullary.Decidable

name12 = "Data.Fin.Dec._\8712?_"
d12 v0 v1 v2 = du12 v1 v2
du12 v0 v1
  = case coe v0 of
      MAlonzo.Code.Data.Fin.C8 v2
        -> case coe v1 of
             MAlonzo.Code.Data.Vec.C22 v3 v4 v5
               -> case coe v4 of
                    False -> coe MAlonzo.Code.Relation.Nullary.C26
                    True
                      -> coe
                           MAlonzo.Code.Relation.Nullary.C22
                           (coe MAlonzo.Code.Data.Vec.C74 v2 v4 v5)
                    _ -> coe MAlonzo.RTE.mazUnreachableError
             _ -> coe MAlonzo.RTE.mazUnreachableError
      MAlonzo.Code.Data.Fin.C14 v2 v3
        -> case coe v1 of
             MAlonzo.Code.Data.Vec.C22 v4 v5 v6
               -> let v7 = coe du12 v3 v6 in
                  case coe v7 of
                    MAlonzo.Code.Relation.Nullary.C22 v8
                      -> coe
                           MAlonzo.Code.Relation.Nullary.C22
                           (coe MAlonzo.Code.Data.Vec.C88 v2 v3 True v5 v6 v8)
                    MAlonzo.Code.Relation.Nullary.C26
                      -> coe MAlonzo.Code.Relation.Nullary.C26
                    _ -> coe MAlonzo.RTE.mazUnreachableError
             _ -> coe MAlonzo.RTE.mazUnreachableError
      _ -> coe MAlonzo.RTE.mazUnreachableError
name48 = "Data.Fin.Dec.restrictP"
d48 = erased
name60 = "Data.Fin.Dec.restrict"
d60 v0 v1 v2 v3 v4 = du60 v1 v3 v4
du60 v0 v1 v2 = coe v1 (coe MAlonzo.Code.Data.Fin.C14 v0 v2)
name70 = "Data.Fin.Dec.any?"
d70 v0 v1 v2 = du70 v0 v2
du70 v0 v1
  = case coe v0 of
      0 -> coe MAlonzo.Code.Relation.Nullary.C26
      _ -> let v2 = coe subInt v0 (1 :: Integer) in
           let v3 = coe v1 (coe MAlonzo.Code.Data.Fin.C8 v2) in
           let v4 = coe du70 v2 (coe du60 v2 v1) in
           case coe v3 of
             MAlonzo.Code.Relation.Nullary.C22 v5
               -> coe
                    MAlonzo.Code.Relation.Nullary.C22
                    (coe
                       MAlonzo.Code.Data.Product.C30 (coe MAlonzo.Code.Data.Fin.C8 v2) v5)
             MAlonzo.Code.Relation.Nullary.C26
               -> case coe v4 of
                    MAlonzo.Code.Relation.Nullary.C22 v6
                      -> coe
                           MAlonzo.Code.Relation.Nullary.C22
                           (coe
                              MAlonzo.Code.Data.Product.C30
                              (coe
                                 MAlonzo.Code.Data.Fin.C14 v2
                                 (coe MAlonzo.Code.Data.Product.d26 v6))
                              (coe MAlonzo.Code.Data.Product.d28 v6))
                    MAlonzo.Code.Relation.Nullary.C26
                      -> coe MAlonzo.Code.Relation.Nullary.C26
                    _ -> coe MAlonzo.RTE.mazUnreachableError
             _ -> coe MAlonzo.RTE.mazUnreachableError
name116 = "Data.Fin.Dec._.helper"
d116 = erased
name128 = "Data.Fin.Dec.nonempty?"
d128 v0 v1 = coe du70 v0 (\ v2 -> coe du12 v2 v1)
name148 = "Data.Fin.Dec.restrict\8712"
d148 v0 v1 v2 v3 v4 v5 v6 v7 = du148 v2 v5 v6 v7
du148 v0 v1 v2 v3 = coe v1 (coe MAlonzo.Code.Data.Fin.C14 v0 v2) v3
name170 = "Data.Fin.Dec.decFinSubset"
d170 v0 v1 v2 v3 v4 v5 v6 = du170 v0 v1 v2 v5 v6
du170 v0 v1 v2 v3 v4
  = case coe v2 of
      0 -> coe MAlonzo.Code.Relation.Nullary.C22 erased
      _ -> let v5 = coe subInt v2 (1 :: Integer) in
           coe du188 v0 v1 v5 v3 v4
name188 = "Data.Fin.Dec._.helper"
d188 v0 v1 v2 v3 v4 v5 v6 = du188 v0 v1 v2 v5 v6
du188 v0 v1 v2 v3 v4
  = let v5 = coe du170 v0 v1 v2 (coe du60 v2 v3) (coe du148 v2 v4) in
    case coe v5 of
      MAlonzo.Code.Relation.Nullary.C22 v6
        -> let v7 = coe v3 (coe MAlonzo.Code.Data.Fin.C8 v2) in
           case coe v7 of
             MAlonzo.Code.Relation.Nullary.C22 v8
               -> let v9 = coe v4 (coe MAlonzo.Code.Data.Fin.C8 v2) v8 in
                  case coe v9 of
                    MAlonzo.Code.Relation.Nullary.C22 v10
                      -> coe
                           MAlonzo.Code.Relation.Nullary.C22 (\ v11 -> coe du236 v10 v6 v11)
                    MAlonzo.Code.Relation.Nullary.C26
                      -> coe MAlonzo.Code.Relation.Nullary.C26
                    _ -> coe MAlonzo.RTE.mazUnreachableError
             MAlonzo.Code.Relation.Nullary.C26
               -> coe
                    MAlonzo.Code.Relation.Nullary.C22 (\ v9 -> coe du254 v0 v6 v9)
             _ -> coe MAlonzo.RTE.mazUnreachableError
      MAlonzo.Code.Relation.Nullary.C26
        -> coe MAlonzo.Code.Relation.Nullary.C26
      _ -> coe MAlonzo.RTE.mazUnreachableError
name229 = "Data.Fin.Dec..absurdlambda"
d229 = erased
name236 = "Data.Fin.Dec._._.hlpr"
d236 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 = du236 v7 v9 v10 v11
du236 v0 v1 v2 v3
  = case coe v2 of
      MAlonzo.Code.Data.Fin.C8 v4 -> coe v0
      MAlonzo.Code.Data.Fin.C14 v4 v5 -> coe v1 v5 v3
      _ -> coe MAlonzo.RTE.mazUnreachableError
name254 = "Data.Fin.Dec._._.hlpr"
d254 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 = du254 v5 v8 v9 v10
du254 v0 v1 v2 v3
  = case coe v2 of
      MAlonzo.Code.Data.Fin.C8 v4
        -> coe MAlonzo.Code.Data.Empty.d10 v0 erased erased
      MAlonzo.Code.Data.Fin.C14 v4 v5 -> coe v1 v5 v3
      _ -> coe MAlonzo.RTE.mazUnreachableError
name276 = "Data.Fin.Dec.all\8712?"
d276 v0 v1 v2 v3 v4 = du276 v0 v1 v3 v4
du276 v0 v1 v2 v3 = coe du170 v1 () v0 (\ v4 -> coe du12 v4 v2) v3
name292 = "Data.Fin.Dec.all?"
d292 v0 v1 v2 v3 = du292 v0 v1 v3
du292 v0 v1 v2
  = let v3
          = coe
              du276 v0 v1
              (coe
                 MAlonzo.Code.Algebra.d1490
                 (coe MAlonzo.Code.Data.Fin.Subset.d42 v0))
              (\ v3 v4 -> coe v2 v3) in
    case coe v3 of
      MAlonzo.Code.Relation.Nullary.C22 v4
        -> coe
             MAlonzo.Code.Relation.Nullary.C22
             (\ v5 ->
                coe v4 v5 (coe MAlonzo.Code.Data.Fin.Subset.Properties.du98 v5))
      MAlonzo.Code.Relation.Nullary.C26
        -> coe MAlonzo.Code.Relation.Nullary.C26
      _ -> coe MAlonzo.RTE.mazUnreachableError
name324 = "Data.Fin.Dec.decLift"
d324 v0 v1 v2 v3 = du324 v0 v2 v3
du324 v0 v1 v2 = coe du276 v0 () v2 (\ v3 v4 -> coe v1 v3)
name336 = "Data.Fin.Dec.restrictSP"
d336 = erased
name350 = "Data.Fin.Dec.restrictS"
d350 v0 v1 v2 v3 v4 = du350 v0 v2 v3 v4
du350 v0 v1 v2 v3 = coe v2 (coe MAlonzo.Code.Data.Vec.C22 v0 v1 v3)
name362 = "Data.Fin.Dec.anySubset?"
d362 v0 v1 v2 = du362 v0 v2
du362 v0 v1
  = case coe v0 of
      0 -> let v2 = coe v1 MAlonzo.Code.Data.Vec.C14 in
           case coe v2 of
             MAlonzo.Code.Relation.Nullary.C22 v3
               -> coe
                    MAlonzo.Code.Relation.Nullary.C22
                    (coe MAlonzo.Code.Data.Product.C30 MAlonzo.Code.Data.Vec.C14 v3)
             MAlonzo.Code.Relation.Nullary.C26
               -> coe MAlonzo.Code.Relation.Nullary.C26
             _ -> coe MAlonzo.RTE.mazUnreachableError
      _ -> let v2 = coe subInt v0 (1 :: Integer) in
           let v3 = coe du362 v2 (coe du350 v2 True v1) in
           let v4 = coe du362 v2 (coe du350 v2 False v1) in
           case coe v3 of
             MAlonzo.Code.Relation.Nullary.C22 v5
               -> coe
                    MAlonzo.Code.Relation.Nullary.C22
                    (coe
                       MAlonzo.Code.Data.Product.C30
                       (coe
                          MAlonzo.Code.Data.Vec.C22 v2 True
                          (coe MAlonzo.Code.Data.Product.d26 v5))
                       (coe MAlonzo.Code.Data.Product.d28 v5))
             MAlonzo.Code.Relation.Nullary.C26
               -> case coe v4 of
                    MAlonzo.Code.Relation.Nullary.C22 v6
                      -> coe
                           MAlonzo.Code.Relation.Nullary.C22
                           (coe
                              MAlonzo.Code.Data.Product.C30
                              (coe
                                 MAlonzo.Code.Data.Vec.C22 v2 False
                                 (coe MAlonzo.Code.Data.Product.d26 v6))
                              (coe MAlonzo.Code.Data.Product.d28 v6))
                    MAlonzo.Code.Relation.Nullary.C26
                      -> coe MAlonzo.Code.Relation.Nullary.C26
                    _ -> coe MAlonzo.RTE.mazUnreachableError
             _ -> coe MAlonzo.RTE.mazUnreachableError
name388 = "Data.Fin.Dec._.helper"
d388 = erased
name432 = "Data.Fin.Dec._.helper"
d432 = erased
name454 = "Data.Fin.Dec.\172\8704\10230\8707\172-smallest"
d454 v0 v1 v2 v3 v4 = du454 v0 v1 v3
du454 v0 v1 v2
  = case coe v0 of
      0 -> coe MAlonzo.Code.Data.Empty.d10 v1 erased erased
      _ -> let v3 = coe subInt v0 (1 :: Integer) in
           let v4 = coe v2 (coe MAlonzo.Code.Data.Fin.C8 v3) in
           case coe v4 of
             MAlonzo.Code.Relation.Nullary.C22 v5
               -> coe
                    MAlonzo.Code.Function.du158
                    (coe
                       MAlonzo.Code.Data.Product.du188 (coe MAlonzo.Code.Data.Fin.C14 v3)
                       (\ v6 ->
                          coe
                            MAlonzo.Code.Data.Product.du188 (\ v7 -> v7)
                            (\ v7 -> coe du516 v5)))
                    (coe
                       du454 v3 v1
                       (coe
                          MAlonzo.Code.Function.du38 (\ v6 -> v2)
                          (coe MAlonzo.Code.Data.Fin.C14 v3)))
             MAlonzo.Code.Relation.Nullary.C26
               -> coe
                    MAlonzo.Code.Data.Product.C30 (coe MAlonzo.Code.Data.Fin.C8 v3)
                    (coe MAlonzo.Code.Data.Product.C30 erased erased)
             _ -> coe MAlonzo.RTE.mazUnreachableError
name502 = "Data.Fin.Dec._.extend"
d502 v0 v1 v2 v3 v4 v5 v6 v7 = du502 v4 v6 v7
du502 v0 v1 v2
  = case coe v2 of
      MAlonzo.Code.Data.Fin.C8 v3 -> coe v0
      MAlonzo.Code.Data.Fin.C14 v3 v4 -> coe v1 v4
      _ -> coe MAlonzo.RTE.mazUnreachableError
name516 = "Data.Fin.Dec._.extend\8242"
d516 v0 v1 v2 v3 v4 v5 v6 v7 v8 = du516 v4 v7 v8
du516 v0 v1 v2
  = case coe v2 of
      MAlonzo.Code.Data.Fin.C8 v3 -> coe v0
      MAlonzo.Code.Data.Fin.C14 v3 v4 -> coe v1 v4
      _ -> coe MAlonzo.RTE.mazUnreachableError
name528 = "Data.Fin.Dec._\8838?_"
d528 v0 v1 v2
  = coe
      MAlonzo.Code.Function.du158
      (coe
         MAlonzo.Code.Relation.Nullary.Decidable.du80
         (coe
            MAlonzo.Code.Function.Equivalence.du192
            (coe MAlonzo.Code.Data.Fin.Subset.Properties.du374 v1 v2)))
      (coe
         MAlonzo.Code.Function.du158
         (coe
            MAlonzo.Code.Relation.Nullary.Decidable.du98 erased
            (\ v3 -> coe MAlonzo.Code.Data.Vec.Equality.du326 v1))
         (coe
            MAlonzo.Code.Data.Vec.Equality.du210 MAlonzo.Code.Data.Bool.d4 v1
            (coe
               MAlonzo.Code.Algebra.d1486
               (coe MAlonzo.Code.Data.Fin.Subset.d42 v0) v1 v2)))
name1893 = "Data.Fin.Dec..absurdlambda"
d1893 = erased
name6125 = "Data.Fin.Dec..absurdlambda"
d6125 = erased
name6309 = "Data.Fin.Dec..absurdlambda"
d6309 = erased