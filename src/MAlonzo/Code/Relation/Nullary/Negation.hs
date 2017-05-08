{-# LANGUAGE EmptyDataDecls, ExistentialQuantification,
             ScopedTypeVariables, NoMonomorphismRestriction, Rank2Types #-}
module MAlonzo.Code.Relation.Nullary.Negation where

import MAlonzo.RTE (coe, erased, addInt, subInt, mulInt, quotInt,
                    remInt, geqInt, ltInt, eqInt, eqFloat)
import qualified Control.Exception
import qualified Data.Text
import qualified Data.Text.IO
import qualified MAlonzo.RTE
import qualified System.Environment
import qualified System.IO
import qualified Data.Text
import qualified MAlonzo.Code.Category.Monad.Indexed
import qualified MAlonzo.Code.Data.Empty
import qualified MAlonzo.Code.Data.Fin.Dec
import qualified MAlonzo.Code.Data.Product
import qualified MAlonzo.Code.Data.Sum
import qualified MAlonzo.Code.Function
import qualified MAlonzo.Code.Relation.Nullary

name14 = "Relation.Nullary.Negation.contradiction"
d14 v0 v1 v2 v3 v4 v5 = du14 v1
du14 v0 = coe MAlonzo.Code.Data.Empty.d10 v0 erased erased
name28 = "Relation.Nullary.Negation.contraposition"
d28 = erased
name50 = "Relation.Nullary.Negation.\172?"
d50 v0 v1 v2 = du50 v2
du50 v0
  = case coe v0 of
      MAlonzo.Code.Relation.Nullary.C22 v1
        -> coe MAlonzo.Code.Relation.Nullary.C26
      MAlonzo.Code.Relation.Nullary.C26
        -> coe MAlonzo.Code.Relation.Nullary.C22 erased
      _ -> coe MAlonzo.RTE.mazUnreachableError
name68 = "Relation.Nullary.Negation.\8707\10230\172\8704\172"
d68 = erased
name82 = "Relation.Nullary.Negation.\8704\10230\172\8707\172"
d82 = erased
name102 = "Relation.Nullary.Negation.\172\8707\10230\8704\172"
d102 = erased
name116 = "Relation.Nullary.Negation.\8704\172\10230\172\8707"
d116 = erased
name130 = "Relation.Nullary.Negation.\8707\172\10230\172\8704"
d130 = erased
name142 = "Relation.Nullary.Negation.\172\8704\10230\8707\172"
d142 v0 v1 v2 v3 v4 = du142 v0 v1 v3
du142 v0 v1 v2
  = coe
      MAlonzo.Code.Function.du158
      (coe
         MAlonzo.Code.Data.Product.du188 (\ v3 -> v3)
         (\ v3 -> MAlonzo.Code.Data.Product.d26))
      (coe MAlonzo.Code.Data.Fin.Dec.du454 v0 v1 v2)
name160 = "Relation.Nullary.Negation.\172\172-map"
d160 = erased
name166 = "Relation.Nullary.Negation.Stable"
d166 = erased
name174 = "Relation.Nullary.Negation.stable"
d174 = erased
name184 = "Relation.Nullary.Negation.negated-stable"
d184 = erased
name196 = "Relation.Nullary.Negation.decidable-stable"
d196 v0 v1 v2 v3 = du196 v0 v2
du196 v0 v1
  = case coe v1 of
      MAlonzo.Code.Relation.Nullary.C22 v2 -> coe v2
      MAlonzo.Code.Relation.Nullary.C26
        -> coe MAlonzo.Code.Data.Empty.d10 v0 erased erased
      _ -> coe MAlonzo.RTE.mazUnreachableError
name210 = "Relation.Nullary.Negation.\172-drop-Dec"
d210 v0 v1 v2 = du210 v2
du210 v0
  = case coe v0 of
      MAlonzo.Code.Relation.Nullary.C22 v1
        -> coe MAlonzo.Code.Relation.Nullary.C26
      MAlonzo.Code.Relation.Nullary.C26
        -> coe MAlonzo.Code.Relation.Nullary.C22 erased
      _ -> coe MAlonzo.RTE.mazUnreachableError
name220 = "Relation.Nullary.Negation.\172\172-Monad"
d220 v0 = du220
du220
  = coe
      MAlonzo.Code.Category.Monad.Indexed.C1
      (\ v0 v1 v2 v3 -> coe du14 ()) erased
name238 = "Relation.Nullary.Negation.\172\172-push"
d238 = erased
name252 = "Relation.Nullary.Negation.excluded-middle"
d252 = erased
name266 = "Relation.Nullary.Negation.call/cc"
d266 = erased
name288 = "Relation.Nullary.Negation.independence-of-premise"
d288 = erased
name300 = "Relation.Nullary.Negation._.helper"
d300 v0 v1 v2 v3 v4 v5 v6 v7 v8 = du300 v2 v6 v7 v8
du300 v0 v1 v2 v3
  = case coe v3 of
      MAlonzo.Code.Relation.Nullary.C22 v4
        -> coe
             MAlonzo.Code.Data.Product.du188 (\ v5 -> v5) (\ v5 v6 v7 -> v6)
             (coe v2 v4)
      MAlonzo.Code.Relation.Nullary.C26
        -> coe
             MAlonzo.Code.Data.Product.C30 v1
             (coe
                MAlonzo.Code.Function.du58
                (coe MAlonzo.Code.Data.Empty.d10 v0 erased) erased)
      _ -> coe MAlonzo.RTE.mazUnreachableError
name318 = "Relation.Nullary.Negation.independence-of-premise-\8846"
d318 = erased
name328 = "Relation.Nullary.Negation._.helper"
d328 v0 v1 v2 v3 v4 v5 v6 v7 = du328 v1 v6 v7
du328 v0 v1 v2
  = case coe v2 of
      MAlonzo.Code.Relation.Nullary.C22 v3
        -> coe
             MAlonzo.Code.Data.Sum.du92 (\ v4 v5 -> v4) (\ v4 v5 -> v4)
             (coe v1 v3)
      MAlonzo.Code.Relation.Nullary.C26
        -> coe
             Left
             (coe
                MAlonzo.Code.Function.du58
                (coe MAlonzo.Code.Data.Empty.d10 v0 erased) erased)
      _ -> coe MAlonzo.RTE.mazUnreachableError
name368 = "Relation.Nullary.Negation.Excluded-Middle"
d368 = erased
name376 = "Relation.Nullary.Negation.Double-Negation-Elimination"
d376 = erased