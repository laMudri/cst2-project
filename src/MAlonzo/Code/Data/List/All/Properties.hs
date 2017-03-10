{-# LANGUAGE EmptyDataDecls, ExistentialQuantification,
             ScopedTypeVariables, NoMonomorphismRestriction, Rank2Types #-}
module MAlonzo.Code.Data.List.All.Properties where

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
import qualified MAlonzo.Code.Data.Bool.Base
import qualified MAlonzo.Code.Data.Bool.Properties
import qualified MAlonzo.Code.Data.Empty
import qualified MAlonzo.Code.Data.List.All
import qualified MAlonzo.Code.Data.List.Any
import qualified MAlonzo.Code.Data.List.Base
import qualified MAlonzo.Code.Data.Product
import qualified MAlonzo.Code.Function
import qualified MAlonzo.Code.Function.Equality
import qualified MAlonzo.Code.Function.Equivalence
import qualified MAlonzo.Code.Function.Inverse
import qualified MAlonzo.Code.Function.Surjection
import qualified MAlonzo.Code.Relation.Binary
import qualified MAlonzo.Code.Relation.Binary.Core
import qualified MAlonzo.Code.Relation.Binary.PropositionalEquality
import qualified MAlonzo.Code.Relation.Nullary

name24 = "Data.List.All.Properties.All-map"
d24 v0 v1 v2 v3 v4 v5 v6 v7 v8 = du24 v6 v8
du24 v0 v1
  = case coe v1 of
      MAlonzo.Code.Data.List.All.C24 -> coe v1
      MAlonzo.Code.Data.List.All.C34 v2 v3 v4 v5
        -> coe
             MAlonzo.Code.Data.List.All.C34 (coe v0 v2)
             (coe MAlonzo.Code.Data.List.Base.du56 v0 v3) v4 (coe du24 v0 v5)
      _ -> coe MAlonzo.RTE.mazUnreachableError
name46 = "Data.List.All.Properties.map-All"
d46 v0 v1 v2 v3 v4 v5 v6 v7 v8 = du46 v7 v8
du46 v0 v1
  = case coe v0 of
      [] -> coe seq v1 MAlonzo.Code.Data.List.All.C24
      (:) v2 v3
        -> case coe v1 of
             MAlonzo.Code.Data.List.All.C34 v4 v5 v6 v7
               -> coe MAlonzo.Code.Data.List.All.C34 v2 v3 v6 (coe du46 v3 v7)
             _ -> coe MAlonzo.RTE.mazUnreachableError
      _ -> coe MAlonzo.RTE.mazUnreachableError
name70 = "Data.List.All.Properties.gmap"
d70 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 = du70 v8 v9
du70 v0 v1
  = coe
      MAlonzo.Code.Function.du38 (\ v2 -> coe du24 v0)
      (coe MAlonzo.Code.Data.List.All.du130 v1)
name82 = "Data.List.All.Properties.All-all"
d82 = erased
name100 = "Data.List.All.Properties.all-All"
d100 v0 v1 v2 v3 v4 = du100 v2 v3 v4
du100 v0 v1 v2
  = case coe v1 of
      [] -> coe MAlonzo.Code.Data.List.All.C24
      (:) v3 v4
        -> let v5
                 = coe
                     MAlonzo.Code.Function.Equality.d38
                     (coe
                        MAlonzo.Code.Function.Equivalence.d34
                        (coe
                           MAlonzo.Code.Data.Bool.Properties.d814 (coe v0 v3)
                           (coe
                              MAlonzo.Code.Data.List.Base.du144 MAlonzo.Code.Data.Bool.Base.d24
                              True (coe MAlonzo.Code.Data.List.Base.du56 v0 v4))))
                     v2 in
           coe
             MAlonzo.Code.Data.List.All.C34 v3 v4
             (coe MAlonzo.Code.Data.Product.d26 v5) (coe du100 v0 v4 erased)
      _ -> coe MAlonzo.RTE.mazUnreachableError
name140 = "Data.List.All.Properties.anti-mono"
d140 v0 v1 v2 v3 v4 v5 v6 v7 = du140 v4 v6 v7
du140 v0 v1 v2
  = coe
      MAlonzo.Code.Data.List.All.du108 v0
      (\ v3 ->
         coe
           MAlonzo.Code.Function.du38
           (\ v4 -> coe MAlonzo.Code.Data.List.All.du84 v2) (coe v1 v3))
name156 = "Data.List.All.Properties.all-anti-mono"
d156 = erased
name174 = "Data.List.All.Properties.++\8314"
d174 v0 v1 v2 v3 v4 v5 v6 v7 = du174 v5 v6 v7
du174 v0 v1 v2
  = case coe v1 of
      MAlonzo.Code.Data.List.All.C24 -> coe v2
      MAlonzo.Code.Data.List.All.C34 v3 v4 v5 v6
        -> coe
             MAlonzo.Code.Data.List.All.C34 v3
             (coe MAlonzo.Code.Data.List.Base.du18 v4 v0) v5
             (coe du174 v0 v6 v2)
      _ -> coe MAlonzo.RTE.mazUnreachableError
name196 = "Data.List.All.Properties.++\8315"
d196 v0 v1 v2 v3 v4 v5 v6 = du196 v4 v6
du196 v0 v1
  = case coe v0 of
      []
        -> coe
             MAlonzo.Code.Data.Product.C30 MAlonzo.Code.Data.List.All.C24 v1
      (:) v2 v3
        -> case coe v1 of
             MAlonzo.Code.Data.List.All.C34 v4 v5 v6 v7
               -> coe
                    MAlonzo.Code.Function.du158
                    (coe
                       MAlonzo.Code.Data.Product.du188
                       (coe MAlonzo.Code.Data.List.All.C34 v2 v3 v6) (\ v8 v9 -> v9))
                    (coe du196 v3 v7)
             _ -> coe MAlonzo.RTE.mazUnreachableError
      _ -> coe MAlonzo.RTE.mazUnreachableError
name222 = "Data.List.All.Properties.++\8314\8728++\8315"
d222 = erased
name248 = "Data.List.All.Properties.++\8315\8728++\8314"
d248 = erased
name274 = "Data.List.All.Properties.++\8596"
d274 v0 v1 v2 v3 v4 v5 = du274 v4 v5
du274 v0 v1
  = coe
      MAlonzo.Code.Function.Inverse.C173
      (coe
         MAlonzo.Code.Function.du158
         (coe
            MAlonzo.Code.Relation.Binary.PropositionalEquality.du210
            (coe
               MAlonzo.Code.Relation.Binary.C143
               (coe MAlonzo.Code.Relation.Binary.Core.C889 erased erased erased)))
         (coe MAlonzo.Code.Data.Product.du340 (coe du174 v1)))
      (coe
         MAlonzo.Code.Function.du158
         (coe
            MAlonzo.Code.Relation.Binary.PropositionalEquality.du210
            (coe
               MAlonzo.Code.Relation.Binary.C143
               (coe MAlonzo.Code.Relation.Binary.Core.C889 erased erased erased)))
         (coe du196 v0))
      (coe MAlonzo.Code.Function.Inverse.C109 erased erased)
name290 = "Data.List.All.Properties.\172Any\8608All\172"
d290 v0 v1 v2 v3 v4 = du290 v4
du290 v0
  = coe
      MAlonzo.Code.Function.Surjection.C101
      (coe
         MAlonzo.Code.Relation.Binary.PropositionalEquality.du210
         (coe
            MAlonzo.Code.Relation.Binary.C143
            (coe MAlonzo.Code.Relation.Binary.Core.C889 erased erased erased))
         (coe du300 v0))
      (coe
         MAlonzo.Code.Function.Surjection.C55
         (coe
            MAlonzo.Code.Relation.Binary.PropositionalEquality.du210
            (coe
               MAlonzo.Code.Relation.Binary.C143
               (coe MAlonzo.Code.Relation.Binary.Core.C889 erased erased erased))
            erased)
         erased)
name300 = "Data.List.All.Properties._.to"
d300 v0 v1 v2 v3 v4 v5 v6 = du300 v5 v6
du300 v0 v1
  = case coe v0 of
      [] -> coe MAlonzo.Code.Data.List.All.C24
      (:) v2 v3
        -> coe
             MAlonzo.Code.Data.List.All.C34 v2 v3
             (coe
                MAlonzo.Code.Function.du38 (\ v4 -> v1)
                (coe MAlonzo.Code.Data.List.Any.C30 v2 v3))
             (coe du300 v3 erased)
      _ -> coe MAlonzo.RTE.mazUnreachableError
name312 = "Data.List.All.Properties._.from"
d312 = erased
name326 = "Data.List.All.Properties._.to\8728from"
d326 = erased
name368 = "Data.List.All.Properties.Any\172\8594\172All"
d368 = erased
name384 = "Data.List.All.Properties.Any\172\8660\172All"
d384 v0 v1 v2 v3 v4 v5 = du384 v4 v5
du384 v0 v1
  = coe
      MAlonzo.Code.Function.Equivalence.C1
      (coe
         MAlonzo.Code.Relation.Binary.PropositionalEquality.du210
         (coe
            MAlonzo.Code.Relation.Binary.C143
            (coe MAlonzo.Code.Relation.Binary.Core.C889 erased erased erased))
         erased)
      (coe
         MAlonzo.Code.Relation.Binary.PropositionalEquality.du210
         (coe
            MAlonzo.Code.Relation.Binary.C143
            (coe MAlonzo.Code.Relation.Binary.Core.C889 erased erased erased))
         (\ v2 -> coe du396 v1 v0))
name396 = "Data.List.All.Properties._.from"
d396 v0 v1 v2 v3 v4 v5 v6 v7 = du396 v5 v6
du396 v0 v1
  = case coe v1 of
      [] -> coe MAlonzo.Code.Data.Empty.d10 () erased erased
      (:) v2 v3
        -> let v4 = coe v0 v2 in
           case coe v4 of
             MAlonzo.Code.Relation.Nullary.C22 v5
               -> coe MAlonzo.Code.Data.List.Any.C38 v2 v3 (coe du396 v0 v3)
             MAlonzo.Code.Relation.Nullary.C26
               -> coe MAlonzo.Code.Data.List.Any.C30 v2 v3 erased
             _ -> coe MAlonzo.RTE.mazUnreachableError
      _ -> coe MAlonzo.RTE.mazUnreachableError