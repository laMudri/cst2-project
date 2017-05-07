{-# LANGUAGE EmptyDataDecls, ExistentialQuantification,
             ScopedTypeVariables, NoMonomorphismRestriction, Rank2Types #-}
module MAlonzo.Code.Semiring.Instances where

import MAlonzo.RTE (coe, erased, addInt, subInt, mulInt, quotInt,
                    remInt, geqInt, ltInt, eqInt, eqFloat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Algebra
import qualified MAlonzo.Code.Algebra.Structures
import qualified MAlonzo.Code.Data.Maybe
import qualified MAlonzo.Code.Data.Maybe.Base
import qualified MAlonzo.Code.Data.Nat.Base
import qualified MAlonzo.Code.Data.Nat.Properties
import qualified MAlonzo.Code.Data.Product
import qualified MAlonzo.Code.Relation.Binary
import qualified MAlonzo.Code.Relation.Binary.Core
import qualified MAlonzo.Code.Relation.Binary.PropositionalEquality
import qualified MAlonzo.Code.Relation.Nullary
import qualified MAlonzo.Code.Semiring.Definitions

name6 = "Semiring.Instances.Nat.K"
d6
  = coe
      MAlonzo.Code.Algebra.C381 d54 d56 Nothing (coe Just (0 :: Integer))
      (coe
         MAlonzo.Code.Algebra.Structures.C967
         (coe
            MAlonzo.Code.Algebra.Structures.C893
            (coe
               MAlonzo.Code.Algebra.Structures.C221
               (coe
                  MAlonzo.Code.Algebra.Structures.C75
                  (coe
                     MAlonzo.Code.Relation.Binary.d136
                     (coe
                        MAlonzo.Code.Data.Maybe.du138
                        MAlonzo.Code.Relation.Binary.PropositionalEquality.du112))
                  (\ v0 v1 v2 ->
                     case coe v0 of
                       Just v3
                         -> case coe v1 of
                              Just v4
                                -> case coe v2 of
                                     Just v5
                                       -> coe
                                            MAlonzo.Code.Data.Maybe.C114
                                            (coe
                                               MAlonzo.Code.Algebra.d822
                                               MAlonzo.Code.Data.Nat.Properties.d372
                                               (coe
                                                  MAlonzo.Code.Algebra.d822
                                                  MAlonzo.Code.Data.Nat.Properties.d372 v3 v4)
                                               v5)
                                            (coe
                                               MAlonzo.Code.Algebra.d822
                                               MAlonzo.Code.Data.Nat.Properties.d372 v3
                                               (coe
                                                  MAlonzo.Code.Algebra.d822
                                                  MAlonzo.Code.Data.Nat.Properties.d372 v4 v5))
                                            erased
                                     Nothing
                                       -> coe
                                            MAlonzo.Code.Data.Maybe.C114
                                            (coe MAlonzo.Code.Data.Nat.Base.d206 v3 v4)
                                            (coe MAlonzo.Code.Data.Nat.Base.d206 v3 v4) erased
                                     _ -> coe MAlonzo.RTE.mazUnreachableError
                              Nothing
                                -> case coe v2 of
                                     Just v4
                                       -> coe
                                            MAlonzo.Code.Data.Maybe.C114
                                            (coe MAlonzo.Code.Data.Nat.Base.d206 v3 v4)
                                            (coe MAlonzo.Code.Data.Nat.Base.d206 v3 v4) erased
                                     Nothing -> coe MAlonzo.Code.Data.Maybe.C114 v3 v3 erased
                                     _ -> coe MAlonzo.RTE.mazUnreachableError
                              _ -> coe MAlonzo.RTE.mazUnreachableError
                       Nothing
                         -> case coe v1 of
                              Just v3
                                -> case coe v2 of
                                     Just v4
                                       -> coe
                                            MAlonzo.Code.Data.Maybe.C114
                                            (coe MAlonzo.Code.Data.Nat.Base.d206 v3 v4)
                                            (coe MAlonzo.Code.Data.Nat.Base.d206 v3 v4) erased
                                     Nothing -> coe MAlonzo.Code.Data.Maybe.C114 v3 v3 erased
                                     _ -> coe MAlonzo.RTE.mazUnreachableError
                              Nothing
                                -> case coe v2 of
                                     Just v3 -> coe MAlonzo.Code.Data.Maybe.C114 v3 v3 erased
                                     Nothing -> coe MAlonzo.Code.Data.Maybe.C116
                                     _ -> coe MAlonzo.RTE.mazUnreachableError
                              _ -> coe MAlonzo.RTE.mazUnreachableError
                       _ -> MAlonzo.RTE.mazUnreachableError)
                  (\ v0 v1 v2 v3 v4 v5 ->
                     case coe v4 of
                       MAlonzo.Code.Data.Maybe.C114 v6 v7 v8
                         -> case coe v5 of
                              MAlonzo.Code.Data.Maybe.C114 v9 v10 v11
                                -> coe
                                     MAlonzo.Code.Data.Maybe.C114
                                     (coe
                                        MAlonzo.Code.Algebra.d822
                                        MAlonzo.Code.Data.Nat.Properties.d372 v6 v9)
                                     (coe
                                        MAlonzo.Code.Algebra.d822
                                        MAlonzo.Code.Data.Nat.Properties.d372 v7 v10)
                                     erased
                              MAlonzo.Code.Data.Maybe.C116 -> coe v4
                              _ -> coe MAlonzo.RTE.mazUnreachableError
                       MAlonzo.Code.Data.Maybe.C116
                         -> case coe v5 of
                              MAlonzo.Code.Data.Maybe.C114 v6 v7 v8 -> coe v5
                              MAlonzo.Code.Data.Maybe.C116 -> coe v5
                              _ -> coe MAlonzo.RTE.mazUnreachableError
                       _ -> MAlonzo.RTE.mazUnreachableError))
               (\ v0 ->
                  case coe v0 of
                    Just v1 -> coe MAlonzo.Code.Data.Maybe.C114 v1 v1 erased
                    Nothing -> coe MAlonzo.Code.Data.Maybe.C116
                    _ -> MAlonzo.RTE.mazUnreachableError)
               (\ v0 v1 ->
                  case coe v0 of
                    Just v2
                      -> case coe v1 of
                           Just v3
                             -> coe
                                  MAlonzo.Code.Data.Maybe.C114
                                  (coe
                                     MAlonzo.Code.Algebra.d822 MAlonzo.Code.Data.Nat.Properties.d372
                                     v2 v3)
                                  (coe
                                     MAlonzo.Code.Algebra.d822 MAlonzo.Code.Data.Nat.Properties.d372
                                     v3 v2)
                                  erased
                           Nothing -> coe MAlonzo.Code.Data.Maybe.C114 v2 v2 erased
                           _ -> coe MAlonzo.RTE.mazUnreachableError
                    Nothing
                      -> case coe v1 of
                           Just v2 -> coe MAlonzo.Code.Data.Maybe.C114 v2 v2 erased
                           Nothing -> coe MAlonzo.Code.Data.Maybe.C116
                           _ -> coe MAlonzo.RTE.mazUnreachableError
                    _ -> MAlonzo.RTE.mazUnreachableError))
            (coe
               MAlonzo.Code.Algebra.Structures.C149
               (coe
                  MAlonzo.Code.Algebra.Structures.C75
                  (coe
                     MAlonzo.Code.Relation.Binary.d136
                     (coe
                        MAlonzo.Code.Data.Maybe.du138
                        MAlonzo.Code.Relation.Binary.PropositionalEquality.du112))
                  (\ v0 v1 v2 ->
                     case coe v0 of
                       Just v3
                         -> case coe v1 of
                              Just v4
                                -> case coe v2 of
                                     Just v5
                                       -> coe
                                            MAlonzo.Code.Data.Maybe.C114
                                            (coe
                                               MAlonzo.Code.Algebra.d916
                                               MAlonzo.Code.Data.Nat.Properties.d70
                                               (coe
                                                  MAlonzo.Code.Algebra.d916
                                                  MAlonzo.Code.Data.Nat.Properties.d70 v3 v4)
                                               v5)
                                            (coe
                                               MAlonzo.Code.Algebra.d916
                                               MAlonzo.Code.Data.Nat.Properties.d70 v3
                                               (coe
                                                  MAlonzo.Code.Algebra.d916
                                                  MAlonzo.Code.Data.Nat.Properties.d70 v4 v5))
                                            erased
                                     Nothing -> coe MAlonzo.Code.Data.Maybe.C116
                                     _ -> coe MAlonzo.RTE.mazUnreachableError
                              Nothing -> coe MAlonzo.Code.Data.Maybe.C116
                              _ -> coe MAlonzo.RTE.mazUnreachableError
                       Nothing -> coe MAlonzo.Code.Data.Maybe.C116
                       _ -> MAlonzo.RTE.mazUnreachableError)
                  (\ v0 v1 v2 v3 v4 v5 ->
                     case coe v4 of
                       MAlonzo.Code.Data.Maybe.C114 v6 v7 v8
                         -> case coe v5 of
                              MAlonzo.Code.Data.Maybe.C114 v9 v10 v11
                                -> coe
                                     MAlonzo.Code.Data.Maybe.C114
                                     (coe
                                        MAlonzo.Code.Algebra.d916
                                        MAlonzo.Code.Data.Nat.Properties.d70 v6 v9)
                                     (coe
                                        MAlonzo.Code.Algebra.d916
                                        MAlonzo.Code.Data.Nat.Properties.d70 v7 v10)
                                     erased
                              MAlonzo.Code.Data.Maybe.C116 -> coe v5
                              _ -> coe MAlonzo.RTE.mazUnreachableError
                       MAlonzo.Code.Data.Maybe.C116 -> coe v4
                       _ -> MAlonzo.RTE.mazUnreachableError))
               (coe
                  MAlonzo.Code.Data.Product.C30
                  (\ v0 ->
                     case coe v0 of
                       Just v1
                         -> coe
                              MAlonzo.Code.Data.Maybe.C114
                              (coe
                                 MAlonzo.Code.Algebra.d916 MAlonzo.Code.Data.Nat.Properties.d70
                                 (coe
                                    MAlonzo.Code.Algebra.d920 MAlonzo.Code.Data.Nat.Properties.d70)
                                 v1)
                              v1
                              (coe
                                 MAlonzo.Code.Data.Product.d26
                                 (let v2
                                        = coe
                                            MAlonzo.Code.Algebra.d916
                                            MAlonzo.Code.Data.Nat.Properties.d70 in
                                  let v3
                                        = coe
                                            MAlonzo.Code.Algebra.d918
                                            MAlonzo.Code.Data.Nat.Properties.d70 in
                                  let v4
                                        = coe
                                            MAlonzo.Code.Algebra.d920
                                            MAlonzo.Code.Data.Nat.Properties.d70 in
                                  let v5
                                        = coe
                                            MAlonzo.Code.Algebra.d922
                                            MAlonzo.Code.Data.Nat.Properties.d70 in
                                  let v6
                                        = coe
                                            MAlonzo.Code.Algebra.d924
                                            MAlonzo.Code.Data.Nat.Properties.d70 in
                                  let v7
                                        = coe
                                            MAlonzo.Code.Algebra.Structures.du2214 v2 v3 v4 v5 v6 in
                                  let v8 = coe MAlonzo.Code.Algebra.Structures.d1728 v7 in
                                  MAlonzo.Code.Algebra.Structures.du476
                                    v2 v4 (MAlonzo.Code.Algebra.Structures.d1542 v8))
                                 v1)
                       Nothing -> coe MAlonzo.Code.Data.Maybe.C116
                       _ -> MAlonzo.RTE.mazUnreachableError)
                  (\ v0 ->
                     case coe v0 of
                       Just v1
                         -> coe
                              MAlonzo.Code.Data.Maybe.C114
                              (coe
                                 MAlonzo.Code.Algebra.d916 MAlonzo.Code.Data.Nat.Properties.d70 v1
                                 (coe
                                    MAlonzo.Code.Algebra.d920 MAlonzo.Code.Data.Nat.Properties.d70))
                              v1
                              (coe
                                 MAlonzo.Code.Data.Product.d28
                                 (let v2
                                        = coe
                                            MAlonzo.Code.Algebra.d916
                                            MAlonzo.Code.Data.Nat.Properties.d70 in
                                  let v3
                                        = coe
                                            MAlonzo.Code.Algebra.d918
                                            MAlonzo.Code.Data.Nat.Properties.d70 in
                                  let v4
                                        = coe
                                            MAlonzo.Code.Algebra.d920
                                            MAlonzo.Code.Data.Nat.Properties.d70 in
                                  let v5
                                        = coe
                                            MAlonzo.Code.Algebra.d922
                                            MAlonzo.Code.Data.Nat.Properties.d70 in
                                  let v6
                                        = coe
                                            MAlonzo.Code.Algebra.d924
                                            MAlonzo.Code.Data.Nat.Properties.d70 in
                                  let v7
                                        = coe
                                            MAlonzo.Code.Algebra.Structures.du2214 v2 v3 v4 v5 v6 in
                                  let v8 = coe MAlonzo.Code.Algebra.Structures.d1728 v7 in
                                  MAlonzo.Code.Algebra.Structures.du476
                                    v2 v4 (MAlonzo.Code.Algebra.Structures.d1542 v8))
                                 v1)
                       Nothing -> coe MAlonzo.Code.Data.Maybe.C116
                       _ -> MAlonzo.RTE.mazUnreachableError)))
            (coe
               MAlonzo.Code.Data.Product.C30
               (\ v0 v1 v2 ->
                  case coe v0 of
                    Just v3
                      -> case coe v1 of
                           Just v4
                             -> case coe v2 of
                                  Just v5
                                    -> coe
                                         MAlonzo.Code.Data.Maybe.C114
                                         (coe addInt (coe MAlonzo.Code.Data.Nat.Base.d206 v4 v5) v3)
                                         (coe
                                            MAlonzo.Code.Data.Nat.Base.d206 (coe addInt v3 v4)
                                            (coe addInt v3 v5))
                                         erased
                                  Nothing
                                    -> coe
                                         MAlonzo.Code.Data.Maybe.C114 (coe addInt v3 v4)
                                         (coe addInt v3 v4) erased
                                  _ -> coe MAlonzo.RTE.mazUnreachableError
                           Nothing
                             -> case coe v2 of
                                  Just v4
                                    -> coe
                                         MAlonzo.Code.Data.Maybe.C114 (coe addInt v3 v4)
                                         (coe addInt v3 v4) erased
                                  Nothing -> coe MAlonzo.Code.Data.Maybe.C116
                                  _ -> coe MAlonzo.RTE.mazUnreachableError
                           _ -> coe MAlonzo.RTE.mazUnreachableError
                    Nothing -> coe MAlonzo.Code.Data.Maybe.C116
                    _ -> MAlonzo.RTE.mazUnreachableError)
               (\ v0 v1 v2 ->
                  let v3 = coe seq v1 (coe seq v2 MAlonzo.Code.Data.Maybe.C116) in
                  case coe v0 of
                    Just v4
                      -> case coe v1 of
                           Just v5
                             -> case coe v2 of
                                  Just v6
                                    -> coe
                                         MAlonzo.Code.Data.Maybe.C114
                                         (coe addInt (coe MAlonzo.Code.Data.Nat.Base.d206 v5 v6) v4)
                                         (coe
                                            MAlonzo.Code.Data.Nat.Base.d206 (coe addInt v4 v5)
                                            (coe addInt v4 v6))
                                         erased
                                  Nothing
                                    -> coe
                                         MAlonzo.Code.Data.Maybe.C114 (coe addInt v4 v5)
                                         (coe addInt v4 v5) erased
                                  _ -> coe MAlonzo.RTE.mazUnreachableError
                           Nothing
                             -> case coe v2 of
                                  Just v5
                                    -> coe
                                         MAlonzo.Code.Data.Maybe.C114 (coe addInt v4 v5)
                                         (coe addInt v4 v5) erased
                                  _ -> coe v3
                           _ -> coe MAlonzo.RTE.mazUnreachableError
                    Nothing
                      -> case coe v1 of
                           Just v4
                             -> case coe v2 of
                                  Just v5 -> coe MAlonzo.Code.Data.Maybe.C116
                                  Nothing -> coe MAlonzo.Code.Data.Maybe.C116
                                  _ -> coe MAlonzo.RTE.mazUnreachableError
                           Nothing
                             -> case coe v2 of
                                  Just v4 -> coe MAlonzo.Code.Data.Maybe.C116
                                  _ -> coe v3
                           _ -> coe MAlonzo.RTE.mazUnreachableError
                    _ -> MAlonzo.RTE.mazUnreachableError)))
         (coe
            MAlonzo.Code.Data.Product.C30
            (\ v0 -> MAlonzo.Code.Data.Maybe.C116) d76))
name18 = "Semiring.Instances.Nat.K._.isEquivalence"
d18
  = coe
      MAlonzo.Code.Relation.Binary.d136
      (coe
         MAlonzo.Code.Data.Maybe.du138
         MAlonzo.Code.Relation.Binary.PropositionalEquality.du112)
name34 = "Semiring.Instances.Nat.K._.assoc"
d34 = erased
name36 = "Semiring.Instances.Nat.K._.*-comm"
d36 = erased
name38 = "Semiring.Instances.Nat.K._.\8729-cong"
d38 = erased
name44 = "Semiring.Instances.Nat.K._.assoc"
d44 = erased
name46 = "Semiring.Instances.Nat.K._.comm"
d46 = erased
name48 = "Semiring.Instances.Nat.K._.\8729-cong"
d48 = erased
name50 = "Semiring.Instances.Nat.K._.identity"
d50
  = let v0
          = coe
              MAlonzo.Code.Algebra.d916 MAlonzo.Code.Data.Nat.Properties.d70 in
    let v1
          = coe
              MAlonzo.Code.Algebra.d918 MAlonzo.Code.Data.Nat.Properties.d70 in
    let v2
          = coe
              MAlonzo.Code.Algebra.d920 MAlonzo.Code.Data.Nat.Properties.d70 in
    let v3
          = coe
              MAlonzo.Code.Algebra.d922 MAlonzo.Code.Data.Nat.Properties.d70 in
    let v4
          = coe
              MAlonzo.Code.Algebra.d924 MAlonzo.Code.Data.Nat.Properties.d70 in
    let v5
          = coe MAlonzo.Code.Algebra.Structures.du2214 v0 v1 v2 v3 v4 in
    let v6 = coe MAlonzo.Code.Algebra.Structures.d1728 v5 in
    coe
      MAlonzo.Code.Algebra.Structures.du476 v0 v2
      (coe MAlonzo.Code.Algebra.Structures.d1542 v6)
name54 = "Semiring.Instances.Nat.K._T\8851_"
d54 v0 v1
  = case coe v0 of
      Just v2
        -> case coe v1 of
             Just v3 -> coe Just (coe MAlonzo.Code.Data.Nat.Base.d206 v2 v3)
             Nothing -> coe v0
             _ -> coe MAlonzo.RTE.mazUnreachableError
      Nothing
        -> case coe v1 of
             Just v2 -> coe v1
             Nothing -> coe v1
             _ -> coe MAlonzo.RTE.mazUnreachableError
      _ -> coe MAlonzo.RTE.mazUnreachableError
name56 = "Semiring.Instances.Nat.K._T+_"
d56 v0 v1
  = case coe v0 of
      Just v2
        -> case coe v1 of
             Just v3 -> coe Just (coe addInt v2 v3)
             Nothing -> coe v1
             _ -> coe MAlonzo.RTE.mazUnreachableError
      Nothing -> coe v0
      _ -> coe MAlonzo.RTE.mazUnreachableError
name76 = "Semiring.Instances.Nat.K.rzero"
d76 v0
  = case coe v0 of
      Just v1 -> coe MAlonzo.Code.Data.Maybe.C116
      Nothing -> coe MAlonzo.Code.Data.Maybe.C116
      _ -> coe MAlonzo.RTE.mazUnreachableError
name86 = "Semiring.Instances.Nat.K.distrib-l"
d86 = erased
name104 = "Semiring.Instances.Nat.K.distrib-r"
d104 = erased
name318 = "Semiring.Instances.Nat._.reflexive"
d318
  = let v0 = coe MAlonzo.Code.Algebra.d720 d6 in
    let v1 = coe MAlonzo.Code.Algebra.Structures.d1728 v0 in
    let v2 = coe MAlonzo.Code.Algebra.Structures.d1542 v1 in
    let v3 = coe MAlonzo.Code.Algebra.Structures.d454 v2 in
    coe
      (\ v4 v5 v6 ->
         coe
           MAlonzo.Code.Relation.Binary.Core.du522
           (coe MAlonzo.Code.Algebra.Structures.d140 v3) v4)
name332 = "Semiring.Instances.Nat._._Closed"
d332 a0 = ()
name418 = "Semiring.Instances.Nat.0-T\8851"
d418 = erased
name422 = "Semiring.Instances.Nat.closed"
d422
  = coe
      MAlonzo.Code.Semiring.Definitions.C383
      (\ v0 ->
         coe
           MAlonzo.Code.Semiring.Definitions.C127
           (let v1 = coe MAlonzo.Code.Algebra.d720 d6 in
            let v2 = coe MAlonzo.Code.Algebra.Structures.d1728 v1 in
            let v3 = coe MAlonzo.Code.Algebra.Structures.d1542 v2 in
            let v4 = coe MAlonzo.Code.Algebra.Structures.d454 v3 in
            MAlonzo.Code.Relation.Binary.Core.du522
              (MAlonzo.Code.Algebra.Structures.d140 v4)
              (d54
                 (Just (0 :: Integer))
                 (d54 (d56 v0 (Just (0 :: Integer))) Nothing))))
name426 = "Semiring.Instances.Nat.De"
d426 v0 v1
  = case coe v0 of
      Just v2
        -> case coe v1 of
             Just v3
               -> let v4 = coe MAlonzo.Code.Data.Nat.Base.d224 v2 v3 in
                  case coe v4 of
                    MAlonzo.Code.Relation.Nullary.C22 v5
                      -> coe
                           MAlonzo.Code.Relation.Nullary.C22
                           (coe MAlonzo.Code.Data.Maybe.C114 v2 v3 v5)
                    MAlonzo.Code.Relation.Nullary.C26
                      -> coe MAlonzo.Code.Relation.Nullary.C26
                    _ -> coe MAlonzo.RTE.mazUnreachableError
             Nothing -> coe MAlonzo.Code.Relation.Nullary.C26
             _ -> coe MAlonzo.RTE.mazUnreachableError
      Nothing
        -> case coe v1 of
             Just v2 -> coe MAlonzo.Code.Relation.Nullary.C26
             Nothing
               -> coe
                    MAlonzo.Code.Relation.Nullary.C22 MAlonzo.Code.Data.Maybe.C116
             _ -> coe MAlonzo.RTE.mazUnreachableError
      _ -> coe MAlonzo.RTE.mazUnreachableError
name2863 = "Semiring.Instances.Nat..absurdlambda"
d2863 = erased
name2915 = "Semiring.Instances.Nat..absurdlambda"
d2915 = erased