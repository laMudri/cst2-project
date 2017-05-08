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
name382 = "Graph.Definitions.all-paths-of-suc-length-from-to"
d382 v0 v1 v2 v3 v4 v5 v6 v7 = du382 v2 v5 v6 v7
du382 v0 v1 v2 v3
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
             erased (coe du480 v0 v2)
             (\ v5 ->
                coe
                  MAlonzo.Code.Category.Monad.Indexed.d58
                  MAlonzo.Code.Data.List.NonEmpty.du242 erased erased erased erased
                  erased (coe du382 v0 v4 v2 v5)
                  (\ v6 ->
                     coe
                       MAlonzo.Code.Category.Monad.Indexed.d46
                       MAlonzo.Code.Data.List.NonEmpty.du242 erased erased
                       (coe MAlonzo.Code.Data.Star.C34 v3 v5 v2 erased v6)))
name424 = "Graph.Definitions._._.return"
d424 v0 v1 v2 v3 v4 v5 v6 = du424
du424
  = coe
      MAlonzo.Code.Category.Monad.Indexed.d46
      MAlonzo.Code.Data.List.NonEmpty.du242
name454 = "Graph.Definitions._._._>>=_"
d454 v0 v1 v2 v3 v4 v5 v6 v7 = du454
du454
  = coe
      MAlonzo.Code.Category.Monad.Indexed.d58
      MAlonzo.Code.Data.List.NonEmpty.du242
name470 = "Graph.Definitions._._.return"
d470 v0 v1 v2 v3 v4 v5 v6 v7 = du470
du470
  = coe
      MAlonzo.Code.Category.Monad.Indexed.d46
      MAlonzo.Code.Data.List.NonEmpty.du242
name476 = "Graph.Definitions._.n-is-suc"
d476 v0 v1 v2 v3 v4 v5 v6 v7 = du476 v2 v6
du476 v0 v1 = coe du374 v0 v1
name478 = "Graph.Definitions._.n-1"
d478 v0 v1 v2 v3 v4 v5 v6 v7 = du478 v2 v6
du478 v0 v1 = coe MAlonzo.Code.Data.Product.d26 (coe du476 v0 v1)
name480 = "Graph.Definitions._.all-vertices"
d480 v0 v1 v2 v3 v4 v5 v6 v7 = du480 v2 v6
du480 v0 v1
  = coe
      MAlonzo.Code.Function.du158 (\ v2 -> v2)
      (coe
         MAlonzo.Code.Data.List.NonEmpty.du72
         (coe
            MAlonzo.Code.Data.Vec.du732
            (coe addInt (1 :: Integer) (coe du478 v0 v1)) (\ v2 -> v2)))
name492 = "Graph.Definitions.all-non-\949-paths-from-to"
d492 v0 v1 v2 v3 v4 v5 v6 = du492 v2 v5 v6
du492 v0 v1 v2
  = coe
      MAlonzo.Code.Data.Colist.du250 ()
      (coe
         MAlonzo.Code.Data.Colist.du150 () ()
         (\ v3 -> coe du382 v0 v3 v1 v2) (coe du502 (0 :: Integer)))
name502 = "Graph.Definitions._.all-\8469s-from"
d502 v0 v1 v2 v3 v4 v5 v6 v7 = du502 v7
du502 v0 = coe (:) v0 (coe du5885 v0)
name512 = "Graph.Definitions.all-paths-from-to"
d512 v0 v1 v2 v3 v4 v5 v6 = du512 v2 v5 v6
du512 v0 v1 v2
  = let v3 = coe MAlonzo.Code.Data.Fin.Properties.du82 v1 v2 in
    case coe v3 of
      MAlonzo.Code.Relation.Nullary.C22 v4
        -> coe (:) (coe MAlonzo.Code.Data.Star.C22 v1) (coe du6205 v0 v1)
      MAlonzo.Code.Relation.Nullary.C26 -> coe du492 v0 v1 v2
      _ -> coe MAlonzo.RTE.mazUnreachableError
name534 = "Graph.Definitions.shortest-distance"
d534 = erased
name544 = "Graph.Definitions.all-paths-of-length-from"
d544 v0 v1 v2 v3 v4 v5 v6 = du544 v2 v5 v6
du544 v0 v1 v2
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
             erased (coe du638 v0 v2)
             (\ v4 ->
                coe
                  MAlonzo.Code.Category.Monad.Indexed.d58
                  MAlonzo.Code.Data.List.NonEmpty.du242 erased erased erased erased
                  erased (coe du544 v0 v3 v4)
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
name584 = "Graph.Definitions._._.return"
d584 v0 v1 v2 v3 v4 v5 = du584
du584
  = coe
      MAlonzo.Code.Category.Monad.Indexed.d46
      MAlonzo.Code.Data.List.NonEmpty.du242
name612 = "Graph.Definitions._._._>>=_"
d612 v0 v1 v2 v3 v4 v5 v6 = du612
du612
  = coe
      MAlonzo.Code.Category.Monad.Indexed.d58
      MAlonzo.Code.Data.List.NonEmpty.du242
name628 = "Graph.Definitions._._.return"
d628 v0 v1 v2 v3 v4 v5 v6 = du628
du628
  = coe
      MAlonzo.Code.Category.Monad.Indexed.d46
      MAlonzo.Code.Data.List.NonEmpty.du242
name634 = "Graph.Definitions._.n-is-suc"
d634 v0 v1 v2 v3 v4 v5 v6 = du634 v2 v6
du634 v0 v1 = coe du374 v0 v1
name636 = "Graph.Definitions._.n-1"
d636 v0 v1 v2 v3 v4 v5 v6 = du636 v2 v6
du636 v0 v1 = coe MAlonzo.Code.Data.Product.d26 (coe du634 v0 v1)
name638 = "Graph.Definitions._.all-vertices"
d638 v0 v1 v2 v3 v4 v5 v6 = du638 v2 v6
du638 v0 v1
  = coe
      MAlonzo.Code.Function.du158 (\ v2 -> v2)
      (coe
         MAlonzo.Code.Data.List.NonEmpty.du72
         (coe
            MAlonzo.Code.Data.Vec.du732
            (coe addInt (1 :: Integer) (coe du636 v0 v1)) (\ v2 -> v2)))
name652 = "Graph.Definitions.all-paths-from"
d652 v0 v1 v2 v3 v4 v5 = du652 v2 v5
du652 v0 v1
  = coe
      MAlonzo.Code.Data.Colist.du250 ()
      (coe
         MAlonzo.Code.Data.Colist.du150 () () (\ v2 -> coe du544 v0 v2 v1)
         (coe du660 (0 :: Integer)))
name660 = "Graph.Definitions._.all-\8469s-from"
d660 v0 v1 v2 v3 v4 v5 v6 = du660 v6
du660 v0 = coe (:) v0 (coe du7531 v0)
name666 = "Graph.Definitions._ClosedOnG"
d666 = erased
name5885 = "Graph.Definitions._._.\9839-2"
d5885 v0 v1 v2 v3 v4 v5 v6 v7 = du5885 v7
du5885 v0
  = coe
      MAlonzo.Code.Agda.Builtin.Coinduction.d16
      (coe du502 (coe addInt (1 :: Integer) v0))
name6205 = "Graph.Definitions._.\9839-3"
d6205 v0 v1 v2 v3 v4 v5 = du6205 v0 v1
du6205 v0 v1
  = coe
      MAlonzo.Code.Agda.Builtin.Coinduction.d16 (coe du492 v0 v1 v1)
name7531 = "Graph.Definitions._._.\9839-6"
d7531 v0 v1 v2 v3 v4 v5 v6 = du7531 v6
du7531 v0
  = coe
      MAlonzo.Code.Agda.Builtin.Coinduction.d16
      (coe du660 (coe addInt (1 :: Integer) v0))