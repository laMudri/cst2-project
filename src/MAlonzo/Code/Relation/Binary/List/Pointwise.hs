{-# LANGUAGE EmptyDataDecls, ExistentialQuantification,
             ScopedTypeVariables, NoMonomorphismRestriction, Rank2Types #-}
module MAlonzo.Code.Relation.Binary.List.Pointwise where

import MAlonzo.RTE (coe, erased, addInt, subInt, mulInt, quotInt,
                    remInt, geqInt, ltInt, eqInt, eqFloat)
import qualified Control.Exception
import qualified Data.Text
import qualified Data.Text.IO
import qualified MAlonzo.RTE
import qualified System.Environment
import qualified System.IO
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Builtin.List
import qualified MAlonzo.Code.Data.Product
import qualified MAlonzo.Code.Function.Equality
import qualified MAlonzo.Code.Function.Inverse
import qualified MAlonzo.Code.Relation.Binary
import qualified MAlonzo.Code.Relation.Binary.Core
import qualified MAlonzo.Code.Relation.Binary.PropositionalEquality
import qualified MAlonzo.Code.Relation.Nullary
import qualified MAlonzo.Code.Relation.Nullary.Decidable

name20 = "Relation.Binary.List.Pointwise.Rel"
d20 a0 a1 a2 a3 a4 a5 a6 a7 = ()
data T20 a0 a1 a2 a3 a4 a5 = C34 | C48 a0 a1 a2 a3 a4 a5
name70 = "Relation.Binary.List.Pointwise.head"
d70 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 = du70 v10
du70 v0
  = case coe v0 of
      C48 v1 v2 v3 v4 v5 v6 -> coe v5
      _ -> coe MAlonzo.RTE.mazUnreachableError
name96 = "Relation.Binary.List.Pointwise.tail"
d96 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 = du96 v10
du96 v0
  = case coe v0 of
      C48 v1 v2 v3 v4 v5 v6 -> coe v6
      _ -> coe MAlonzo.RTE.mazUnreachableError
name140 = "Relation.Binary.List.Pointwise.rec"
d140 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 = du140 v8 v9 v12
du140 v0 v1 v2
  = case coe v2 of
      C34 -> coe v1
      C48 v3 v4 v5 v6 v7 v8
        -> coe v0 v3 v5 v4 v6 v8 v7 (coe du140 v0 v1 v8)
      _ -> coe MAlonzo.RTE.mazUnreachableError
name174 = "Relation.Binary.List.Pointwise.map"
d174 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 = du174 v8 v11
du174 v0 v1
  = case coe v1 of
      C34 -> coe v1
      C48 v2 v3 v4 v5 v6 v7
        -> coe C48 v2 v3 v4 v5 (coe v0 v2 v4 v6) (coe du174 v0 v7)
      _ -> coe MAlonzo.RTE.mazUnreachableError
name200 = "Relation.Binary.List.Pointwise.reflexive"
d200 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 = du200 v8 v11
du200 v0 v1
  = case coe v1 of
      C34 -> coe v1
      C48 v2 v3 v4 v5 v6 v7
        -> coe C48 v2 v3 v4 v5 (coe v0 v2 v4 v6) (coe du200 v0 v7)
      _ -> coe MAlonzo.RTE.mazUnreachableError
name218 = "Relation.Binary.List.Pointwise.refl"
d218 v0 v1 v2 v3 v4 v5 = du218 v4 v5
du218 v0 v1
  = case coe v1 of
      [] -> coe C34
      (:) v2 v3 -> coe C48 v2 v3 v2 v3 (coe v0 v2) (coe du218 v0 v3)
      _ -> coe MAlonzo.RTE.mazUnreachableError
name244 = "Relation.Binary.List.Pointwise.symmetric"
d244 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 = du244 v8 v11
du244 v0 v1
  = case coe v1 of
      C34 -> coe v1
      C48 v2 v3 v4 v5 v6 v7
        -> coe C48 v4 v5 v2 v3 (coe v0 v2 v4 v6) (coe du244 v0 v7)
      _ -> coe MAlonzo.RTE.mazUnreachableError
name278 = "Relation.Binary.List.Pointwise.transitive"
d278 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17
  = du278 v12 v16 v17
du278 v0 v1 v2
  = case coe v1 of
      C34 -> coe seq v2 v1
      C48 v3 v4 v5 v6 v7 v8
        -> case coe v2 of
             C48 v9 v10 v11 v12 v13 v14
               -> coe
                    C48 v3 v4 v11 v12 (coe v0 v3 v5 v11 v7 v13) (coe du278 v0 v8 v14)
             _ -> coe MAlonzo.RTE.mazUnreachableError
      _ -> coe MAlonzo.RTE.mazUnreachableError
name304 = "Relation.Binary.List.Pointwise.antisymmetric"
d304 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 = du304 v6 v9 v10
du304 v0 v1 v2
  = case coe v1 of
      C34 -> coe seq v2 v1
      C48 v3 v4 v5 v6 v7 v8
        -> case coe v2 of
             C48 v9 v10 v11 v12 v13 v14
               -> coe C48 v3 v4 v5 v6 (coe v0 v3 v5 v7 v13) (coe du304 v0 v8 v14)
             _ -> coe MAlonzo.RTE.mazUnreachableError
      _ -> coe MAlonzo.RTE.mazUnreachableError
name330 = "Relation.Binary.List.Pointwise.respects\8322"
d330 v0 v1 v2 v3 v4 v5 v6 = du330 v6
du330 v0
  = coe
      MAlonzo.Code.Data.Product.C30
      (\ v1 v2 v3 v4 v5 -> coe du344 v0 v4 v5)
      (\ v1 v2 v3 v4 v5 -> coe du356 v0 v4 v5)
name344 = "Relation.Binary.List.Pointwise._.resp\185"
d344 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 = du344 v6 v10 v11
du344 v0 v1 v2
  = case coe v1 of
      C34 -> coe seq v2 v1
      C48 v3 v4 v5 v6 v7 v8
        -> case coe v2 of
             C48 v9 v10 v11 v12 v13 v14
               -> coe
                    C48 v9 v10 v5 v6
                    (coe MAlonzo.Code.Data.Product.d26 v0 v9 v3 v5 v7 v13)
                    (coe du344 v0 v8 v14)
             _ -> coe MAlonzo.RTE.mazUnreachableError
      _ -> coe MAlonzo.RTE.mazUnreachableError
name356 = "Relation.Binary.List.Pointwise._.resp\178"
d356 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 = du356 v6 v10 v11
du356 v0 v1 v2
  = case coe v1 of
      C34 -> coe seq v2 v1
      C48 v3 v4 v5 v6 v7 v8
        -> case coe v2 of
             C48 v9 v10 v11 v12 v13 v14
               -> coe
                    C48 v5 v6 v11 v12
                    (coe MAlonzo.Code.Data.Product.d28 v0 v11 v3 v5 v7 v13)
                    (coe du356 v0 v8 v14)
             _ -> coe MAlonzo.RTE.mazUnreachableError
      _ -> coe MAlonzo.RTE.mazUnreachableError
name390 = "Relation.Binary.List.Pointwise.decidable"
d390 v0 v1 v2 v3 v4 v5 v6 v7 v8 = du390 v6 v7 v8
du390 v0 v1 v2
  = case coe v1 of
      []
        -> case coe v2 of
             [] -> coe MAlonzo.Code.Relation.Nullary.C22 C34
             (:) v3 v4 -> coe MAlonzo.Code.Relation.Nullary.C26
             _ -> coe MAlonzo.RTE.mazUnreachableError
      (:) v3 v4
        -> case coe v2 of
             [] -> coe MAlonzo.Code.Relation.Nullary.C26
             (:) v5 v6
               -> let v7 = coe v0 v3 v5 in
                  case coe v7 of
                    MAlonzo.Code.Relation.Nullary.C22 v8
                      -> let v9 = coe du390 v0 v4 v6 in
                         case coe v9 of
                           MAlonzo.Code.Relation.Nullary.C22 v10
                             -> coe
                                  MAlonzo.Code.Relation.Nullary.C22 (coe C48 v3 v4 v5 v6 v8 v10)
                           MAlonzo.Code.Relation.Nullary.C26
                             -> coe MAlonzo.Code.Relation.Nullary.C26
                           _ -> coe MAlonzo.RTE.mazUnreachableError
                    MAlonzo.Code.Relation.Nullary.C26
                      -> coe MAlonzo.Code.Relation.Nullary.C26
                    _ -> coe MAlonzo.RTE.mazUnreachableError
             _ -> coe MAlonzo.RTE.mazUnreachableError
      _ -> coe MAlonzo.RTE.mazUnreachableError
name484 = "Relation.Binary.List.Pointwise.isEquivalence"
d484 v0 v1 v2 v3 v4 = du484 v4
du484 v0
  = coe
      MAlonzo.Code.Relation.Binary.Core.C889
      (coe du218 (coe MAlonzo.Code.Relation.Binary.Core.d516 v0))
      (\ v1 v2 v3 ->
         coe du244 (coe MAlonzo.Code.Relation.Binary.Core.d518 v0) v3)
      (\ v1 v2 v3 v4 v5 ->
         coe du278 (coe MAlonzo.Code.Relation.Binary.Core.d520 v0) v4 v5)
name514 = "Relation.Binary.List.Pointwise.isPreorder"
d514 v0 v1 v2 v3 v4 v5 v6 = du514 v6
du514 v0
  = coe
      MAlonzo.Code.Relation.Binary.C17
      (coe du484 (coe MAlonzo.Code.Relation.Binary.d36 v0))
      (\ v1 v2 v3 ->
         coe du200 (coe MAlonzo.Code.Relation.Binary.d38 v0) v3)
      (\ v1 v2 v3 v4 v5 ->
         coe du278 (coe MAlonzo.Code.Relation.Binary.d40 v0) v4 v5)
name552 = "Relation.Binary.List.Pointwise.isDecEquivalence"
d552 v0 v1 v2 v3 v4 = du552 v4
du552 v0
  = coe
      MAlonzo.Code.Relation.Binary.C273
      (coe du484 (coe MAlonzo.Code.Relation.Binary.d182 v0))
      (coe du390 (coe MAlonzo.Code.Relation.Binary.d184 v0))
name586 = "Relation.Binary.List.Pointwise.isPartialOrder"
d586 v0 v1 v2 v3 v4 v5 v6 = du586 v6
du586 v0
  = coe
      MAlonzo.Code.Relation.Binary.C327
      (coe du514 (coe MAlonzo.Code.Relation.Binary.d268 v0))
      (\ v1 v2 v3 v4 ->
         coe du304 (coe MAlonzo.Code.Relation.Binary.d270 v0) v3 v4)
name626 = "Relation.Binary.List.Pointwise.preorder"
d626 v0 v1 v2 v3 = du626 v3
du626 v0
  = coe
      MAlonzo.Code.Relation.Binary.C125
      (coe du514 (coe MAlonzo.Code.Relation.Binary.d92 v0))
name634 = "Relation.Binary.List.Pointwise.setoid"
d634 v0 v1 v2 = du634 v2
du634 v0
  = coe
      MAlonzo.Code.Relation.Binary.C143
      (coe du484 (coe MAlonzo.Code.Relation.Binary.d136 v0))
name642 = "Relation.Binary.List.Pointwise.decSetoid"
d642 v0 v1 v2 = du642 v2
du642 v0
  = coe
      MAlonzo.Code.Relation.Binary.C287
      (coe du552 (coe MAlonzo.Code.Relation.Binary.d216 v0))
name652 = "Relation.Binary.List.Pointwise.poset"
d652 v0 v1 v2 v3 = du652 v3
du652 v0
  = coe
      MAlonzo.Code.Relation.Binary.C345
      (coe du586 (coe MAlonzo.Code.Relation.Binary.d322 v0))
name660 = "Relation.Binary.List.Pointwise.Rel\8801\8658\8801"
d660 = erased
name674 = "Relation.Binary.List.Pointwise.\8801\8658Rel\8801"
d674 v0 v1 v2 v3 v4 = du674 v2
du674 v0 = coe du218 erased v0
name680 = "Relation.Binary.List.Pointwise.Rel\8596\8801"
d680 v0 v1 = du680
du680
  = coe
      MAlonzo.Code.Function.Inverse.C173
      (coe MAlonzo.Code.Function.Equality.C15 (\ v0 -> v0) erased)
      (coe
         MAlonzo.Code.Function.Equality.C15 (\ v0 -> v0)
         (\ v0 v1 v2 -> coe du674 v0))
      (coe
         MAlonzo.Code.Function.Inverse.C109 (\ v0 -> coe du218 erased v0)
         erased)
name690 = "Relation.Binary.List.Pointwise.decidable-\8801"
d690 v0 v1 v2 v3 v4 = du690 v2 v3 v4
du690 v0 v1 v2
  = coe
      MAlonzo.Code.Relation.Nullary.Decidable.du98 erased
      (\ v3 -> coe du674 v1)
      (coe
         MAlonzo.Code.Relation.Binary.d184
         (coe
            MAlonzo.Code.Relation.Binary.d216
            (coe
               du642
               (coe MAlonzo.Code.Relation.Binary.PropositionalEquality.du120 v0)))
         v1 v2)
name706 = "Relation.Binary.List.Pointwise._._._\8799_"
d706 v0 v1 v2 v3 v4 = du706 v2
du706 v0
  = coe
      MAlonzo.Code.Relation.Binary.d184
      (coe
         MAlonzo.Code.Relation.Binary.d216
         (coe
            du642
            (coe MAlonzo.Code.Relation.Binary.PropositionalEquality.du120 v0)))
name11405 = "Relation.Binary.List.Pointwise..absurdlambda"
d11405 = erased
name11675 = "Relation.Binary.List.Pointwise..absurdlambda"
d11675 = erased