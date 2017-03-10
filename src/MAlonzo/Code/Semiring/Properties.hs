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
name98 = "Semiring.Properties._.Bounded"
d98 = erased
name104 = "Semiring.Properties._.Idempotent"
d104 = erased
name106 = "Semiring.Properties._.Monotonic"
d106 = erased
name134 = "Semiring.Properties._\8804K_"
d134 = erased
name140 = "Semiring.Properties.\8804K-isPartialOrder"
d140 v0 v1 v2 v3 = du140 v2 v3
du140 v0 v1
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
name152 = "Semiring.Properties._._._\8718"
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
name154 = "Semiring.Properties._._._\8764\10216_\10217_"
d154 v0 v1 v2 v3 = du154 v2
du154 v0
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
name192 = "Semiring.Properties.\8804K-poset"
d192 v0 v1 v2 v3 = du192 v2 v3
du192 v0 v1
  = coe MAlonzo.Code.Relation.Binary.C345 (coe du140 v0 v1)
name198 = "Semiring.Properties.natural-order-negative"
d198 v0 v1 v2 v3 = du198 v2
du198 v0
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
name210 = "Semiring.Properties._._._\8718"
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
name212 = "Semiring.Properties._._._\8764\10216_\10217_"
d212 v0 v1 v2 v3 = du212 v2
du212 v0
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
name228 = "Semiring.Properties.natural-order-monotonic"
d228 v0 v1 v2 v3 = du228 v2 v3
du228 v0 v1
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
name240 = "Semiring.Properties._._._\8718"
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
name242 = "Semiring.Properties._._._\8764\10216_\10217_"
d242 v0 v1 v2 v3 = du242 v2
du242 v0
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
name282 = "Semiring.Properties.negative\8594monotonic\8594\8804\&0"
d282 v0 v1 v2 v3 v4 v5 v6 v7 v8 = du282 v2 v5 v6 v7 v8
du282 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Relation.Binary.PreorderReasoning.d62
      (let v5 = coe du298 v1 in
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
         (let v6 = coe du298 v1 in
          MAlonzo.Code.Relation.Binary.PreorderReasoning.du72
            (MAlonzo.Code.Relation.Binary.C125
               (MAlonzo.Code.Relation.Binary.d268
                  (MAlonzo.Code.Relation.Binary.d322 v6)))
            (MAlonzo.Code.Algebra.d714 v0 (MAlonzo.Code.Algebra.d718 v0) v4)
            (MAlonzo.Code.Algebra.d714 v0 (MAlonzo.Code.Algebra.d716 v0) v4)
            (MAlonzo.Code.Algebra.d716 v0)
            (du354
               v3 (MAlonzo.Code.Algebra.d718 v0) (MAlonzo.Code.Algebra.d716 v0) v4
               v4 v2
               (MAlonzo.Code.Relation.Binary.d38
                  (MAlonzo.Code.Relation.Binary.d268
                     (MAlonzo.Code.Relation.Binary.d322 (du298 v1)))
                  v4 v4
                  (MAlonzo.Code.Relation.Binary.Core.d516
                     (MAlonzo.Code.Relation.Binary.d36
                        (MAlonzo.Code.Relation.Binary.d268
                           (MAlonzo.Code.Relation.Binary.d322 (du298 v1))))
                     v4)))
            (let v7 = coe du298 v1 in
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
                        (MAlonzo.Code.Relation.Binary.d322 (du298 v1)))
                     v8 v8
                     (MAlonzo.Code.Relation.Binary.Core.d516
                        (MAlonzo.Code.Relation.Binary.d36
                           (MAlonzo.Code.Relation.Binary.d268
                              (MAlonzo.Code.Relation.Binary.d322 (du298 v1))))
                        v8))))))
name298 = "Semiring.Properties._.poset"
d298 v0 v1 v2 v3 v4 v5 v6 v7 v8 = du298 v5
du298 v0 = coe MAlonzo.Code.Relation.Binary.C345 v0
name320 = "Semiring.Properties._._.refl"
d320 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 = du320 v5 v9
du320 v0 v1
  = coe
      MAlonzo.Code.Relation.Binary.d38
      (coe
         MAlonzo.Code.Relation.Binary.d268
         (coe MAlonzo.Code.Relation.Binary.d322 (coe du298 v0)))
      v1 v1
      (coe
         MAlonzo.Code.Relation.Binary.Core.d516
         (coe
            MAlonzo.Code.Relation.Binary.d36
            (coe
               MAlonzo.Code.Relation.Binary.d268
               (coe MAlonzo.Code.Relation.Binary.d322 (coe du298 v0))))
         v1)
name338 = "Semiring.Properties._._._\8718"
d338 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 = du338 v5 v9
du338 v0 v1
  = coe
      MAlonzo.Code.Relation.Binary.PreorderReasoning.C56
      (coe
         MAlonzo.Code.Relation.Binary.d38
         (coe
            MAlonzo.Code.Relation.Binary.d268
            (coe MAlonzo.Code.Relation.Binary.d322 (coe du298 v0)))
         v1 v1
         (coe
            MAlonzo.Code.Relation.Binary.Core.d516
            (coe
               MAlonzo.Code.Relation.Binary.d36
               (coe
                  MAlonzo.Code.Relation.Binary.d268
                  (coe MAlonzo.Code.Relation.Binary.d322 (coe du298 v0))))
            v1))
name340 = "Semiring.Properties._._._\8776\10216_\10217_"
d340 v0 v1 v2 v3 v4 v5 v6 v7 v8 = du340 v5
du340 v0
  = let v1 = coe du298 v0 in
    coe
      MAlonzo.Code.Relation.Binary.PreorderReasoning.du84
      (coe
         MAlonzo.Code.Relation.Binary.C125
         (coe
            MAlonzo.Code.Relation.Binary.d268
            (coe MAlonzo.Code.Relation.Binary.d322 v1)))
name344 = "Semiring.Properties._._._\8764\10216_\10217_"
d344 v0 v1 v2 v3 v4 v5 v6 v7 v8 = du344 v5
du344 v0
  = let v1 = coe du298 v0 in
    coe
      MAlonzo.Code.Relation.Binary.PreorderReasoning.du72
      (coe
         MAlonzo.Code.Relation.Binary.C125
         (coe
            MAlonzo.Code.Relation.Binary.d268
            (coe MAlonzo.Code.Relation.Binary.d322 v1)))
name354 = "Semiring.Properties._.*-preserves-\8804"
d354 v0 v1 v2 v3 v4 v5 v6 v7 v8 = du354 v7
du354 v0 = coe MAlonzo.Code.Data.Product.d28 v0
name364 = "Semiring.Properties.\8804\8658\8804K"
d364 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11
  = du364 v2 v5 v6 v7 v8 v9 v10 v11
du364 v0 v1 v2 v3 v4 v5 v6 v7
  = coe
      MAlonzo.Code.Relation.Binary.d270
      (coe MAlonzo.Code.Relation.Binary.d322 (coe du386 v1))
      (coe MAlonzo.Code.Algebra.d712 v0 v5 v6) v5
      (coe
         MAlonzo.Code.Relation.Binary.PreorderReasoning.d62
         (let v8 = coe du386 v1 in
          MAlonzo.Code.Relation.Binary.PreorderReasoning.du72
            (MAlonzo.Code.Relation.Binary.C125
               (MAlonzo.Code.Relation.Binary.d268
                  (MAlonzo.Code.Relation.Binary.d322 v8)))
            (MAlonzo.Code.Algebra.d712 v0 v5 v6)
            (MAlonzo.Code.Algebra.d712 v0 v5 (MAlonzo.Code.Algebra.d716 v0)) v5
            (du450
               v0 v1 v4 v5 v6 (MAlonzo.Code.Algebra.d716 v0)
               (du462 v0 v1 v2 v4 v6))
            (let v9 = coe du386 v1 in
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
                        (MAlonzo.Code.Relation.Binary.d322 (du386 v1)))
                     v5 v5
                     (MAlonzo.Code.Relation.Binary.Core.d516
                        (MAlonzo.Code.Relation.Binary.d36
                           (MAlonzo.Code.Relation.Binary.d268
                              (MAlonzo.Code.Relation.Binary.d322 (du386 v1))))
                        v5))))))
      (coe
         MAlonzo.Code.Relation.Binary.PreorderReasoning.d62
         (let v8 = coe du386 v1 in
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
            (let v9 = coe du386 v1 in
             MAlonzo.Code.Relation.Binary.PreorderReasoning.du72
               (MAlonzo.Code.Relation.Binary.C125
                  (MAlonzo.Code.Relation.Binary.d268
                     (MAlonzo.Code.Relation.Binary.d322 v9)))
               (MAlonzo.Code.Algebra.d712 v0 v5 v5)
               (MAlonzo.Code.Algebra.d712 v0 v5 v6)
               (MAlonzo.Code.Algebra.d712 v0 v5 v6) (du450 v0 v1 v4 v5 v5 v6 v7)
               (let v10 = coe MAlonzo.Code.Algebra.d712 v0 v5 v6 in
                MAlonzo.Code.Relation.Binary.PreorderReasoning.C56
                  (MAlonzo.Code.Relation.Binary.d38
                     (MAlonzo.Code.Relation.Binary.d268
                        (MAlonzo.Code.Relation.Binary.d322 (du386 v1)))
                     v10 v10
                     (MAlonzo.Code.Relation.Binary.Core.d516
                        (MAlonzo.Code.Relation.Binary.d36
                           (MAlonzo.Code.Relation.Binary.d268
                              (MAlonzo.Code.Relation.Binary.d322 (du386 v1))))
                        v10))))))
name386 = "Semiring.Properties._.poset"
d386 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 = du386 v5
du386 v0 = coe MAlonzo.Code.Relation.Binary.C345 v0
name394 = "Semiring.Properties._._.antisym"
d394 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 = du394 v5
du394 v0
  = coe
      MAlonzo.Code.Relation.Binary.d270
      (coe MAlonzo.Code.Relation.Binary.d322 (coe du386 v0))
name426 = "Semiring.Properties._._._\8718"
d426 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 = du426 v5 v12
du426 v0 v1
  = coe
      MAlonzo.Code.Relation.Binary.PreorderReasoning.C56
      (coe
         MAlonzo.Code.Relation.Binary.d38
         (coe
            MAlonzo.Code.Relation.Binary.d268
            (coe MAlonzo.Code.Relation.Binary.d322 (coe du386 v0)))
         v1 v1
         (coe
            MAlonzo.Code.Relation.Binary.Core.d516
            (coe
               MAlonzo.Code.Relation.Binary.d36
               (coe
                  MAlonzo.Code.Relation.Binary.d268
                  (coe MAlonzo.Code.Relation.Binary.d322 (coe du386 v0))))
            v1))
name428 = "Semiring.Properties._._._\8776\10216_\10217_"
d428 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 = du428 v5
du428 v0
  = let v1 = coe du386 v0 in
    coe
      MAlonzo.Code.Relation.Binary.PreorderReasoning.du84
      (coe
         MAlonzo.Code.Relation.Binary.C125
         (coe
            MAlonzo.Code.Relation.Binary.d268
            (coe MAlonzo.Code.Relation.Binary.d322 v1)))
name432 = "Semiring.Properties._._._\8764\10216_\10217_"
d432 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 = du432 v5
du432 v0
  = let v1 = coe du386 v0 in
    coe
      MAlonzo.Code.Relation.Binary.PreorderReasoning.du72
      (coe
         MAlonzo.Code.Relation.Binary.C125
         (coe
            MAlonzo.Code.Relation.Binary.d268
            (coe MAlonzo.Code.Relation.Binary.d322 v1)))
name442 = "Semiring.Properties._.+-preserves-\8804\737"
d442 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 = du442 v8
du442 v0 = coe MAlonzo.Code.Data.Product.d26 v0
name450 = "Semiring.Properties._.+-preserves-\8804\691"
d450 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15
  = du450 v2 v5 v8 v12 v13 v14 v15
du450 v0 v1 v2 v3 v4 v5 v6
  = coe
      MAlonzo.Code.Relation.Binary.PreorderReasoning.d62
      (let v7 = coe du386 v1 in
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
         (let v8 = coe du386 v1 in
          MAlonzo.Code.Relation.Binary.PreorderReasoning.du72
            (MAlonzo.Code.Relation.Binary.C125
               (MAlonzo.Code.Relation.Binary.d268
                  (MAlonzo.Code.Relation.Binary.d322 v8)))
            (MAlonzo.Code.Algebra.d712 v0 v4 v3)
            (MAlonzo.Code.Algebra.d712 v0 v5 v3)
            (MAlonzo.Code.Algebra.d712 v0 v3 v5) (du442 v2 v3 v4 v5 v6)
            (let v9 = coe du386 v1 in
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
                        (MAlonzo.Code.Relation.Binary.d322 (du386 v1)))
                     v10 v10
                     (MAlonzo.Code.Relation.Binary.Core.d516
                        (MAlonzo.Code.Relation.Binary.d36
                           (MAlonzo.Code.Relation.Binary.d268
                              (MAlonzo.Code.Relation.Binary.d322 (du386 v1))))
                        v10))))))
name462 = "Semiring.Properties._.\8804\&0"
d462 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 = du462 v2 v5 v6 v8
du462 v0 v1 v2 v3 = coe du282 v0 v1 v2 v3
name472 = "Semiring.Properties.\8804K\8658\8804"
d472 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11
  = du472 v2 v5 v6 v8 v9 v10 v11
du472 v0 v1 v2 v3 v4 v5 v6
  = coe
      MAlonzo.Code.Relation.Binary.PreorderReasoning.d62
      (let v7 = coe du494 v1 in
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
         (let v8 = coe du494 v1 in
          MAlonzo.Code.Relation.Binary.PreorderReasoning.du72
            (MAlonzo.Code.Relation.Binary.C125
               (MAlonzo.Code.Relation.Binary.d268
                  (MAlonzo.Code.Relation.Binary.d322 v8)))
            (MAlonzo.Code.Algebra.d712 v0 v4 v5)
            (MAlonzo.Code.Algebra.d712 v0 (MAlonzo.Code.Algebra.d716 v0) v5) v5
            (du550
               v3 v5 v4 (MAlonzo.Code.Algebra.d716 v0) (du556 v0 v1 v2 v3 v4))
            (let v9 = coe du494 v1 in
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
                        (MAlonzo.Code.Relation.Binary.d322 (du494 v1)))
                     v5 v5
                     (MAlonzo.Code.Relation.Binary.Core.d516
                        (MAlonzo.Code.Relation.Binary.d36
                           (MAlonzo.Code.Relation.Binary.d268
                              (MAlonzo.Code.Relation.Binary.d322 (du494 v1))))
                        v5))))))
name494 = "Semiring.Properties._.poset"
d494 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 = du494 v5
du494 v0 = coe MAlonzo.Code.Relation.Binary.C345 v0
name534 = "Semiring.Properties._._._\8718"
d534 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 = du534 v5 v12
du534 v0 v1
  = coe
      MAlonzo.Code.Relation.Binary.PreorderReasoning.C56
      (coe
         MAlonzo.Code.Relation.Binary.d38
         (coe
            MAlonzo.Code.Relation.Binary.d268
            (coe MAlonzo.Code.Relation.Binary.d322 (coe du494 v0)))
         v1 v1
         (coe
            MAlonzo.Code.Relation.Binary.Core.d516
            (coe
               MAlonzo.Code.Relation.Binary.d36
               (coe
                  MAlonzo.Code.Relation.Binary.d268
                  (coe MAlonzo.Code.Relation.Binary.d322 (coe du494 v0))))
            v1))
name536 = "Semiring.Properties._._._\8776\10216_\10217_"
d536 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 = du536 v5
du536 v0
  = let v1 = coe du494 v0 in
    coe
      MAlonzo.Code.Relation.Binary.PreorderReasoning.du84
      (coe
         MAlonzo.Code.Relation.Binary.C125
         (coe
            MAlonzo.Code.Relation.Binary.d268
            (coe MAlonzo.Code.Relation.Binary.d322 v1)))
name540 = "Semiring.Properties._._._\8764\10216_\10217_"
d540 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 = du540 v5
du540 v0
  = let v1 = coe du494 v0 in
    coe
      MAlonzo.Code.Relation.Binary.PreorderReasoning.du72
      (coe
         MAlonzo.Code.Relation.Binary.C125
         (coe
            MAlonzo.Code.Relation.Binary.d268
            (coe MAlonzo.Code.Relation.Binary.d322 v1)))
name550 = "Semiring.Properties._.+-preserves-\8804\737"
d550 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 = du550 v8
du550 v0 = coe MAlonzo.Code.Data.Product.d26 v0
name556 = "Semiring.Properties._.\8804\&0"
d556 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 = du556 v2 v5 v6 v8
du556 v0 v1 v2 v3 = coe du282 v0 v1 v2 v3
name558 = "Semiring.Properties.bounded\8594idempotent"
d558 v0 v1 v2 v3 v4 = du558 v2 v3 v4
du558 v0 v1 v2
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
name572 = "Semiring.Properties._._._\8718"
d572 v0 v1 v2 v3 v4 = du572 v2
du572 v0
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
name574 = "Semiring.Properties._._._\8764\10216_\10217_"
d574 v0 v1 v2 v3 v4 = du574 v2
du574 v0
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