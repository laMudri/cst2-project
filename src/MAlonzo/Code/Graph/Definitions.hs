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
name192 = "Graph.Definitions.Edge"
d192 a0 a1 a2 a3 a4 a5 a6 = ()
data T192 = C198
name204 = "Graph.Definitions.edge-weight"
d204 v0 v1 v2 v3 v4 v5 v6 v7 = du204 v4 v5 v6
du204 v0 v1 v2 = coe v0 v1 v2
name212 = "Graph.Definitions.Path"
d212 = erased
name218 = "Graph.Definitions.path-weight"
d218 v0 v1 v2 v3 v4 v5 v6 v7 = du218 v3 v4 v6 v7
du218 v0 v1 v2 v3
  = case coe v3 of
      MAlonzo.Code.Data.Star.C22 v4 -> coe MAlonzo.Code.Algebra.d718 v0
      MAlonzo.Code.Data.Star.C34 v4 v5 v6 v7 v8
        -> coe
             MAlonzo.Code.Algebra.d714 v0 (coe du204 v1 v5 v2)
             (coe du218 v0 v1 v5 v8)
      _ -> coe MAlonzo.RTE.mazUnreachableError
name224 = "Graph.Definitions.Cycle"
d224 = erased
name232 = "Graph.Definitions.path-vertices"
d232 v0 v1 v2 v3 v4 v5 v6 v7 = du232 v6 v7
du232 v0 v1
  = case coe v1 of
      MAlonzo.Code.Data.Star.C22 v2 -> coe []
      MAlonzo.Code.Data.Star.C34 v2 v3 v4 v5 v6
        -> coe (:) v0 (coe du232 v3 v6)
      _ -> coe MAlonzo.RTE.mazUnreachableError
name246 = "Graph.Definitions.Cycle-free"
d246 = erased
name270 = "Graph.Definitions.\8707-Path"
d270 a0 a1 a2 a3 a4 a5 a6 = ()
data T270 a0 a1 a2 a3 = C292 a0 a1 a2 a3
name284 = "Graph.Definitions.\8707-Path.q"
d284 v0
  = case coe v0 of
      C292 v1 v2 v3 v4 -> coe v1
      _ -> coe MAlonzo.RTE.mazUnreachableError
name286 = "Graph.Definitions.\8707-Path.q\8242"
d286 v0
  = case coe v0 of
      C292 v1 v2 v3 v4 -> coe v2
      _ -> coe MAlonzo.RTE.mazUnreachableError
name288 = "Graph.Definitions.\8707-Path.path"
d288 v0
  = case coe v0 of
      C292 v1 v2 v3 v4 -> coe v3
      _ -> coe MAlonzo.RTE.mazUnreachableError
name290 = "Graph.Definitions.\8707-Path.proof"
d290 v0
  = case coe v0 of
      C292 v1 v2 v3 v4 -> coe v4
      _ -> coe MAlonzo.RTE.mazUnreachableError
name300 = "Graph.Definitions.\8707-Path-setoid"
d300 v0 v1 v2 v3 v4 v5 v6 = du300
du300
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
name326 = "Graph.Definitions.Path-from"
d326 = erased
name330 = "Graph.Definitions.Path-to"
d330 = erased
name340 = "Graph.Definitions.path-length"
d340 v0 v1 v2 v3 v4 v5 v6 v7 = du340 v7
du340 v0
  = case coe v0 of
      MAlonzo.Code.Data.Star.C22 v1 -> 0 :: Integer
      MAlonzo.Code.Data.Star.C34 v1 v2 v3 v4 v5
        -> coe addInt (1 :: Integer) (coe du340 v5)
      _ -> coe MAlonzo.RTE.mazUnreachableError
name346 = "Graph.Definitions.vertex\8594n\8802\&0"
d346 = erased
name364 = "Graph.Definitions.\8802\&0\8594suc"
d364 v0 v1 v2 v3 v4 v5 v6 = du364 v5
du364 v0
  = case coe v0 of
      0 -> coe MAlonzo.Code.Data.Empty.d10 () erased erased
      _ -> let v1 = coe subInt v0 (1 :: Integer) in
           coe MAlonzo.Code.Data.Product.C30 v1 erased
name374 = "Graph.Definitions.vertex\8594n-is-suc"
d374 v0 v1 v2 v3 v4 = du374 v2
du374 v0
  = coe MAlonzo.Code.Function.du58 (\ v1 -> coe du364 v0) erased
name380 = "Graph.Definitions.all-paths-of-length-from"
d380 v0 v1 v2 v3 v4 v5 v6 = du380 v2 v5 v6
du380 v0 v1 v2
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
             erased (coe du474 v0 v2)
             (\ v4 ->
                coe
                  MAlonzo.Code.Category.Monad.Indexed.d58
                  MAlonzo.Code.Data.List.NonEmpty.du242 erased erased erased erased
                  erased (coe du380 v0 v3 v4)
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
name420 = "Graph.Definitions._._.return"
d420 v0 v1 v2 v3 v4 v5 = du420
du420
  = coe
      MAlonzo.Code.Category.Monad.Indexed.d46
      MAlonzo.Code.Data.List.NonEmpty.du242
name448 = "Graph.Definitions._._._>>=_"
d448 v0 v1 v2 v3 v4 v5 v6 = du448
du448
  = coe
      MAlonzo.Code.Category.Monad.Indexed.d58
      MAlonzo.Code.Data.List.NonEmpty.du242
name464 = "Graph.Definitions._._.return"
d464 v0 v1 v2 v3 v4 v5 v6 = du464
du464
  = coe
      MAlonzo.Code.Category.Monad.Indexed.d46
      MAlonzo.Code.Data.List.NonEmpty.du242
name470 = "Graph.Definitions._.n-is-suc"
d470 v0 v1 v2 v3 v4 v5 v6 = du470 v2 v6
du470 v0 v1 = coe du374 v0 v1
name472 = "Graph.Definitions._.n-1"
d472 v0 v1 v2 v3 v4 v5 v6 = du472 v2 v6
du472 v0 v1 = coe MAlonzo.Code.Data.Product.d26 (coe du470 v0 v1)
name474 = "Graph.Definitions._.all-vertices"
d474 v0 v1 v2 v3 v4 v5 v6 = du474 v2 v6
du474 v0 v1
  = coe
      MAlonzo.Code.Function.du158 (\ v2 -> v2)
      (coe
         MAlonzo.Code.Data.List.NonEmpty.du72
         (coe
            MAlonzo.Code.Data.Vec.du732
            (coe addInt (1 :: Integer) (coe du472 v0 v1)) (\ v2 -> v2)))
name492 = "Graph.Definitions.all-paths-of-suc-length-from-to"
d492 v0 v1 v2 v3 v4 v5 v6 v7 = du492 v2 v5 v6 v7
du492 v0 v1 v2 v3
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
             erased (coe du590 v0 v2)
             (\ v5 ->
                coe
                  MAlonzo.Code.Category.Monad.Indexed.d58
                  MAlonzo.Code.Data.List.NonEmpty.du242 erased erased erased erased
                  erased (coe du492 v0 v4 v2 v5)
                  (\ v6 ->
                     coe
                       MAlonzo.Code.Category.Monad.Indexed.d46
                       MAlonzo.Code.Data.List.NonEmpty.du242 erased erased
                       (coe MAlonzo.Code.Data.Star.C34 v3 v5 v2 erased v6)))
name534 = "Graph.Definitions._._.return"
d534 v0 v1 v2 v3 v4 v5 v6 = du534
du534
  = coe
      MAlonzo.Code.Category.Monad.Indexed.d46
      MAlonzo.Code.Data.List.NonEmpty.du242
name564 = "Graph.Definitions._._._>>=_"
d564 v0 v1 v2 v3 v4 v5 v6 v7 = du564
du564
  = coe
      MAlonzo.Code.Category.Monad.Indexed.d58
      MAlonzo.Code.Data.List.NonEmpty.du242
name580 = "Graph.Definitions._._.return"
d580 v0 v1 v2 v3 v4 v5 v6 v7 = du580
du580
  = coe
      MAlonzo.Code.Category.Monad.Indexed.d46
      MAlonzo.Code.Data.List.NonEmpty.du242
name586 = "Graph.Definitions._.n-is-suc"
d586 v0 v1 v2 v3 v4 v5 v6 v7 = du586 v2 v6
du586 v0 v1 = coe du374 v0 v1
name588 = "Graph.Definitions._.n-1"
d588 v0 v1 v2 v3 v4 v5 v6 v7 = du588 v2 v6
du588 v0 v1 = coe MAlonzo.Code.Data.Product.d26 (coe du586 v0 v1)
name590 = "Graph.Definitions._.all-vertices"
d590 v0 v1 v2 v3 v4 v5 v6 v7 = du590 v2 v6
du590 v0 v1
  = coe
      MAlonzo.Code.Function.du158 (\ v2 -> v2)
      (coe
         MAlonzo.Code.Data.List.NonEmpty.du72
         (coe
            MAlonzo.Code.Data.Vec.du732
            (coe addInt (1 :: Integer) (coe du588 v0 v1)) (\ v2 -> v2)))
name600 = "Graph.Definitions.all-paths-from"
d600 v0 v1 v2 v3 v4 v5 = du600 v2 v5
du600 v0 v1
  = coe
      MAlonzo.Code.Data.Colist.du250 ()
      (coe
         MAlonzo.Code.Data.Colist.du150 () () (\ v2 -> coe du380 v0 v2 v1)
         (coe du608 (0 :: Integer)))
name608 = "Graph.Definitions._.all-\8469s-from"
d608 v0 v1 v2 v3 v4 v5 v6 = du608 v6
du608 v0 = coe (:) v0 (coe du6871 v0)
name618 = "Graph.Definitions.all-non-\949-paths-from-to"
d618 v0 v1 v2 v3 v4 v5 v6 = du618 v2 v5 v6
du618 v0 v1 v2
  = coe
      MAlonzo.Code.Data.Colist.du250 ()
      (coe
         MAlonzo.Code.Data.Colist.du150 () ()
         (\ v3 -> coe du492 v0 v3 v1 v2) (coe du628 (0 :: Integer)))
name628 = "Graph.Definitions._.all-\8469s-from"
d628 v0 v1 v2 v3 v4 v5 v6 v7 = du628 v7
du628 v0 = coe (:) v0 (coe du7089 v0)
name638 = "Graph.Definitions.all-paths-from-to"
d638 v0 v1 v2 v3 v4 v5 v6 = du638 v2 v5 v6
du638 v0 v1 v2
  = let v3 = coe MAlonzo.Code.Data.Fin.Properties.du82 v1 v2 in
    case coe v3 of
      MAlonzo.Code.Relation.Nullary.C22 v4
        -> coe (:) (coe MAlonzo.Code.Data.Star.C22 v1) (coe du7409 v0 v1)
      MAlonzo.Code.Relation.Nullary.C26 -> coe du618 v0 v1 v2
      _ -> coe MAlonzo.RTE.mazUnreachableError
name660 = "Graph.Definitions.shortest-distance"
d660 = erased
name666 = "Graph.Definitions._ClosedOnG"
d666 = erased
name6871 = "Graph.Definitions._._.\9839-4"
d6871 v0 v1 v2 v3 v4 v5 v6 = du6871 v6
du6871 v0
  = coe
      MAlonzo.Code.Agda.Builtin.Coinduction.d16
      (coe du608 (coe addInt (1 :: Integer) v0))
name7089 = "Graph.Definitions._._.\9839-5"
d7089 v0 v1 v2 v3 v4 v5 v6 v7 = du7089 v7
du7089 v0
  = coe
      MAlonzo.Code.Agda.Builtin.Coinduction.d16
      (coe du628 (coe addInt (1 :: Integer) v0))
name7409 = "Graph.Definitions._.\9839-6"
d7409 v0 v1 v2 v3 v4 v5 = du7409 v0 v1
du7409 v0 v1
  = coe
      MAlonzo.Code.Agda.Builtin.Coinduction.d16 (coe du618 v0 v1 v1)