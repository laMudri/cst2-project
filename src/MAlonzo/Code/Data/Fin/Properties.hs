{-# LANGUAGE EmptyDataDecls, ExistentialQuantification,
             ScopedTypeVariables, NoMonomorphismRestriction, Rank2Types #-}
module MAlonzo.Code.Data.Fin.Properties where

import MAlonzo.RTE (coe, erased, addInt, subInt, mulInt, quotInt,
                    remInt, geqInt, ltInt, eqInt, eqFloat)
import qualified Control.Exception
import qualified Data.Text
import qualified Data.Text.IO
import qualified MAlonzo.RTE
import qualified System.Environment
import qualified System.IO
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Builtin.Nat
import qualified MAlonzo.Code.Category.Applicative.Indexed
import qualified MAlonzo.Code.Category.Functor
import qualified MAlonzo.Code.Data.Fin
import qualified MAlonzo.Code.Data.Nat
import qualified MAlonzo.Code.Data.Nat.Base
import qualified MAlonzo.Code.Data.Nat.Properties
import qualified MAlonzo.Code.Data.Product
import qualified MAlonzo.Code.Function
import qualified MAlonzo.Code.Relation.Binary
import qualified MAlonzo.Code.Relation.Binary.Core
import qualified MAlonzo.Code.Relation.Binary.PreorderReasoning
import qualified MAlonzo.Code.Relation.Binary.PropositionalEquality
import qualified MAlonzo.Code.Relation.Binary.PropositionalEquality.Core
import qualified MAlonzo.Code.Relation.Nullary.Decidable

name8 = "Data.Fin.Properties._.refl"
d8 v0
  = coe
      MAlonzo.Code.Relation.Binary.d38
      (coe
         MAlonzo.Code.Relation.Binary.d268
         (coe
            MAlonzo.Code.Relation.Binary.d842
            (coe
               MAlonzo.Code.Relation.Binary.d970
               (coe
                  MAlonzo.Code.Relation.Binary.d1052 MAlonzo.Code.Data.Nat.d12))))
      v0 v0
      (coe
         MAlonzo.Code.Relation.Binary.Core.d516
         (coe
            MAlonzo.Code.Relation.Binary.d36
            (coe
               MAlonzo.Code.Relation.Binary.d268
               (coe
                  MAlonzo.Code.Relation.Binary.d842
                  (coe
                     MAlonzo.Code.Relation.Binary.d970
                     (coe
                        MAlonzo.Code.Relation.Binary.d1052 MAlonzo.Code.Data.Nat.d12)))))
         v0)
name16 = "Data.Fin.Properties.suc-injective"
d16 = erased
name18 = "Data.Fin.Properties.preorder"
d18 v0 = du18
du18 = MAlonzo.Code.Relation.Binary.PropositionalEquality.du132
name22 = "Data.Fin.Properties.setoid"
d22 v0 = du22
du22 = MAlonzo.Code.Relation.Binary.PropositionalEquality.du112
name28 = "Data.Fin.Properties.cmp"
d28 v0 v1 v2 = du28 v1 v2
du28 v0 v1
  = case coe v0 of
      MAlonzo.Code.Data.Fin.C8 v2
        -> case coe v1 of
             MAlonzo.Code.Data.Fin.C8 v3
               -> coe MAlonzo.Code.Relation.Binary.Core.C408 erased
             MAlonzo.Code.Data.Fin.C14 v3 v4
               -> coe
                    MAlonzo.Code.Relation.Binary.Core.C400
                    (coe
                       MAlonzo.Code.Data.Nat.Base.C18 (0 :: Integer)
                       (coe MAlonzo.Code.Data.Fin.du18 v4)
                       (coe
                          MAlonzo.Code.Data.Nat.Base.C10
                          (coe MAlonzo.Code.Data.Fin.du18 v4)))
             _ -> coe MAlonzo.RTE.mazUnreachableError
      MAlonzo.Code.Data.Fin.C14 v2 v3
        -> case coe v1 of
             MAlonzo.Code.Data.Fin.C8 v4
               -> coe
                    MAlonzo.Code.Relation.Binary.Core.C416
                    (coe
                       MAlonzo.Code.Data.Nat.Base.C18 (0 :: Integer)
                       (coe MAlonzo.Code.Data.Fin.du18 v3)
                       (coe
                          MAlonzo.Code.Data.Nat.Base.C10
                          (coe MAlonzo.Code.Data.Fin.du18 v3)))
             MAlonzo.Code.Data.Fin.C14 v4 v5
               -> let v6 = coe du28 v3 v5 in
                  case coe v6 of
                    MAlonzo.Code.Relation.Binary.Core.C400 v7
                      -> coe
                           MAlonzo.Code.Relation.Binary.Core.C400
                           (coe
                              MAlonzo.Code.Data.Nat.Base.C18
                              (coe addInt (1 :: Integer) (coe MAlonzo.Code.Data.Fin.du18 v3))
                              (coe MAlonzo.Code.Data.Fin.du18 v5) v7)
                    MAlonzo.Code.Relation.Binary.Core.C408 v8
                      -> coe MAlonzo.Code.Relation.Binary.Core.C408 erased
                    MAlonzo.Code.Relation.Binary.Core.C416 v9
                      -> coe
                           MAlonzo.Code.Relation.Binary.Core.C416
                           (coe
                              MAlonzo.Code.Data.Nat.Base.C18
                              (coe addInt (1 :: Integer) (coe MAlonzo.Code.Data.Fin.du18 v5))
                              (coe MAlonzo.Code.Data.Fin.du18 v3) v9)
                    _ -> coe MAlonzo.RTE.mazUnreachableError
             _ -> coe MAlonzo.RTE.mazUnreachableError
      _ -> coe MAlonzo.RTE.mazUnreachableError
name72 = "Data.Fin.Properties.strictTotalOrder"
d72 v0 = du72
du72
  = coe
      MAlonzo.Code.Relation.Binary.C1165
      (coe
         MAlonzo.Code.Relation.Binary.C903
         MAlonzo.Code.Relation.Binary.PropositionalEquality.Core.du50
         (\ v0 v1 v2 ->
            coe
              MAlonzo.Code.Data.Nat.Properties.d664
              (coe MAlonzo.Code.Data.Fin.du18 v0)
              (coe MAlonzo.Code.Data.Fin.du18 v1)
              (coe MAlonzo.Code.Data.Fin.du18 v2))
         du28)
name76 = "Data.Fin.Properties.decSetoid"
d76 v0 = du76
du76 = coe MAlonzo.Code.Relation.Binary.du1250 du72
name82 = "Data.Fin.Properties._\8799_"
d82 v0 = du82
du82
  = coe
      MAlonzo.Code.Relation.Binary.d184
      (coe MAlonzo.Code.Relation.Binary.d216 du76)
name88 = "Data.Fin.Properties.to-from"
d88 = erased
name96 = "Data.Fin.Properties.from-to"
d96 = erased
name104 = "Data.Fin.Properties.to\8469-strengthen"
d104 = erased
name114 = "Data.Fin.Properties.to\8469-injective"
d114 = erased
name140 = "Data.Fin.Properties.bounded"
d140 v0 v1 = du140 v1
du140 v0
  = case coe v0 of
      MAlonzo.Code.Data.Fin.C8 v1
        -> coe
             MAlonzo.Code.Data.Nat.Base.C18 (0 :: Integer) v1
             (coe MAlonzo.Code.Data.Nat.Base.C10 v1)
      MAlonzo.Code.Data.Fin.C14 v1 v2
        -> coe
             MAlonzo.Code.Data.Nat.Base.C18
             (coe addInt (1 :: Integer) (coe MAlonzo.Code.Data.Fin.du18 v2)) v1
             (coe du140 v2)
      _ -> coe MAlonzo.RTE.mazUnreachableError
name148 = "Data.Fin.Properties.prop-to\8469-\8804"
d148 v0 v1 = du148 v1
du148 v0
  = case coe v0 of
      MAlonzo.Code.Data.Fin.C8 v1
        -> coe
             MAlonzo.Code.Data.Nat.Base.C10
             (coe
                MAlonzo.Code.Data.Nat.Base.d184 (coe addInt (1 :: Integer) v1))
      MAlonzo.Code.Data.Fin.C14 v1 v2
        -> coe
             MAlonzo.Code.Data.Nat.Base.C18 (coe MAlonzo.Code.Data.Fin.du18 v2)
             (coe MAlonzo.Code.Data.Nat.Base.d184 v1) (coe du148 v2)
      _ -> coe MAlonzo.RTE.mazUnreachableError
name158 = "Data.Fin.Properties.prop-to\8469-\8804\8242"
d158 v0 v1 = du158 v1
du158 v0
  = coe MAlonzo.Code.Data.Nat.Properties.du586 (coe du140 v0)
name166 = "Data.Fin.Properties.n\8469-\8469i\8804n"
d166 v0 v1
  = case coe v1 of
      MAlonzo.Code.Data.Fin.C8 v2
        -> let v3
                 = coe
                     MAlonzo.Code.Data.Fin.d276 v0 (coe MAlonzo.Code.Data.Fin.C8 v0) in
           coe
             MAlonzo.Code.Relation.Binary.d38
             (coe
                MAlonzo.Code.Relation.Binary.d268
                (coe
                   MAlonzo.Code.Relation.Binary.d842
                   (coe
                      MAlonzo.Code.Relation.Binary.d970
                      (coe
                         MAlonzo.Code.Relation.Binary.d1052 MAlonzo.Code.Data.Nat.d12))))
             v3 v3
             (coe
                MAlonzo.Code.Relation.Binary.Core.d516
                (coe
                   MAlonzo.Code.Relation.Binary.d36
                   (coe
                      MAlonzo.Code.Relation.Binary.d268
                      (coe
                         MAlonzo.Code.Relation.Binary.d842
                         (coe
                            MAlonzo.Code.Relation.Binary.d970
                            (coe
                               MAlonzo.Code.Relation.Binary.d1052 MAlonzo.Code.Data.Nat.d12)))))
                v3)
      MAlonzo.Code.Data.Fin.C14 v2 v3
        -> let v4 = coe subInt v0 (1 :: Integer) in
           coe
             MAlonzo.Code.Relation.Binary.PreorderReasoning.d62
             (let v5
                    = coe
                        MAlonzo.Code.Relation.Binary.C345
                        (coe
                           MAlonzo.Code.Relation.Binary.d842
                           (coe
                              MAlonzo.Code.Relation.Binary.d970
                              (coe
                                 MAlonzo.Code.Relation.Binary.d1052 MAlonzo.Code.Data.Nat.d12))) in
              MAlonzo.Code.Relation.Binary.PreorderReasoning.du72
                (MAlonzo.Code.Relation.Binary.C125
                   (MAlonzo.Code.Relation.Binary.d268
                      (MAlonzo.Code.Relation.Binary.d322 v5)))
                (MAlonzo.Code.Data.Fin.d276 v4 v3) v4 v0 (d166 v4 v3)
                (let v6
                       = coe
                           MAlonzo.Code.Relation.Binary.C345
                           (coe
                              MAlonzo.Code.Relation.Binary.d842
                              (coe
                                 MAlonzo.Code.Relation.Binary.d970
                                 (coe
                                    MAlonzo.Code.Relation.Binary.d1052
                                    MAlonzo.Code.Data.Nat.d12))) in
                 MAlonzo.Code.Relation.Binary.PreorderReasoning.du72
                   (MAlonzo.Code.Relation.Binary.C125
                      (MAlonzo.Code.Relation.Binary.d268
                         (MAlonzo.Code.Relation.Binary.d322 v6)))
                   v4 v0 v0 (MAlonzo.Code.Data.Nat.Properties.d542 v4)
                   (MAlonzo.Code.Relation.Binary.PreorderReasoning.C56
                      (MAlonzo.Code.Relation.Binary.d38
                         (MAlonzo.Code.Relation.Binary.d268
                            (MAlonzo.Code.Relation.Binary.d842
                               (MAlonzo.Code.Relation.Binary.d970
                                  (MAlonzo.Code.Relation.Binary.d1052 MAlonzo.Code.Data.Nat.d12))))
                         v0 v0
                         (MAlonzo.Code.Relation.Binary.Core.d516
                            (MAlonzo.Code.Relation.Binary.d36
                               (MAlonzo.Code.Relation.Binary.d268
                                  (MAlonzo.Code.Relation.Binary.d842
                                     (MAlonzo.Code.Relation.Binary.d970
                                        (MAlonzo.Code.Relation.Binary.d1052
                                           MAlonzo.Code.Data.Nat.d12)))))
                            v0)))))
      _ -> coe MAlonzo.RTE.mazUnreachableError
name175 = "Data.Fin.Properties..absurdlambda"
d175 = erased
name184 = "Data.Fin.Properties.inject-lemma"
d184 = erased
name198 = "Data.Fin.Properties.inject+-lemma"
d198 = erased
name205 = "Data.Fin.Properties..absurdlambda"
d205 = erased
name210 = "Data.Fin.Properties.inject\8321-lemma"
d210 = erased
name222 = "Data.Fin.Properties.inject\8804-lemma"
d222 = erased
name236 = "Data.Fin.Properties.inject\8804-refl"
d236 = erased
name242 = "Data.Fin.Properties.\8826\8658<\8242"
d242 v0 v1 v2 = du242 v2
du242 v0
  = case coe v0 of
      MAlonzo.Code.Data.Fin.C316 v1 v2
        -> coe MAlonzo.Code.Data.Nat.Properties.du478 v1 (coe du140 v2)
      _ -> coe MAlonzo.RTE.mazUnreachableError
name248 = "Data.Fin.Properties.<\8242\8658\8826"
d248 v0 v1 v2 = du248 v0 v2
du248 v0 v1
  = case coe v1 of
      MAlonzo.Code.Data.Nat.Base.C68
        -> coe
             MAlonzo.Code.Data.Fin.C316 (coe addInt (1 :: Integer) v0)
             (coe MAlonzo.Code.Data.Fin.d30 v0)
      MAlonzo.Code.Data.Nat.Base.C74 v2 v3
        -> let v4 = coe du248 v0 v3 in
           case coe v4 of
             MAlonzo.Code.Data.Fin.C316 v5 v6
               -> coe
                    MAlonzo.Code.Data.Fin.C316 (coe addInt (1 :: Integer) v5)
                    (coe MAlonzo.Code.Data.Fin.du128 v6)
             _ -> coe MAlonzo.RTE.mazUnreachableError
      _ -> coe MAlonzo.RTE.mazUnreachableError
name263 = "Data.Fin.Properties..absurdlambda"
d263 = erased
name274 = "Data.Fin.Properties.to\8469-raise"
d274 = erased
name288 = "Data.Fin.Properties.from\8469\8804-to\8469"
d288 = erased
name300 = "Data.Fin.Properties.to\8469-from\8469\8804"
d300 = erased
name305 = "Data.Fin.Properties..absurdlambda"
d305 = erased
name306 = "Data.Fin.Properties.from\8469-def"
d306 = erased
name318
  = "Data.Fin.Properties.from\8469\8804\8801from\8469\8804\8243"
d318 = erased
name330 = "Data.Fin.Properties._+\8242_"
d330 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Data.Fin.du136
      (coe MAlonzo.Code.Data.Fin.du240 v1 v2 v3)
      (coe
         MAlonzo.Code.Data.Nat.Properties.d1212
         (coe MAlonzo.Code.Data.Fin.du18 v2)
         (coe MAlonzo.Code.Data.Nat.Base.d184 v0) v1 v1 (coe du148 v2)
         (coe
            MAlonzo.Code.Relation.Binary.d38
            (coe
               MAlonzo.Code.Relation.Binary.d268
               (coe
                  MAlonzo.Code.Relation.Binary.d842
                  (coe
                     MAlonzo.Code.Relation.Binary.d970
                     (coe
                        MAlonzo.Code.Relation.Binary.d1052 MAlonzo.Code.Data.Nat.d12))))
            v1 v1
            (coe
               MAlonzo.Code.Relation.Binary.Core.d516
               (coe
                  MAlonzo.Code.Relation.Binary.d36
                  (coe
                     MAlonzo.Code.Relation.Binary.d268
                     (coe
                        MAlonzo.Code.Relation.Binary.d842
                        (coe
                           MAlonzo.Code.Relation.Binary.d970
                           (coe
                              MAlonzo.Code.Relation.Binary.d1052 MAlonzo.Code.Data.Nat.d12)))))
               v1)))
name338 = "Data.Fin.Properties.reverse"
d338 v0 v1
  = let v2 = coe subInt v0 (1 :: Integer) in
    coe
      MAlonzo.Code.Data.Fin.du136 (coe MAlonzo.Code.Data.Fin.d266 v2 v1)
      (coe
         MAlonzo.Code.Data.Nat.Properties.d604
         (coe MAlonzo.Code.Data.Fin.du18 v1) v0)
name348 = "Data.Fin.Properties.reverse-prop"
d348 = erased
name362 = "Data.Fin.Properties._.to\8469\8255\8469-"
d362 = erased
name372 = "Data.Fin.Properties.reverse-involutive"
d372 = erased
name384 = "Data.Fin.Properties._._.comm"
d384 = erased
name390 = "Data.Fin.Properties._.lem\8321"
d390 = erased
name395 = "Data.Fin.Properties..absurdlambda"
d395 = erased
name404 = "Data.Fin.Properties._.lem\8322"
d404 = erased
name411 = "Data.Fin.Properties..absurdlambda"
d411 = erased
name416 = "Data.Fin.Properties._._.decompose-n"
d416 v0 v1 v2 v3 = du416 v2 v3
du416 v0 v1
  = coe
      MAlonzo.Code.Data.Product.C30
      (coe
         MAlonzo.Code.Agda.Builtin.Nat.d22 v0
         (coe MAlonzo.Code.Data.Fin.du18 v1))
      erased
name418 = "Data.Fin.Properties._._.j"
d418 v0 v1 v2 v3 = du418 v2 v3
du418 v0 v1 = coe MAlonzo.Code.Data.Product.d26 (coe du416 v0 v1)
name420 = "Data.Fin.Properties._._.i+j\8801k"
d420 = erased
name424 = "Data.Fin.Properties._.eq"
d424 = erased
name432 = "Data.Fin.Properties.reverse-suc"
d432 = erased
name448 = "Data.Fin.Properties.eq?"
d448 v0 v1 v2 v3 = du448 v3
du448 v0
  = coe MAlonzo.Code.Relation.Nullary.Decidable.du128 v0 du82
name462 = "Data.Fin.Properties.sequence"
d462 v0 v1 v2 v3 = du462 v1 v3
du462 v0 v1 = coe du500 v1 v0
name476 = "Data.Fin.Properties._._._<$>_"
d476 v0 v1 v2 v3 v4 v5 = du476 v3 v4 v5
du476 v0 v1 v2
  = coe
      MAlonzo.Code.Category.Functor.d24
      (coe MAlonzo.Code.Category.Applicative.Indexed.du74 v0 v1 v2)
name500 = "Data.Fin.Properties._.helper"
d500 v0 v1 v2 v3 v4 v5 v6 = du500 v3 v4 v6
du500 v0 v1 v2
  = case coe v1 of
      0 -> coe
             MAlonzo.Code.Category.Applicative.Indexed.d56 v0 erased erased
             erased
      _ -> let v3 = coe subInt v1 (1 :: Integer) in
           coe
             MAlonzo.Code.Category.Applicative.Indexed.d68 v0 erased erased
             erased erased erased
             (coe
                MAlonzo.Code.Category.Functor.d24
                (coe
                   MAlonzo.Code.Category.Applicative.Indexed.du74 v0 erased erased)
                erased erased du520 (coe v2 (coe MAlonzo.Code.Data.Fin.C8 v3)))
             (coe
                du500 v0 v3
                (coe
                   MAlonzo.Code.Function.du38 (\ v4 -> v2)
                   (coe MAlonzo.Code.Data.Fin.C14 v3)))
name520 = "Data.Fin.Properties._._.combine"
d520 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 = du520 v7 v8 v9
du520 v0 v1 v2
  = case coe v2 of
      MAlonzo.Code.Data.Fin.C8 v3 -> coe v0
      MAlonzo.Code.Data.Fin.C14 v3 v4 -> coe v1 v4
      _ -> coe MAlonzo.RTE.mazUnreachableError
name6161 = "Data.Fin.Properties._..absurdlambda"
d6161 = erased