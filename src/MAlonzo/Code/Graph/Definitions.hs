{-# LANGUAGE EmptyDataDecls, ExistentialQuantification,
             ScopedTypeVariables, NoMonomorphismRestriction, Rank2Types #-}
module MAlonzo.Code.Graph.Definitions where

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
import qualified MAlonzo.Code.Category.Monad.Indexed
import qualified MAlonzo.Code.Data.Colist
import qualified MAlonzo.Code.Data.Empty
import qualified MAlonzo.Code.Data.Fin.Properties
import qualified MAlonzo.Code.Data.List.NonEmpty
import qualified MAlonzo.Code.Data.Product
import qualified MAlonzo.Code.Data.Star
import qualified MAlonzo.Code.Data.Vec
import qualified MAlonzo.Code.Function
import qualified MAlonzo.Code.Relation.Binary
import qualified MAlonzo.Code.Relation.Binary.Core
import qualified MAlonzo.Code.Relation.Nullary

name16 = "Graph.Definitions._._*_"
d16 v0 v1 v2 v3 v4 = du16 v3
du16 v0 = coe MAlonzo.Code.Algebra.d714 v0
name62 = "Graph.Definitions._.1#"
d62 v0 v1 v2 v3 v4 = du62 v3
du62 v0 = coe MAlonzo.Code.Algebra.d718 v0
name64 = "Graph.Definitions._.Carrier"
d64 = erased
name126 = "Graph.Definitions._.\8721\8734"
d126 a0 a1 a2 a3 a4 a5 a6 = ()
name140 = "Graph.Definitions._._ClosedAt_"
d140 a0 a1 a2 a3 a4 a5 a6 = ()
name188 = "Graph.Definitions.Edge"
d188 a0 a1 a2 a3 a4 a5 a6 = ()
data T188 = C194
name200 = "Graph.Definitions.edge-weight"
d200 v0 v1 v2 v3 v4 v5 v6 v7 = du200 v4 v5 v6
du200 v0 v1 v2 = coe v0 v1 v2
name208 = "Graph.Definitions.Path"
d208 = erased
name214 = "Graph.Definitions.path-weight"
d214 v0 v1 v2 v3 v4 v5 v6 v7 = du214 v3 v4 v6 v7
du214 v0 v1 v2 v3
  = case coe v3 of
      MAlonzo.Code.Data.Star.C22 v4 -> coe MAlonzo.Code.Algebra.d718 v0
      MAlonzo.Code.Data.Star.C34 v4 v5 v6 v7 v8
        -> coe
             MAlonzo.Code.Algebra.d714 v0 (coe du200 v1 v5 v2)
             (coe du214 v0 v1 v5 v8)
      _ -> coe MAlonzo.RTE.mazUnreachableError
name220 = "Graph.Definitions.Cycle"
d220 = erased
name228 = "Graph.Definitions.path-vertices"
d228 v0 v1 v2 v3 v4 v5 v6 v7 = du228 v6 v7
du228 v0 v1
  = case coe v1 of
      MAlonzo.Code.Data.Star.C22 v2 -> coe []
      MAlonzo.Code.Data.Star.C34 v2 v3 v4 v5 v6
        -> coe (:) v0 (coe du228 v3 v6)
      _ -> coe MAlonzo.RTE.mazUnreachableError
name242 = "Graph.Definitions.Cycle-free"
d242 = erased
name266 = "Graph.Definitions.\8707-Path"
d266 a0 a1 a2 a3 a4 a5 a6 = ()
data T266 a0 a1 a2 a3 = C288 a0 a1 a2 a3
name280 = "Graph.Definitions.\8707-Path.q"
d280 v0
  = case coe v0 of
      C288 v1 v2 v3 v4 -> coe v1
      _ -> coe MAlonzo.RTE.mazUnreachableError
name282 = "Graph.Definitions.\8707-Path.q\8242"
d282 v0
  = case coe v0 of
      C288 v1 v2 v3 v4 -> coe v2
      _ -> coe MAlonzo.RTE.mazUnreachableError
name284 = "Graph.Definitions.\8707-Path.path"
d284 v0
  = case coe v0 of
      C288 v1 v2 v3 v4 -> coe v3
      _ -> coe MAlonzo.RTE.mazUnreachableError
name286 = "Graph.Definitions.\8707-Path.proof"
d286 v0
  = case coe v0 of
      C288 v1 v2 v3 v4 -> coe v4
      _ -> coe MAlonzo.RTE.mazUnreachableError
name296 = "Graph.Definitions.\8707-Path-setoid"
d296 v0 v1 v2 v3 v4 v5 v6 = du296
du296
  = coe
      MAlonzo.Code.Relation.Binary.C143
      (coe
         MAlonzo.Code.Relation.Binary.Core.C889
         (\ v0 ->
            coe
              MAlonzo.Code.Data.Product.C30 erased
              (coe MAlonzo.Code.Data.Product.C30 erased erased))
         (\ v0 v1 v2 ->
            case coe v2 of
              MAlonzo.Code.Data.Product.C30 v3 v4
                -> case coe v4 of
                     MAlonzo.Code.Data.Product.C30 v5 v6
                       -> coe
                            MAlonzo.Code.Data.Product.C30 erased
                            (coe MAlonzo.Code.Data.Product.C30 erased erased)
                     _ -> coe MAlonzo.RTE.mazUnreachableError
              _ -> MAlonzo.RTE.mazUnreachableError)
         (\ v0 v1 v2 v3 v4 ->
            case coe v3 of
              MAlonzo.Code.Data.Product.C30 v5 v6
                -> case coe v6 of
                     MAlonzo.Code.Data.Product.C30 v7 v8
                       -> case coe v4 of
                            MAlonzo.Code.Data.Product.C30 v9 v10
                              -> case coe v10 of
                                   MAlonzo.Code.Data.Product.C30 v11 v12
                                     -> coe
                                          MAlonzo.Code.Data.Product.C30 erased
                                          (coe MAlonzo.Code.Data.Product.C30 erased erased)
                                   _ -> coe MAlonzo.RTE.mazUnreachableError
                            _ -> coe MAlonzo.RTE.mazUnreachableError
                     _ -> coe MAlonzo.RTE.mazUnreachableError
              _ -> MAlonzo.RTE.mazUnreachableError))
name322 = "Graph.Definitions.Path-from"
d322 = erased
name326 = "Graph.Definitions.Path-to"
d326 = erased
name336 = "Graph.Definitions.path-length"
d336 v0 v1 v2 v3 v4 v5 v6 v7 = du336 v7
du336 v0
  = case coe v0 of
      MAlonzo.Code.Data.Star.C22 v1 -> 0 :: Integer
      MAlonzo.Code.Data.Star.C34 v1 v2 v3 v4 v5
        -> coe addInt (1 :: Integer) (coe du336 v5)
      _ -> coe MAlonzo.RTE.mazUnreachableError
name342 = "Graph.Definitions.vertex\8594n\8802\&0"
d342 = erased
name360 = "Graph.Definitions.\8802\&0\8594suc"
d360 v0 v1 v2 v3 v4 v5 v6 = du360 v5
du360 v0
  = case coe v0 of
      0 -> coe MAlonzo.Code.Data.Empty.d10 () erased erased
      _ -> let v1 = coe subInt v0 (1 :: Integer) in
           coe MAlonzo.Code.Data.Product.C30 v1 erased
name370 = "Graph.Definitions.vertex\8594n-is-suc"
d370 v0 v1 v2 v3 v4 = du370 v2
du370 v0
  = coe MAlonzo.Code.Function.du58 (\ v1 -> coe du360 v0) erased
name376 = "Graph.Definitions.all-paths-of-length-from"
d376 v0 v1 v2 v3 v4 v5 v6 = du376 v2 v5 v6
du376 v0 v1 v2
  = case coe v1 of
      0 -> coe
             MAlonzo.Code.Category.Monad.Indexed.d46
             MAlonzo.Code.Data.List.NonEmpty.du242 erased erased
             (coe
                MAlonzo.Code.Data.Product.C30 v2
                (coe MAlonzo.Code.Data.Star.C22 v2))
      _ -> let v3 = coe subInt v1 (1 :: Integer) in
           coe
             MAlonzo.Code.Category.Monad.Indexed.d58
             MAlonzo.Code.Data.List.NonEmpty.du242 erased erased erased erased
             erased (coe du470 v0 v2)
             (\ v4 ->
                coe
                  MAlonzo.Code.Category.Monad.Indexed.d58
                  MAlonzo.Code.Data.List.NonEmpty.du242 erased erased erased erased
                  erased (coe du376 v0 v3 v4)
                  (\ v5 ->
                     coe
                       MAlonzo.Code.Category.Monad.Indexed.d46
                       MAlonzo.Code.Data.List.NonEmpty.du242 erased erased
                       (coe
                          MAlonzo.Code.Data.Product.C30
                          (coe MAlonzo.Code.Data.Product.d26 v5)
                          (coe
                             MAlonzo.Code.Data.Star.du44 (coe MAlonzo.Code.Data.Product.d26 v5)
                             v2 (coe MAlonzo.Code.Data.Product.d28 v5)
                             (coe
                                MAlonzo.Code.Data.Star.C34 v4 v2 v2 erased
                                (coe MAlonzo.Code.Data.Star.C22 v2))))))
name416 = "Graph.Definitions._._.return"
d416 v0 v1 v2 v3 v4 v5 = du416
du416
  = coe
      MAlonzo.Code.Category.Monad.Indexed.d46
      MAlonzo.Code.Data.List.NonEmpty.du242
name444 = "Graph.Definitions._._._>>=_"
d444 v0 v1 v2 v3 v4 v5 v6 = du444
du444
  = coe
      MAlonzo.Code.Category.Monad.Indexed.d58
      MAlonzo.Code.Data.List.NonEmpty.du242
name460 = "Graph.Definitions._._.return"
d460 v0 v1 v2 v3 v4 v5 v6 = du460
du460
  = coe
      MAlonzo.Code.Category.Monad.Indexed.d46
      MAlonzo.Code.Data.List.NonEmpty.du242
name466 = "Graph.Definitions._.n-is-suc"
d466 v0 v1 v2 v3 v4 v5 v6 = du466 v2 v6
du466 v0 v1 = coe du370 v0 v1
name468 = "Graph.Definitions._.n-1"
d468 v0 v1 v2 v3 v4 v5 v6 = du468 v2 v6
du468 v0 v1 = coe MAlonzo.Code.Data.Product.d26 (coe du466 v0 v1)
name470 = "Graph.Definitions._.all-vertices"
d470 v0 v1 v2 v3 v4 v5 v6 = du470 v2 v6
du470 v0 v1
  = coe
      MAlonzo.Code.Function.du158 (\ v2 -> v2)
      (coe
         MAlonzo.Code.Data.List.NonEmpty.du72
         (coe
            MAlonzo.Code.Data.Vec.du732
            (coe addInt (1 :: Integer) (coe du468 v0 v1)) (\ v2 -> v2)))
name488 = "Graph.Definitions.all-paths-of-suc-length-from-to"
d488 v0 v1 v2 v3 v4 v5 v6 v7 = du488 v2 v5 v6 v7
du488 v0 v1 v2 v3
  = case coe v1 of
      0 -> coe
             MAlonzo.Code.Category.Monad.Indexed.d46
             MAlonzo.Code.Data.List.NonEmpty.du242 erased erased
             (coe
                MAlonzo.Code.Data.Star.C34 v3 v2 v2 erased
                (coe MAlonzo.Code.Data.Star.C22 v2))
      _ -> let v4 = coe subInt v1 (1 :: Integer) in
           coe
             MAlonzo.Code.Category.Monad.Indexed.d58
             MAlonzo.Code.Data.List.NonEmpty.du242 erased erased erased erased
             erased (coe du586 v0 v2)
             (\ v5 ->
                coe
                  MAlonzo.Code.Category.Monad.Indexed.d58
                  MAlonzo.Code.Data.List.NonEmpty.du242 erased erased erased erased
                  erased (coe du488 v0 v4 v2 v5)
                  (\ v6 ->
                     coe
                       MAlonzo.Code.Category.Monad.Indexed.d46
                       MAlonzo.Code.Data.List.NonEmpty.du242 erased erased
                       (coe MAlonzo.Code.Data.Star.C34 v3 v5 v2 erased v6)))
name530 = "Graph.Definitions._._.return"
d530 v0 v1 v2 v3 v4 v5 v6 = du530
du530
  = coe
      MAlonzo.Code.Category.Monad.Indexed.d46
      MAlonzo.Code.Data.List.NonEmpty.du242
name560 = "Graph.Definitions._._._>>=_"
d560 v0 v1 v2 v3 v4 v5 v6 v7 = du560
du560
  = coe
      MAlonzo.Code.Category.Monad.Indexed.d58
      MAlonzo.Code.Data.List.NonEmpty.du242
name576 = "Graph.Definitions._._.return"
d576 v0 v1 v2 v3 v4 v5 v6 v7 = du576
du576
  = coe
      MAlonzo.Code.Category.Monad.Indexed.d46
      MAlonzo.Code.Data.List.NonEmpty.du242
name582 = "Graph.Definitions._.n-is-suc"
d582 v0 v1 v2 v3 v4 v5 v6 v7 = du582 v2 v6
du582 v0 v1 = coe du370 v0 v1
name584 = "Graph.Definitions._.n-1"
d584 v0 v1 v2 v3 v4 v5 v6 v7 = du584 v2 v6
du584 v0 v1 = coe MAlonzo.Code.Data.Product.d26 (coe du582 v0 v1)
name586 = "Graph.Definitions._.all-vertices"
d586 v0 v1 v2 v3 v4 v5 v6 v7 = du586 v2 v6
du586 v0 v1
  = coe
      MAlonzo.Code.Function.du158 (\ v2 -> v2)
      (coe
         MAlonzo.Code.Data.List.NonEmpty.du72
         (coe
            MAlonzo.Code.Data.Vec.du732
            (coe addInt (1 :: Integer) (coe du584 v0 v1)) (\ v2 -> v2)))
name596 = "Graph.Definitions.all-paths-from"
d596 v0 v1 v2 v3 v4 v5 = du596 v2 v5
du596 v0 v1
  = coe
      MAlonzo.Code.Data.Colist.du250 ()
      (coe
         MAlonzo.Code.Data.Colist.du150 () () (\ v2 -> coe du376 v0 v2 v1)
         (coe du604 (0 :: Integer)))
name604 = "Graph.Definitions._.all-\8469s-from"
d604 v0 v1 v2 v3 v4 v5 v6 = du604 v6
du604 v0 = coe (:) v0 (coe du6871 v0)
name614 = "Graph.Definitions.all-non-\949-paths-from-to"
d614 v0 v1 v2 v3 v4 v5 v6 = du614 v2 v5 v6
du614 v0 v1 v2
  = coe
      MAlonzo.Code.Data.Colist.du250 ()
      (coe
         MAlonzo.Code.Data.Colist.du150 () ()
         (\ v3 -> coe du488 v0 v3 v1 v2) (coe du624 (0 :: Integer)))
name624 = "Graph.Definitions._.all-\8469s-from"
d624 v0 v1 v2 v3 v4 v5 v6 v7 = du624 v7
du624 v0 = coe (:) v0 (coe du7089 v0)
name634 = "Graph.Definitions.all-paths-from-to"
d634 v0 v1 v2 v3 v4 v5 v6 = du634 v2 v5 v6
du634 v0 v1 v2
  = let v3 = coe MAlonzo.Code.Data.Fin.Properties.du82 v1 v2 in
    case coe v3 of
      MAlonzo.Code.Relation.Nullary.C22 v4
        -> coe (:) (coe MAlonzo.Code.Data.Star.C22 v1) (coe du7409 v0 v1)
      MAlonzo.Code.Relation.Nullary.C26 -> coe du614 v0 v1 v2
      _ -> coe MAlonzo.RTE.mazUnreachableError
name656 = "Graph.Definitions.shortest-distance"
d656 = erased
name662 = "Graph.Definitions._ClosedOnG"
d662 = erased
name6871 = "Graph.Definitions._._.\9839-4"
d6871 v0 v1 v2 v3 v4 v5 v6 = du6871 v6
du6871 v0
  = coe
      MAlonzo.Code.Agda.Builtin.Coinduction.d16
      (coe du604 (coe addInt (1 :: Integer) v0))
name7089 = "Graph.Definitions._._.\9839-5"
d7089 v0 v1 v2 v3 v4 v5 v6 v7 = du7089 v7
du7089 v0
  = coe
      MAlonzo.Code.Agda.Builtin.Coinduction.d16
      (coe du624 (coe addInt (1 :: Integer) v0))
name7409 = "Graph.Definitions._.\9839-6"
d7409 v0 v1 v2 v3 v4 v5 = du7409 v0 v1
du7409 v0 v1
  = coe
      MAlonzo.Code.Agda.Builtin.Coinduction.d16 (coe du614 v0 v1 v1)