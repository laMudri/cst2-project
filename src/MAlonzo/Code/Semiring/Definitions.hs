{-# LANGUAGE EmptyDataDecls, ExistentialQuantification,
             ScopedTypeVariables, NoMonomorphismRestriction, Rank2Types #-}
module MAlonzo.Code.Semiring.Definitions where

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
import qualified MAlonzo.Code.Algebra.Operations
import qualified MAlonzo.Code.Algebra.Structures
import qualified MAlonzo.Code.Relation.Binary
import qualified MAlonzo.Code.Relation.Binary.Core
import qualified MAlonzo.Code.Relation.Binary.PreorderReasoning
import qualified MAlonzo.Code.Sum

name84 = "Semiring.Definitions._.setoid"
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
name114 = "Semiring.Definitions.FP.Idempotent"
d114 = erased
name138 = "Semiring.Definitions.FP.Zero"
d138 = erased
name148 = "Semiring.Definitions._._^_"
d148 v0 v1 v2 = du148 v2
du148 v0 = coe MAlonzo.Code.Algebra.Operations.du130 v0
name154 = "Semiring.Definitions._.geo-\8721"
d154 v0 v1 v2 = du154 v2
du154 v0 = coe MAlonzo.Code.Sum.du284 v0
name156 = "Semiring.Definitions._.geo-\8721\8734"
d156 = erased
name158 = "Semiring.Definitions._.split-geo-\8721"
d158 v0 v1 v2 = du158 v2
du158 v0 = coe MAlonzo.Code.Sum.du558 v0
name180 = "Semiring.Definitions._.\8721\8734"
d180 a0 a1 a2 a3 a4 = ()
name190 = "Semiring.Definitions.Idempotent"
d190 = erased
name194 = "Semiring.Definitions.Negative"
d194 = erased
name200 = "Semiring.Definitions.Positive"
d200 = erased
name206 = "Semiring.Definitions.Monotonic"
d206 = erased
name214 = "Semiring.Definitions.Bounded"
d214 = erased
name220 = "Semiring.Definitions._ClosedAt_"
d220 a0 a1 a2 a3 a4 = ()
newtype T220 a0 = C127 a0
name228 = "Semiring.Definitions._ClosedAt_.closed"
d228 v0
  = case coe v0 of
      C127 v1 -> coe v1
      _ -> coe MAlonzo.RTE.mazUnreachableError
name232 = "Semiring.Definitions._ClosedAt_.closed+"
d232 v0 v1 v2 v3 v4 v5 v6 = du232 v2 v3 v4 v5 v6
du232 v0 v1 v2 v3 v4
  = case coe v4 of
      0 -> coe
             MAlonzo.Code.Relation.Binary.Core.d516
             (coe
                MAlonzo.Code.Algebra.Structures.d140
                (coe
                   MAlonzo.Code.Algebra.Structures.d454
                   (coe
                      MAlonzo.Code.Algebra.Structures.d1542
                      (coe
                         MAlonzo.Code.Algebra.Structures.d1728
                         (coe MAlonzo.Code.Algebra.d720 v0)))))
             (coe MAlonzo.Code.Sum.du284 v0 v1 v2)
      _ -> let v5 = coe subInt v4 (1 :: Integer) in
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
              MAlonzo.Code.Relation.Binary.PreorderReasoning.du84
                (MAlonzo.Code.Relation.Binary.du150 v6)
                (MAlonzo.Code.Sum.du284 v0 (addInt v1 v4) v2)
                (MAlonzo.Code.Sum.du284 v0 (addInt v1 v4) v2)
                (MAlonzo.Code.Sum.du284 v0 v1 v2) erased
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
                   (MAlonzo.Code.Sum.du284 v0 (addInt v1 v4) v2)
                   (MAlonzo.Code.Algebra.d712
                      v0 (MAlonzo.Code.Sum.du284 v0 v5 v2)
                      (MAlonzo.Code.Algebra.d714
                         v0 (MAlonzo.Code.Algebra.Operations.du130 v0 v2 v5)
                         (MAlonzo.Code.Sum.du284 v0 (addInt (1 :: Integer) v1) v2)))
                   (MAlonzo.Code.Sum.du284 v0 v1 v2)
                   (MAlonzo.Code.Sum.du558 v0 v5 (addInt (1 :: Integer) v1) v2)
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
                         v0 (MAlonzo.Code.Sum.du284 v0 v5 v2)
                         (MAlonzo.Code.Algebra.d714
                            v0 (MAlonzo.Code.Algebra.Operations.du130 v0 v2 v5)
                            (MAlonzo.Code.Sum.du284 v0 (addInt (1 :: Integer) v1) v2)))
                      (MAlonzo.Code.Algebra.d712
                         v0 (MAlonzo.Code.Sum.du284 v0 v5 v2)
                         (MAlonzo.Code.Algebra.d714
                            v0 (MAlonzo.Code.Algebra.Operations.du130 v0 v2 v5)
                            (MAlonzo.Code.Sum.du284 v0 v1 v2)))
                      (MAlonzo.Code.Sum.du284 v0 v1 v2)
                      (MAlonzo.Code.Algebra.Structures.d144
                         (MAlonzo.Code.Algebra.Structures.d454
                            (MAlonzo.Code.Algebra.Structures.d1542
                               (MAlonzo.Code.Algebra.Structures.d1728
                                  (MAlonzo.Code.Algebra.d720 v0))))
                         (MAlonzo.Code.Sum.du284 v0 v5 v2) (MAlonzo.Code.Sum.du284 v0 v5 v2)
                         (MAlonzo.Code.Algebra.d714
                            v0 (MAlonzo.Code.Algebra.Operations.du130 v0 v2 v5)
                            (MAlonzo.Code.Sum.du284 v0 (addInt (1 :: Integer) v1) v2))
                         (MAlonzo.Code.Algebra.d714
                            v0 (MAlonzo.Code.Algebra.Operations.du130 v0 v2 v5)
                            (MAlonzo.Code.Sum.du284 v0 v1 v2))
                         (MAlonzo.Code.Relation.Binary.Core.d516
                            (MAlonzo.Code.Algebra.Structures.d140
                               (MAlonzo.Code.Algebra.Structures.d454
                                  (MAlonzo.Code.Algebra.Structures.d1542
                                     (MAlonzo.Code.Algebra.Structures.d1728
                                        (MAlonzo.Code.Algebra.d720 v0)))))
                            (MAlonzo.Code.Sum.du284 v0 v5 v2))
                         (MAlonzo.Code.Algebra.Structures.d144
                            (MAlonzo.Code.Algebra.Structures.d294
                               (MAlonzo.Code.Algebra.Structures.d1544
                                  (MAlonzo.Code.Algebra.Structures.d1728
                                     (MAlonzo.Code.Algebra.d720 v0))))
                            (MAlonzo.Code.Algebra.Operations.du130 v0 v2 v5)
                            (MAlonzo.Code.Algebra.Operations.du130 v0 v2 v5)
                            (MAlonzo.Code.Sum.du284 v0 (addInt (1 :: Integer) v1) v2)
                            (MAlonzo.Code.Sum.du284 v0 v1 v2)
                            (MAlonzo.Code.Relation.Binary.Core.d516
                               (MAlonzo.Code.Algebra.Structures.d140
                                  (MAlonzo.Code.Algebra.Structures.d454
                                     (MAlonzo.Code.Algebra.Structures.d1542
                                        (MAlonzo.Code.Algebra.Structures.d1728
                                           (MAlonzo.Code.Algebra.d720 v0)))))
                               (MAlonzo.Code.Algebra.Operations.du130 v0 v2 v5))
                            (d228 v3)))
                      (let v9
                             = let v9
                                     = coe
                                         MAlonzo.Code.Algebra.C333
                                         (coe MAlonzo.Code.Algebra.d712 v0)
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
                            v0 (MAlonzo.Code.Sum.du284 v0 v5 v2)
                            (MAlonzo.Code.Algebra.d714
                               v0 (MAlonzo.Code.Algebra.Operations.du130 v0 v2 v5)
                               (MAlonzo.Code.Sum.du284 v0 v1 v2)))
                         (MAlonzo.Code.Sum.du284 v0 (addInt v5 v1) v2)
                         (MAlonzo.Code.Sum.du284 v0 v1 v2)
                         (MAlonzo.Code.Relation.Binary.Core.d518
                            (MAlonzo.Code.Algebra.Structures.d140
                               (MAlonzo.Code.Algebra.Structures.d454
                                  (MAlonzo.Code.Algebra.Structures.d1542
                                     (MAlonzo.Code.Algebra.Structures.d1728
                                        (MAlonzo.Code.Algebra.d720 v0)))))
                            (MAlonzo.Code.Sum.du284 v0 (addInt v5 v1) v2)
                            (MAlonzo.Code.Algebra.d712
                               v0 (MAlonzo.Code.Sum.du284 v0 v5 v2)
                               (MAlonzo.Code.Algebra.d714
                                  v0 (MAlonzo.Code.Algebra.Operations.du130 v0 v2 v5)
                                  (MAlonzo.Code.Sum.du284 v0 v1 v2)))
                            (MAlonzo.Code.Sum.du558 v0 v5 v1 v2))
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
                            (MAlonzo.Code.Sum.du284 v0 (addInt v5 v1) v2)
                            (MAlonzo.Code.Sum.du284 v0 v1 v2) (MAlonzo.Code.Sum.du284 v0 v1 v2)
                            (du232 v0 v1 v2 v3 v5)
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
                             let v12 = coe MAlonzo.Code.Sum.du284 v0 v1 v2 in
                             MAlonzo.Code.Relation.Binary.PreorderReasoning.C56
                               (MAlonzo.Code.Relation.Binary.d38
                                  (MAlonzo.Code.Relation.Binary.d92
                                     (MAlonzo.Code.Relation.Binary.du150 v11))
                                  v12 v12
                                  (MAlonzo.Code.Relation.Binary.Core.d516
                                     (MAlonzo.Code.Relation.Binary.d36
                                        (MAlonzo.Code.Relation.Binary.d92
                                           (MAlonzo.Code.Relation.Binary.du150 v11)))
                                     v12))))))))
name244 = "Semiring.Definitions._ClosedAt_._._._\8718"
d244 v0 v1 v2 v3 v4 v5 v6 = du244 v2
du244 v0
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
name246
  = "Semiring.Definitions._ClosedAt_._._._\8764\10216_\10217_"
d246 v0 v1 v2 v3 v4 v5 v6 = du246 v2
du246 v0
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
name248
  = "Semiring.Definitions._ClosedAt_._._._\8776\10216_\10217_"
d248 v0 v1 v2 v3 v4 v5 v6 = du248 v2
du248 v0
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
      MAlonzo.Code.Relation.Binary.PreorderReasoning.du84
      (coe MAlonzo.Code.Relation.Binary.du150 v1)
name264 = "Semiring.Definitions._Closed"
d264 a0 a1 a2 a3 = ()
newtype T264 a0 = C383 a0
name274 = "Semiring.Definitions._Closed.closed"
d274 v0
  = case coe v0 of
      C383 v1 -> coe v1
      _ -> coe MAlonzo.RTE.mazUnreachableError
name280 = "Semiring.Definitions._Closed.closed+"
d280 v0 v1 v2 v3 v4 v5 v6 = du280 v2 v3 v4 v5 v6
du280 v0 v1 v2 v3 v4 = coe du232 v0 v1 v4 (coe d274 v2 v4) v3
name286 = "Semiring.Definitions.Closed"
d286 a0 a1 a2 = ()
data T286 a0 a1 a2 a3 = C431 a0 a1 a2 a3
name324 = "Semiring.Definitions.Closed.\8721-defined"
d324 v0
  = case coe v0 of
      C431 v1 v2 v3 v4 -> coe v1
      _ -> coe MAlonzo.RTE.mazUnreachableError
name332 = "Semiring.Definitions.Closed.\8721-assoc"
d332 v0
  = case coe v0 of
      C431 v1 v2 v3 v4 -> coe v2
      _ -> coe MAlonzo.RTE.mazUnreachableError
name342 = "Semiring.Definitions.Closed.\8721-comm"
d342 v0
  = case coe v0 of
      C431 v1 v2 v3 v4 -> coe v3
      _ -> coe MAlonzo.RTE.mazUnreachableError
name354 = "Semiring.Definitions.Closed.\8721-distrib"
d354 v0
  = case coe v0 of
      C431 v1 v2 v3 v4 -> coe v4
      _ -> coe MAlonzo.RTE.mazUnreachableError
name356 = "Semiring.Definitions.Decidable"
d356 = erased