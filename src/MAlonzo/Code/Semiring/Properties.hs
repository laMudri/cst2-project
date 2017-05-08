{-# LANGUAGE EmptyDataDecls, ExistentialQuantification,
             ScopedTypeVariables, NoMonomorphismRestriction, Rank2Types #-}
module MAlonzo.Code.Semiring.Properties where

import MAlonzo.RTE (coe, erased, addInt, subInt, mulInt, quotInt,
                    remInt, geqInt, ltInt, eqInt, eqFloat)
import qualified Control.Exception
import qualified Data.Text
import qualified Data.Text.IO
import qualified MAlonzo.RTE
import qualified System.Environment
import qualified System.IO
import qualified Data.Text
import qualified MAlonzo.Code.Algebra
import qualified MAlonzo.Code.Algebra.Structures
import qualified MAlonzo.Code.Data.Product
import qualified MAlonzo.Code.Relation.Binary
import qualified MAlonzo.Code.Relation.Binary.Core
import qualified MAlonzo.Code.Relation.Binary.PreorderReasoning

name42 = "Semiring.Properties._.identity"
d42 v0 v1 v2 = du42 v2
du42 v0
  = let v1 = coe MAlonzo.Code.Algebra.d712 v0 in
    let v2 = coe MAlonzo.Code.Algebra.d716 v0 in
    let v3 = coe MAlonzo.Code.Algebra.d720 v0 in
    let v4 = coe MAlonzo.Code.Algebra.Structures.d1728 v3 in
    coe
      MAlonzo.Code.Algebra.Structures.du476 v1 v2
      (coe MAlonzo.Code.Algebra.Structures.d1542 v4)
name84 = "Semiring.Properties._.setoid"
d84 v0 v1 v2 = du84 v2
du84 v0
  = let v1
          = coe
              MAlonzo.Code.Algebra.C333 (coe MAlonzo.Code.Algebra.d712 v0)
              (coe MAlonzo.Code.Algebra.d714 v0)
              (coe MAlonzo.Code.Algebra.d716 v0)
              (coe MAlonzo.Code.Algebra.d718 v0)
              (coe
                 MAlonzo.Code.Algebra.Structures.d1728
                 (coe MAlonzo.Code.Algebra.d720 v0)) in
    let v2
          = coe
              MAlonzo.Code.Algebra.C97 (coe MAlonzo.Code.Algebra.d616 v1)
              (coe MAlonzo.Code.Algebra.d620 v1)
              (coe
                 MAlonzo.Code.Algebra.Structures.d1542
                 (coe MAlonzo.Code.Algebra.d624 v1)) in
    coe
      MAlonzo.Code.Relation.Binary.C143
      (coe
         MAlonzo.Code.Algebra.Structures.d140
         (coe
            MAlonzo.Code.Algebra.Structures.d294
            (coe
               MAlonzo.Code.Algebra.d100 (coe MAlonzo.Code.Algebra.du186 v2))))
name100 = "Semiring.Properties._.Bounded"
d100 = erased
name106 = "Semiring.Properties._.Idempotent"
d106 = erased
name108 = "Semiring.Properties._.Monotonic"
d108 = erased
name138 = "Semiring.Properties.\8804K-isPartialOrder"
d138 v0 v1 v2 v3 = du138 v2 v3
du138 v0 v1
  = coe
      MAlonzo.Code.Relation.Binary.C327
      (coe
         MAlonzo.Code.Relation.Binary.C17
         (coe
            MAlonzo.Code.Algebra.Structures.d140
            (coe
               MAlonzo.Code.Algebra.Structures.d454
               (coe
                  MAlonzo.Code.Algebra.Structures.d1542
                  (coe
                     MAlonzo.Code.Algebra.Structures.d1728
                     (coe MAlonzo.Code.Algebra.d720 v0)))))
         (\ v2 v3 v4 ->
            coe
              MAlonzo.Code.Relation.Binary.PreorderReasoning.d62
              (let v5
                     = let v5
                             = coe
                                 MAlonzo.Code.Algebra.C333 (coe MAlonzo.Code.Algebra.d712 v0)
                                 (coe MAlonzo.Code.Algebra.d714 v0)
                                 (coe MAlonzo.Code.Algebra.d716 v0)
                                 (coe MAlonzo.Code.Algebra.d718 v0)
                                 (coe
                                    MAlonzo.Code.Algebra.Structures.d1728
                                    (coe MAlonzo.Code.Algebra.d720 v0)) in
                       let v6
                             = coe
                                 MAlonzo.Code.Algebra.C97 (coe MAlonzo.Code.Algebra.d616 v5)
                                 (coe MAlonzo.Code.Algebra.d620 v5)
                                 (coe
                                    MAlonzo.Code.Algebra.Structures.d1542
                                    (coe MAlonzo.Code.Algebra.d624 v5)) in
                       coe
                         MAlonzo.Code.Relation.Binary.C143
                         (coe
                            MAlonzo.Code.Algebra.Structures.d140
                            (coe
                               MAlonzo.Code.Algebra.Structures.d294
                               (coe
                                  MAlonzo.Code.Algebra.d100
                                  (coe MAlonzo.Code.Algebra.du186 v6)))) in
               MAlonzo.Code.Relation.Binary.PreorderReasoning.du72
                 (MAlonzo.Code.Relation.Binary.du150 v5)
                 (MAlonzo.Code.Algebra.d712 v0 v2 v3)
                 (MAlonzo.Code.Algebra.d712 v0 v2 v2) v2
                 (MAlonzo.Code.Algebra.Structures.d144
                    (MAlonzo.Code.Algebra.Structures.d454
                       (MAlonzo.Code.Algebra.Structures.d1542
                          (MAlonzo.Code.Algebra.Structures.d1728
                             (MAlonzo.Code.Algebra.d720 v0))))
                    v2 v2 v3 v2
                    (MAlonzo.Code.Relation.Binary.Core.d516
                       (MAlonzo.Code.Algebra.Structures.d140
                          (MAlonzo.Code.Algebra.Structures.d454
                             (MAlonzo.Code.Algebra.Structures.d1542
                                (MAlonzo.Code.Algebra.Structures.d1728
                                   (MAlonzo.Code.Algebra.d720 v0)))))
                       v2)
                    (MAlonzo.Code.Relation.Binary.Core.d518
                       (MAlonzo.Code.Algebra.Structures.d140
                          (MAlonzo.Code.Algebra.Structures.d454
                             (MAlonzo.Code.Algebra.Structures.d1542
                                (MAlonzo.Code.Algebra.Structures.d1728
                                   (MAlonzo.Code.Algebra.d720 v0)))))
                       v2 v3 v4))
                 (let v6
                        = let v6
                                = coe
                                    MAlonzo.Code.Algebra.C333 (coe MAlonzo.Code.Algebra.d712 v0)
                                    (coe MAlonzo.Code.Algebra.d714 v0)
                                    (coe MAlonzo.Code.Algebra.d716 v0)
                                    (coe MAlonzo.Code.Algebra.d718 v0)
                                    (coe
                                       MAlonzo.Code.Algebra.Structures.d1728
                                       (coe MAlonzo.Code.Algebra.d720 v0)) in
                          let v7
                                = coe
                                    MAlonzo.Code.Algebra.C97 (coe MAlonzo.Code.Algebra.d616 v6)
                                    (coe MAlonzo.Code.Algebra.d620 v6)
                                    (coe
                                       MAlonzo.Code.Algebra.Structures.d1542
                                       (coe MAlonzo.Code.Algebra.d624 v6)) in
                          coe
                            MAlonzo.Code.Relation.Binary.C143
                            (coe
                               MAlonzo.Code.Algebra.Structures.d140
                               (coe
                                  MAlonzo.Code.Algebra.Structures.d294
                                  (coe
                                     MAlonzo.Code.Algebra.d100
                                     (coe MAlonzo.Code.Algebra.du186 v7)))) in
                  MAlonzo.Code.Relation.Binary.PreorderReasoning.du72
                    (MAlonzo.Code.Relation.Binary.du150 v6)
                    (MAlonzo.Code.Algebra.d712 v0 v2 v2) v2 v2 (v1 v2)
                    (let v7
                           = let v7
                                   = coe
                                       MAlonzo.Code.Algebra.C333 (coe MAlonzo.Code.Algebra.d712 v0)
                                       (coe MAlonzo.Code.Algebra.d714 v0)
                                       (coe MAlonzo.Code.Algebra.d716 v0)
                                       (coe MAlonzo.Code.Algebra.d718 v0)
                                       (coe
                                          MAlonzo.Code.Algebra.Structures.d1728
                                          (coe MAlonzo.Code.Algebra.d720 v0)) in
                             let v8
                                   = coe
                                       MAlonzo.Code.Algebra.C97 (coe MAlonzo.Code.Algebra.d616 v7)
                                       (coe MAlonzo.Code.Algebra.d620 v7)
                                       (coe
                                          MAlonzo.Code.Algebra.Structures.d1542
                                          (coe MAlonzo.Code.Algebra.d624 v7)) in
                             coe
                               MAlonzo.Code.Relation.Binary.C143
                               (coe
                                  MAlonzo.Code.Algebra.Structures.d140
                                  (coe
                                     MAlonzo.Code.Algebra.Structures.d294
                                     (coe
                                        MAlonzo.Code.Algebra.d100
                                        (coe MAlonzo.Code.Algebra.du186 v8)))) in
                     MAlonzo.Code.Relation.Binary.PreorderReasoning.C56
                       (MAlonzo.Code.Relation.Binary.d38
                          (MAlonzo.Code.Relation.Binary.d92
                             (MAlonzo.Code.Relation.Binary.du150 v7))
                          v2 v2
                          (MAlonzo.Code.Relation.Binary.Core.d516
                             (MAlonzo.Code.Relation.Binary.d36
                                (MAlonzo.Code.Relation.Binary.d92
                                   (MAlonzo.Code.Relation.Binary.du150 v7)))
                             v2))))))
         (\ v2 v3 v4 v5 v6 ->
            coe
              MAlonzo.Code.Relation.Binary.PreorderReasoning.d62
              (let v7
                     = let v7
                             = coe
                                 MAlonzo.Code.Algebra.C333 (coe MAlonzo.Code.Algebra.d712 v0)
                                 (coe MAlonzo.Code.Algebra.d714 v0)
                                 (coe MAlonzo.Code.Algebra.d716 v0)
                                 (coe MAlonzo.Code.Algebra.d718 v0)
                                 (coe
                                    MAlonzo.Code.Algebra.Structures.d1728
                                    (coe MAlonzo.Code.Algebra.d720 v0)) in
                       let v8
                             = coe
                                 MAlonzo.Code.Algebra.C97 (coe MAlonzo.Code.Algebra.d616 v7)
                                 (coe MAlonzo.Code.Algebra.d620 v7)
                                 (coe
                                    MAlonzo.Code.Algebra.Structures.d1542
                                    (coe MAlonzo.Code.Algebra.d624 v7)) in
                       coe
                         MAlonzo.Code.Relation.Binary.C143
                         (coe
                            MAlonzo.Code.Algebra.Structures.d140
                            (coe
                               MAlonzo.Code.Algebra.Structures.d294
                               (coe
                                  MAlonzo.Code.Algebra.d100
                                  (coe MAlonzo.Code.Algebra.du186 v8)))) in
               MAlonzo.Code.Relation.Binary.PreorderReasoning.du72
                 (MAlonzo.Code.Relation.Binary.du150 v7)
                 (MAlonzo.Code.Algebra.d712 v0 v2 v4)
                 (MAlonzo.Code.Algebra.d712
                    v0 (MAlonzo.Code.Algebra.d712 v0 v2 v3) v4)
                 v2
                 (MAlonzo.Code.Algebra.Structures.d144
                    (MAlonzo.Code.Algebra.Structures.d454
                       (MAlonzo.Code.Algebra.Structures.d1542
                          (MAlonzo.Code.Algebra.Structures.d1728
                             (MAlonzo.Code.Algebra.d720 v0))))
                    v2 (MAlonzo.Code.Algebra.d712 v0 v2 v3) v4 v4
                    (MAlonzo.Code.Relation.Binary.Core.d518
                       (MAlonzo.Code.Algebra.Structures.d140
                          (MAlonzo.Code.Algebra.Structures.d454
                             (MAlonzo.Code.Algebra.Structures.d1542
                                (MAlonzo.Code.Algebra.Structures.d1728
                                   (MAlonzo.Code.Algebra.d720 v0)))))
                       (MAlonzo.Code.Algebra.d712 v0 v2 v3) v2 v5)
                    (MAlonzo.Code.Relation.Binary.Core.d516
                       (MAlonzo.Code.Algebra.Structures.d140
                          (MAlonzo.Code.Algebra.Structures.d454
                             (MAlonzo.Code.Algebra.Structures.d1542
                                (MAlonzo.Code.Algebra.Structures.d1728
                                   (MAlonzo.Code.Algebra.d720 v0)))))
                       v4))
                 (let v8
                        = let v8
                                = coe
                                    MAlonzo.Code.Algebra.C333 (coe MAlonzo.Code.Algebra.d712 v0)
                                    (coe MAlonzo.Code.Algebra.d714 v0)
                                    (coe MAlonzo.Code.Algebra.d716 v0)
                                    (coe MAlonzo.Code.Algebra.d718 v0)
                                    (coe
                                       MAlonzo.Code.Algebra.Structures.d1728
                                       (coe MAlonzo.Code.Algebra.d720 v0)) in
                          let v9
                                = coe
                                    MAlonzo.Code.Algebra.C97 (coe MAlonzo.Code.Algebra.d616 v8)
                                    (coe MAlonzo.Code.Algebra.d620 v8)
                                    (coe
                                       MAlonzo.Code.Algebra.Structures.d1542
                                       (coe MAlonzo.Code.Algebra.d624 v8)) in
                          coe
                            MAlonzo.Code.Relation.Binary.C143
                            (coe
                               MAlonzo.Code.Algebra.Structures.d140
                               (coe
                                  MAlonzo.Code.Algebra.Structures.d294
                                  (coe
                                     MAlonzo.Code.Algebra.d100
                                     (coe MAlonzo.Code.Algebra.du186 v9)))) in
                  MAlonzo.Code.Relation.Binary.PreorderReasoning.du72
                    (MAlonzo.Code.Relation.Binary.du150 v8)
                    (MAlonzo.Code.Algebra.d712
                       v0 (MAlonzo.Code.Algebra.d712 v0 v2 v3) v4)
                    (MAlonzo.Code.Algebra.d712
                       v0 v2 (MAlonzo.Code.Algebra.d712 v0 v3 v4))
                    v2
                    (MAlonzo.Code.Algebra.Structures.d142
                       (MAlonzo.Code.Algebra.Structures.d454
                          (MAlonzo.Code.Algebra.Structures.d1542
                             (MAlonzo.Code.Algebra.Structures.d1728
                                (MAlonzo.Code.Algebra.d720 v0))))
                       v2 v3 v4)
                    (let v9
                           = let v9
                                   = coe
                                       MAlonzo.Code.Algebra.C333 (coe MAlonzo.Code.Algebra.d712 v0)
                                       (coe MAlonzo.Code.Algebra.d714 v0)
                                       (coe MAlonzo.Code.Algebra.d716 v0)
                                       (coe MAlonzo.Code.Algebra.d718 v0)
                                       (coe
                                          MAlonzo.Code.Algebra.Structures.d1728
                                          (coe MAlonzo.Code.Algebra.d720 v0)) in
                             let v10
                                   = coe
                                       MAlonzo.Code.Algebra.C97 (coe MAlonzo.Code.Algebra.d616 v9)
                                       (coe MAlonzo.Code.Algebra.d620 v9)
                                       (coe
                                          MAlonzo.Code.Algebra.Structures.d1542
                                          (coe MAlonzo.Code.Algebra.d624 v9)) in
                             coe
                               MAlonzo.Code.Relation.Binary.C143
                               (coe
                                  MAlonzo.Code.Algebra.Structures.d140
                                  (coe
                                     MAlonzo.Code.Algebra.Structures.d294
                                     (coe
                                        MAlonzo.Code.Algebra.d100
                                        (coe MAlonzo.Code.Algebra.du186 v10)))) in
                     MAlonzo.Code.Relation.Binary.PreorderReasoning.du72
                       (MAlonzo.Code.Relation.Binary.du150 v9)
                       (MAlonzo.Code.Algebra.d712
                          v0 v2 (MAlonzo.Code.Algebra.d712 v0 v3 v4))
                       (MAlonzo.Code.Algebra.d712 v0 v2 v3) v2
                       (MAlonzo.Code.Algebra.Structures.d144
                          (MAlonzo.Code.Algebra.Structures.d454
                             (MAlonzo.Code.Algebra.Structures.d1542
                                (MAlonzo.Code.Algebra.Structures.d1728
                                   (MAlonzo.Code.Algebra.d720 v0))))
                          v2 v2 (MAlonzo.Code.Algebra.d712 v0 v3 v4) v3
                          (MAlonzo.Code.Relation.Binary.Core.d516
                             (MAlonzo.Code.Algebra.Structures.d140
                                (MAlonzo.Code.Algebra.Structures.d454
                                   (MAlonzo.Code.Algebra.Structures.d1542
                                      (MAlonzo.Code.Algebra.Structures.d1728
                                         (MAlonzo.Code.Algebra.d720 v0)))))
                             v2)
                          v6)
                       (let v10
                              = let v10
                                      = coe
                                          MAlonzo.Code.Algebra.C333
                                          (coe MAlonzo.Code.Algebra.d712 v0)
                                          (coe MAlonzo.Code.Algebra.d714 v0)
                                          (coe MAlonzo.Code.Algebra.d716 v0)
                                          (coe MAlonzo.Code.Algebra.d718 v0)
                                          (coe
                                             MAlonzo.Code.Algebra.Structures.d1728
                                             (coe MAlonzo.Code.Algebra.d720 v0)) in
                                let v11
                                      = coe
                                          MAlonzo.Code.Algebra.C97
                                          (coe MAlonzo.Code.Algebra.d616 v10)
                                          (coe MAlonzo.Code.Algebra.d620 v10)
                                          (coe
                                             MAlonzo.Code.Algebra.Structures.d1542
                                             (coe MAlonzo.Code.Algebra.d624 v10)) in
                                coe
                                  MAlonzo.Code.Relation.Binary.C143
                                  (coe
                                     MAlonzo.Code.Algebra.Structures.d140
                                     (coe
                                        MAlonzo.Code.Algebra.Structures.d294
                                        (coe
                                           MAlonzo.Code.Algebra.d100
                                           (coe MAlonzo.Code.Algebra.du186 v11)))) in
                        MAlonzo.Code.Relation.Binary.PreorderReasoning.du72
                          (MAlonzo.Code.Relation.Binary.du150 v10)
                          (MAlonzo.Code.Algebra.d712 v0 v2 v3) v2 v2 v5
                          (let v11
                                 = let v11
                                         = coe
                                             MAlonzo.Code.Algebra.C333
                                             (coe MAlonzo.Code.Algebra.d712 v0)
                                             (coe MAlonzo.Code.Algebra.d714 v0)
                                             (coe MAlonzo.Code.Algebra.d716 v0)
                                             (coe MAlonzo.Code.Algebra.d718 v0)
                                             (coe
                                                MAlonzo.Code.Algebra.Structures.d1728
                                                (coe MAlonzo.Code.Algebra.d720 v0)) in
                                   let v12
                                         = coe
                                             MAlonzo.Code.Algebra.C97
                                             (coe MAlonzo.Code.Algebra.d616 v11)
                                             (coe MAlonzo.Code.Algebra.d620 v11)
                                             (coe
                                                MAlonzo.Code.Algebra.Structures.d1542
                                                (coe MAlonzo.Code.Algebra.d624 v11)) in
                                   coe
                                     MAlonzo.Code.Relation.Binary.C143
                                     (coe
                                        MAlonzo.Code.Algebra.Structures.d140
                                        (coe
                                           MAlonzo.Code.Algebra.Structures.d294
                                           (coe
                                              MAlonzo.Code.Algebra.d100
                                              (coe MAlonzo.Code.Algebra.du186 v12)))) in
                           MAlonzo.Code.Relation.Binary.PreorderReasoning.C56
                             (MAlonzo.Code.Relation.Binary.d38
                                (MAlonzo.Code.Relation.Binary.d92
                                   (MAlonzo.Code.Relation.Binary.du150 v11))
                                v2 v2
                                (MAlonzo.Code.Relation.Binary.Core.d516
                                   (MAlonzo.Code.Relation.Binary.d36
                                      (MAlonzo.Code.Relation.Binary.d92
                                         (MAlonzo.Code.Relation.Binary.du150 v11)))
                                   v2)))))))))
      (\ v2 v3 v4 v5 ->
         coe
           MAlonzo.Code.Relation.Binary.PreorderReasoning.d62
           (let v6
                  = let v6
                          = coe
                              MAlonzo.Code.Algebra.C333 (coe MAlonzo.Code.Algebra.d712 v0)
                              (coe MAlonzo.Code.Algebra.d714 v0)
                              (coe MAlonzo.Code.Algebra.d716 v0)
                              (coe MAlonzo.Code.Algebra.d718 v0)
                              (coe
                                 MAlonzo.Code.Algebra.Structures.d1728
                                 (coe MAlonzo.Code.Algebra.d720 v0)) in
                    let v7
                          = coe
                              MAlonzo.Code.Algebra.C97 (coe MAlonzo.Code.Algebra.d616 v6)
                              (coe MAlonzo.Code.Algebra.d620 v6)
                              (coe
                                 MAlonzo.Code.Algebra.Structures.d1542
                                 (coe MAlonzo.Code.Algebra.d624 v6)) in
                    coe
                      MAlonzo.Code.Relation.Binary.C143
                      (coe
                         MAlonzo.Code.Algebra.Structures.d140
                         (coe
                            MAlonzo.Code.Algebra.Structures.d294
                            (coe
                               MAlonzo.Code.Algebra.d100 (coe MAlonzo.Code.Algebra.du186 v7)))) in
            MAlonzo.Code.Relation.Binary.PreorderReasoning.du72
              (MAlonzo.Code.Relation.Binary.du150 v6) v2
              (MAlonzo.Code.Algebra.d712 v0 v2 v3) v3
              (MAlonzo.Code.Relation.Binary.Core.d518
                 (MAlonzo.Code.Algebra.Structures.d140
                    (MAlonzo.Code.Algebra.Structures.d454
                       (MAlonzo.Code.Algebra.Structures.d1542
                          (MAlonzo.Code.Algebra.Structures.d1728
                             (MAlonzo.Code.Algebra.d720 v0)))))
                 (MAlonzo.Code.Algebra.d712 v0 v2 v3) v2 v4)
              (let v7
                     = let v7
                             = coe
                                 MAlonzo.Code.Algebra.C333 (coe MAlonzo.Code.Algebra.d712 v0)
                                 (coe MAlonzo.Code.Algebra.d714 v0)
                                 (coe MAlonzo.Code.Algebra.d716 v0)
                                 (coe MAlonzo.Code.Algebra.d718 v0)
                                 (coe
                                    MAlonzo.Code.Algebra.Structures.d1728
                                    (coe MAlonzo.Code.Algebra.d720 v0)) in
                       let v8
                             = coe
                                 MAlonzo.Code.Algebra.C97 (coe MAlonzo.Code.Algebra.d616 v7)
                                 (coe MAlonzo.Code.Algebra.d620 v7)
                                 (coe
                                    MAlonzo.Code.Algebra.Structures.d1542
                                    (coe MAlonzo.Code.Algebra.d624 v7)) in
                       coe
                         MAlonzo.Code.Relation.Binary.C143
                         (coe
                            MAlonzo.Code.Algebra.Structures.d140
                            (coe
                               MAlonzo.Code.Algebra.Structures.d294
                               (coe
                                  MAlonzo.Code.Algebra.d100
                                  (coe MAlonzo.Code.Algebra.du186 v8)))) in
               MAlonzo.Code.Relation.Binary.PreorderReasoning.du72
                 (MAlonzo.Code.Relation.Binary.du150 v7)
                 (MAlonzo.Code.Algebra.d712 v0 v2 v3)
                 (MAlonzo.Code.Algebra.d712 v0 v3 v2) v3
                 (MAlonzo.Code.Algebra.Structures.d458
                    (MAlonzo.Code.Algebra.Structures.d1542
                       (MAlonzo.Code.Algebra.Structures.d1728
                          (MAlonzo.Code.Algebra.d720 v0)))
                    v2 v3)
                 (let v8
                        = let v8
                                = coe
                                    MAlonzo.Code.Algebra.C333 (coe MAlonzo.Code.Algebra.d712 v0)
                                    (coe MAlonzo.Code.Algebra.d714 v0)
                                    (coe MAlonzo.Code.Algebra.d716 v0)
                                    (coe MAlonzo.Code.Algebra.d718 v0)
                                    (coe
                                       MAlonzo.Code.Algebra.Structures.d1728
                                       (coe MAlonzo.Code.Algebra.d720 v0)) in
                          let v9
                                = coe
                                    MAlonzo.Code.Algebra.C97 (coe MAlonzo.Code.Algebra.d616 v8)
                                    (coe MAlonzo.Code.Algebra.d620 v8)
                                    (coe
                                       MAlonzo.Code.Algebra.Structures.d1542
                                       (coe MAlonzo.Code.Algebra.d624 v8)) in
                          coe
                            MAlonzo.Code.Relation.Binary.C143
                            (coe
                               MAlonzo.Code.Algebra.Structures.d140
                               (coe
                                  MAlonzo.Code.Algebra.Structures.d294
                                  (coe
                                     MAlonzo.Code.Algebra.d100
                                     (coe MAlonzo.Code.Algebra.du186 v9)))) in
                  MAlonzo.Code.Relation.Binary.PreorderReasoning.du72
                    (MAlonzo.Code.Relation.Binary.du150 v8)
                    (MAlonzo.Code.Algebra.d712 v0 v3 v2) v3 v3 v5
                    (let v9
                           = let v9
                                   = coe
                                       MAlonzo.Code.Algebra.C333 (coe MAlonzo.Code.Algebra.d712 v0)
                                       (coe MAlonzo.Code.Algebra.d714 v0)
                                       (coe MAlonzo.Code.Algebra.d716 v0)
                                       (coe MAlonzo.Code.Algebra.d718 v0)
                                       (coe
                                          MAlonzo.Code.Algebra.Structures.d1728
                                          (coe MAlonzo.Code.Algebra.d720 v0)) in
                             let v10
                                   = coe
                                       MAlonzo.Code.Algebra.C97 (coe MAlonzo.Code.Algebra.d616 v9)
                                       (coe MAlonzo.Code.Algebra.d620 v9)
                                       (coe
                                          MAlonzo.Code.Algebra.Structures.d1542
                                          (coe MAlonzo.Code.Algebra.d624 v9)) in
                             coe
                               MAlonzo.Code.Relation.Binary.C143
                               (coe
                                  MAlonzo.Code.Algebra.Structures.d140
                                  (coe
                                     MAlonzo.Code.Algebra.Structures.d294
                                     (coe
                                        MAlonzo.Code.Algebra.d100
                                        (coe MAlonzo.Code.Algebra.du186 v10)))) in
                     MAlonzo.Code.Relation.Binary.PreorderReasoning.C56
                       (MAlonzo.Code.Relation.Binary.d38
                          (MAlonzo.Code.Relation.Binary.d92
                             (MAlonzo.Code.Relation.Binary.du150 v9))
                          v3 v3
                          (MAlonzo.Code.Relation.Binary.Core.d516
                             (MAlonzo.Code.Relation.Binary.d36
                                (MAlonzo.Code.Relation.Binary.d92
                                   (MAlonzo.Code.Relation.Binary.du150 v9)))
                             v3)))))))
name150 = "Semiring.Properties._._._\8718"
d150 v0 v1 v2 v3 = du150 v2
du150 v0
  = let v1
          = let v1
                  = coe
                      MAlonzo.Code.Algebra.C333 (coe MAlonzo.Code.Algebra.d712 v0)
                      (coe MAlonzo.Code.Algebra.d714 v0)
                      (coe MAlonzo.Code.Algebra.d716 v0)
                      (coe MAlonzo.Code.Algebra.d718 v0)
                      (coe
                         MAlonzo.Code.Algebra.Structures.d1728
                         (coe MAlonzo.Code.Algebra.d720 v0)) in
            let v2
                  = coe
                      MAlonzo.Code.Algebra.C97 (coe MAlonzo.Code.Algebra.d616 v1)
                      (coe MAlonzo.Code.Algebra.d620 v1)
                      (coe
                         MAlonzo.Code.Algebra.Structures.d1542
                         (coe MAlonzo.Code.Algebra.d624 v1)) in
            coe
              MAlonzo.Code.Relation.Binary.C143
              (coe
                 MAlonzo.Code.Algebra.Structures.d140
                 (coe
                    MAlonzo.Code.Algebra.Structures.d294
                    (coe
                       MAlonzo.Code.Algebra.d100 (coe MAlonzo.Code.Algebra.du186 v2)))) in
    \ v2 ->
      coe
        MAlonzo.Code.Relation.Binary.PreorderReasoning.C56
        (coe
           MAlonzo.Code.Relation.Binary.d38
           (coe
              MAlonzo.Code.Relation.Binary.d92
              (coe MAlonzo.Code.Relation.Binary.du150 v1))
           v2 v2
           (coe
              MAlonzo.Code.Relation.Binary.Core.d516
              (coe
                 MAlonzo.Code.Relation.Binary.d36
                 (coe
                    MAlonzo.Code.Relation.Binary.d92
                    (coe MAlonzo.Code.Relation.Binary.du150 v1)))
              v2))
name152 = "Semiring.Properties._._._\8764\10216_\10217_"
d152 v0 v1 v2 v3 = du152 v2
du152 v0
  = let v1
          = let v1
                  = coe
                      MAlonzo.Code.Algebra.C333 (coe MAlonzo.Code.Algebra.d712 v0)
                      (coe MAlonzo.Code.Algebra.d714 v0)
                      (coe MAlonzo.Code.Algebra.d716 v0)
                      (coe MAlonzo.Code.Algebra.d718 v0)
                      (coe
                         MAlonzo.Code.Algebra.Structures.d1728
                         (coe MAlonzo.Code.Algebra.d720 v0)) in
            let v2
                  = coe
                      MAlonzo.Code.Algebra.C97 (coe MAlonzo.Code.Algebra.d616 v1)
                      (coe MAlonzo.Code.Algebra.d620 v1)
                      (coe
                         MAlonzo.Code.Algebra.Structures.d1542
                         (coe MAlonzo.Code.Algebra.d624 v1)) in
            coe
              MAlonzo.Code.Relation.Binary.C143
              (coe
                 MAlonzo.Code.Algebra.Structures.d140
                 (coe
                    MAlonzo.Code.Algebra.Structures.d294
                    (coe
                       MAlonzo.Code.Algebra.d100 (coe MAlonzo.Code.Algebra.du186 v2)))) in
    coe
      MAlonzo.Code.Relation.Binary.PreorderReasoning.du72
      (coe MAlonzo.Code.Relation.Binary.du150 v1)
name190 = "Semiring.Properties.\8804K-poset"
d190 v0 v1 v2 v3 = du190 v2 v3
du190 v0 v1
  = coe MAlonzo.Code.Relation.Binary.C345 (coe du138 v0 v1)
name196 = "Semiring.Properties.natural-order-negative"
d196 v0 v1 v2 v3 = du196 v2
du196 v0
  = coe
      MAlonzo.Code.Relation.Binary.PreorderReasoning.d62
      (let v1
             = let v1
                     = coe
                         MAlonzo.Code.Algebra.C333 (coe MAlonzo.Code.Algebra.d712 v0)
                         (coe MAlonzo.Code.Algebra.d714 v0)
                         (coe MAlonzo.Code.Algebra.d716 v0)
                         (coe MAlonzo.Code.Algebra.d718 v0)
                         (coe
                            MAlonzo.Code.Algebra.Structures.d1728
                            (coe MAlonzo.Code.Algebra.d720 v0)) in
               let v2
                     = coe
                         MAlonzo.Code.Algebra.C97 (coe MAlonzo.Code.Algebra.d616 v1)
                         (coe MAlonzo.Code.Algebra.d620 v1)
                         (coe
                            MAlonzo.Code.Algebra.Structures.d1542
                            (coe MAlonzo.Code.Algebra.d624 v1)) in
               coe
                 MAlonzo.Code.Relation.Binary.C143
                 (coe
                    MAlonzo.Code.Algebra.Structures.d140
                    (coe
                       MAlonzo.Code.Algebra.Structures.d294
                       (coe
                          MAlonzo.Code.Algebra.d100 (coe MAlonzo.Code.Algebra.du186 v2)))) in
       MAlonzo.Code.Relation.Binary.PreorderReasoning.du72
         (MAlonzo.Code.Relation.Binary.du150 v1)
         (MAlonzo.Code.Algebra.d712
            v0 (MAlonzo.Code.Algebra.d718 v0) (MAlonzo.Code.Algebra.d716 v0))
         (MAlonzo.Code.Algebra.d718 v0) (MAlonzo.Code.Algebra.d718 v0)
         (MAlonzo.Code.Data.Product.d28
            (let v2 = coe MAlonzo.Code.Algebra.d712 v0 in
             let v3 = coe MAlonzo.Code.Algebra.d716 v0 in
             let v4 = coe MAlonzo.Code.Algebra.d720 v0 in
             let v5 = coe MAlonzo.Code.Algebra.Structures.d1728 v4 in
             MAlonzo.Code.Algebra.Structures.du476
               v2 v3 (MAlonzo.Code.Algebra.Structures.d1542 v5))
            (MAlonzo.Code.Algebra.d718 v0))
         (let v2
                = let v2
                        = coe
                            MAlonzo.Code.Algebra.C333 (coe MAlonzo.Code.Algebra.d712 v0)
                            (coe MAlonzo.Code.Algebra.d714 v0)
                            (coe MAlonzo.Code.Algebra.d716 v0)
                            (coe MAlonzo.Code.Algebra.d718 v0)
                            (coe
                               MAlonzo.Code.Algebra.Structures.d1728
                               (coe MAlonzo.Code.Algebra.d720 v0)) in
                  let v3
                        = coe
                            MAlonzo.Code.Algebra.C97 (coe MAlonzo.Code.Algebra.d616 v2)
                            (coe MAlonzo.Code.Algebra.d620 v2)
                            (coe
                               MAlonzo.Code.Algebra.Structures.d1542
                               (coe MAlonzo.Code.Algebra.d624 v2)) in
                  coe
                    MAlonzo.Code.Relation.Binary.C143
                    (coe
                       MAlonzo.Code.Algebra.Structures.d140
                       (coe
                          MAlonzo.Code.Algebra.Structures.d294
                          (coe
                             MAlonzo.Code.Algebra.d100 (coe MAlonzo.Code.Algebra.du186 v3)))) in
          let v3 = coe MAlonzo.Code.Algebra.d718 v0 in
          MAlonzo.Code.Relation.Binary.PreorderReasoning.C56
            (MAlonzo.Code.Relation.Binary.d38
               (MAlonzo.Code.Relation.Binary.d92
                  (MAlonzo.Code.Relation.Binary.du150 v2))
               v3 v3
               (MAlonzo.Code.Relation.Binary.Core.d516
                  (MAlonzo.Code.Relation.Binary.d36
                     (MAlonzo.Code.Relation.Binary.d92
                        (MAlonzo.Code.Relation.Binary.du150 v2)))
                  v3))))
name208 = "Semiring.Properties._._._\8718"
d208 v0 v1 v2 v3 = du208 v2
du208 v0
  = let v1
          = let v1
                  = coe
                      MAlonzo.Code.Algebra.C333 (coe MAlonzo.Code.Algebra.d712 v0)
                      (coe MAlonzo.Code.Algebra.d714 v0)
                      (coe MAlonzo.Code.Algebra.d716 v0)
                      (coe MAlonzo.Code.Algebra.d718 v0)
                      (coe
                         MAlonzo.Code.Algebra.Structures.d1728
                         (coe MAlonzo.Code.Algebra.d720 v0)) in
            let v2
                  = coe
                      MAlonzo.Code.Algebra.C97 (coe MAlonzo.Code.Algebra.d616 v1)
                      (coe MAlonzo.Code.Algebra.d620 v1)
                      (coe
                         MAlonzo.Code.Algebra.Structures.d1542
                         (coe MAlonzo.Code.Algebra.d624 v1)) in
            coe
              MAlonzo.Code.Relation.Binary.C143
              (coe
                 MAlonzo.Code.Algebra.Structures.d140
                 (coe
                    MAlonzo.Code.Algebra.Structures.d294
                    (coe
                       MAlonzo.Code.Algebra.d100 (coe MAlonzo.Code.Algebra.du186 v2)))) in
    \ v2 ->
      coe
        MAlonzo.Code.Relation.Binary.PreorderReasoning.C56
        (coe
           MAlonzo.Code.Relation.Binary.d38
           (coe
              MAlonzo.Code.Relation.Binary.d92
              (coe MAlonzo.Code.Relation.Binary.du150 v1))
           v2 v2
           (coe
              MAlonzo.Code.Relation.Binary.Core.d516
              (coe
                 MAlonzo.Code.Relation.Binary.d36
                 (coe
                    MAlonzo.Code.Relation.Binary.d92
                    (coe MAlonzo.Code.Relation.Binary.du150 v1)))
              v2))
name210 = "Semiring.Properties._._._\8764\10216_\10217_"
d210 v0 v1 v2 v3 = du210 v2
du210 v0
  = let v1
          = let v1
                  = coe
                      MAlonzo.Code.Algebra.C333 (coe MAlonzo.Code.Algebra.d712 v0)
                      (coe MAlonzo.Code.Algebra.d714 v0)
                      (coe MAlonzo.Code.Algebra.d716 v0)
                      (coe MAlonzo.Code.Algebra.d718 v0)
                      (coe
                         MAlonzo.Code.Algebra.Structures.d1728
                         (coe MAlonzo.Code.Algebra.d720 v0)) in
            let v2
                  = coe
                      MAlonzo.Code.Algebra.C97 (coe MAlonzo.Code.Algebra.d616 v1)
                      (coe MAlonzo.Code.Algebra.d620 v1)
                      (coe
                         MAlonzo.Code.Algebra.Structures.d1542
                         (coe MAlonzo.Code.Algebra.d624 v1)) in
            coe
              MAlonzo.Code.Relation.Binary.C143
              (coe
                 MAlonzo.Code.Algebra.Structures.d140
                 (coe
                    MAlonzo.Code.Algebra.Structures.d294
                    (coe
                       MAlonzo.Code.Algebra.d100 (coe MAlonzo.Code.Algebra.du186 v2)))) in
    coe
      MAlonzo.Code.Relation.Binary.PreorderReasoning.du72
      (coe MAlonzo.Code.Relation.Binary.du150 v1)
name226 = "Semiring.Properties.natural-order-monotonic"
d226 v0 v1 v2 v3 = du226 v2 v3
du226 v0 v1
  = coe
      MAlonzo.Code.Data.Product.C30
      (\ v2 v3 v4 v5 ->
         coe
           MAlonzo.Code.Relation.Binary.PreorderReasoning.d62
           (let v6
                  = let v6
                          = coe
                              MAlonzo.Code.Algebra.C333 (coe MAlonzo.Code.Algebra.d712 v0)
                              (coe MAlonzo.Code.Algebra.d714 v0)
                              (coe MAlonzo.Code.Algebra.d716 v0)
                              (coe MAlonzo.Code.Algebra.d718 v0)
                              (coe
                                 MAlonzo.Code.Algebra.Structures.d1728
                                 (coe MAlonzo.Code.Algebra.d720 v0)) in
                    let v7
                          = coe
                              MAlonzo.Code.Algebra.C97 (coe MAlonzo.Code.Algebra.d616 v6)
                              (coe MAlonzo.Code.Algebra.d620 v6)
                              (coe
                                 MAlonzo.Code.Algebra.Structures.d1542
                                 (coe MAlonzo.Code.Algebra.d624 v6)) in
                    coe
                      MAlonzo.Code.Relation.Binary.C143
                      (coe
                         MAlonzo.Code.Algebra.Structures.d140
                         (coe
                            MAlonzo.Code.Algebra.Structures.d294
                            (coe
                               MAlonzo.Code.Algebra.d100 (coe MAlonzo.Code.Algebra.du186 v7)))) in
            MAlonzo.Code.Relation.Binary.PreorderReasoning.du72
              (MAlonzo.Code.Relation.Binary.du150 v6)
              (MAlonzo.Code.Algebra.d712
                 v0 (MAlonzo.Code.Algebra.d712 v0 v3 v2)
                 (MAlonzo.Code.Algebra.d712 v0 v4 v2))
              (MAlonzo.Code.Algebra.d712
                 v0
                 (MAlonzo.Code.Algebra.d712
                    v0 (MAlonzo.Code.Algebra.d712 v0 v3 v2) v4)
                 v2)
              (MAlonzo.Code.Algebra.d712 v0 v3 v2)
              (MAlonzo.Code.Relation.Binary.Core.d518
                 (MAlonzo.Code.Algebra.Structures.d140
                    (MAlonzo.Code.Algebra.Structures.d454
                       (MAlonzo.Code.Algebra.Structures.d1542
                          (MAlonzo.Code.Algebra.Structures.d1728
                             (MAlonzo.Code.Algebra.d720 v0)))))
                 (MAlonzo.Code.Algebra.d712
                    v0
                    (MAlonzo.Code.Algebra.d712
                       v0 (MAlonzo.Code.Algebra.d712 v0 v3 v2) v4)
                    v2)
                 (MAlonzo.Code.Algebra.d712
                    v0 (MAlonzo.Code.Algebra.d712 v0 v3 v2)
                    (MAlonzo.Code.Algebra.d712 v0 v4 v2))
                 (MAlonzo.Code.Algebra.Structures.d142
                    (MAlonzo.Code.Algebra.Structures.d454
                       (MAlonzo.Code.Algebra.Structures.d1542
                          (MAlonzo.Code.Algebra.Structures.d1728
                             (MAlonzo.Code.Algebra.d720 v0))))
                    (MAlonzo.Code.Algebra.d712 v0 v3 v2) v4 v2))
              (let v7
                     = let v7
                             = coe
                                 MAlonzo.Code.Algebra.C333 (coe MAlonzo.Code.Algebra.d712 v0)
                                 (coe MAlonzo.Code.Algebra.d714 v0)
                                 (coe MAlonzo.Code.Algebra.d716 v0)
                                 (coe MAlonzo.Code.Algebra.d718 v0)
                                 (coe
                                    MAlonzo.Code.Algebra.Structures.d1728
                                    (coe MAlonzo.Code.Algebra.d720 v0)) in
                       let v8
                             = coe
                                 MAlonzo.Code.Algebra.C97 (coe MAlonzo.Code.Algebra.d616 v7)
                                 (coe MAlonzo.Code.Algebra.d620 v7)
                                 (coe
                                    MAlonzo.Code.Algebra.Structures.d1542
                                    (coe MAlonzo.Code.Algebra.d624 v7)) in
                       coe
                         MAlonzo.Code.Relation.Binary.C143
                         (coe
                            MAlonzo.Code.Algebra.Structures.d140
                            (coe
                               MAlonzo.Code.Algebra.Structures.d294
                               (coe
                                  MAlonzo.Code.Algebra.d100
                                  (coe MAlonzo.Code.Algebra.du186 v8)))) in
               MAlonzo.Code.Relation.Binary.PreorderReasoning.du72
                 (MAlonzo.Code.Relation.Binary.du150 v7)
                 (MAlonzo.Code.Algebra.d712
                    v0
                    (MAlonzo.Code.Algebra.d712
                       v0 (MAlonzo.Code.Algebra.d712 v0 v3 v2) v4)
                    v2)
                 (MAlonzo.Code.Algebra.d712
                    v0
                    (MAlonzo.Code.Algebra.d712
                       v0 v3 (MAlonzo.Code.Algebra.d712 v0 v2 v4))
                    v2)
                 (MAlonzo.Code.Algebra.d712 v0 v3 v2)
                 (MAlonzo.Code.Algebra.Structures.d144
                    (MAlonzo.Code.Algebra.Structures.d454
                       (MAlonzo.Code.Algebra.Structures.d1542
                          (MAlonzo.Code.Algebra.Structures.d1728
                             (MAlonzo.Code.Algebra.d720 v0))))
                    (MAlonzo.Code.Algebra.d712
                       v0 (MAlonzo.Code.Algebra.d712 v0 v3 v2) v4)
                    (MAlonzo.Code.Algebra.d712
                       v0 v3 (MAlonzo.Code.Algebra.d712 v0 v2 v4))
                    v2 v2
                    (MAlonzo.Code.Algebra.Structures.d142
                       (MAlonzo.Code.Algebra.Structures.d454
                          (MAlonzo.Code.Algebra.Structures.d1542
                             (MAlonzo.Code.Algebra.Structures.d1728
                                (MAlonzo.Code.Algebra.d720 v0))))
                       v3 v2 v4)
                    (MAlonzo.Code.Relation.Binary.Core.d516
                       (MAlonzo.Code.Algebra.Structures.d140
                          (MAlonzo.Code.Algebra.Structures.d454
                             (MAlonzo.Code.Algebra.Structures.d1542
                                (MAlonzo.Code.Algebra.Structures.d1728
                                   (MAlonzo.Code.Algebra.d720 v0)))))
                       v2))
                 (let v8
                        = let v8
                                = coe
                                    MAlonzo.Code.Algebra.C333 (coe MAlonzo.Code.Algebra.d712 v0)
                                    (coe MAlonzo.Code.Algebra.d714 v0)
                                    (coe MAlonzo.Code.Algebra.d716 v0)
                                    (coe MAlonzo.Code.Algebra.d718 v0)
                                    (coe
                                       MAlonzo.Code.Algebra.Structures.d1728
                                       (coe MAlonzo.Code.Algebra.d720 v0)) in
                          let v9
                                = coe
                                    MAlonzo.Code.Algebra.C97 (coe MAlonzo.Code.Algebra.d616 v8)
                                    (coe MAlonzo.Code.Algebra.d620 v8)
                                    (coe
                                       MAlonzo.Code.Algebra.Structures.d1542
                                       (coe MAlonzo.Code.Algebra.d624 v8)) in
                          coe
                            MAlonzo.Code.Relation.Binary.C143
                            (coe
                               MAlonzo.Code.Algebra.Structures.d140
                               (coe
                                  MAlonzo.Code.Algebra.Structures.d294
                                  (coe
                                     MAlonzo.Code.Algebra.d100
                                     (coe MAlonzo.Code.Algebra.du186 v9)))) in
                  MAlonzo.Code.Relation.Binary.PreorderReasoning.du72
                    (MAlonzo.Code.Relation.Binary.du150 v8)
                    (MAlonzo.Code.Algebra.d712
                       v0
                       (MAlonzo.Code.Algebra.d712
                          v0 v3 (MAlonzo.Code.Algebra.d712 v0 v2 v4))
                       v2)
                    (MAlonzo.Code.Algebra.d712
                       v0
                       (MAlonzo.Code.Algebra.d712
                          v0 v3 (MAlonzo.Code.Algebra.d712 v0 v4 v2))
                       v2)
                    (MAlonzo.Code.Algebra.d712 v0 v3 v2)
                    (MAlonzo.Code.Algebra.Structures.d144
                       (MAlonzo.Code.Algebra.Structures.d454
                          (MAlonzo.Code.Algebra.Structures.d1542
                             (MAlonzo.Code.Algebra.Structures.d1728
                                (MAlonzo.Code.Algebra.d720 v0))))
                       (MAlonzo.Code.Algebra.d712
                          v0 v3 (MAlonzo.Code.Algebra.d712 v0 v2 v4))
                       (MAlonzo.Code.Algebra.d712
                          v0 v3 (MAlonzo.Code.Algebra.d712 v0 v4 v2))
                       v2 v2
                       (MAlonzo.Code.Algebra.Structures.d144
                          (MAlonzo.Code.Algebra.Structures.d454
                             (MAlonzo.Code.Algebra.Structures.d1542
                                (MAlonzo.Code.Algebra.Structures.d1728
                                   (MAlonzo.Code.Algebra.d720 v0))))
                          v3 v3 (MAlonzo.Code.Algebra.d712 v0 v2 v4)
                          (MAlonzo.Code.Algebra.d712 v0 v4 v2)
                          (MAlonzo.Code.Relation.Binary.Core.d516
                             (MAlonzo.Code.Algebra.Structures.d140
                                (MAlonzo.Code.Algebra.Structures.d454
                                   (MAlonzo.Code.Algebra.Structures.d1542
                                      (MAlonzo.Code.Algebra.Structures.d1728
                                         (MAlonzo.Code.Algebra.d720 v0)))))
                             v3)
                          (MAlonzo.Code.Algebra.Structures.d458
                             (MAlonzo.Code.Algebra.Structures.d1542
                                (MAlonzo.Code.Algebra.Structures.d1728
                                   (MAlonzo.Code.Algebra.d720 v0)))
                             v2 v4))
                       (MAlonzo.Code.Relation.Binary.Core.d516
                          (MAlonzo.Code.Algebra.Structures.d140
                             (MAlonzo.Code.Algebra.Structures.d454
                                (MAlonzo.Code.Algebra.Structures.d1542
                                   (MAlonzo.Code.Algebra.Structures.d1728
                                      (MAlonzo.Code.Algebra.d720 v0)))))
                          v2))
                    (let v9
                           = let v9
                                   = coe
                                       MAlonzo.Code.Algebra.C333 (coe MAlonzo.Code.Algebra.d712 v0)
                                       (coe MAlonzo.Code.Algebra.d714 v0)
                                       (coe MAlonzo.Code.Algebra.d716 v0)
                                       (coe MAlonzo.Code.Algebra.d718 v0)
                                       (coe
                                          MAlonzo.Code.Algebra.Structures.d1728
                                          (coe MAlonzo.Code.Algebra.d720 v0)) in
                             let v10
                                   = coe
                                       MAlonzo.Code.Algebra.C97 (coe MAlonzo.Code.Algebra.d616 v9)
                                       (coe MAlonzo.Code.Algebra.d620 v9)
                                       (coe
                                          MAlonzo.Code.Algebra.Structures.d1542
                                          (coe MAlonzo.Code.Algebra.d624 v9)) in
                             coe
                               MAlonzo.Code.Relation.Binary.C143
                               (coe
                                  MAlonzo.Code.Algebra.Structures.d140
                                  (coe
                                     MAlonzo.Code.Algebra.Structures.d294
                                     (coe
                                        MAlonzo.Code.Algebra.d100
                                        (coe MAlonzo.Code.Algebra.du186 v10)))) in
                     MAlonzo.Code.Relation.Binary.PreorderReasoning.du72
                       (MAlonzo.Code.Relation.Binary.du150 v9)
                       (MAlonzo.Code.Algebra.d712
                          v0
                          (MAlonzo.Code.Algebra.d712
                             v0 v3 (MAlonzo.Code.Algebra.d712 v0 v4 v2))
                          v2)
                       (MAlonzo.Code.Algebra.d712
                          v0
                          (MAlonzo.Code.Algebra.d712
                             v0 (MAlonzo.Code.Algebra.d712 v0 v3 v4) v2)
                          v2)
                       (MAlonzo.Code.Algebra.d712 v0 v3 v2)
                       (MAlonzo.Code.Algebra.Structures.d144
                          (MAlonzo.Code.Algebra.Structures.d454
                             (MAlonzo.Code.Algebra.Structures.d1542
                                (MAlonzo.Code.Algebra.Structures.d1728
                                   (MAlonzo.Code.Algebra.d720 v0))))
                          (MAlonzo.Code.Algebra.d712
                             v0 v3 (MAlonzo.Code.Algebra.d712 v0 v4 v2))
                          (MAlonzo.Code.Algebra.d712
                             v0 (MAlonzo.Code.Algebra.d712 v0 v3 v4) v2)
                          v2 v2
                          (MAlonzo.Code.Relation.Binary.Core.d518
                             (MAlonzo.Code.Algebra.Structures.d140
                                (MAlonzo.Code.Algebra.Structures.d454
                                   (MAlonzo.Code.Algebra.Structures.d1542
                                      (MAlonzo.Code.Algebra.Structures.d1728
                                         (MAlonzo.Code.Algebra.d720 v0)))))
                             (MAlonzo.Code.Algebra.d712
                                v0 (MAlonzo.Code.Algebra.d712 v0 v3 v4) v2)
                             (MAlonzo.Code.Algebra.d712
                                v0 v3 (MAlonzo.Code.Algebra.d712 v0 v4 v2))
                             (MAlonzo.Code.Algebra.Structures.d142
                                (MAlonzo.Code.Algebra.Structures.d454
                                   (MAlonzo.Code.Algebra.Structures.d1542
                                      (MAlonzo.Code.Algebra.Structures.d1728
                                         (MAlonzo.Code.Algebra.d720 v0))))
                                v3 v4 v2))
                          (MAlonzo.Code.Relation.Binary.Core.d516
                             (MAlonzo.Code.Algebra.Structures.d140
                                (MAlonzo.Code.Algebra.Structures.d454
                                   (MAlonzo.Code.Algebra.Structures.d1542
                                      (MAlonzo.Code.Algebra.Structures.d1728
                                         (MAlonzo.Code.Algebra.d720 v0)))))
                             v2))
                       (let v10
                              = let v10
                                      = coe
                                          MAlonzo.Code.Algebra.C333
                                          (coe MAlonzo.Code.Algebra.d712 v0)
                                          (coe MAlonzo.Code.Algebra.d714 v0)
                                          (coe MAlonzo.Code.Algebra.d716 v0)
                                          (coe MAlonzo.Code.Algebra.d718 v0)
                                          (coe
                                             MAlonzo.Code.Algebra.Structures.d1728
                                             (coe MAlonzo.Code.Algebra.d720 v0)) in
                                let v11
                                      = coe
                                          MAlonzo.Code.Algebra.C97
                                          (coe MAlonzo.Code.Algebra.d616 v10)
                                          (coe MAlonzo.Code.Algebra.d620 v10)
                                          (coe
                                             MAlonzo.Code.Algebra.Structures.d1542
                                             (coe MAlonzo.Code.Algebra.d624 v10)) in
                                coe
                                  MAlonzo.Code.Relation.Binary.C143
                                  (coe
                                     MAlonzo.Code.Algebra.Structures.d140
                                     (coe
                                        MAlonzo.Code.Algebra.Structures.d294
                                        (coe
                                           MAlonzo.Code.Algebra.d100
                                           (coe MAlonzo.Code.Algebra.du186 v11)))) in
                        MAlonzo.Code.Relation.Binary.PreorderReasoning.du72
                          (MAlonzo.Code.Relation.Binary.du150 v10)
                          (MAlonzo.Code.Algebra.d712
                             v0
                             (MAlonzo.Code.Algebra.d712
                                v0 (MAlonzo.Code.Algebra.d712 v0 v3 v4) v2)
                             v2)
                          (MAlonzo.Code.Algebra.d712
                             v0 (MAlonzo.Code.Algebra.d712 v0 v3 v4)
                             (MAlonzo.Code.Algebra.d712 v0 v2 v2))
                          (MAlonzo.Code.Algebra.d712 v0 v3 v2)
                          (MAlonzo.Code.Algebra.Structures.d142
                             (MAlonzo.Code.Algebra.Structures.d454
                                (MAlonzo.Code.Algebra.Structures.d1542
                                   (MAlonzo.Code.Algebra.Structures.d1728
                                      (MAlonzo.Code.Algebra.d720 v0))))
                             (MAlonzo.Code.Algebra.d712 v0 v3 v4) v2 v2)
                          (let v11
                                 = let v11
                                         = coe
                                             MAlonzo.Code.Algebra.C333
                                             (coe MAlonzo.Code.Algebra.d712 v0)
                                             (coe MAlonzo.Code.Algebra.d714 v0)
                                             (coe MAlonzo.Code.Algebra.d716 v0)
                                             (coe MAlonzo.Code.Algebra.d718 v0)
                                             (coe
                                                MAlonzo.Code.Algebra.Structures.d1728
                                                (coe MAlonzo.Code.Algebra.d720 v0)) in
                                   let v12
                                         = coe
                                             MAlonzo.Code.Algebra.C97
                                             (coe MAlonzo.Code.Algebra.d616 v11)
                                             (coe MAlonzo.Code.Algebra.d620 v11)
                                             (coe
                                                MAlonzo.Code.Algebra.Structures.d1542
                                                (coe MAlonzo.Code.Algebra.d624 v11)) in
                                   coe
                                     MAlonzo.Code.Relation.Binary.C143
                                     (coe
                                        MAlonzo.Code.Algebra.Structures.d140
                                        (coe
                                           MAlonzo.Code.Algebra.Structures.d294
                                           (coe
                                              MAlonzo.Code.Algebra.d100
                                              (coe MAlonzo.Code.Algebra.du186 v12)))) in
                           MAlonzo.Code.Relation.Binary.PreorderReasoning.du72
                             (MAlonzo.Code.Relation.Binary.du150 v11)
                             (MAlonzo.Code.Algebra.d712
                                v0 (MAlonzo.Code.Algebra.d712 v0 v3 v4)
                                (MAlonzo.Code.Algebra.d712 v0 v2 v2))
                             (MAlonzo.Code.Algebra.d712 v0 v3 v2)
                             (MAlonzo.Code.Algebra.d712 v0 v3 v2)
                             (MAlonzo.Code.Algebra.Structures.d144
                                (MAlonzo.Code.Algebra.Structures.d454
                                   (MAlonzo.Code.Algebra.Structures.d1542
                                      (MAlonzo.Code.Algebra.Structures.d1728
                                         (MAlonzo.Code.Algebra.d720 v0))))
                                (MAlonzo.Code.Algebra.d712 v0 v3 v4) v3
                                (MAlonzo.Code.Algebra.d712 v0 v2 v2) v2 v5 (v1 v2))
                             (let v12
                                    = let v12
                                            = coe
                                                MAlonzo.Code.Algebra.C333
                                                (coe MAlonzo.Code.Algebra.d712 v0)
                                                (coe MAlonzo.Code.Algebra.d714 v0)
                                                (coe MAlonzo.Code.Algebra.d716 v0)
                                                (coe MAlonzo.Code.Algebra.d718 v0)
                                                (coe
                                                   MAlonzo.Code.Algebra.Structures.d1728
                                                   (coe MAlonzo.Code.Algebra.d720 v0)) in
                                      let v13
                                            = coe
                                                MAlonzo.Code.Algebra.C97
                                                (coe MAlonzo.Code.Algebra.d616 v12)
                                                (coe MAlonzo.Code.Algebra.d620 v12)
                                                (coe
                                                   MAlonzo.Code.Algebra.Structures.d1542
                                                   (coe MAlonzo.Code.Algebra.d624 v12)) in
                                      coe
                                        MAlonzo.Code.Relation.Binary.C143
                                        (coe
                                           MAlonzo.Code.Algebra.Structures.d140
                                           (coe
                                              MAlonzo.Code.Algebra.Structures.d294
                                              (coe
                                                 MAlonzo.Code.Algebra.d100
                                                 (coe MAlonzo.Code.Algebra.du186 v13)))) in
                              let v13 = coe MAlonzo.Code.Algebra.d712 v0 v3 v2 in
                              MAlonzo.Code.Relation.Binary.PreorderReasoning.C56
                                (MAlonzo.Code.Relation.Binary.d38
                                   (MAlonzo.Code.Relation.Binary.d92
                                      (MAlonzo.Code.Relation.Binary.du150 v12))
                                   v13 v13
                                   (MAlonzo.Code.Relation.Binary.Core.d516
                                      (MAlonzo.Code.Relation.Binary.d36
                                         (MAlonzo.Code.Relation.Binary.d92
                                            (MAlonzo.Code.Relation.Binary.du150 v12)))
                                      v13))))))))))
      (\ v2 v3 v4 v5 v6 v7 ->
         coe
           MAlonzo.Code.Relation.Binary.PreorderReasoning.d62
           (let v8
                  = let v8
                          = coe
                              MAlonzo.Code.Algebra.C333 (coe MAlonzo.Code.Algebra.d712 v0)
                              (coe MAlonzo.Code.Algebra.d714 v0)
                              (coe MAlonzo.Code.Algebra.d716 v0)
                              (coe MAlonzo.Code.Algebra.d718 v0)
                              (coe
                                 MAlonzo.Code.Algebra.Structures.d1728
                                 (coe MAlonzo.Code.Algebra.d720 v0)) in
                    let v9
                          = coe
                              MAlonzo.Code.Algebra.C97 (coe MAlonzo.Code.Algebra.d616 v8)
                              (coe MAlonzo.Code.Algebra.d620 v8)
                              (coe
                                 MAlonzo.Code.Algebra.Structures.d1542
                                 (coe MAlonzo.Code.Algebra.d624 v8)) in
                    coe
                      MAlonzo.Code.Relation.Binary.C143
                      (coe
                         MAlonzo.Code.Algebra.Structures.d140
                         (coe
                            MAlonzo.Code.Algebra.Structures.d294
                            (coe
                               MAlonzo.Code.Algebra.d100 (coe MAlonzo.Code.Algebra.du186 v9)))) in
            MAlonzo.Code.Relation.Binary.PreorderReasoning.du72
              (MAlonzo.Code.Relation.Binary.du150 v8)
              (MAlonzo.Code.Algebra.d712
                 v0 (MAlonzo.Code.Algebra.d714 v0 v2 v4)
                 (MAlonzo.Code.Algebra.d714 v0 v3 v5))
              (MAlonzo.Code.Algebra.d712
                 v0
                 (MAlonzo.Code.Algebra.d714
                    v0 (MAlonzo.Code.Algebra.d712 v0 v2 v3) v4)
                 (MAlonzo.Code.Algebra.d714 v0 v3 v5))
              (MAlonzo.Code.Algebra.d714 v0 v2 v4)
              (MAlonzo.Code.Algebra.Structures.d144
                 (MAlonzo.Code.Algebra.Structures.d454
                    (MAlonzo.Code.Algebra.Structures.d1542
                       (MAlonzo.Code.Algebra.Structures.d1728
                          (MAlonzo.Code.Algebra.d720 v0))))
                 (MAlonzo.Code.Algebra.d714 v0 v2 v4)
                 (MAlonzo.Code.Algebra.d714
                    v0 (MAlonzo.Code.Algebra.d712 v0 v2 v3) v4)
                 (MAlonzo.Code.Algebra.d714 v0 v3 v5)
                 (MAlonzo.Code.Algebra.d714 v0 v3 v5)
                 (MAlonzo.Code.Algebra.Structures.d144
                    (MAlonzo.Code.Algebra.Structures.d294
                       (MAlonzo.Code.Algebra.Structures.d1544
                          (MAlonzo.Code.Algebra.Structures.d1728
                             (MAlonzo.Code.Algebra.d720 v0))))
                    v2 (MAlonzo.Code.Algebra.d712 v0 v2 v3) v4 v4
                    (MAlonzo.Code.Relation.Binary.Core.d518
                       (MAlonzo.Code.Algebra.Structures.d140
                          (MAlonzo.Code.Algebra.Structures.d454
                             (MAlonzo.Code.Algebra.Structures.d1542
                                (MAlonzo.Code.Algebra.Structures.d1728
                                   (MAlonzo.Code.Algebra.d720 v0)))))
                       (MAlonzo.Code.Algebra.d712 v0 v2 v3) v2 v6)
                    (MAlonzo.Code.Relation.Binary.Core.d516
                       (MAlonzo.Code.Algebra.Structures.d140
                          (MAlonzo.Code.Algebra.Structures.d454
                             (MAlonzo.Code.Algebra.Structures.d1542
                                (MAlonzo.Code.Algebra.Structures.d1728
                                   (MAlonzo.Code.Algebra.d720 v0)))))
                       v4))
                 (MAlonzo.Code.Relation.Binary.Core.d516
                    (MAlonzo.Code.Algebra.Structures.d140
                       (MAlonzo.Code.Algebra.Structures.d454
                          (MAlonzo.Code.Algebra.Structures.d1542
                             (MAlonzo.Code.Algebra.Structures.d1728
                                (MAlonzo.Code.Algebra.d720 v0)))))
                    (MAlonzo.Code.Algebra.d714 v0 v3 v5)))
              (let v9
                     = let v9
                             = coe
                                 MAlonzo.Code.Algebra.C333 (coe MAlonzo.Code.Algebra.d712 v0)
                                 (coe MAlonzo.Code.Algebra.d714 v0)
                                 (coe MAlonzo.Code.Algebra.d716 v0)
                                 (coe MAlonzo.Code.Algebra.d718 v0)
                                 (coe
                                    MAlonzo.Code.Algebra.Structures.d1728
                                    (coe MAlonzo.Code.Algebra.d720 v0)) in
                       let v10
                             = coe
                                 MAlonzo.Code.Algebra.C97 (coe MAlonzo.Code.Algebra.d616 v9)
                                 (coe MAlonzo.Code.Algebra.d620 v9)
                                 (coe
                                    MAlonzo.Code.Algebra.Structures.d1542
                                    (coe MAlonzo.Code.Algebra.d624 v9)) in
                       coe
                         MAlonzo.Code.Relation.Binary.C143
                         (coe
                            MAlonzo.Code.Algebra.Structures.d140
                            (coe
                               MAlonzo.Code.Algebra.Structures.d294
                               (coe
                                  MAlonzo.Code.Algebra.d100
                                  (coe MAlonzo.Code.Algebra.du186 v10)))) in
               MAlonzo.Code.Relation.Binary.PreorderReasoning.du72
                 (MAlonzo.Code.Relation.Binary.du150 v9)
                 (MAlonzo.Code.Algebra.d712
                    v0
                    (MAlonzo.Code.Algebra.d714
                       v0 (MAlonzo.Code.Algebra.d712 v0 v2 v3) v4)
                    (MAlonzo.Code.Algebra.d714 v0 v3 v5))
                 (MAlonzo.Code.Algebra.d712
                    v0
                    (MAlonzo.Code.Algebra.d712
                       v0 (MAlonzo.Code.Algebra.d714 v0 v2 v4)
                       (MAlonzo.Code.Algebra.d714 v0 v3 v4))
                    (MAlonzo.Code.Algebra.d714 v0 v3 v5))
                 (MAlonzo.Code.Algebra.d714 v0 v2 v4)
                 (MAlonzo.Code.Algebra.Structures.d144
                    (MAlonzo.Code.Algebra.Structures.d454
                       (MAlonzo.Code.Algebra.Structures.d1542
                          (MAlonzo.Code.Algebra.Structures.d1728
                             (MAlonzo.Code.Algebra.d720 v0))))
                    (MAlonzo.Code.Algebra.d714
                       v0 (MAlonzo.Code.Algebra.d712 v0 v2 v3) v4)
                    (MAlonzo.Code.Algebra.d712
                       v0 (MAlonzo.Code.Algebra.d714 v0 v2 v4)
                       (MAlonzo.Code.Algebra.d714 v0 v3 v4))
                    (MAlonzo.Code.Algebra.d714 v0 v3 v5)
                    (MAlonzo.Code.Algebra.d714 v0 v3 v5)
                    (MAlonzo.Code.Data.Product.d28
                       (MAlonzo.Code.Algebra.Structures.d1546
                          (MAlonzo.Code.Algebra.Structures.d1728
                             (MAlonzo.Code.Algebra.d720 v0)))
                       v4 v2 v3)
                    (MAlonzo.Code.Relation.Binary.Core.d516
                       (MAlonzo.Code.Algebra.Structures.d140
                          (MAlonzo.Code.Algebra.Structures.d454
                             (MAlonzo.Code.Algebra.Structures.d1542
                                (MAlonzo.Code.Algebra.Structures.d1728
                                   (MAlonzo.Code.Algebra.d720 v0)))))
                       (MAlonzo.Code.Algebra.d714 v0 v3 v5)))
                 (let v10
                        = let v10
                                = coe
                                    MAlonzo.Code.Algebra.C333 (coe MAlonzo.Code.Algebra.d712 v0)
                                    (coe MAlonzo.Code.Algebra.d714 v0)
                                    (coe MAlonzo.Code.Algebra.d716 v0)
                                    (coe MAlonzo.Code.Algebra.d718 v0)
                                    (coe
                                       MAlonzo.Code.Algebra.Structures.d1728
                                       (coe MAlonzo.Code.Algebra.d720 v0)) in
                          let v11
                                = coe
                                    MAlonzo.Code.Algebra.C97 (coe MAlonzo.Code.Algebra.d616 v10)
                                    (coe MAlonzo.Code.Algebra.d620 v10)
                                    (coe
                                       MAlonzo.Code.Algebra.Structures.d1542
                                       (coe MAlonzo.Code.Algebra.d624 v10)) in
                          coe
                            MAlonzo.Code.Relation.Binary.C143
                            (coe
                               MAlonzo.Code.Algebra.Structures.d140
                               (coe
                                  MAlonzo.Code.Algebra.Structures.d294
                                  (coe
                                     MAlonzo.Code.Algebra.d100
                                     (coe MAlonzo.Code.Algebra.du186 v11)))) in
                  MAlonzo.Code.Relation.Binary.PreorderReasoning.du72
                    (MAlonzo.Code.Relation.Binary.du150 v10)
                    (MAlonzo.Code.Algebra.d712
                       v0
                       (MAlonzo.Code.Algebra.d712
                          v0 (MAlonzo.Code.Algebra.d714 v0 v2 v4)
                          (MAlonzo.Code.Algebra.d714 v0 v3 v4))
                       (MAlonzo.Code.Algebra.d714 v0 v3 v5))
                    (MAlonzo.Code.Algebra.d712
                       v0 (MAlonzo.Code.Algebra.d714 v0 v2 v4)
                       (MAlonzo.Code.Algebra.d712
                          v0 (MAlonzo.Code.Algebra.d714 v0 v3 v4)
                          (MAlonzo.Code.Algebra.d714 v0 v3 v5)))
                    (MAlonzo.Code.Algebra.d714 v0 v2 v4)
                    (MAlonzo.Code.Algebra.Structures.d142
                       (MAlonzo.Code.Algebra.Structures.d454
                          (MAlonzo.Code.Algebra.Structures.d1542
                             (MAlonzo.Code.Algebra.Structures.d1728
                                (MAlonzo.Code.Algebra.d720 v0))))
                       (MAlonzo.Code.Algebra.d714 v0 v2 v4)
                       (MAlonzo.Code.Algebra.d714 v0 v3 v4)
                       (MAlonzo.Code.Algebra.d714 v0 v3 v5))
                    (let v11
                           = let v11
                                   = coe
                                       MAlonzo.Code.Algebra.C333 (coe MAlonzo.Code.Algebra.d712 v0)
                                       (coe MAlonzo.Code.Algebra.d714 v0)
                                       (coe MAlonzo.Code.Algebra.d716 v0)
                                       (coe MAlonzo.Code.Algebra.d718 v0)
                                       (coe
                                          MAlonzo.Code.Algebra.Structures.d1728
                                          (coe MAlonzo.Code.Algebra.d720 v0)) in
                             let v12
                                   = coe
                                       MAlonzo.Code.Algebra.C97 (coe MAlonzo.Code.Algebra.d616 v11)
                                       (coe MAlonzo.Code.Algebra.d620 v11)
                                       (coe
                                          MAlonzo.Code.Algebra.Structures.d1542
                                          (coe MAlonzo.Code.Algebra.d624 v11)) in
                             coe
                               MAlonzo.Code.Relation.Binary.C143
                               (coe
                                  MAlonzo.Code.Algebra.Structures.d140
                                  (coe
                                     MAlonzo.Code.Algebra.Structures.d294
                                     (coe
                                        MAlonzo.Code.Algebra.d100
                                        (coe MAlonzo.Code.Algebra.du186 v12)))) in
                     MAlonzo.Code.Relation.Binary.PreorderReasoning.du72
                       (MAlonzo.Code.Relation.Binary.du150 v11)
                       (MAlonzo.Code.Algebra.d712
                          v0 (MAlonzo.Code.Algebra.d714 v0 v2 v4)
                          (MAlonzo.Code.Algebra.d712
                             v0 (MAlonzo.Code.Algebra.d714 v0 v3 v4)
                             (MAlonzo.Code.Algebra.d714 v0 v3 v5)))
                       (MAlonzo.Code.Algebra.d712
                          v0 (MAlonzo.Code.Algebra.d714 v0 v2 v4)
                          (MAlonzo.Code.Algebra.d714
                             v0 v3 (MAlonzo.Code.Algebra.d712 v0 v4 v5)))
                       (MAlonzo.Code.Algebra.d714 v0 v2 v4)
                       (MAlonzo.Code.Algebra.Structures.d144
                          (MAlonzo.Code.Algebra.Structures.d454
                             (MAlonzo.Code.Algebra.Structures.d1542
                                (MAlonzo.Code.Algebra.Structures.d1728
                                   (MAlonzo.Code.Algebra.d720 v0))))
                          (MAlonzo.Code.Algebra.d714 v0 v2 v4)
                          (MAlonzo.Code.Algebra.d714 v0 v2 v4)
                          (MAlonzo.Code.Algebra.d712
                             v0 (MAlonzo.Code.Algebra.d714 v0 v3 v4)
                             (MAlonzo.Code.Algebra.d714 v0 v3 v5))
                          (MAlonzo.Code.Algebra.d714
                             v0 v3 (MAlonzo.Code.Algebra.d712 v0 v4 v5))
                          (MAlonzo.Code.Relation.Binary.Core.d516
                             (MAlonzo.Code.Algebra.Structures.d140
                                (MAlonzo.Code.Algebra.Structures.d454
                                   (MAlonzo.Code.Algebra.Structures.d1542
                                      (MAlonzo.Code.Algebra.Structures.d1728
                                         (MAlonzo.Code.Algebra.d720 v0)))))
                             (MAlonzo.Code.Algebra.d714 v0 v2 v4))
                          (MAlonzo.Code.Relation.Binary.Core.d518
                             (MAlonzo.Code.Algebra.Structures.d140
                                (MAlonzo.Code.Algebra.Structures.d454
                                   (MAlonzo.Code.Algebra.Structures.d1542
                                      (MAlonzo.Code.Algebra.Structures.d1728
                                         (MAlonzo.Code.Algebra.d720 v0)))))
                             (MAlonzo.Code.Algebra.d714
                                v0 v3 (MAlonzo.Code.Algebra.d712 v0 v4 v5))
                             (MAlonzo.Code.Algebra.d712
                                v0 (MAlonzo.Code.Algebra.d714 v0 v3 v4)
                                (MAlonzo.Code.Algebra.d714 v0 v3 v5))
                             (MAlonzo.Code.Data.Product.d26
                                (MAlonzo.Code.Algebra.Structures.d1546
                                   (MAlonzo.Code.Algebra.Structures.d1728
                                      (MAlonzo.Code.Algebra.d720 v0)))
                                v3 v4 v5)))
                       (let v12
                              = let v12
                                      = coe
                                          MAlonzo.Code.Algebra.C333
                                          (coe MAlonzo.Code.Algebra.d712 v0)
                                          (coe MAlonzo.Code.Algebra.d714 v0)
                                          (coe MAlonzo.Code.Algebra.d716 v0)
                                          (coe MAlonzo.Code.Algebra.d718 v0)
                                          (coe
                                             MAlonzo.Code.Algebra.Structures.d1728
                                             (coe MAlonzo.Code.Algebra.d720 v0)) in
                                let v13
                                      = coe
                                          MAlonzo.Code.Algebra.C97
                                          (coe MAlonzo.Code.Algebra.d616 v12)
                                          (coe MAlonzo.Code.Algebra.d620 v12)
                                          (coe
                                             MAlonzo.Code.Algebra.Structures.d1542
                                             (coe MAlonzo.Code.Algebra.d624 v12)) in
                                coe
                                  MAlonzo.Code.Relation.Binary.C143
                                  (coe
                                     MAlonzo.Code.Algebra.Structures.d140
                                     (coe
                                        MAlonzo.Code.Algebra.Structures.d294
                                        (coe
                                           MAlonzo.Code.Algebra.d100
                                           (coe MAlonzo.Code.Algebra.du186 v13)))) in
                        MAlonzo.Code.Relation.Binary.PreorderReasoning.du72
                          (MAlonzo.Code.Relation.Binary.du150 v12)
                          (MAlonzo.Code.Algebra.d712
                             v0 (MAlonzo.Code.Algebra.d714 v0 v2 v4)
                             (MAlonzo.Code.Algebra.d714
                                v0 v3 (MAlonzo.Code.Algebra.d712 v0 v4 v5)))
                          (MAlonzo.Code.Algebra.d712
                             v0 (MAlonzo.Code.Algebra.d714 v0 v2 v4)
                             (MAlonzo.Code.Algebra.d714 v0 v3 v4))
                          (MAlonzo.Code.Algebra.d714 v0 v2 v4)
                          (MAlonzo.Code.Algebra.Structures.d144
                             (MAlonzo.Code.Algebra.Structures.d454
                                (MAlonzo.Code.Algebra.Structures.d1542
                                   (MAlonzo.Code.Algebra.Structures.d1728
                                      (MAlonzo.Code.Algebra.d720 v0))))
                             (MAlonzo.Code.Algebra.d714 v0 v2 v4)
                             (MAlonzo.Code.Algebra.d714 v0 v2 v4)
                             (MAlonzo.Code.Algebra.d714
                                v0 v3 (MAlonzo.Code.Algebra.d712 v0 v4 v5))
                             (MAlonzo.Code.Algebra.d714 v0 v3 v4)
                             (MAlonzo.Code.Relation.Binary.Core.d516
                                (MAlonzo.Code.Algebra.Structures.d140
                                   (MAlonzo.Code.Algebra.Structures.d454
                                      (MAlonzo.Code.Algebra.Structures.d1542
                                         (MAlonzo.Code.Algebra.Structures.d1728
                                            (MAlonzo.Code.Algebra.d720 v0)))))
                                (MAlonzo.Code.Algebra.d714 v0 v2 v4))
                             (MAlonzo.Code.Algebra.Structures.d144
                                (MAlonzo.Code.Algebra.Structures.d294
                                   (MAlonzo.Code.Algebra.Structures.d1544
                                      (MAlonzo.Code.Algebra.Structures.d1728
                                         (MAlonzo.Code.Algebra.d720 v0))))
                                v3 v3 (MAlonzo.Code.Algebra.d712 v0 v4 v5) v4
                                (MAlonzo.Code.Relation.Binary.Core.d516
                                   (MAlonzo.Code.Algebra.Structures.d140
                                      (MAlonzo.Code.Algebra.Structures.d454
                                         (MAlonzo.Code.Algebra.Structures.d1542
                                            (MAlonzo.Code.Algebra.Structures.d1728
                                               (MAlonzo.Code.Algebra.d720 v0)))))
                                   v3)
                                v7))
                          (let v13
                                 = let v13
                                         = coe
                                             MAlonzo.Code.Algebra.C333
                                             (coe MAlonzo.Code.Algebra.d712 v0)
                                             (coe MAlonzo.Code.Algebra.d714 v0)
                                             (coe MAlonzo.Code.Algebra.d716 v0)
                                             (coe MAlonzo.Code.Algebra.d718 v0)
                                             (coe
                                                MAlonzo.Code.Algebra.Structures.d1728
                                                (coe MAlonzo.Code.Algebra.d720 v0)) in
                                   let v14
                                         = coe
                                             MAlonzo.Code.Algebra.C97
                                             (coe MAlonzo.Code.Algebra.d616 v13)
                                             (coe MAlonzo.Code.Algebra.d620 v13)
                                             (coe
                                                MAlonzo.Code.Algebra.Structures.d1542
                                                (coe MAlonzo.Code.Algebra.d624 v13)) in
                                   coe
                                     MAlonzo.Code.Relation.Binary.C143
                                     (coe
                                        MAlonzo.Code.Algebra.Structures.d140
                                        (coe
                                           MAlonzo.Code.Algebra.Structures.d294
                                           (coe
                                              MAlonzo.Code.Algebra.d100
                                              (coe MAlonzo.Code.Algebra.du186 v14)))) in
                           MAlonzo.Code.Relation.Binary.PreorderReasoning.du72
                             (MAlonzo.Code.Relation.Binary.du150 v13)
                             (MAlonzo.Code.Algebra.d712
                                v0 (MAlonzo.Code.Algebra.d714 v0 v2 v4)
                                (MAlonzo.Code.Algebra.d714 v0 v3 v4))
                             (MAlonzo.Code.Algebra.d714
                                v0 (MAlonzo.Code.Algebra.d712 v0 v2 v3) v4)
                             (MAlonzo.Code.Algebra.d714 v0 v2 v4)
                             (MAlonzo.Code.Relation.Binary.Core.d518
                                (MAlonzo.Code.Algebra.Structures.d140
                                   (MAlonzo.Code.Algebra.Structures.d454
                                      (MAlonzo.Code.Algebra.Structures.d1542
                                         (MAlonzo.Code.Algebra.Structures.d1728
                                            (MAlonzo.Code.Algebra.d720 v0)))))
                                (MAlonzo.Code.Algebra.d714
                                   v0 (MAlonzo.Code.Algebra.d712 v0 v2 v3) v4)
                                (MAlonzo.Code.Algebra.d712
                                   v0 (MAlonzo.Code.Algebra.d714 v0 v2 v4)
                                   (MAlonzo.Code.Algebra.d714 v0 v3 v4))
                                (MAlonzo.Code.Data.Product.d28
                                   (MAlonzo.Code.Algebra.Structures.d1546
                                      (MAlonzo.Code.Algebra.Structures.d1728
                                         (MAlonzo.Code.Algebra.d720 v0)))
                                   v4 v2 v3))
                             (let v14
                                    = let v14
                                            = coe
                                                MAlonzo.Code.Algebra.C333
                                                (coe MAlonzo.Code.Algebra.d712 v0)
                                                (coe MAlonzo.Code.Algebra.d714 v0)
                                                (coe MAlonzo.Code.Algebra.d716 v0)
                                                (coe MAlonzo.Code.Algebra.d718 v0)
                                                (coe
                                                   MAlonzo.Code.Algebra.Structures.d1728
                                                   (coe MAlonzo.Code.Algebra.d720 v0)) in
                                      let v15
                                            = coe
                                                MAlonzo.Code.Algebra.C97
                                                (coe MAlonzo.Code.Algebra.d616 v14)
                                                (coe MAlonzo.Code.Algebra.d620 v14)
                                                (coe
                                                   MAlonzo.Code.Algebra.Structures.d1542
                                                   (coe MAlonzo.Code.Algebra.d624 v14)) in
                                      coe
                                        MAlonzo.Code.Relation.Binary.C143
                                        (coe
                                           MAlonzo.Code.Algebra.Structures.d140
                                           (coe
                                              MAlonzo.Code.Algebra.Structures.d294
                                              (coe
                                                 MAlonzo.Code.Algebra.d100
                                                 (coe MAlonzo.Code.Algebra.du186 v15)))) in
                              MAlonzo.Code.Relation.Binary.PreorderReasoning.du72
                                (MAlonzo.Code.Relation.Binary.du150 v14)
                                (MAlonzo.Code.Algebra.d714
                                   v0 (MAlonzo.Code.Algebra.d712 v0 v2 v3) v4)
                                (MAlonzo.Code.Algebra.d714 v0 v2 v4)
                                (MAlonzo.Code.Algebra.d714 v0 v2 v4)
                                (MAlonzo.Code.Algebra.Structures.d144
                                   (MAlonzo.Code.Algebra.Structures.d294
                                      (MAlonzo.Code.Algebra.Structures.d1544
                                         (MAlonzo.Code.Algebra.Structures.d1728
                                            (MAlonzo.Code.Algebra.d720 v0))))
                                   (MAlonzo.Code.Algebra.d712 v0 v2 v3) v2 v4 v4 v6
                                   (MAlonzo.Code.Relation.Binary.Core.d516
                                      (MAlonzo.Code.Algebra.Structures.d140
                                         (MAlonzo.Code.Algebra.Structures.d454
                                            (MAlonzo.Code.Algebra.Structures.d1542
                                               (MAlonzo.Code.Algebra.Structures.d1728
                                                  (MAlonzo.Code.Algebra.d720 v0)))))
                                      v4))
                                (let v15
                                       = let v15
                                               = coe
                                                   MAlonzo.Code.Algebra.C333
                                                   (coe MAlonzo.Code.Algebra.d712 v0)
                                                   (coe MAlonzo.Code.Algebra.d714 v0)
                                                   (coe MAlonzo.Code.Algebra.d716 v0)
                                                   (coe MAlonzo.Code.Algebra.d718 v0)
                                                   (coe
                                                      MAlonzo.Code.Algebra.Structures.d1728
                                                      (coe MAlonzo.Code.Algebra.d720 v0)) in
                                         let v16
                                               = coe
                                                   MAlonzo.Code.Algebra.C97
                                                   (coe MAlonzo.Code.Algebra.d616 v15)
                                                   (coe MAlonzo.Code.Algebra.d620 v15)
                                                   (coe
                                                      MAlonzo.Code.Algebra.Structures.d1542
                                                      (coe MAlonzo.Code.Algebra.d624 v15)) in
                                         coe
                                           MAlonzo.Code.Relation.Binary.C143
                                           (coe
                                              MAlonzo.Code.Algebra.Structures.d140
                                              (coe
                                                 MAlonzo.Code.Algebra.Structures.d294
                                                 (coe
                                                    MAlonzo.Code.Algebra.d100
                                                    (coe MAlonzo.Code.Algebra.du186 v16)))) in
                                 let v16 = coe MAlonzo.Code.Algebra.d714 v0 v2 v4 in
                                 MAlonzo.Code.Relation.Binary.PreorderReasoning.C56
                                   (MAlonzo.Code.Relation.Binary.d38
                                      (MAlonzo.Code.Relation.Binary.d92
                                         (MAlonzo.Code.Relation.Binary.du150 v15))
                                      v16 v16
                                      (MAlonzo.Code.Relation.Binary.Core.d516
                                         (MAlonzo.Code.Relation.Binary.d36
                                            (MAlonzo.Code.Relation.Binary.d92
                                               (MAlonzo.Code.Relation.Binary.du150 v15)))
                                         v16)))))))))))
name238 = "Semiring.Properties._._._\8718"
d238 v0 v1 v2 v3 = du238 v2
du238 v0
  = let v1
          = let v1
                  = coe
                      MAlonzo.Code.Algebra.C333 (coe MAlonzo.Code.Algebra.d712 v0)
                      (coe MAlonzo.Code.Algebra.d714 v0)
                      (coe MAlonzo.Code.Algebra.d716 v0)
                      (coe MAlonzo.Code.Algebra.d718 v0)
                      (coe
                         MAlonzo.Code.Algebra.Structures.d1728
                         (coe MAlonzo.Code.Algebra.d720 v0)) in
            let v2
                  = coe
                      MAlonzo.Code.Algebra.C97 (coe MAlonzo.Code.Algebra.d616 v1)
                      (coe MAlonzo.Code.Algebra.d620 v1)
                      (coe
                         MAlonzo.Code.Algebra.Structures.d1542
                         (coe MAlonzo.Code.Algebra.d624 v1)) in
            coe
              MAlonzo.Code.Relation.Binary.C143
              (coe
                 MAlonzo.Code.Algebra.Structures.d140
                 (coe
                    MAlonzo.Code.Algebra.Structures.d294
                    (coe
                       MAlonzo.Code.Algebra.d100 (coe MAlonzo.Code.Algebra.du186 v2)))) in
    \ v2 ->
      coe
        MAlonzo.Code.Relation.Binary.PreorderReasoning.C56
        (coe
           MAlonzo.Code.Relation.Binary.d38
           (coe
              MAlonzo.Code.Relation.Binary.d92
              (coe MAlonzo.Code.Relation.Binary.du150 v1))
           v2 v2
           (coe
              MAlonzo.Code.Relation.Binary.Core.d516
              (coe
                 MAlonzo.Code.Relation.Binary.d36
                 (coe
                    MAlonzo.Code.Relation.Binary.d92
                    (coe MAlonzo.Code.Relation.Binary.du150 v1)))
              v2))
name240 = "Semiring.Properties._._._\8764\10216_\10217_"
d240 v0 v1 v2 v3 = du240 v2
du240 v0
  = let v1
          = let v1
                  = coe
                      MAlonzo.Code.Algebra.C333 (coe MAlonzo.Code.Algebra.d712 v0)
                      (coe MAlonzo.Code.Algebra.d714 v0)
                      (coe MAlonzo.Code.Algebra.d716 v0)
                      (coe MAlonzo.Code.Algebra.d718 v0)
                      (coe
                         MAlonzo.Code.Algebra.Structures.d1728
                         (coe MAlonzo.Code.Algebra.d720 v0)) in
            let v2
                  = coe
                      MAlonzo.Code.Algebra.C97 (coe MAlonzo.Code.Algebra.d616 v1)
                      (coe MAlonzo.Code.Algebra.d620 v1)
                      (coe
                         MAlonzo.Code.Algebra.Structures.d1542
                         (coe MAlonzo.Code.Algebra.d624 v1)) in
            coe
              MAlonzo.Code.Relation.Binary.C143
              (coe
                 MAlonzo.Code.Algebra.Structures.d140
                 (coe
                    MAlonzo.Code.Algebra.Structures.d294
                    (coe
                       MAlonzo.Code.Algebra.d100 (coe MAlonzo.Code.Algebra.du186 v2)))) in
    coe
      MAlonzo.Code.Relation.Binary.PreorderReasoning.du72
      (coe MAlonzo.Code.Relation.Binary.du150 v1)
name280 = "Semiring.Properties.negative\8594monotonic\8594\8804\&0"
d280 v0 v1 v2 v3 v4 v5 v6 v7 v8 = du280 v2 v5 v6 v7 v8
du280 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Relation.Binary.PreorderReasoning.d62
      (let v5 = coe du296 v1 in
       MAlonzo.Code.Relation.Binary.PreorderReasoning.du84
         (MAlonzo.Code.Relation.Binary.C125
            (MAlonzo.Code.Relation.Binary.d268
               (MAlonzo.Code.Relation.Binary.d322 v5)))
         v4 (MAlonzo.Code.Algebra.d714 v0 (MAlonzo.Code.Algebra.d718 v0) v4)
         (MAlonzo.Code.Algebra.d716 v0)
         (MAlonzo.Code.Relation.Binary.Core.d518
            (MAlonzo.Code.Algebra.Structures.d140
               (MAlonzo.Code.Algebra.Structures.d454
                  (MAlonzo.Code.Algebra.Structures.d1542
                     (MAlonzo.Code.Algebra.Structures.d1728
                        (MAlonzo.Code.Algebra.d720 v0)))))
            (MAlonzo.Code.Algebra.d714 v0 (MAlonzo.Code.Algebra.d718 v0) v4) v4
            (MAlonzo.Code.Data.Product.d26
               (MAlonzo.Code.Algebra.Structures.d296
                  (MAlonzo.Code.Algebra.Structures.d1544
                     (MAlonzo.Code.Algebra.Structures.d1728
                        (MAlonzo.Code.Algebra.d720 v0))))
               v4))
         (let v6 = coe du296 v1 in
          MAlonzo.Code.Relation.Binary.PreorderReasoning.du72
            (MAlonzo.Code.Relation.Binary.C125
               (MAlonzo.Code.Relation.Binary.d268
                  (MAlonzo.Code.Relation.Binary.d322 v6)))
            (MAlonzo.Code.Algebra.d714 v0 (MAlonzo.Code.Algebra.d718 v0) v4)
            (MAlonzo.Code.Algebra.d714 v0 (MAlonzo.Code.Algebra.d716 v0) v4)
            (MAlonzo.Code.Algebra.d716 v0)
            (du352
               v3 (MAlonzo.Code.Algebra.d718 v0) (MAlonzo.Code.Algebra.d716 v0) v4
               v4 v2
               (MAlonzo.Code.Relation.Binary.d38
                  (MAlonzo.Code.Relation.Binary.d268
                     (MAlonzo.Code.Relation.Binary.d322 (du296 v1)))
                  v4 v4
                  (MAlonzo.Code.Relation.Binary.Core.d516
                     (MAlonzo.Code.Relation.Binary.d36
                        (MAlonzo.Code.Relation.Binary.d268
                           (MAlonzo.Code.Relation.Binary.d322 (du296 v1))))
                     v4)))
            (let v7 = coe du296 v1 in
             MAlonzo.Code.Relation.Binary.PreorderReasoning.du84
               (MAlonzo.Code.Relation.Binary.C125
                  (MAlonzo.Code.Relation.Binary.d268
                     (MAlonzo.Code.Relation.Binary.d322 v7)))
               (MAlonzo.Code.Algebra.d714 v0 (MAlonzo.Code.Algebra.d716 v0) v4)
               (MAlonzo.Code.Algebra.d716 v0) (MAlonzo.Code.Algebra.d716 v0)
               (MAlonzo.Code.Data.Product.d26
                  (MAlonzo.Code.Algebra.Structures.d1730
                     (MAlonzo.Code.Algebra.d720 v0))
                  v4)
               (let v8 = coe MAlonzo.Code.Algebra.d716 v0 in
                MAlonzo.Code.Relation.Binary.PreorderReasoning.C56
                  (MAlonzo.Code.Relation.Binary.d38
                     (MAlonzo.Code.Relation.Binary.d268
                        (MAlonzo.Code.Relation.Binary.d322 (du296 v1)))
                     v8 v8
                     (MAlonzo.Code.Relation.Binary.Core.d516
                        (MAlonzo.Code.Relation.Binary.d36
                           (MAlonzo.Code.Relation.Binary.d268
                              (MAlonzo.Code.Relation.Binary.d322 (du296 v1))))
                        v8))))))
name296 = "Semiring.Properties._.poset"
d296 v0 v1 v2 v3 v4 v5 v6 v7 v8 = du296 v5
du296 v0 = coe MAlonzo.Code.Relation.Binary.C345 v0
name318 = "Semiring.Properties._._.refl"
d318 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 = du318 v5 v9
du318 v0 v1
  = coe
      MAlonzo.Code.Relation.Binary.d38
      (coe
         MAlonzo.Code.Relation.Binary.d268
         (coe MAlonzo.Code.Relation.Binary.d322 (coe du296 v0)))
      v1 v1
      (coe
         MAlonzo.Code.Relation.Binary.Core.d516
         (coe
            MAlonzo.Code.Relation.Binary.d36
            (coe
               MAlonzo.Code.Relation.Binary.d268
               (coe MAlonzo.Code.Relation.Binary.d322 (coe du296 v0))))
         v1)
name336 = "Semiring.Properties._._._\8718"
d336 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 = du336 v5 v9
du336 v0 v1
  = coe
      MAlonzo.Code.Relation.Binary.PreorderReasoning.C56
      (coe
         MAlonzo.Code.Relation.Binary.d38
         (coe
            MAlonzo.Code.Relation.Binary.d268
            (coe MAlonzo.Code.Relation.Binary.d322 (coe du296 v0)))
         v1 v1
         (coe
            MAlonzo.Code.Relation.Binary.Core.d516
            (coe
               MAlonzo.Code.Relation.Binary.d36
               (coe
                  MAlonzo.Code.Relation.Binary.d268
                  (coe MAlonzo.Code.Relation.Binary.d322 (coe du296 v0))))
            v1))
name338 = "Semiring.Properties._._._\8776\10216_\10217_"
d338 v0 v1 v2 v3 v4 v5 v6 v7 v8 = du338 v5
du338 v0
  = let v1 = coe du296 v0 in
    coe
      MAlonzo.Code.Relation.Binary.PreorderReasoning.du84
      (coe
         MAlonzo.Code.Relation.Binary.C125
         (coe
            MAlonzo.Code.Relation.Binary.d268
            (coe MAlonzo.Code.Relation.Binary.d322 v1)))
name342 = "Semiring.Properties._._._\8764\10216_\10217_"
d342 v0 v1 v2 v3 v4 v5 v6 v7 v8 = du342 v5
du342 v0
  = let v1 = coe du296 v0 in
    coe
      MAlonzo.Code.Relation.Binary.PreorderReasoning.du72
      (coe
         MAlonzo.Code.Relation.Binary.C125
         (coe
            MAlonzo.Code.Relation.Binary.d268
            (coe MAlonzo.Code.Relation.Binary.d322 v1)))
name352 = "Semiring.Properties._.*-preserves-\8804"
d352 v0 v1 v2 v3 v4 v5 v6 v7 v8 = du352 v7
du352 v0 = coe MAlonzo.Code.Data.Product.d28 v0
name362 = "Semiring.Properties.\8804\8658\8804K"
d362 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11
  = du362 v2 v5 v6 v7 v8 v9 v10 v11
du362 v0 v1 v2 v3 v4 v5 v6 v7
  = coe
      MAlonzo.Code.Relation.Binary.d270
      (coe MAlonzo.Code.Relation.Binary.d322 (coe du384 v1))
      (coe MAlonzo.Code.Algebra.d712 v0 v5 v6) v5
      (coe
         MAlonzo.Code.Relation.Binary.PreorderReasoning.d62
         (let v8 = coe du384 v1 in
          MAlonzo.Code.Relation.Binary.PreorderReasoning.du72
            (MAlonzo.Code.Relation.Binary.C125
               (MAlonzo.Code.Relation.Binary.d268
                  (MAlonzo.Code.Relation.Binary.d322 v8)))
            (MAlonzo.Code.Algebra.d712 v0 v5 v6)
            (MAlonzo.Code.Algebra.d712 v0 v5 (MAlonzo.Code.Algebra.d716 v0)) v5
            (du448
               v0 v1 v4 v5 v6 (MAlonzo.Code.Algebra.d716 v0)
               (du460 v0 v1 v2 v4 v6))
            (let v9 = coe du384 v1 in
             MAlonzo.Code.Relation.Binary.PreorderReasoning.du84
               (MAlonzo.Code.Relation.Binary.C125
                  (MAlonzo.Code.Relation.Binary.d268
                     (MAlonzo.Code.Relation.Binary.d322 v9)))
               (MAlonzo.Code.Algebra.d712 v0 v5 (MAlonzo.Code.Algebra.d716 v0)) v5
               v5
               (MAlonzo.Code.Data.Product.d28
                  (let v10 = coe MAlonzo.Code.Algebra.d712 v0 in
                   let v11 = coe MAlonzo.Code.Algebra.d716 v0 in
                   let v12 = coe MAlonzo.Code.Algebra.d720 v0 in
                   let v13 = coe MAlonzo.Code.Algebra.Structures.d1728 v12 in
                   MAlonzo.Code.Algebra.Structures.du476
                     v10 v11 (MAlonzo.Code.Algebra.Structures.d1542 v13))
                  v5)
               (MAlonzo.Code.Relation.Binary.PreorderReasoning.C56
                  (MAlonzo.Code.Relation.Binary.d38
                     (MAlonzo.Code.Relation.Binary.d268
                        (MAlonzo.Code.Relation.Binary.d322 (du384 v1)))
                     v5 v5
                     (MAlonzo.Code.Relation.Binary.Core.d516
                        (MAlonzo.Code.Relation.Binary.d36
                           (MAlonzo.Code.Relation.Binary.d268
                              (MAlonzo.Code.Relation.Binary.d322 (du384 v1))))
                        v5))))))
      (coe
         MAlonzo.Code.Relation.Binary.PreorderReasoning.d62
         (let v8 = coe du384 v1 in
          MAlonzo.Code.Relation.Binary.PreorderReasoning.du84
            (MAlonzo.Code.Relation.Binary.C125
               (MAlonzo.Code.Relation.Binary.d268
                  (MAlonzo.Code.Relation.Binary.d322 v8)))
            v5 (MAlonzo.Code.Algebra.d712 v0 v5 v5)
            (MAlonzo.Code.Algebra.d712 v0 v5 v6)
            (MAlonzo.Code.Relation.Binary.Core.d518
               (MAlonzo.Code.Algebra.Structures.d140
                  (MAlonzo.Code.Algebra.Structures.d454
                     (MAlonzo.Code.Algebra.Structures.d1542
                        (MAlonzo.Code.Algebra.Structures.d1728
                           (MAlonzo.Code.Algebra.d720 v0)))))
               (MAlonzo.Code.Algebra.d712 v0 v5 v5) v5 (v3 v5))
            (let v9 = coe du384 v1 in
             MAlonzo.Code.Relation.Binary.PreorderReasoning.du72
               (MAlonzo.Code.Relation.Binary.C125
                  (MAlonzo.Code.Relation.Binary.d268
                     (MAlonzo.Code.Relation.Binary.d322 v9)))
               (MAlonzo.Code.Algebra.d712 v0 v5 v5)
               (MAlonzo.Code.Algebra.d712 v0 v5 v6)
               (MAlonzo.Code.Algebra.d712 v0 v5 v6) (du448 v0 v1 v4 v5 v5 v6 v7)
               (let v10 = coe MAlonzo.Code.Algebra.d712 v0 v5 v6 in
                MAlonzo.Code.Relation.Binary.PreorderReasoning.C56
                  (MAlonzo.Code.Relation.Binary.d38
                     (MAlonzo.Code.Relation.Binary.d268
                        (MAlonzo.Code.Relation.Binary.d322 (du384 v1)))
                     v10 v10
                     (MAlonzo.Code.Relation.Binary.Core.d516
                        (MAlonzo.Code.Relation.Binary.d36
                           (MAlonzo.Code.Relation.Binary.d268
                              (MAlonzo.Code.Relation.Binary.d322 (du384 v1))))
                        v10))))))
name384 = "Semiring.Properties._.poset"
d384 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 = du384 v5
du384 v0 = coe MAlonzo.Code.Relation.Binary.C345 v0
name392 = "Semiring.Properties._._.antisym"
d392 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 = du392 v5
du392 v0
  = coe
      MAlonzo.Code.Relation.Binary.d270
      (coe MAlonzo.Code.Relation.Binary.d322 (coe du384 v0))
name424 = "Semiring.Properties._._._\8718"
d424 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 = du424 v5 v12
du424 v0 v1
  = coe
      MAlonzo.Code.Relation.Binary.PreorderReasoning.C56
      (coe
         MAlonzo.Code.Relation.Binary.d38
         (coe
            MAlonzo.Code.Relation.Binary.d268
            (coe MAlonzo.Code.Relation.Binary.d322 (coe du384 v0)))
         v1 v1
         (coe
            MAlonzo.Code.Relation.Binary.Core.d516
            (coe
               MAlonzo.Code.Relation.Binary.d36
               (coe
                  MAlonzo.Code.Relation.Binary.d268
                  (coe MAlonzo.Code.Relation.Binary.d322 (coe du384 v0))))
            v1))
name426 = "Semiring.Properties._._._\8776\10216_\10217_"
d426 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 = du426 v5
du426 v0
  = let v1 = coe du384 v0 in
    coe
      MAlonzo.Code.Relation.Binary.PreorderReasoning.du84
      (coe
         MAlonzo.Code.Relation.Binary.C125
         (coe
            MAlonzo.Code.Relation.Binary.d268
            (coe MAlonzo.Code.Relation.Binary.d322 v1)))
name430 = "Semiring.Properties._._._\8764\10216_\10217_"
d430 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 = du430 v5
du430 v0
  = let v1 = coe du384 v0 in
    coe
      MAlonzo.Code.Relation.Binary.PreorderReasoning.du72
      (coe
         MAlonzo.Code.Relation.Binary.C125
         (coe
            MAlonzo.Code.Relation.Binary.d268
            (coe MAlonzo.Code.Relation.Binary.d322 v1)))
name440 = "Semiring.Properties._.+-preserves-\8804\737"
d440 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 = du440 v8
du440 v0 = coe MAlonzo.Code.Data.Product.d26 v0
name448 = "Semiring.Properties._.+-preserves-\8804\691"
d448 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15
  = du448 v2 v5 v8 v12 v13 v14 v15
du448 v0 v1 v2 v3 v4 v5 v6
  = coe
      MAlonzo.Code.Relation.Binary.PreorderReasoning.d62
      (let v7 = coe du384 v1 in
       MAlonzo.Code.Relation.Binary.PreorderReasoning.du84
         (MAlonzo.Code.Relation.Binary.C125
            (MAlonzo.Code.Relation.Binary.d268
               (MAlonzo.Code.Relation.Binary.d322 v7)))
         (MAlonzo.Code.Algebra.d712 v0 v3 v4)
         (MAlonzo.Code.Algebra.d712 v0 v4 v3)
         (MAlonzo.Code.Algebra.d712 v0 v3 v5)
         (MAlonzo.Code.Algebra.Structures.d458
            (MAlonzo.Code.Algebra.Structures.d1542
               (MAlonzo.Code.Algebra.Structures.d1728
                  (MAlonzo.Code.Algebra.d720 v0)))
            v3 v4)
         (let v8 = coe du384 v1 in
          MAlonzo.Code.Relation.Binary.PreorderReasoning.du72
            (MAlonzo.Code.Relation.Binary.C125
               (MAlonzo.Code.Relation.Binary.d268
                  (MAlonzo.Code.Relation.Binary.d322 v8)))
            (MAlonzo.Code.Algebra.d712 v0 v4 v3)
            (MAlonzo.Code.Algebra.d712 v0 v5 v3)
            (MAlonzo.Code.Algebra.d712 v0 v3 v5) (du440 v2 v3 v4 v5 v6)
            (let v9 = coe du384 v1 in
             MAlonzo.Code.Relation.Binary.PreorderReasoning.du84
               (MAlonzo.Code.Relation.Binary.C125
                  (MAlonzo.Code.Relation.Binary.d268
                     (MAlonzo.Code.Relation.Binary.d322 v9)))
               (MAlonzo.Code.Algebra.d712 v0 v5 v3)
               (MAlonzo.Code.Algebra.d712 v0 v3 v5)
               (MAlonzo.Code.Algebra.d712 v0 v3 v5)
               (MAlonzo.Code.Algebra.Structures.d458
                  (MAlonzo.Code.Algebra.Structures.d1542
                     (MAlonzo.Code.Algebra.Structures.d1728
                        (MAlonzo.Code.Algebra.d720 v0)))
                  v5 v3)
               (let v10 = coe MAlonzo.Code.Algebra.d712 v0 v3 v5 in
                MAlonzo.Code.Relation.Binary.PreorderReasoning.C56
                  (MAlonzo.Code.Relation.Binary.d38
                     (MAlonzo.Code.Relation.Binary.d268
                        (MAlonzo.Code.Relation.Binary.d322 (du384 v1)))
                     v10 v10
                     (MAlonzo.Code.Relation.Binary.Core.d516
                        (MAlonzo.Code.Relation.Binary.d36
                           (MAlonzo.Code.Relation.Binary.d268
                              (MAlonzo.Code.Relation.Binary.d322 (du384 v1))))
                        v10))))))
name460 = "Semiring.Properties._.\8804\&0"
d460 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 = du460 v2 v5 v6 v8
du460 v0 v1 v2 v3 = coe du280 v0 v1 v2 v3
name470 = "Semiring.Properties.\8804K\8658\8804"
d470 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11
  = du470 v2 v5 v6 v8 v9 v10 v11
du470 v0 v1 v2 v3 v4 v5 v6
  = coe
      MAlonzo.Code.Relation.Binary.PreorderReasoning.d62
      (let v7 = coe du492 v1 in
       MAlonzo.Code.Relation.Binary.PreorderReasoning.du84
         (MAlonzo.Code.Relation.Binary.C125
            (MAlonzo.Code.Relation.Binary.d268
               (MAlonzo.Code.Relation.Binary.d322 v7)))
         v4 (MAlonzo.Code.Algebra.d712 v0 v4 v5) v5
         (MAlonzo.Code.Relation.Binary.Core.d518
            (MAlonzo.Code.Algebra.Structures.d140
               (MAlonzo.Code.Algebra.Structures.d454
                  (MAlonzo.Code.Algebra.Structures.d1542
                     (MAlonzo.Code.Algebra.Structures.d1728
                        (MAlonzo.Code.Algebra.d720 v0)))))
            (MAlonzo.Code.Algebra.d712 v0 v4 v5) v4 v6)
         (let v8 = coe du492 v1 in
          MAlonzo.Code.Relation.Binary.PreorderReasoning.du72
            (MAlonzo.Code.Relation.Binary.C125
               (MAlonzo.Code.Relation.Binary.d268
                  (MAlonzo.Code.Relation.Binary.d322 v8)))
            (MAlonzo.Code.Algebra.d712 v0 v4 v5)
            (MAlonzo.Code.Algebra.d712 v0 (MAlonzo.Code.Algebra.d716 v0) v5) v5
            (du548
               v3 v5 v4 (MAlonzo.Code.Algebra.d716 v0) (du554 v0 v1 v2 v3 v4))
            (let v9 = coe du492 v1 in
             MAlonzo.Code.Relation.Binary.PreorderReasoning.du84
               (MAlonzo.Code.Relation.Binary.C125
                  (MAlonzo.Code.Relation.Binary.d268
                     (MAlonzo.Code.Relation.Binary.d322 v9)))
               (MAlonzo.Code.Algebra.d712 v0 (MAlonzo.Code.Algebra.d716 v0) v5) v5
               v5
               (MAlonzo.Code.Data.Product.d26
                  (let v10 = coe MAlonzo.Code.Algebra.d712 v0 in
                   let v11 = coe MAlonzo.Code.Algebra.d716 v0 in
                   let v12 = coe MAlonzo.Code.Algebra.d720 v0 in
                   let v13 = coe MAlonzo.Code.Algebra.Structures.d1728 v12 in
                   MAlonzo.Code.Algebra.Structures.du476
                     v10 v11 (MAlonzo.Code.Algebra.Structures.d1542 v13))
                  v5)
               (MAlonzo.Code.Relation.Binary.PreorderReasoning.C56
                  (MAlonzo.Code.Relation.Binary.d38
                     (MAlonzo.Code.Relation.Binary.d268
                        (MAlonzo.Code.Relation.Binary.d322 (du492 v1)))
                     v5 v5
                     (MAlonzo.Code.Relation.Binary.Core.d516
                        (MAlonzo.Code.Relation.Binary.d36
                           (MAlonzo.Code.Relation.Binary.d268
                              (MAlonzo.Code.Relation.Binary.d322 (du492 v1))))
                        v5))))))
name492 = "Semiring.Properties._.poset"
d492 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 = du492 v5
du492 v0 = coe MAlonzo.Code.Relation.Binary.C345 v0
name532 = "Semiring.Properties._._._\8718"
d532 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 = du532 v5 v12
du532 v0 v1
  = coe
      MAlonzo.Code.Relation.Binary.PreorderReasoning.C56
      (coe
         MAlonzo.Code.Relation.Binary.d38
         (coe
            MAlonzo.Code.Relation.Binary.d268
            (coe MAlonzo.Code.Relation.Binary.d322 (coe du492 v0)))
         v1 v1
         (coe
            MAlonzo.Code.Relation.Binary.Core.d516
            (coe
               MAlonzo.Code.Relation.Binary.d36
               (coe
                  MAlonzo.Code.Relation.Binary.d268
                  (coe MAlonzo.Code.Relation.Binary.d322 (coe du492 v0))))
            v1))
name534 = "Semiring.Properties._._._\8776\10216_\10217_"
d534 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 = du534 v5
du534 v0
  = let v1 = coe du492 v0 in
    coe
      MAlonzo.Code.Relation.Binary.PreorderReasoning.du84
      (coe
         MAlonzo.Code.Relation.Binary.C125
         (coe
            MAlonzo.Code.Relation.Binary.d268
            (coe MAlonzo.Code.Relation.Binary.d322 v1)))
name538 = "Semiring.Properties._._._\8764\10216_\10217_"
d538 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 = du538 v5
du538 v0
  = let v1 = coe du492 v0 in
    coe
      MAlonzo.Code.Relation.Binary.PreorderReasoning.du72
      (coe
         MAlonzo.Code.Relation.Binary.C125
         (coe
            MAlonzo.Code.Relation.Binary.d268
            (coe MAlonzo.Code.Relation.Binary.d322 v1)))
name548 = "Semiring.Properties._.+-preserves-\8804\737"
d548 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 = du548 v8
du548 v0 = coe MAlonzo.Code.Data.Product.d26 v0
name554 = "Semiring.Properties._.\8804\&0"
d554 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 = du554 v2 v5 v6 v8
du554 v0 v1 v2 v3 = coe du280 v0 v1 v2 v3
name558 = "Semiring.Properties.\8804K0"
d558 v0 v1 v2 v3 = du558 v2 v3
du558 v0 v1
  = coe du280 v0 (coe du138 v0 v1) (coe du196 v0) (coe du226 v0 v1)
name562 = "Semiring.Properties.bounded\8594idempotent"
d562 v0 v1 v2 v3 v4 = du562 v2 v3 v4
du562 v0 v1 v2
  = coe
      MAlonzo.Code.Relation.Binary.PreorderReasoning.d62
      (let v3
             = let v3
                     = coe
                         MAlonzo.Code.Algebra.C333 (coe MAlonzo.Code.Algebra.d712 v0)
                         (coe MAlonzo.Code.Algebra.d714 v0)
                         (coe MAlonzo.Code.Algebra.d716 v0)
                         (coe MAlonzo.Code.Algebra.d718 v0)
                         (coe
                            MAlonzo.Code.Algebra.Structures.d1728
                            (coe MAlonzo.Code.Algebra.d720 v0)) in
               let v4
                     = coe
                         MAlonzo.Code.Algebra.C97 (coe MAlonzo.Code.Algebra.d616 v3)
                         (coe MAlonzo.Code.Algebra.d620 v3)
                         (coe
                            MAlonzo.Code.Algebra.Structures.d1542
                            (coe MAlonzo.Code.Algebra.d624 v3)) in
               coe
                 MAlonzo.Code.Relation.Binary.C143
                 (coe
                    MAlonzo.Code.Algebra.Structures.d140
                    (coe
                       MAlonzo.Code.Algebra.Structures.d294
                       (coe
                          MAlonzo.Code.Algebra.d100 (coe MAlonzo.Code.Algebra.du186 v4)))) in
       MAlonzo.Code.Relation.Binary.PreorderReasoning.du72
         (MAlonzo.Code.Relation.Binary.du150 v3)
         (MAlonzo.Code.Algebra.d712 v0 v2 v2)
         (MAlonzo.Code.Algebra.d712
            v0 (MAlonzo.Code.Algebra.d714 v0 v2 (MAlonzo.Code.Algebra.d718 v0))
            (MAlonzo.Code.Algebra.d714 v0 v2 (MAlonzo.Code.Algebra.d718 v0)))
         v2
         (MAlonzo.Code.Algebra.Structures.d144
            (MAlonzo.Code.Algebra.Structures.d454
               (MAlonzo.Code.Algebra.Structures.d1542
                  (MAlonzo.Code.Algebra.Structures.d1728
                     (MAlonzo.Code.Algebra.d720 v0))))
            v2 (MAlonzo.Code.Algebra.d714 v0 v2 (MAlonzo.Code.Algebra.d718 v0))
            v2 (MAlonzo.Code.Algebra.d714 v0 v2 (MAlonzo.Code.Algebra.d718 v0))
            (MAlonzo.Code.Relation.Binary.Core.d518
               (MAlonzo.Code.Algebra.Structures.d140
                  (MAlonzo.Code.Algebra.Structures.d454
                     (MAlonzo.Code.Algebra.Structures.d1542
                        (MAlonzo.Code.Algebra.Structures.d1728
                           (MAlonzo.Code.Algebra.d720 v0)))))
               (MAlonzo.Code.Algebra.d714 v0 v2 (MAlonzo.Code.Algebra.d718 v0)) v2
               (MAlonzo.Code.Data.Product.d28
                  (MAlonzo.Code.Algebra.Structures.d296
                     (MAlonzo.Code.Algebra.Structures.d1544
                        (MAlonzo.Code.Algebra.Structures.d1728
                           (MAlonzo.Code.Algebra.d720 v0))))
                  v2))
            (MAlonzo.Code.Relation.Binary.Core.d518
               (MAlonzo.Code.Algebra.Structures.d140
                  (MAlonzo.Code.Algebra.Structures.d454
                     (MAlonzo.Code.Algebra.Structures.d1542
                        (MAlonzo.Code.Algebra.Structures.d1728
                           (MAlonzo.Code.Algebra.d720 v0)))))
               (MAlonzo.Code.Algebra.d714 v0 v2 (MAlonzo.Code.Algebra.d718 v0)) v2
               (MAlonzo.Code.Data.Product.d28
                  (MAlonzo.Code.Algebra.Structures.d296
                     (MAlonzo.Code.Algebra.Structures.d1544
                        (MAlonzo.Code.Algebra.Structures.d1728
                           (MAlonzo.Code.Algebra.d720 v0))))
                  v2)))
         (let v4
                = let v4
                        = coe
                            MAlonzo.Code.Algebra.C333 (coe MAlonzo.Code.Algebra.d712 v0)
                            (coe MAlonzo.Code.Algebra.d714 v0)
                            (coe MAlonzo.Code.Algebra.d716 v0)
                            (coe MAlonzo.Code.Algebra.d718 v0)
                            (coe
                               MAlonzo.Code.Algebra.Structures.d1728
                               (coe MAlonzo.Code.Algebra.d720 v0)) in
                  let v5
                        = coe
                            MAlonzo.Code.Algebra.C97 (coe MAlonzo.Code.Algebra.d616 v4)
                            (coe MAlonzo.Code.Algebra.d620 v4)
                            (coe
                               MAlonzo.Code.Algebra.Structures.d1542
                               (coe MAlonzo.Code.Algebra.d624 v4)) in
                  coe
                    MAlonzo.Code.Relation.Binary.C143
                    (coe
                       MAlonzo.Code.Algebra.Structures.d140
                       (coe
                          MAlonzo.Code.Algebra.Structures.d294
                          (coe
                             MAlonzo.Code.Algebra.d100 (coe MAlonzo.Code.Algebra.du186 v5)))) in
          MAlonzo.Code.Relation.Binary.PreorderReasoning.du72
            (MAlonzo.Code.Relation.Binary.du150 v4)
            (MAlonzo.Code.Algebra.d712
               v0 (MAlonzo.Code.Algebra.d714 v0 v2 (MAlonzo.Code.Algebra.d718 v0))
               (MAlonzo.Code.Algebra.d714 v0 v2 (MAlonzo.Code.Algebra.d718 v0)))
            (MAlonzo.Code.Algebra.d714
               v0 v2
               (MAlonzo.Code.Algebra.d712
                  v0 (MAlonzo.Code.Algebra.d718 v0) (MAlonzo.Code.Algebra.d718 v0)))
            v2
            (MAlonzo.Code.Relation.Binary.Core.d518
               (MAlonzo.Code.Algebra.Structures.d140
                  (MAlonzo.Code.Algebra.Structures.d454
                     (MAlonzo.Code.Algebra.Structures.d1542
                        (MAlonzo.Code.Algebra.Structures.d1728
                           (MAlonzo.Code.Algebra.d720 v0)))))
               (MAlonzo.Code.Algebra.d714
                  v0 v2
                  (MAlonzo.Code.Algebra.d712
                     v0 (MAlonzo.Code.Algebra.d718 v0) (MAlonzo.Code.Algebra.d718 v0)))
               (MAlonzo.Code.Algebra.d712
                  v0 (MAlonzo.Code.Algebra.d714 v0 v2 (MAlonzo.Code.Algebra.d718 v0))
                  (MAlonzo.Code.Algebra.d714 v0 v2 (MAlonzo.Code.Algebra.d718 v0)))
               (MAlonzo.Code.Data.Product.d26
                  (MAlonzo.Code.Algebra.Structures.d1546
                     (MAlonzo.Code.Algebra.Structures.d1728
                        (MAlonzo.Code.Algebra.d720 v0)))
                  v2 (MAlonzo.Code.Algebra.d718 v0) (MAlonzo.Code.Algebra.d718 v0)))
            (let v5
                   = let v5
                           = coe
                               MAlonzo.Code.Algebra.C333 (coe MAlonzo.Code.Algebra.d712 v0)
                               (coe MAlonzo.Code.Algebra.d714 v0)
                               (coe MAlonzo.Code.Algebra.d716 v0)
                               (coe MAlonzo.Code.Algebra.d718 v0)
                               (coe
                                  MAlonzo.Code.Algebra.Structures.d1728
                                  (coe MAlonzo.Code.Algebra.d720 v0)) in
                     let v6
                           = coe
                               MAlonzo.Code.Algebra.C97 (coe MAlonzo.Code.Algebra.d616 v5)
                               (coe MAlonzo.Code.Algebra.d620 v5)
                               (coe
                                  MAlonzo.Code.Algebra.Structures.d1542
                                  (coe MAlonzo.Code.Algebra.d624 v5)) in
                     coe
                       MAlonzo.Code.Relation.Binary.C143
                       (coe
                          MAlonzo.Code.Algebra.Structures.d140
                          (coe
                             MAlonzo.Code.Algebra.Structures.d294
                             (coe
                                MAlonzo.Code.Algebra.d100 (coe MAlonzo.Code.Algebra.du186 v6)))) in
             MAlonzo.Code.Relation.Binary.PreorderReasoning.du72
               (MAlonzo.Code.Relation.Binary.du150 v5)
               (MAlonzo.Code.Algebra.d714
                  v0 v2
                  (MAlonzo.Code.Algebra.d712
                     v0 (MAlonzo.Code.Algebra.d718 v0) (MAlonzo.Code.Algebra.d718 v0)))
               (MAlonzo.Code.Algebra.d714 v0 v2 (MAlonzo.Code.Algebra.d718 v0)) v2
               (MAlonzo.Code.Algebra.Structures.d144
                  (MAlonzo.Code.Algebra.Structures.d294
                     (MAlonzo.Code.Algebra.Structures.d1544
                        (MAlonzo.Code.Algebra.Structures.d1728
                           (MAlonzo.Code.Algebra.d720 v0))))
                  v2 v2
                  (MAlonzo.Code.Algebra.d712
                     v0 (MAlonzo.Code.Algebra.d718 v0) (MAlonzo.Code.Algebra.d718 v0))
                  (MAlonzo.Code.Algebra.d718 v0)
                  (MAlonzo.Code.Relation.Binary.Core.d516
                     (MAlonzo.Code.Algebra.Structures.d140
                        (MAlonzo.Code.Algebra.Structures.d454
                           (MAlonzo.Code.Algebra.Structures.d1542
                              (MAlonzo.Code.Algebra.Structures.d1728
                                 (MAlonzo.Code.Algebra.d720 v0)))))
                     v2)
                  (MAlonzo.Code.Data.Product.d26 v1 (MAlonzo.Code.Algebra.d718 v0)))
               (let v6
                      = let v6
                              = coe
                                  MAlonzo.Code.Algebra.C333 (coe MAlonzo.Code.Algebra.d712 v0)
                                  (coe MAlonzo.Code.Algebra.d714 v0)
                                  (coe MAlonzo.Code.Algebra.d716 v0)
                                  (coe MAlonzo.Code.Algebra.d718 v0)
                                  (coe
                                     MAlonzo.Code.Algebra.Structures.d1728
                                     (coe MAlonzo.Code.Algebra.d720 v0)) in
                        let v7
                              = coe
                                  MAlonzo.Code.Algebra.C97 (coe MAlonzo.Code.Algebra.d616 v6)
                                  (coe MAlonzo.Code.Algebra.d620 v6)
                                  (coe
                                     MAlonzo.Code.Algebra.Structures.d1542
                                     (coe MAlonzo.Code.Algebra.d624 v6)) in
                        coe
                          MAlonzo.Code.Relation.Binary.C143
                          (coe
                             MAlonzo.Code.Algebra.Structures.d140
                             (coe
                                MAlonzo.Code.Algebra.Structures.d294
                                (coe
                                   MAlonzo.Code.Algebra.d100
                                   (coe MAlonzo.Code.Algebra.du186 v7)))) in
                MAlonzo.Code.Relation.Binary.PreorderReasoning.du72
                  (MAlonzo.Code.Relation.Binary.du150 v6)
                  (MAlonzo.Code.Algebra.d714 v0 v2 (MAlonzo.Code.Algebra.d718 v0)) v2
                  v2
                  (MAlonzo.Code.Data.Product.d28
                     (MAlonzo.Code.Algebra.Structures.d296
                        (MAlonzo.Code.Algebra.Structures.d1544
                           (MAlonzo.Code.Algebra.Structures.d1728
                              (MAlonzo.Code.Algebra.d720 v0))))
                     v2)
                  (let v7
                         = let v7
                                 = coe
                                     MAlonzo.Code.Algebra.C333 (coe MAlonzo.Code.Algebra.d712 v0)
                                     (coe MAlonzo.Code.Algebra.d714 v0)
                                     (coe MAlonzo.Code.Algebra.d716 v0)
                                     (coe MAlonzo.Code.Algebra.d718 v0)
                                     (coe
                                        MAlonzo.Code.Algebra.Structures.d1728
                                        (coe MAlonzo.Code.Algebra.d720 v0)) in
                           let v8
                                 = coe
                                     MAlonzo.Code.Algebra.C97 (coe MAlonzo.Code.Algebra.d616 v7)
                                     (coe MAlonzo.Code.Algebra.d620 v7)
                                     (coe
                                        MAlonzo.Code.Algebra.Structures.d1542
                                        (coe MAlonzo.Code.Algebra.d624 v7)) in
                           coe
                             MAlonzo.Code.Relation.Binary.C143
                             (coe
                                MAlonzo.Code.Algebra.Structures.d140
                                (coe
                                   MAlonzo.Code.Algebra.Structures.d294
                                   (coe
                                      MAlonzo.Code.Algebra.d100
                                      (coe MAlonzo.Code.Algebra.du186 v8)))) in
                   MAlonzo.Code.Relation.Binary.PreorderReasoning.C56
                     (MAlonzo.Code.Relation.Binary.d38
                        (MAlonzo.Code.Relation.Binary.d92
                           (MAlonzo.Code.Relation.Binary.du150 v7))
                        v2 v2
                        (MAlonzo.Code.Relation.Binary.Core.d516
                           (MAlonzo.Code.Relation.Binary.d36
                              (MAlonzo.Code.Relation.Binary.d92
                                 (MAlonzo.Code.Relation.Binary.du150 v7)))
                           v2)))))))
name576 = "Semiring.Properties._._._\8718"
d576 v0 v1 v2 v3 v4 = du576 v2
du576 v0
  = let v1
          = let v1
                  = coe
                      MAlonzo.Code.Algebra.C333 (coe MAlonzo.Code.Algebra.d712 v0)
                      (coe MAlonzo.Code.Algebra.d714 v0)
                      (coe MAlonzo.Code.Algebra.d716 v0)
                      (coe MAlonzo.Code.Algebra.d718 v0)
                      (coe
                         MAlonzo.Code.Algebra.Structures.d1728
                         (coe MAlonzo.Code.Algebra.d720 v0)) in
            let v2
                  = coe
                      MAlonzo.Code.Algebra.C97 (coe MAlonzo.Code.Algebra.d616 v1)
                      (coe MAlonzo.Code.Algebra.d620 v1)
                      (coe
                         MAlonzo.Code.Algebra.Structures.d1542
                         (coe MAlonzo.Code.Algebra.d624 v1)) in
            coe
              MAlonzo.Code.Relation.Binary.C143
              (coe
                 MAlonzo.Code.Algebra.Structures.d140
                 (coe
                    MAlonzo.Code.Algebra.Structures.d294
                    (coe
                       MAlonzo.Code.Algebra.d100 (coe MAlonzo.Code.Algebra.du186 v2)))) in
    \ v2 ->
      coe
        MAlonzo.Code.Relation.Binary.PreorderReasoning.C56
        (coe
           MAlonzo.Code.Relation.Binary.d38
           (coe
              MAlonzo.Code.Relation.Binary.d92
              (coe MAlonzo.Code.Relation.Binary.du150 v1))
           v2 v2
           (coe
              MAlonzo.Code.Relation.Binary.Core.d516
              (coe
                 MAlonzo.Code.Relation.Binary.d36
                 (coe
                    MAlonzo.Code.Relation.Binary.d92
                    (coe MAlonzo.Code.Relation.Binary.du150 v1)))
              v2))
name578 = "Semiring.Properties._._._\8764\10216_\10217_"
d578 v0 v1 v2 v3 v4 = du578 v2
du578 v0
  = let v1
          = let v1
                  = coe
                      MAlonzo.Code.Algebra.C333 (coe MAlonzo.Code.Algebra.d712 v0)
                      (coe MAlonzo.Code.Algebra.d714 v0)
                      (coe MAlonzo.Code.Algebra.d716 v0)
                      (coe MAlonzo.Code.Algebra.d718 v0)
                      (coe
                         MAlonzo.Code.Algebra.Structures.d1728
                         (coe MAlonzo.Code.Algebra.d720 v0)) in
            let v2
                  = coe
                      MAlonzo.Code.Algebra.C97 (coe MAlonzo.Code.Algebra.d616 v1)
                      (coe MAlonzo.Code.Algebra.d620 v1)
                      (coe
                         MAlonzo.Code.Algebra.Structures.d1542
                         (coe MAlonzo.Code.Algebra.d624 v1)) in
            coe
              MAlonzo.Code.Relation.Binary.C143
              (coe
                 MAlonzo.Code.Algebra.Structures.d140
                 (coe
                    MAlonzo.Code.Algebra.Structures.d294
                    (coe
                       MAlonzo.Code.Algebra.d100 (coe MAlonzo.Code.Algebra.du186 v2)))) in
    coe
      MAlonzo.Code.Relation.Binary.PreorderReasoning.du72
      (coe MAlonzo.Code.Relation.Binary.du150 v1)