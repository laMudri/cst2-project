{-# LANGUAGE EmptyDataDecls, ExistentialQuantification,
             ScopedTypeVariables, NoMonomorphismRestriction, Rank2Types #-}
module MAlonzo.Code.Star.Properties where

import MAlonzo.RTE (coe, erased, addInt, subInt, mulInt, quotInt,
                    remInt, geqInt, ltInt, eqInt, eqFloat)
import qualified Control.Exception
import qualified Data.Text
import qualified Data.Text.IO
import qualified MAlonzo.RTE
import qualified System.Environment
import qualified System.IO
import qualified Data.Text
import qualified MAlonzo.Code.Data.Nat
import qualified MAlonzo.Code.Data.Nat.Base
import qualified MAlonzo.Code.Data.Nat.Properties
import qualified MAlonzo.Code.Data.Product
import qualified MAlonzo.Code.Data.Star
import qualified MAlonzo.Code.Function.Inverse
import qualified MAlonzo.Code.Relation.Binary
import qualified MAlonzo.Code.Relation.Binary.Core
import qualified MAlonzo.Code.Relation.Binary.PreorderReasoning
import qualified MAlonzo.Code.Relation.Binary.PropositionalEquality
import qualified MAlonzo.Code.Relation.Binary.PropositionalEquality.Core
import qualified MAlonzo.Code.Relation.Nullary
import qualified MAlonzo.Code.Star
import qualified MAlonzo.Code.Star.StateMembership

name12 = "Star.Properties._._\8712_"
d12 = erased
name42 = "Star.Properties._.\949\8849"
d42 v0 v1 v2 v3 v4 v5 v6 v7 v8 = du42 v4 v6 v7 v8
du42 v0 v1 v2 v3
  = case coe v3 of
      MAlonzo.Code.Star.StateMembership.C34 v4 v5 v6 v7
        -> coe
             MAlonzo.Code.Star.C164 (coe MAlonzo.Code.Data.Star.C22 v0) v2
      MAlonzo.Code.Star.StateMembership.C48 v4 v5 v6 v7 v8 v9
        -> let v10 = coe du42 v5 v1 v8 v9 in
           coe
             MAlonzo.Code.Star.C164
             (coe
                MAlonzo.Code.Data.Star.C34 v0 v5 v1 v7
                (coe MAlonzo.Code.Star.d158 v10))
             (coe MAlonzo.Code.Star.d160 v10)
      _ -> coe MAlonzo.RTE.mazUnreachableError
name74 = "Star.Properties._.\9669\9669-\949"
d74 = erased
name92 = "Star.Properties._.length-\9669\9669"
d92 = erased
name102 = "Star.Properties._.\8849-poset"
d102 v0 v1 v2 v3 = du102
du102
  = coe
      MAlonzo.Code.Relation.Binary.C345
      (coe
         MAlonzo.Code.Relation.Binary.C327
         (coe
            MAlonzo.Code.Relation.Binary.C17
            MAlonzo.Code.Relation.Binary.PropositionalEquality.Core.du50
            (\ v0 v1 v2 ->
               coe
                 MAlonzo.Code.Star.C164
                 (coe
                    MAlonzo.Code.Data.Star.C22 (coe MAlonzo.Code.Data.Product.d26 v0))
                 (coe
                    MAlonzo.Code.Data.Star.C22
                    (coe
                       MAlonzo.Code.Data.Product.d26
                       (coe MAlonzo.Code.Data.Product.d28 v0))))
            (\ v0 v1 v2 ->
               coe
                 du126 (coe MAlonzo.Code.Data.Product.d26 v2)
                 (coe MAlonzo.Code.Data.Product.d26 v0)
                 (coe
                    MAlonzo.Code.Data.Product.d26
                    (coe MAlonzo.Code.Data.Product.d28 v0))
                 (coe
                    MAlonzo.Code.Data.Product.d26
                    (coe MAlonzo.Code.Data.Product.d28 v2))))
         erased)
name126 = "Star.Properties._._.trans"
d126 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14
  = du126 v4 v6 v7 v9 v13 v14
du126 v0 v1 v2 v3 v4 v5
  = coe
      MAlonzo.Code.Star.C164
      (coe
         MAlonzo.Code.Data.Star.du44 v0 v1 (coe MAlonzo.Code.Star.d158 v5)
         (coe MAlonzo.Code.Star.d158 v4))
      (coe
         MAlonzo.Code.Data.Star.du44 v2 v3 (coe MAlonzo.Code.Star.d160 v4)
         (coe MAlonzo.Code.Star.d160 v5))
name160 = "Star.Properties._._.>\8658\8802"
d160 = erased
name176 = "Star.Properties._._.antisym"
d176 = erased
name260 = "Star.Properties._._._.eq"
d260 = erased
name266 = "Star.Properties._._._._.refl"
d266 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16
  = du266 v16
du266 v0
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
name268 = "Star.Properties._._._.gt"
d268 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15
  = du268 v2 v3 v4 v8 v9 v10 v11 v13 v14
du268 v0 v1 v2 v3 v4 v5 v6 v7 v8
  = coe
      MAlonzo.Code.Relation.Binary.PreorderReasoning.d62
      (coe
         MAlonzo.Code.Data.Nat.d92 (coe MAlonzo.Code.Star.du18 v2 v1 v3)
         (coe addInt (1 :: Integer) (coe MAlonzo.Code.Star.du18 v2 v1 v3))
         (coe
            MAlonzo.Code.Star.du18 v2 v1
            (coe
               MAlonzo.Code.Data.Star.du44 v2 v1
               (coe
                  MAlonzo.Code.Data.Star.du44 v2 v0 v7
                  (coe MAlonzo.Code.Data.Star.du44 v2 v0 v3 v8))
               (coe MAlonzo.Code.Data.Star.C34 v0 v4 v1 v5 v6)))
         (let v9
                = coe
                    addInt (1 :: Integer) (coe MAlonzo.Code.Star.du18 v2 v1 v3) in
          MAlonzo.Code.Relation.Binary.d38
            (MAlonzo.Code.Relation.Binary.d268
               (MAlonzo.Code.Relation.Binary.d842
                  (MAlonzo.Code.Relation.Binary.d970
                     (MAlonzo.Code.Relation.Binary.d1052 MAlonzo.Code.Data.Nat.d12))))
            v9 v9
            (MAlonzo.Code.Relation.Binary.Core.d516
               (MAlonzo.Code.Relation.Binary.d36
                  (MAlonzo.Code.Relation.Binary.d268
                     (MAlonzo.Code.Relation.Binary.d842
                        (MAlonzo.Code.Relation.Binary.d970
                           (MAlonzo.Code.Relation.Binary.d1052 MAlonzo.Code.Data.Nat.d12)))))
               v9))
         (let v9
                = coe
                    MAlonzo.Code.Relation.Binary.C345
                    (coe
                       MAlonzo.Code.Relation.Binary.d842
                       (coe
                          MAlonzo.Code.Relation.Binary.d970
                          (coe
                             MAlonzo.Code.Relation.Binary.d1052 MAlonzo.Code.Data.Nat.d12))) in
          MAlonzo.Code.Relation.Binary.PreorderReasoning.du84
            (MAlonzo.Code.Relation.Binary.C125
               (MAlonzo.Code.Relation.Binary.d268
                  (MAlonzo.Code.Relation.Binary.d322 v9)))
            (addInt (1 :: Integer) (MAlonzo.Code.Star.du18 v2 v1 v3))
            (addInt (1 :: Integer) (MAlonzo.Code.Star.du18 v2 v1 v3))
            (MAlonzo.Code.Star.du18
               v2 v1
               (MAlonzo.Code.Data.Star.du44
                  v2 v1
                  (MAlonzo.Code.Data.Star.du44
                     v2 v0 v7 (MAlonzo.Code.Data.Star.du44 v2 v0 v3 v8))
                  (MAlonzo.Code.Data.Star.C34 v0 v4 v1 v5 v6)))
            erased
            (let v10
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
                     (MAlonzo.Code.Relation.Binary.d322 v10)))
               (addInt (1 :: Integer) (MAlonzo.Code.Star.du18 v2 v1 v3))
               (addInt
                  (addInt (1 :: Integer) (MAlonzo.Code.Star.du18 v1 v0 v8))
                  (MAlonzo.Code.Star.du18 v2 v1 v3))
               (MAlonzo.Code.Star.du18
                  v2 v1
                  (MAlonzo.Code.Data.Star.du44
                     v2 v1
                     (MAlonzo.Code.Data.Star.du44
                        v2 v0 v7 (MAlonzo.Code.Data.Star.du44 v2 v0 v3 v8))
                     (MAlonzo.Code.Data.Star.C34 v0 v4 v1 v5 v6)))
               (MAlonzo.Code.Data.Nat.Properties.d1212
                  (MAlonzo.Code.Star.du18 v2 v1 v3)
                  (addInt
                     (MAlonzo.Code.Star.du18 v1 v0 v8)
                     (MAlonzo.Code.Star.du18 v2 v1 v3))
                  (1 :: Integer) (1 :: Integer)
                  (MAlonzo.Code.Data.Nat.Properties.d500
                     (MAlonzo.Code.Star.du18 v2 v1 v3)
                     (MAlonzo.Code.Star.du18 v1 v0 v8))
                  (MAlonzo.Code.Relation.Binary.d38
                     (MAlonzo.Code.Relation.Binary.d268
                        (MAlonzo.Code.Relation.Binary.d842
                           (MAlonzo.Code.Relation.Binary.d970
                              (MAlonzo.Code.Relation.Binary.d1052 MAlonzo.Code.Data.Nat.d12))))
                     (1 :: Integer) (1 :: Integer)
                     (MAlonzo.Code.Relation.Binary.Core.d516
                        (MAlonzo.Code.Relation.Binary.d36
                           (MAlonzo.Code.Relation.Binary.d268
                              (MAlonzo.Code.Relation.Binary.d842
                                 (MAlonzo.Code.Relation.Binary.d970
                                    (MAlonzo.Code.Relation.Binary.d1052
                                       MAlonzo.Code.Data.Nat.d12)))))
                        (1 :: Integer))))
               (let v11
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
                        (MAlonzo.Code.Relation.Binary.d322 v11)))
                  (addInt
                     (addInt (1 :: Integer) (MAlonzo.Code.Star.du18 v1 v0 v8))
                     (MAlonzo.Code.Star.du18 v2 v1 v3))
                  (addInt
                     (addInt
                        (addInt
                           (addInt
                              (1 :: Integer)
                              (MAlonzo.Code.Data.Star.du150
                                 (\ v12 v13 v14 v15 v16 -> addInt (1 :: Integer) v16) v4 v1
                                 (0 :: Integer) v6))
                           (MAlonzo.Code.Star.du18 v1 v0 v8))
                        (MAlonzo.Code.Star.du18 v2 v1 v3))
                     (MAlonzo.Code.Star.du18 v2 v2 v7))
                  (MAlonzo.Code.Star.du18
                     v2 v1
                     (MAlonzo.Code.Data.Star.du44
                        v2 v1
                        (MAlonzo.Code.Data.Star.du44
                           v2 v0 v7 (MAlonzo.Code.Data.Star.du44 v2 v0 v3 v8))
                        (MAlonzo.Code.Data.Star.C34 v0 v4 v1 v5 v6)))
                  (MAlonzo.Code.Data.Nat.Properties.d1212
                     (addInt
                        (MAlonzo.Code.Star.du18 v1 v0 v8)
                        (MAlonzo.Code.Star.du18 v2 v1 v3))
                     (addInt
                        (addInt
                           (MAlonzo.Code.Star.du18 v1 v0 v8)
                           (MAlonzo.Code.Star.du18 v2 v1 v3))
                        (MAlonzo.Code.Star.du18 v2 v2 v7))
                     (1 :: Integer)
                     (addInt
                        (1 :: Integer)
                        (MAlonzo.Code.Data.Star.du150
                           (\ v12 v13 v14 v15 v16 -> addInt (1 :: Integer) v16) v4 v1
                           (0 :: Integer) v6))
                     (MAlonzo.Code.Data.Nat.Properties.d534
                        (MAlonzo.Code.Star.du18 v2 v2 v7)
                        (addInt
                           (MAlonzo.Code.Star.du18 v1 v0 v8)
                           (MAlonzo.Code.Star.du18 v2 v1 v3)))
                     (MAlonzo.Code.Data.Nat.Base.C18
                        (0 :: Integer)
                        (MAlonzo.Code.Data.Star.du150
                           (\ v12 v13 v14 v15 v16 -> addInt (1 :: Integer) v16) v4 v1
                           (0 :: Integer) v6)
                        (MAlonzo.Code.Data.Nat.Base.C10
                           (MAlonzo.Code.Data.Star.du150
                              (\ v12 v13 v14 v15 v16 -> addInt (1 :: Integer) v16) v4 v1
                              (0 :: Integer) v6))))
                  (let v12
                         = coe
                             MAlonzo.Code.Relation.Binary.C345
                             (coe
                                MAlonzo.Code.Relation.Binary.d842
                                (coe
                                   MAlonzo.Code.Relation.Binary.d970
                                   (coe
                                      MAlonzo.Code.Relation.Binary.d1052
                                      MAlonzo.Code.Data.Nat.d12))) in
                   MAlonzo.Code.Relation.Binary.PreorderReasoning.du84
                     (MAlonzo.Code.Relation.Binary.C125
                        (MAlonzo.Code.Relation.Binary.d268
                           (MAlonzo.Code.Relation.Binary.d322 v12)))
                     (addInt
                        (addInt
                           (addInt
                              (MAlonzo.Code.Star.du18
                                 v0 v1 (MAlonzo.Code.Data.Star.C34 v0 v4 v1 v5 v6))
                              (MAlonzo.Code.Star.du18 v1 v0 v8))
                           (MAlonzo.Code.Star.du18 v2 v1 v3))
                        (MAlonzo.Code.Star.du18 v2 v2 v7))
                     (addInt
                        (addInt
                           (MAlonzo.Code.Star.du18
                              v0 v1 (MAlonzo.Code.Data.Star.C34 v0 v4 v1 v5 v6))
                           (MAlonzo.Code.Star.du18
                              v2 v0 (MAlonzo.Code.Data.Star.du44 v2 v0 v3 v8)))
                        (MAlonzo.Code.Star.du18 v2 v2 v7))
                     (MAlonzo.Code.Star.du18
                        v2 v1
                        (MAlonzo.Code.Data.Star.du44
                           v2 v1
                           (MAlonzo.Code.Data.Star.du44
                              v2 v0 v7 (MAlonzo.Code.Data.Star.du44 v2 v0 v3 v8))
                           (MAlonzo.Code.Data.Star.C34 v0 v4 v1 v5 v6)))
                     erased
                     (let v13
                            = coe
                                MAlonzo.Code.Relation.Binary.C345
                                (coe
                                   MAlonzo.Code.Relation.Binary.d842
                                   (coe
                                      MAlonzo.Code.Relation.Binary.d970
                                      (coe
                                         MAlonzo.Code.Relation.Binary.d1052
                                         MAlonzo.Code.Data.Nat.d12))) in
                      MAlonzo.Code.Relation.Binary.PreorderReasoning.du84
                        (MAlonzo.Code.Relation.Binary.C125
                           (MAlonzo.Code.Relation.Binary.d268
                              (MAlonzo.Code.Relation.Binary.d322 v13)))
                        (addInt
                           (addInt
                              (MAlonzo.Code.Star.du18
                                 v0 v1 (MAlonzo.Code.Data.Star.C34 v0 v4 v1 v5 v6))
                              (MAlonzo.Code.Star.du18
                                 v2 v0 (MAlonzo.Code.Data.Star.du44 v2 v0 v3 v8)))
                           (MAlonzo.Code.Star.du18 v2 v2 v7))
                        (addInt
                           (MAlonzo.Code.Star.du18
                              v0 v1 (MAlonzo.Code.Data.Star.C34 v0 v4 v1 v5 v6))
                           (MAlonzo.Code.Star.du18
                              v2 v0
                              (MAlonzo.Code.Data.Star.du44
                                 v2 v0 v7 (MAlonzo.Code.Data.Star.du44 v2 v0 v3 v8))))
                        (MAlonzo.Code.Star.du18
                           v2 v1
                           (MAlonzo.Code.Data.Star.du44
                              v2 v1
                              (MAlonzo.Code.Data.Star.du44
                                 v2 v0 v7 (MAlonzo.Code.Data.Star.du44 v2 v0 v3 v8))
                              (MAlonzo.Code.Data.Star.C34 v0 v4 v1 v5 v6)))
                        erased
                        (let v14
                               = coe
                                   MAlonzo.Code.Relation.Binary.C345
                                   (coe
                                      MAlonzo.Code.Relation.Binary.d842
                                      (coe
                                         MAlonzo.Code.Relation.Binary.d970
                                         (coe
                                            MAlonzo.Code.Relation.Binary.d1052
                                            MAlonzo.Code.Data.Nat.d12))) in
                         MAlonzo.Code.Relation.Binary.PreorderReasoning.du84
                           (MAlonzo.Code.Relation.Binary.C125
                              (MAlonzo.Code.Relation.Binary.d268
                                 (MAlonzo.Code.Relation.Binary.d322 v14)))
                           (addInt
                              (MAlonzo.Code.Star.du18
                                 v0 v1 (MAlonzo.Code.Data.Star.C34 v0 v4 v1 v5 v6))
                              (MAlonzo.Code.Star.du18
                                 v2 v0
                                 (MAlonzo.Code.Data.Star.du44
                                    v2 v0 v7 (MAlonzo.Code.Data.Star.du44 v2 v0 v3 v8))))
                           (MAlonzo.Code.Star.du18
                              v2 v1
                              (MAlonzo.Code.Data.Star.du44
                                 v2 v1
                                 (MAlonzo.Code.Data.Star.du44
                                    v2 v0 v7 (MAlonzo.Code.Data.Star.du44 v2 v0 v3 v8))
                                 (MAlonzo.Code.Data.Star.C34 v0 v4 v1 v5 v6)))
                           (MAlonzo.Code.Star.du18
                              v2 v1
                              (MAlonzo.Code.Data.Star.du44
                                 v2 v1
                                 (MAlonzo.Code.Data.Star.du44
                                    v2 v0 v7 (MAlonzo.Code.Data.Star.du44 v2 v0 v3 v8))
                                 (MAlonzo.Code.Data.Star.C34 v0 v4 v1 v5 v6)))
                           erased
                           (let v15
                                  = coe
                                      MAlonzo.Code.Star.du18 v2 v1
                                      (coe
                                         MAlonzo.Code.Data.Star.du44 v2 v1
                                         (coe
                                            MAlonzo.Code.Data.Star.du44 v2 v0 v7
                                            (coe MAlonzo.Code.Data.Star.du44 v2 v0 v3 v8))
                                         (coe MAlonzo.Code.Data.Star.C34 v0 v4 v1 v5 v6)) in
                            MAlonzo.Code.Relation.Binary.PreorderReasoning.C56
                              (MAlonzo.Code.Relation.Binary.d38
                                 (MAlonzo.Code.Relation.Binary.d268
                                    (MAlonzo.Code.Relation.Binary.d842
                                       (MAlonzo.Code.Relation.Binary.d970
                                          (MAlonzo.Code.Relation.Binary.d1052
                                             MAlonzo.Code.Data.Nat.d12))))
                                 v15 v15
                                 (MAlonzo.Code.Relation.Binary.Core.d516
                                    (MAlonzo.Code.Relation.Binary.d36
                                       (MAlonzo.Code.Relation.Binary.d268
                                          (MAlonzo.Code.Relation.Binary.d842
                                             (MAlonzo.Code.Relation.Binary.d970
                                                (MAlonzo.Code.Relation.Binary.d1052
                                                   MAlonzo.Code.Data.Nat.d12)))))
                                    v15))))))))))
name304 = "Star.Properties._._._.eq"
d304 = erased
name310 = "Star.Properties._._._._.refl"
d310 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17
     v18
  = du310 v18
du310 v0
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
name312 = "Star.Properties._._._.gt"
d312 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17
  = du312 v2 v3 v6 v7 v8 v10 v11 v12 v13 v15 v16
du312 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10
  = coe
      MAlonzo.Code.Relation.Binary.PreorderReasoning.d62
      (coe
         MAlonzo.Code.Data.Nat.d92 (coe MAlonzo.Code.Star.du18 v1 v2 v4)
         (coe addInt (1 :: Integer) (coe MAlonzo.Code.Star.du18 v1 v2 v4))
         (coe
            MAlonzo.Code.Star.du18 v1 v2
            (coe
               MAlonzo.Code.Data.Star.du44 v1 v2 v9
               (coe
                  MAlonzo.Code.Data.Star.du44 v0 v2
                  (coe
                     MAlonzo.Code.Data.Star.C34 v0 v5 v3 v6
                     (coe
                        MAlonzo.Code.Data.Star.du44 v5 v3 v7
                        (coe MAlonzo.Code.Data.Star.du44 v1 v3 v4 v8)))
                  v10)))
         (let v11
                = coe
                    addInt (1 :: Integer) (coe MAlonzo.Code.Star.du18 v1 v2 v4) in
          MAlonzo.Code.Relation.Binary.d38
            (MAlonzo.Code.Relation.Binary.d268
               (MAlonzo.Code.Relation.Binary.d842
                  (MAlonzo.Code.Relation.Binary.d970
                     (MAlonzo.Code.Relation.Binary.d1052 MAlonzo.Code.Data.Nat.d12))))
            v11 v11
            (MAlonzo.Code.Relation.Binary.Core.d516
               (MAlonzo.Code.Relation.Binary.d36
                  (MAlonzo.Code.Relation.Binary.d268
                     (MAlonzo.Code.Relation.Binary.d842
                        (MAlonzo.Code.Relation.Binary.d970
                           (MAlonzo.Code.Relation.Binary.d1052 MAlonzo.Code.Data.Nat.d12)))))
               v11))
         (let v11
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
                  (MAlonzo.Code.Relation.Binary.d322 v11)))
            (addInt (1 :: Integer) (MAlonzo.Code.Star.du18 v1 v2 v4))
            (addInt
               (addInt (1 :: Integer) (MAlonzo.Code.Star.du18 v1 v2 v4))
               (MAlonzo.Code.Star.du18 v2 v3 v8))
            (MAlonzo.Code.Star.du18
               v1 v2
               (MAlonzo.Code.Data.Star.du44
                  v1 v2 v9
                  (MAlonzo.Code.Data.Star.du44
                     v0 v2
                     (MAlonzo.Code.Data.Star.C34
                        v0 v5 v3 v6
                        (MAlonzo.Code.Data.Star.du44
                           v5 v3 v7 (MAlonzo.Code.Data.Star.du44 v1 v3 v4 v8)))
                     v10)))
            (MAlonzo.Code.Data.Nat.Properties.d500
               (addInt (1 :: Integer) (MAlonzo.Code.Star.du18 v1 v2 v4))
               (MAlonzo.Code.Star.du18 v2 v3 v8))
            (let v12
                   = coe
                       MAlonzo.Code.Relation.Binary.C345
                       (coe
                          MAlonzo.Code.Relation.Binary.d842
                          (coe
                             MAlonzo.Code.Relation.Binary.d970
                             (coe
                                MAlonzo.Code.Relation.Binary.d1052 MAlonzo.Code.Data.Nat.d12))) in
             MAlonzo.Code.Relation.Binary.PreorderReasoning.du84
               (MAlonzo.Code.Relation.Binary.C125
                  (MAlonzo.Code.Relation.Binary.d268
                     (MAlonzo.Code.Relation.Binary.d322 v12)))
               (addInt
                  (addInt (1 :: Integer) (MAlonzo.Code.Star.du18 v1 v2 v4))
                  (MAlonzo.Code.Star.du18 v2 v3 v8))
               (addInt
                  (addInt (1 :: Integer) (MAlonzo.Code.Star.du18 v1 v2 v4))
                  (MAlonzo.Code.Star.du18 v2 v3 v8))
               (MAlonzo.Code.Star.du18
                  v1 v2
                  (MAlonzo.Code.Data.Star.du44
                     v1 v2 v9
                     (MAlonzo.Code.Data.Star.du44
                        v0 v2
                        (MAlonzo.Code.Data.Star.C34
                           v0 v5 v3 v6
                           (MAlonzo.Code.Data.Star.du44
                              v5 v3 v7 (MAlonzo.Code.Data.Star.du44 v1 v3 v4 v8)))
                        v10)))
               erased
               (let v13
                      = coe
                          MAlonzo.Code.Relation.Binary.C345
                          (coe
                             MAlonzo.Code.Relation.Binary.d842
                             (coe
                                MAlonzo.Code.Relation.Binary.d970
                                (coe
                                   MAlonzo.Code.Relation.Binary.d1052
                                   MAlonzo.Code.Data.Nat.d12))) in
                MAlonzo.Code.Relation.Binary.PreorderReasoning.du84
                  (MAlonzo.Code.Relation.Binary.C125
                     (MAlonzo.Code.Relation.Binary.d268
                        (MAlonzo.Code.Relation.Binary.d322 v13)))
                  (addInt
                     (addInt (1 :: Integer) (MAlonzo.Code.Star.du18 v1 v2 v4))
                     (MAlonzo.Code.Star.du18 v2 v3 v8))
                  (addInt
                     (1 :: Integer)
                     (MAlonzo.Code.Star.du18
                        v1 v3 (MAlonzo.Code.Data.Star.du44 v1 v3 v4 v8)))
                  (MAlonzo.Code.Star.du18
                     v1 v2
                     (MAlonzo.Code.Data.Star.du44
                        v1 v2 v9
                        (MAlonzo.Code.Data.Star.du44
                           v0 v2
                           (MAlonzo.Code.Data.Star.C34
                              v0 v5 v3 v6
                              (MAlonzo.Code.Data.Star.du44
                                 v5 v3 v7 (MAlonzo.Code.Data.Star.du44 v1 v3 v4 v8)))
                           v10)))
                  erased
                  (let v14
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
                           (MAlonzo.Code.Relation.Binary.d322 v14)))
                     (addInt
                        (1 :: Integer)
                        (MAlonzo.Code.Star.du18
                           v1 v3 (MAlonzo.Code.Data.Star.du44 v1 v3 v4 v8)))
                     (addInt
                        (addInt
                           (1 :: Integer)
                           (MAlonzo.Code.Data.Star.du150
                              (\ v15 v16 v17 v18 v19 -> addInt (1 :: Integer) v19) v1 v3
                              (0 :: Integer) (MAlonzo.Code.Data.Star.du44 v1 v3 v4 v8)))
                        (MAlonzo.Code.Star.du18 v5 v1 v7))
                     (MAlonzo.Code.Star.du18
                        v1 v2
                        (MAlonzo.Code.Data.Star.du44
                           v1 v2 v9
                           (MAlonzo.Code.Data.Star.du44
                              v0 v2
                              (MAlonzo.Code.Data.Star.C34
                                 v0 v5 v3 v6
                                 (MAlonzo.Code.Data.Star.du44
                                    v5 v3 v7 (MAlonzo.Code.Data.Star.du44 v1 v3 v4 v8)))
                              v10)))
                     (MAlonzo.Code.Data.Nat.Properties.d1212
                        (1 :: Integer) (1 :: Integer)
                        (MAlonzo.Code.Data.Star.du150
                           (\ v15 v16 v17 v18 v19 -> addInt (1 :: Integer) v19) v1 v3
                           (0 :: Integer) (MAlonzo.Code.Data.Star.du44 v1 v3 v4 v8))
                        (addInt
                           (MAlonzo.Code.Data.Star.du150
                              (\ v15 v16 v17 v18 v19 -> addInt (1 :: Integer) v19) v1 v3
                              (0 :: Integer) (MAlonzo.Code.Data.Star.du44 v1 v3 v4 v8))
                           (MAlonzo.Code.Star.du18 v5 v1 v7))
                        (MAlonzo.Code.Relation.Binary.d38
                           (MAlonzo.Code.Relation.Binary.d268
                              (MAlonzo.Code.Relation.Binary.d842
                                 (MAlonzo.Code.Relation.Binary.d970
                                    (MAlonzo.Code.Relation.Binary.d1052
                                       MAlonzo.Code.Data.Nat.d12))))
                           (1 :: Integer) (1 :: Integer)
                           (MAlonzo.Code.Relation.Binary.Core.d516
                              (MAlonzo.Code.Relation.Binary.d36
                                 (MAlonzo.Code.Relation.Binary.d268
                                    (MAlonzo.Code.Relation.Binary.d842
                                       (MAlonzo.Code.Relation.Binary.d970
                                          (MAlonzo.Code.Relation.Binary.d1052
                                             MAlonzo.Code.Data.Nat.d12)))))
                              (1 :: Integer)))
                        (MAlonzo.Code.Data.Nat.Properties.d534
                           (MAlonzo.Code.Star.du18 v5 v1 v7)
                           (MAlonzo.Code.Data.Star.du150
                              (\ v15 v16 v17 v18 v19 -> addInt (1 :: Integer) v19) v1 v3
                              (0 :: Integer) (MAlonzo.Code.Data.Star.du44 v1 v3 v4 v8))))
                     (let v15
                            = coe
                                MAlonzo.Code.Relation.Binary.C345
                                (coe
                                   MAlonzo.Code.Relation.Binary.d842
                                   (coe
                                      MAlonzo.Code.Relation.Binary.d970
                                      (coe
                                         MAlonzo.Code.Relation.Binary.d1052
                                         MAlonzo.Code.Data.Nat.d12))) in
                      MAlonzo.Code.Relation.Binary.PreorderReasoning.du84
                        (MAlonzo.Code.Relation.Binary.C125
                           (MAlonzo.Code.Relation.Binary.d268
                              (MAlonzo.Code.Relation.Binary.d322 v15)))
                        (addInt
                           (addInt
                              (1 :: Integer)
                              (MAlonzo.Code.Star.du18
                                 v1 v3 (MAlonzo.Code.Data.Star.du44 v1 v3 v4 v8)))
                           (MAlonzo.Code.Star.du18 v5 v1 v7))
                        (addInt
                           (1 :: Integer)
                           (MAlonzo.Code.Star.du18
                              v5 v3
                              (MAlonzo.Code.Data.Star.du44
                                 v5 v3 v7 (MAlonzo.Code.Data.Star.du44 v1 v3 v4 v8))))
                        (MAlonzo.Code.Star.du18
                           v1 v2
                           (MAlonzo.Code.Data.Star.du44
                              v1 v2 v9
                              (MAlonzo.Code.Data.Star.du44
                                 v0 v2
                                 (MAlonzo.Code.Data.Star.C34
                                    v0 v5 v3 v6
                                    (MAlonzo.Code.Data.Star.du44
                                       v5 v3 v7 (MAlonzo.Code.Data.Star.du44 v1 v3 v4 v8)))
                                 v10)))
                        erased
                        (let v16
                               = coe
                                   MAlonzo.Code.Relation.Binary.C345
                                   (coe
                                      MAlonzo.Code.Relation.Binary.d842
                                      (coe
                                         MAlonzo.Code.Relation.Binary.d970
                                         (coe
                                            MAlonzo.Code.Relation.Binary.d1052
                                            MAlonzo.Code.Data.Nat.d12))) in
                         MAlonzo.Code.Relation.Binary.PreorderReasoning.du84
                           (MAlonzo.Code.Relation.Binary.C125
                              (MAlonzo.Code.Relation.Binary.d268
                                 (MAlonzo.Code.Relation.Binary.d322 v16)))
                           (addInt
                              (1 :: Integer)
                              (MAlonzo.Code.Star.du18
                                 v5 v3
                                 (MAlonzo.Code.Data.Star.du44
                                    v5 v3 v7 (MAlonzo.Code.Data.Star.du44 v1 v3 v4 v8))))
                           (addInt
                              (1 :: Integer)
                              (MAlonzo.Code.Star.du18
                                 v5 v3
                                 (MAlonzo.Code.Data.Star.du44
                                    v5 v3 v7 (MAlonzo.Code.Data.Star.du44 v1 v3 v4 v8))))
                           (MAlonzo.Code.Star.du18
                              v1 v2
                              (MAlonzo.Code.Data.Star.du44
                                 v1 v2 v9
                                 (MAlonzo.Code.Data.Star.du44
                                    v0 v2
                                    (MAlonzo.Code.Data.Star.C34
                                       v0 v5 v3 v6
                                       (MAlonzo.Code.Data.Star.du44
                                          v5 v3 v7 (MAlonzo.Code.Data.Star.du44 v1 v3 v4 v8)))
                                    v10)))
                           erased
                           (let v17
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
                                    (MAlonzo.Code.Relation.Binary.d322 v17)))
                              (MAlonzo.Code.Star.du18
                                 v0 v3
                                 (MAlonzo.Code.Data.Star.C34
                                    v0 v5 v3 v6
                                    (MAlonzo.Code.Data.Star.du44
                                       v5 v3 v7 (MAlonzo.Code.Data.Star.du44 v1 v3 v4 v8))))
                              (addInt
                                 (MAlonzo.Code.Star.du18
                                    v0 v3
                                    (MAlonzo.Code.Data.Star.C34
                                       v0 v5 v3 v6
                                       (MAlonzo.Code.Data.Star.du44
                                          v5 v3 v7 (MAlonzo.Code.Data.Star.du44 v1 v3 v4 v8))))
                                 (MAlonzo.Code.Star.du18 v3 v2 v10))
                              (MAlonzo.Code.Star.du18
                                 v1 v2
                                 (MAlonzo.Code.Data.Star.du44
                                    v1 v2 v9
                                    (MAlonzo.Code.Data.Star.du44
                                       v0 v2
                                       (MAlonzo.Code.Data.Star.C34
                                          v0 v5 v3 v6
                                          (MAlonzo.Code.Data.Star.du44
                                             v5 v3 v7 (MAlonzo.Code.Data.Star.du44 v1 v3 v4 v8)))
                                       v10)))
                              (MAlonzo.Code.Data.Nat.Properties.d500
                                 (MAlonzo.Code.Star.du18
                                    v0 v3
                                    (MAlonzo.Code.Data.Star.C34
                                       v0 v5 v3 v6
                                       (MAlonzo.Code.Data.Star.du44
                                          v5 v3 v7 (MAlonzo.Code.Data.Star.du44 v1 v3 v4 v8))))
                                 (MAlonzo.Code.Star.du18 v3 v2 v10))
                              (let v18
                                     = coe
                                         MAlonzo.Code.Relation.Binary.C345
                                         (coe
                                            MAlonzo.Code.Relation.Binary.d842
                                            (coe
                                               MAlonzo.Code.Relation.Binary.d970
                                               (coe
                                                  MAlonzo.Code.Relation.Binary.d1052
                                                  MAlonzo.Code.Data.Nat.d12))) in
                               MAlonzo.Code.Relation.Binary.PreorderReasoning.du84
                                 (MAlonzo.Code.Relation.Binary.C125
                                    (MAlonzo.Code.Relation.Binary.d268
                                       (MAlonzo.Code.Relation.Binary.d322 v18)))
                                 (addInt
                                    (MAlonzo.Code.Star.du18
                                       v0 v3
                                       (MAlonzo.Code.Data.Star.C34
                                          v0 v5 v3 v6
                                          (MAlonzo.Code.Data.Star.du44
                                             v5 v3 v7 (MAlonzo.Code.Data.Star.du44 v1 v3 v4 v8))))
                                    (MAlonzo.Code.Star.du18 v3 v2 v10))
                                 (MAlonzo.Code.Star.du18
                                    v0 v2
                                    (MAlonzo.Code.Data.Star.du44
                                       v0 v2
                                       (MAlonzo.Code.Data.Star.C34
                                          v0 v5 v3 v6
                                          (MAlonzo.Code.Data.Star.du44
                                             v5 v3 v7 (MAlonzo.Code.Data.Star.du44 v1 v3 v4 v8)))
                                       v10))
                                 (MAlonzo.Code.Star.du18
                                    v1 v2
                                    (MAlonzo.Code.Data.Star.du44
                                       v1 v2 v9
                                       (MAlonzo.Code.Data.Star.du44
                                          v0 v2
                                          (MAlonzo.Code.Data.Star.C34
                                             v0 v5 v3 v6
                                             (MAlonzo.Code.Data.Star.du44
                                                v5 v3 v7 (MAlonzo.Code.Data.Star.du44 v1 v3 v4 v8)))
                                          v10)))
                                 erased
                                 (let v19
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
                                          (MAlonzo.Code.Relation.Binary.d322 v19)))
                                    (MAlonzo.Code.Star.du18
                                       v0 v2
                                       (MAlonzo.Code.Data.Star.du44
                                          v0 v2
                                          (MAlonzo.Code.Data.Star.C34
                                             v0 v5 v3 v6
                                             (MAlonzo.Code.Data.Star.du44
                                                v5 v3 v7 (MAlonzo.Code.Data.Star.du44 v1 v3 v4 v8)))
                                          v10))
                                    (addInt
                                       (MAlonzo.Code.Star.du18
                                          v0 v2
                                          (MAlonzo.Code.Data.Star.du44
                                             v0 v2
                                             (MAlonzo.Code.Data.Star.C34
                                                v0 v5 v3 v6
                                                (MAlonzo.Code.Data.Star.du44
                                                   v5 v3 v7
                                                   (MAlonzo.Code.Data.Star.du44 v1 v3 v4 v8)))
                                             v10))
                                       (MAlonzo.Code.Star.du18 v1 v0 v9))
                                    (MAlonzo.Code.Star.du18
                                       v1 v2
                                       (MAlonzo.Code.Data.Star.du44
                                          v1 v2 v9
                                          (MAlonzo.Code.Data.Star.du44
                                             v0 v2
                                             (MAlonzo.Code.Data.Star.C34
                                                v0 v5 v3 v6
                                                (MAlonzo.Code.Data.Star.du44
                                                   v5 v3 v7
                                                   (MAlonzo.Code.Data.Star.du44 v1 v3 v4 v8)))
                                             v10)))
                                    (MAlonzo.Code.Data.Nat.Properties.d534
                                       (MAlonzo.Code.Star.du18 v1 v0 v9)
                                       (MAlonzo.Code.Star.du18
                                          v0 v2
                                          (MAlonzo.Code.Data.Star.du44
                                             v0 v2
                                             (MAlonzo.Code.Data.Star.C34
                                                v0 v5 v3 v6
                                                (MAlonzo.Code.Data.Star.du44
                                                   v5 v3 v7
                                                   (MAlonzo.Code.Data.Star.du44 v1 v3 v4 v8)))
                                             v10)))
                                    (let v20
                                           = coe
                                               MAlonzo.Code.Relation.Binary.C345
                                               (coe
                                                  MAlonzo.Code.Relation.Binary.d842
                                                  (coe
                                                     MAlonzo.Code.Relation.Binary.d970
                                                     (coe
                                                        MAlonzo.Code.Relation.Binary.d1052
                                                        MAlonzo.Code.Data.Nat.d12))) in
                                     MAlonzo.Code.Relation.Binary.PreorderReasoning.du84
                                       (MAlonzo.Code.Relation.Binary.C125
                                          (MAlonzo.Code.Relation.Binary.d268
                                             (MAlonzo.Code.Relation.Binary.d322 v20)))
                                       (addInt
                                          (MAlonzo.Code.Star.du18
                                             v0 v2
                                             (MAlonzo.Code.Data.Star.du44
                                                v0 v2
                                                (MAlonzo.Code.Data.Star.C34
                                                   v0 v5 v3 v6
                                                   (MAlonzo.Code.Data.Star.du44
                                                      v5 v3 v7
                                                      (MAlonzo.Code.Data.Star.du44 v1 v3 v4 v8)))
                                                v10))
                                          (MAlonzo.Code.Star.du18 v1 v0 v9))
                                       (MAlonzo.Code.Star.du18
                                          v1 v2
                                          (MAlonzo.Code.Data.Star.du44
                                             v1 v2 v9
                                             (MAlonzo.Code.Data.Star.du44
                                                v0 v2
                                                (MAlonzo.Code.Data.Star.C34
                                                   v0 v5 v3 v6
                                                   (MAlonzo.Code.Data.Star.du44
                                                      v5 v3 v7
                                                      (MAlonzo.Code.Data.Star.du44 v1 v3 v4 v8)))
                                                v10)))
                                       (MAlonzo.Code.Star.du18
                                          v1 v2
                                          (MAlonzo.Code.Data.Star.du44
                                             v1 v2 v9
                                             (MAlonzo.Code.Data.Star.du44
                                                v0 v2
                                                (MAlonzo.Code.Data.Star.C34
                                                   v0 v5 v3 v6
                                                   (MAlonzo.Code.Data.Star.du44
                                                      v5 v3 v7
                                                      (MAlonzo.Code.Data.Star.du44 v1 v3 v4 v8)))
                                                v10)))
                                       erased
                                       (let v21
                                              = coe
                                                  MAlonzo.Code.Star.du18 v1 v2
                                                  (coe
                                                     MAlonzo.Code.Data.Star.du44 v1 v2 v9
                                                     (coe
                                                        MAlonzo.Code.Data.Star.du44 v0 v2
                                                        (coe
                                                           MAlonzo.Code.Data.Star.C34 v0 v5 v3 v6
                                                           (coe
                                                              MAlonzo.Code.Data.Star.du44 v5 v3 v7
                                                              (coe
                                                                 MAlonzo.Code.Data.Star.du44 v1 v3
                                                                 v4 v8)))
                                                        v10)) in
                                        MAlonzo.Code.Relation.Binary.PreorderReasoning.C56
                                          (MAlonzo.Code.Relation.Binary.d38
                                             (MAlonzo.Code.Relation.Binary.d268
                                                (MAlonzo.Code.Relation.Binary.d842
                                                   (MAlonzo.Code.Relation.Binary.d970
                                                      (MAlonzo.Code.Relation.Binary.d1052
                                                         MAlonzo.Code.Data.Nat.d12))))
                                             v21 v21
                                             (MAlonzo.Code.Relation.Binary.Core.d516
                                                (MAlonzo.Code.Relation.Binary.d36
                                                   (MAlonzo.Code.Relation.Binary.d268
                                                      (MAlonzo.Code.Relation.Binary.d842
                                                         (MAlonzo.Code.Relation.Binary.d970
                                                            (MAlonzo.Code.Relation.Binary.d1052
                                                               MAlonzo.Code.Data.Nat.d12)))))
                                                v21))))))))))))))
name340 = "Star.Properties._.\8849\949\8658\8801\949"
d340 v0 v1 v2 v3 v4 v5 v6 v7 v8 = du340 v7 v8
du340 v0 v1
  = case coe v0 of
      MAlonzo.Code.Data.Star.C22 v2
        -> case coe v1 of
             MAlonzo.Code.Star.C164 v3 v4
               -> case coe v3 of
                    MAlonzo.Code.Data.Star.C22 v6
                      -> case coe v4 of
                           MAlonzo.Code.Data.Star.C22 v7
                             -> coe
                                  MAlonzo.Code.Data.Product.C30 erased
                                  (coe MAlonzo.Code.Data.Product.C30 erased erased)
                           _ -> coe MAlonzo.RTE.mazUnreachableError
                    _ -> coe MAlonzo.RTE.mazUnreachableError
             _ -> coe MAlonzo.RTE.mazUnreachableError
      _ -> coe MAlonzo.RTE.mazUnreachableError
name372 = "Star.Properties._.\172\9669\8849\949"
d372 = erased
name398 = "Star.Properties._.\9669-\8849"
d398 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12
  = du398 v4 v5 v6 v9 v12
du398 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Star.C164
      (coe
         MAlonzo.Code.Data.Star.C34 v0 v1 v2 v3
         (coe MAlonzo.Code.Star.d158 v4))
      (coe MAlonzo.Code.Star.d160 v4)
name418 = "Star.Properties._.\172\8847\949"
d418 = erased
name456 = "Star.Properties._.\8847x\9669\949\8658\8801\949"
d456 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 = du456 v8
du456 v0
  = case coe v0 of
      MAlonzo.Code.Data.Star.C22 v1
        -> coe MAlonzo.Code.Data.Product.C30 erased erased
      MAlonzo.Code.Data.Star.C34 v1 v2 v3 v4 v5 -> coe erased
      _ -> coe MAlonzo.RTE.mazUnreachableError
name582 = "Star.Properties._.prefix-\949"
d582 v0 = coe MAlonzo.Code.Star.C240 v0
name596 = "Star.Properties._.Prefix\8658\8849"
d596 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 = du596 v4 v9
du596 v0 v1
  = coe
      MAlonzo.Code.Star.C164 (coe MAlonzo.Code.Data.Star.C22 v0)
      (coe MAlonzo.Code.Star.d236 v1)
name624 = "Star.Properties._.Prefix?"
d624 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 = du624 v4 v7 v8 v9
du624 v0 v1 v2 v3
  = case coe v2 of
      MAlonzo.Code.Data.Star.C22 v4
        -> coe
             MAlonzo.Code.Relation.Nullary.C22 (coe MAlonzo.Code.Star.C240 v3)
      MAlonzo.Code.Data.Star.C34 v4 v5 v6 v7 v8
        -> case coe v3 of
             MAlonzo.Code.Data.Star.C22 v9
               -> coe MAlonzo.Code.Relation.Nullary.C26
             MAlonzo.Code.Data.Star.C34 v9 v10 v11 v12 v13
               -> let v14 = coe v1 v0 v5 v10 v7 v12 in
                  case coe v14 of
                    MAlonzo.Code.Relation.Nullary.C22 v15
                      -> case coe v15 of
                           MAlonzo.Code.Data.Product.C30 v16 v17
                             -> let v18 = coe du624 v5 v1 v8 v13 in
                                case coe v18 of
                                  MAlonzo.Code.Relation.Nullary.C22 v19
                                    -> coe
                                         MAlonzo.Code.Relation.Nullary.C22
                                         (coe
                                            MAlonzo.Code.Star.C240 (coe MAlonzo.Code.Star.d236 v19))
                                  MAlonzo.Code.Relation.Nullary.C26
                                    -> coe MAlonzo.Code.Relation.Nullary.C26
                                  _ -> coe MAlonzo.RTE.mazUnreachableError
                           _ -> coe MAlonzo.RTE.mazUnreachableError
                    MAlonzo.Code.Relation.Nullary.C26
                      -> coe MAlonzo.Code.Relation.Nullary.C26
                    _ -> coe MAlonzo.RTE.mazUnreachableError
             _ -> coe MAlonzo.RTE.mazUnreachableError
      _ -> coe MAlonzo.RTE.mazUnreachableError
name700 = "Star.Properties._._.nope"
d700 = erased
name732 = "Star.Properties._._.nope"
d732 = erased
name752 = "Star.Properties._.Star\8594Star\737"
d752 v0 v1 v2 v3 v4 v5 v6 = du752 v4 v5 v6
du752 v0 v1 v2
  = case coe v2 of
      MAlonzo.Code.Data.Star.C22 v3 -> coe MAlonzo.Code.Data.Star.C22 v0
      MAlonzo.Code.Data.Star.C34 v3 v4 v5 v6 v7
        -> coe
             MAlonzo.Code.Data.Star.du44 v1 v0 (coe du752 v4 v1 v7)
             (coe
                MAlonzo.Code.Data.Star.C34 v4 v0 v0 v6
                (coe MAlonzo.Code.Data.Star.C22 v0))
      _ -> coe MAlonzo.RTE.mazUnreachableError
name762 = "Star.Properties._.Star\737\8594Star"
d762 v0 v1 v2 v3 v4 v5 v6 = du762 v4 v5 v6
du762 v0 v1 v2
  = case coe v2 of
      MAlonzo.Code.Data.Star.C22 v3 -> coe MAlonzo.Code.Data.Star.C22 v0
      MAlonzo.Code.Data.Star.C34 v3 v4 v5 v6 v7
        -> coe
             MAlonzo.Code.Data.Star.du44 v0 v1 (coe du762 v0 v4 v7)
             (coe
                MAlonzo.Code.Data.Star.C34 v4 v1 v1 v6
                (coe MAlonzo.Code.Data.Star.C22 v1))
      _ -> coe MAlonzo.RTE.mazUnreachableError
name774 = "Star.Properties.Star\8596Star\737"
d774 v0 v1 v2 v3 v4 v5 = du774 v4 v5
du774 v0 v1
  = coe
      MAlonzo.Code.Function.Inverse.C173
      (coe
         MAlonzo.Code.Relation.Binary.PropositionalEquality.du210
         (coe
            MAlonzo.Code.Relation.Binary.C143
            (coe MAlonzo.Code.Relation.Binary.Core.C889 erased erased erased))
         (coe du752 v0 v1))
      (coe
         MAlonzo.Code.Relation.Binary.PropositionalEquality.du210
         (coe
            MAlonzo.Code.Relation.Binary.C143
            (coe MAlonzo.Code.Relation.Binary.Core.C889 erased erased erased))
         (coe du762 v0 v1))
      (coe MAlonzo.Code.Function.Inverse.C109 erased erased)
name792 = "Star.Properties._.g-\9669\9669"
d792 = erased
name810 = "Star.Properties._.gf"
d810 = erased
name828 = "Star.Properties._.f-\9669\9669"
d828 = erased
name846 = "Star.Properties._.fg"
d846 = erased
name862 = "Star.Properties.length\8801"
d862 = erased