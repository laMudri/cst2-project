{-# LANGUAGE EmptyDataDecls, ExistentialQuantification,
             ScopedTypeVariables, NoMonomorphismRestriction, Rank2Types #-}
module MAlonzo.Code.Main where

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
import qualified MAlonzo.Code.Agda.Builtin.List
import qualified MAlonzo.Code.Algebra
import qualified MAlonzo.Code.Algebra.Structures
import qualified MAlonzo.Code.Algorithm
import qualified MAlonzo.Code.Arguments
import qualified MAlonzo.Code.Category.Monad.Indexed
import qualified MAlonzo.Code.Data.Fin
import qualified MAlonzo.Code.Data.Fin.Properties
import qualified MAlonzo.Code.Data.List.Base
import qualified MAlonzo.Code.Data.Maybe
import qualified MAlonzo.Code.Data.Maybe.Base
import qualified MAlonzo.Code.Data.Nat.Base
import qualified MAlonzo.Code.Data.Nat.Properties
import qualified MAlonzo.Code.Data.Nat.Show
import qualified MAlonzo.Code.Data.Product
import qualified MAlonzo.Code.Data.String.Base
import qualified MAlonzo.Code.Data.Vec
import qualified MAlonzo.Code.Function
import qualified MAlonzo.Code.Graph.Definitions
import qualified MAlonzo.Code.IO
import qualified MAlonzo.Code.QQueue
import qualified MAlonzo.Code.Relation.Binary
import qualified MAlonzo.Code.Relation.Binary.Core
import qualified MAlonzo.Code.Relation.Binary.PropositionalEquality
import qualified MAlonzo.Code.Relation.Nullary
import qualified MAlonzo.Code.Semiring.Definitions

name10 = "Main.map\8322"
d10 v0 v1 v2 v3 v4 v5 v6 = du10 v4 v5 v6
du10 v0 v1 v2
  = coe
      MAlonzo.Code.Category.Monad.Indexed.d58
      MAlonzo.Code.Data.Maybe.du64 erased erased erased erased erased v1
      (\ v3 ->
         coe
           MAlonzo.Code.Category.Monad.Indexed.d58
           MAlonzo.Code.Data.Maybe.du64 erased erased erased erased erased v2
           (\ v4 ->
              coe
                MAlonzo.Code.Category.Monad.Indexed.d46
                MAlonzo.Code.Data.Maybe.du64 erased erased (coe v0 v3 v4)))
name38 = "Main._._._>>=_"
d38 v0 v1 v2 v3 v4 v5 v6 = du38
du38
  = coe
      MAlonzo.Code.Category.Monad.Indexed.d58
      MAlonzo.Code.Data.Maybe.du64
name54 = "Main._._.return"
d54 v0 v1 v2 v3 v4 v5 v6 = du54
du54
  = coe
      MAlonzo.Code.Category.Monad.Indexed.d46
      MAlonzo.Code.Data.Maybe.du64
name62 = "Main.K"
d62
  = coe
      MAlonzo.Code.Algebra.C381 d110 d112 Nothing
      (coe Just (0 :: Integer))
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
            (\ v0 -> MAlonzo.Code.Data.Maybe.C116) d132))
name74 = "Main.K._.isEquivalence"
d74
  = coe
      MAlonzo.Code.Relation.Binary.d136
      (coe
         MAlonzo.Code.Data.Maybe.du138
         MAlonzo.Code.Relation.Binary.PropositionalEquality.du112)
name90 = "Main.K._.assoc"
d90 = erased
name92 = "Main.K._.*-comm"
d92 = erased
name94 = "Main.K._.\8729-cong"
d94 = erased
name100 = "Main.K._.assoc"
d100 = erased
name102 = "Main.K._.comm"
d102 = erased
name104 = "Main.K._.\8729-cong"
d104 = erased
name106 = "Main.K._.identity"
d106
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
name110 = "Main.K._T\8851_"
d110 v0 v1
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
name112 = "Main.K._T+_"
d112 v0 v1
  = case coe v0 of
      Just v2
        -> case coe v1 of
             Just v3 -> coe Just (coe addInt v2 v3)
             Nothing -> coe v1
             _ -> coe MAlonzo.RTE.mazUnreachableError
      Nothing -> coe v0
      _ -> coe MAlonzo.RTE.mazUnreachableError
name132 = "Main.K.rzero"
d132 v0
  = case coe v0 of
      Just v1 -> coe MAlonzo.Code.Data.Maybe.C116
      Nothing -> coe MAlonzo.Code.Data.Maybe.C116
      _ -> coe MAlonzo.RTE.mazUnreachableError
name142 = "Main.K.distrib-l"
d142 = erased
name160 = "Main.K.distrib-r"
d160 = erased
name374 = "Main._.reflexive"
d374
  = let v0 = coe MAlonzo.Code.Algebra.d720 d62 in
    let v1 = coe MAlonzo.Code.Algebra.Structures.d1728 v0 in
    let v2 = coe MAlonzo.Code.Algebra.Structures.d1542 v1 in
    let v3 = coe MAlonzo.Code.Algebra.Structures.d454 v2 in
    coe
      (\ v4 v5 v6 ->
         coe
           MAlonzo.Code.Relation.Binary.Core.du522
           (coe MAlonzo.Code.Algebra.Structures.d140 v3) v4)
name388 = "Main._._Closed"
d388 a0 = ()
name470 = "Main.0-T\8851"
d470 = erased
name474 = "Main.closed"
d474
  = coe
      MAlonzo.Code.Semiring.Definitions.C383
      (\ v0 ->
         coe
           MAlonzo.Code.Semiring.Definitions.C127
           (let v1 = coe MAlonzo.Code.Algebra.d720 d62 in
            let v2 = coe MAlonzo.Code.Algebra.Structures.d1728 v1 in
            let v3 = coe MAlonzo.Code.Algebra.Structures.d1542 v2 in
            let v4 = coe MAlonzo.Code.Algebra.Structures.d454 v3 in
            MAlonzo.Code.Relation.Binary.Core.du522
              (MAlonzo.Code.Algebra.Structures.d140 v4)
              (d110
                 (Just (0 :: Integer))
                 (d110 (d112 v0 (Just (0 :: Integer))) Nothing))))
name478 = "Main.De"
d478 v0 v1
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
name512 = "Main.G"
d512 v0 v1
  = case coe v0 of
      MAlonzo.Code.Data.Fin.C8 v2
        -> case coe v1 of
             MAlonzo.Code.Data.Fin.C8 v3 -> coe Nothing
             MAlonzo.Code.Data.Fin.C14 v3 v4
               -> case coe v4 of
                    MAlonzo.Code.Data.Fin.C8 v5 -> coe Just (2 :: Integer)
                    MAlonzo.Code.Data.Fin.C14 v5 v6
                      -> case coe v6 of
                           MAlonzo.Code.Data.Fin.C8 v7 -> coe Just (4 :: Integer)
                           _ -> coe MAlonzo.RTE.mazUnreachableError
                    _ -> coe MAlonzo.RTE.mazUnreachableError
             _ -> coe MAlonzo.RTE.mazUnreachableError
      MAlonzo.Code.Data.Fin.C14 v2 v3
        -> case coe v3 of
             MAlonzo.Code.Data.Fin.C8 v4
               -> case coe v1 of
                    MAlonzo.Code.Data.Fin.C8 v5 -> coe Just (2 :: Integer)
                    MAlonzo.Code.Data.Fin.C14 v5 v6
                      -> case coe v6 of
                           MAlonzo.Code.Data.Fin.C8 v7 -> coe Nothing
                           MAlonzo.Code.Data.Fin.C14 v7 v8 -> coe Just (1 :: Integer)
                           _ -> coe MAlonzo.RTE.mazUnreachableError
                    _ -> coe MAlonzo.RTE.mazUnreachableError
             MAlonzo.Code.Data.Fin.C14 v4 v5
               -> case coe v5 of
                    MAlonzo.Code.Data.Fin.C8 v6
                      -> case coe v1 of
                           MAlonzo.Code.Data.Fin.C8 v7 -> coe Just (4 :: Integer)
                           MAlonzo.Code.Data.Fin.C14 v7 v8
                             -> case coe v8 of
                                  MAlonzo.Code.Data.Fin.C8 v9 -> coe Just (1 :: Integer)
                                  MAlonzo.Code.Data.Fin.C14 v9 v10 -> coe Nothing
                                  _ -> coe MAlonzo.RTE.mazUnreachableError
                           _ -> coe MAlonzo.RTE.mazUnreachableError
                    MAlonzo.Code.Data.Fin.C14 v6 v7
                      -> case coe v1 of
                           MAlonzo.Code.Data.Fin.C14 v8 v9
                             -> case coe v9 of
                                  MAlonzo.Code.Data.Fin.C8 v10 -> coe Just (1 :: Integer)
                                  MAlonzo.Code.Data.Fin.C14 v10 v11 -> coe Nothing
                                  _ -> coe MAlonzo.RTE.mazUnreachableError
                           _ -> coe MAlonzo.RTE.mazUnreachableError
                    _ -> coe MAlonzo.RTE.mazUnreachableError
             _ -> coe MAlonzo.RTE.mazUnreachableError
      _ -> coe MAlonzo.RTE.mazUnreachableError
name558 = "Main._.path-weight"
d558 v0 v1 v2
  = coe MAlonzo.Code.Graph.Definitions.du214 d62 d512 v1 v2
name588 = "Main.closedOnG"
d588 v0 v1
  = coe
      MAlonzo.Code.Semiring.Definitions.d274 d474
      (coe MAlonzo.Code.Graph.Definitions.du214 d62 d512 v0 v1)
name592 = "Main.Q"
d592
  = coe
      MAlonzo.Code.QQueue.du110 MAlonzo.Code.Data.Fin.Properties.du76
name640 = "Main._.I\8320"
d640
  = coe
      MAlonzo.Code.Algorithm.du402 d62 d592
      (coe MAlonzo.Code.Data.Fin.C8 (2 :: Integer))
name662 = "Main._.\963"
d662
  = coe
      MAlonzo.Code.Algorithm.du364 (3 :: Integer) d62 d478 d592 d512
name1030 = "Main.show"
d1030 v0 v1 = du1030 v1
du1030 v0
  = case coe v0 of
      MAlonzo.Code.Data.Vec.C14 -> coe Data.Text.pack ""
      MAlonzo.Code.Data.Vec.C22 v1 v2 v3
        -> case coe v2 of
             Just v4
               -> coe
                    MAlonzo.Code.Data.String.Base.d6
                    (coe MAlonzo.Code.Data.Nat.Show.d22 v4)
                    (coe
                       MAlonzo.Code.Data.String.Base.d6 (coe Data.Text.pack "\n")
                       (coe du1030 v3))
             Nothing
               -> coe
                    MAlonzo.Code.Data.String.Base.d6 (coe Data.Text.pack "\8734\n")
                    (coe du1030 v3)
             _ -> coe MAlonzo.RTE.mazUnreachableError
      _ -> coe MAlonzo.RTE.mazUnreachableError
main = d1038
name1038 = "Main.main"
d1038
  = coe
      MAlonzo.Code.Function.du158 (coe MAlonzo.Code.IO.du42 ())
      (coe
         MAlonzo.Code.IO.C28 d4145
         (\ v0 ->
            case coe v0 of
              [] -> coe d4149
              (:) v1 v2 -> coe du4165 v1
              _ -> MAlonzo.RTE.mazUnreachableError))
name2903 = "Main..absurdlambda"
d2903 = erased
name2955 = "Main..absurdlambda"
d2955 = erased
name4145 = "Main._.\9839-0"
d4145
  = coe
      MAlonzo.Code.Agda.Builtin.Coinduction.d16 MAlonzo.Code.Arguments.d4
name4149 = "Main._.\9839-1"
d4149
  = coe
      MAlonzo.Code.Agda.Builtin.Coinduction.d16
      (coe
         MAlonzo.Code.IO.d150 (coe Data.Text.pack "Not enough arguments."))
name4165 = "Main._.\9839-2"
d4165 v0 v1 = du4165 v0
du4165 v0
  = coe
      MAlonzo.Code.Agda.Builtin.Coinduction.d16
      (coe
         MAlonzo.Code.IO.d142
         (coe
            du1030
            (coe
               MAlonzo.Code.Algorithm.d278
               (coe
                  MAlonzo.Code.Algorithm.du364 (3 :: Integer) d62 d478 d592 d512
                  (coe
                     MAlonzo.Code.Data.List.Base.du226
                     (coe MAlonzo.Code.Data.String.Base.d8 v0))
                  (coe
                     MAlonzo.Code.Algorithm.du402 d62 d592
                     (coe MAlonzo.Code.Data.Fin.C8 (2 :: Integer)))))))