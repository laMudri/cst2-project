{-# LANGUAGE EmptyDataDecls, ExistentialQuantification,
             ScopedTypeVariables, NoMonomorphismRestriction, Rank2Types #-}
module MAlonzo.Code.QQueue where

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
import qualified MAlonzo.Code.Agda.Builtin.List
import qualified MAlonzo.Code.Data.List.Base
import qualified MAlonzo.Code.Data.Product
import qualified MAlonzo.Code.Function
import qualified MAlonzo.Code.Relation.Binary
import qualified MAlonzo.Code.Relation.Nullary

name2 = "Queue.Is-suc"
d2 a0 = ()
newtype T2 a0 = C6 a0
name10 = "Queue.Is-suc?"
d10 v0
  = case coe v0 of
      0 -> coe MAlonzo.Code.Relation.Nullary.C26
      _ -> let v1 = coe subInt v0 (1 :: Integer) in
           coe MAlonzo.Code.Relation.Nullary.C22 (coe C6 v1)
name13 = "Queue..absurdlambda"
d13 = erased
name14 = "Queue.zero-not-suc"
d14 = erased
name22 = "Queue.QueueDiscipline"
d22 a0 a1 a2 = ()
data T22 a0 a1 a2 a3 a4 a5 a6 a7 a8 = C43 a0 a1 a2 a3 a4
name58 = "Queue.QueueDiscipline.Carrier"
d58 = erased
name60 = "Queue.QueueDiscipline.empty"
d60 v0
  = case coe v0 of
      C43 v2 v3 v4 v5 v6 -> coe v2
      _ -> coe MAlonzo.RTE.mazUnreachableError
name62 = "Queue.QueueDiscipline.count"
d62 v0
  = case coe v0 of
      C43 v2 v3 v4 v5 v6 -> coe v3
      _ -> coe MAlonzo.RTE.mazUnreachableError
name64 = "Queue.QueueDiscipline.enqueue"
d64 v0
  = case coe v0 of
      C43 v2 v3 v4 v5 v6 -> coe v4
      _ -> coe MAlonzo.RTE.mazUnreachableError
name68 = "Queue.QueueDiscipline.dequeue"
d68 v0
  = case coe v0 of
      C43 v2 v3 v4 v5 v6 -> coe v5
      _ -> coe MAlonzo.RTE.mazUnreachableError
name70 = "Queue.QueueDiscipline.contains"
d70 v0
  = case coe v0 of
      C43 v2 v3 v4 v5 v6 -> coe v6
      _ -> coe MAlonzo.RTE.mazUnreachableError
name72 = "Queue.QueueDiscipline.empty-zero"
d72 = erased
name78 = "Queue.QueueDiscipline.enqueue-suc"
d78 = erased
name84 = "Queue.QueueDiscipline.dequeue-pred"
d84 = erased
name86 = "Queue.QueueDiscipline.has-items"
d86 v0 v1 v2 v3 v4 = du86 v3 v4
du86 v0 v1
  = coe
      MAlonzo.Code.Function.du276 (coe d62 v0 v1)
      (\ v2 ->
         case coe v2 of
           0 -> coe False
           _ -> True)
name92 = "Queue.QueueDiscipline.Has-items"
d92 = erased
name96 = "Queue.QueueDiscipline.Has-items?"
d96 v0 v1 v2 v3 = du96 v3
du96 v0 = coe MAlonzo.Code.Function.du38 (\ v1 -> d10) (coe d62 v0)
name98 = "Queue.QueueDiscipline._\8712Q_"
d98 = erased
name110 = "Queue.stack"
d110 v0 v1 v2 = du110 v2
du110 v0
  = coe
      C43 [] MAlonzo.Code.Data.List.Base.du226 (:)
      (\ v1 v2 ->
         case coe v1 of
           (:) v3 v4 -> coe MAlonzo.Code.Data.Product.C30 v3 v4
           _ -> MAlonzo.RTE.mazUnreachableError)
      (coe du142 v0)
name142 = "Queue._.contains"
d142 v0 v1 v2 v3 v4 = du142 v2 v3 v4
du142 v0 v1 v2
  = case coe v2 of
      [] -> coe False
      (:) v3 v4
        -> let v5
                 = coe
                     MAlonzo.Code.Relation.Binary.d184
                     (coe MAlonzo.Code.Relation.Binary.d216 v0) v1 v3 in
           case coe v5 of
             MAlonzo.Code.Relation.Nullary.C22 v6 -> coe True
             MAlonzo.Code.Relation.Nullary.C26 -> coe du142 v0 v1 v4
             _ -> coe MAlonzo.RTE.mazUnreachableError
      _ -> coe MAlonzo.RTE.mazUnreachableError