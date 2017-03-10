{-# LANGUAGE EmptyDataDecls, ExistentialQuantification,
             ScopedTypeVariables, NoMonomorphismRestriction, Rank2Types #-}
module MAlonzo.Code.Algebra.Properties.Ring where

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
import qualified MAlonzo.Code.Algebra.Properties.AbelianGroup
import qualified MAlonzo.Code.Algebra.Properties.Group
import qualified MAlonzo.Code.Algebra.Structures
import qualified MAlonzo.Code.Data.Product
import qualified MAlonzo.Code.Function
import qualified MAlonzo.Code.Relation.Binary
import qualified MAlonzo.Code.Relation.Binary.Core
import qualified MAlonzo.Code.Relation.Binary.PreorderReasoning

name108 = "Algebra.Properties.Ring._.setoid"
d108 v0 v1 v2 = du108 v2
du108 v0
  = let v1 = coe MAlonzo.Code.Algebra.du1146 v0 in
    let v2
          = coe
              MAlonzo.Code.Algebra.C333 (coe MAlonzo.Code.Algebra.d712 v1)
              (coe MAlonzo.Code.Algebra.d714 v1)
              (coe MAlonzo.Code.Algebra.d716 v1)
              (coe MAlonzo.Code.Algebra.d718 v1)
              (coe
                 MAlonzo.Code.Algebra.Structures.d1728
                 (coe MAlonzo.Code.Algebra.d720 v1)) in
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
               MAlonzo.Code.Algebra.d100 (coe MAlonzo.Code.Algebra.du186 v3))))
name114 = "Algebra.Properties.Ring._.zero"
d114 v0 v1 v2 = du114 v2
du114 v0
  = coe
      MAlonzo.Code.Algebra.Structures.du2460
      (coe MAlonzo.Code.Algebra.d1074 v0)
      (coe MAlonzo.Code.Algebra.d1076 v0)
      (coe MAlonzo.Code.Algebra.d1078 v0)
      (coe MAlonzo.Code.Algebra.d1080 v0)
      (coe MAlonzo.Code.Algebra.d1084 v0)
name120 = "Algebra.Properties.Ring._._\8718"
d120 v0 v1 v2 = du120 v2
du120 v0
  = let v1
          = let v1 = coe MAlonzo.Code.Algebra.du1146 v0 in
            let v2
                  = coe
                      MAlonzo.Code.Algebra.C333 (coe MAlonzo.Code.Algebra.d712 v1)
                      (coe MAlonzo.Code.Algebra.d714 v1)
                      (coe MAlonzo.Code.Algebra.d716 v1)
                      (coe MAlonzo.Code.Algebra.d718 v1)
                      (coe
                         MAlonzo.Code.Algebra.Structures.d1728
                         (coe MAlonzo.Code.Algebra.d720 v1)) in
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
name122 = "Algebra.Properties.Ring._._\8764\10216_\10217_"
d122 v0 v1 v2 = du122 v2
du122 v0
  = let v1
          = let v1 = coe MAlonzo.Code.Algebra.du1146 v0 in
            let v2
                  = coe
                      MAlonzo.Code.Algebra.C333 (coe MAlonzo.Code.Algebra.d712 v1)
                      (coe MAlonzo.Code.Algebra.d714 v1)
                      (coe MAlonzo.Code.Algebra.d716 v1)
                      (coe MAlonzo.Code.Algebra.d718 v1)
                      (coe
                         MAlonzo.Code.Algebra.Structures.d1728
                         (coe MAlonzo.Code.Algebra.d720 v1)) in
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
    coe
      MAlonzo.Code.Relation.Binary.PreorderReasoning.du72
      (coe MAlonzo.Code.Relation.Binary.du150 v1)
name138 = "Algebra.Properties.Ring._.identity-unique"
d138 v0 v1 v2 = du138 v2
du138 v0
  = let v1
          = coe
              MAlonzo.Code.Algebra.C195 (coe MAlonzo.Code.Algebra.d1074 v0)
              (coe MAlonzo.Code.Algebra.d1080 v0)
              (coe MAlonzo.Code.Algebra.d1078 v0)
              (coe
                 MAlonzo.Code.Algebra.Structures.d2410
                 (coe MAlonzo.Code.Algebra.d1084 v0)) in
    coe
      MAlonzo.Code.Algebra.Properties.Group.du186
      (coe
         MAlonzo.Code.Algebra.C161 (coe MAlonzo.Code.Algebra.d366 v1)
         (coe MAlonzo.Code.Algebra.d368 v1)
         (coe MAlonzo.Code.Algebra.d370 v1)
         (coe
            MAlonzo.Code.Algebra.Structures.d994
            (coe MAlonzo.Code.Algebra.d372 v1)))
name140 = "Algebra.Properties.Ring._.left-identity-unique"
d140 v0 v1 v2 = du140 v2
du140 v0
  = let v1
          = coe
              MAlonzo.Code.Algebra.C195 (coe MAlonzo.Code.Algebra.d1074 v0)
              (coe MAlonzo.Code.Algebra.d1080 v0)
              (coe MAlonzo.Code.Algebra.d1078 v0)
              (coe
                 MAlonzo.Code.Algebra.Structures.d2410
                 (coe MAlonzo.Code.Algebra.d1084 v0)) in
    coe
      MAlonzo.Code.Algebra.Properties.Group.du164
      (coe
         MAlonzo.Code.Algebra.C161 (coe MAlonzo.Code.Algebra.d366 v1)
         (coe MAlonzo.Code.Algebra.d368 v1)
         (coe MAlonzo.Code.Algebra.d370 v1)
         (coe
            MAlonzo.Code.Algebra.Structures.d994
            (coe MAlonzo.Code.Algebra.d372 v1)))
name142 = "Algebra.Properties.Ring._.left-inverse-unique"
d142 v0 v1 v2 = du142 v2
du142 v0
  = let v1
          = coe
              MAlonzo.Code.Algebra.C195 (coe MAlonzo.Code.Algebra.d1074 v0)
              (coe MAlonzo.Code.Algebra.d1080 v0)
              (coe MAlonzo.Code.Algebra.d1078 v0)
              (coe
                 MAlonzo.Code.Algebra.Structures.d2410
                 (coe MAlonzo.Code.Algebra.d1084 v0)) in
    coe
      MAlonzo.Code.Algebra.Properties.Group.du196
      (coe
         MAlonzo.Code.Algebra.C161 (coe MAlonzo.Code.Algebra.d366 v1)
         (coe MAlonzo.Code.Algebra.d368 v1)
         (coe MAlonzo.Code.Algebra.d370 v1)
         (coe
            MAlonzo.Code.Algebra.Structures.d994
            (coe MAlonzo.Code.Algebra.d372 v1)))
name144 = "Algebra.Properties.Ring._.right-identity-unique"
d144 v0 v1 v2 = du144 v2
du144 v0
  = let v1
          = coe
              MAlonzo.Code.Algebra.C195 (coe MAlonzo.Code.Algebra.d1074 v0)
              (coe MAlonzo.Code.Algebra.d1080 v0)
              (coe MAlonzo.Code.Algebra.d1078 v0)
              (coe
                 MAlonzo.Code.Algebra.Structures.d2410
                 (coe MAlonzo.Code.Algebra.d1084 v0)) in
    coe
      MAlonzo.Code.Algebra.Properties.Group.du176
      (coe
         MAlonzo.Code.Algebra.C161 (coe MAlonzo.Code.Algebra.d366 v1)
         (coe MAlonzo.Code.Algebra.d368 v1)
         (coe MAlonzo.Code.Algebra.d370 v1)
         (coe
            MAlonzo.Code.Algebra.Structures.d994
            (coe MAlonzo.Code.Algebra.d372 v1)))
name146 = "Algebra.Properties.Ring._.right-inverse-unique"
d146 v0 v1 v2 = du146 v2
du146 v0
  = let v1
          = coe
              MAlonzo.Code.Algebra.C195 (coe MAlonzo.Code.Algebra.d1074 v0)
              (coe MAlonzo.Code.Algebra.d1080 v0)
              (coe MAlonzo.Code.Algebra.d1078 v0)
              (coe
                 MAlonzo.Code.Algebra.Structures.d2410
                 (coe MAlonzo.Code.Algebra.d1084 v0)) in
    coe
      MAlonzo.Code.Algebra.Properties.Group.du208
      (coe
         MAlonzo.Code.Algebra.C161 (coe MAlonzo.Code.Algebra.d366 v1)
         (coe MAlonzo.Code.Algebra.d368 v1)
         (coe MAlonzo.Code.Algebra.d370 v1)
         (coe
            MAlonzo.Code.Algebra.Structures.d994
            (coe MAlonzo.Code.Algebra.d372 v1)))
name148 = "Algebra.Properties.Ring._.\8315\185-\8729-comm"
d148 v0 v1 v2 = du148 v2
du148 v0
  = coe
      MAlonzo.Code.Algebra.Properties.AbelianGroup.du118
      (coe
         MAlonzo.Code.Algebra.C195 (coe MAlonzo.Code.Algebra.d1074 v0)
         (coe MAlonzo.Code.Algebra.d1080 v0)
         (coe MAlonzo.Code.Algebra.d1078 v0)
         (coe
            MAlonzo.Code.Algebra.Structures.d2410
            (coe MAlonzo.Code.Algebra.d1084 v0)))
name150 = "Algebra.Properties.Ring._.\8315\185-involutive"
d150 v0 v1 v2 = du150 v2
du150 v0
  = let v1
          = coe
              MAlonzo.Code.Algebra.C195 (coe MAlonzo.Code.Algebra.d1074 v0)
              (coe MAlonzo.Code.Algebra.d1080 v0)
              (coe MAlonzo.Code.Algebra.d1078 v0)
              (coe
                 MAlonzo.Code.Algebra.Structures.d2410
                 (coe MAlonzo.Code.Algebra.d1084 v0)) in
    coe
      MAlonzo.Code.Algebra.Properties.Group.du136
      (coe
         MAlonzo.Code.Algebra.C161 (coe MAlonzo.Code.Algebra.d366 v1)
         (coe MAlonzo.Code.Algebra.d368 v1)
         (coe MAlonzo.Code.Algebra.d370 v1)
         (coe
            MAlonzo.Code.Algebra.Structures.d994
            (coe MAlonzo.Code.Algebra.d372 v1)))
name156 = "Algebra.Properties.Ring.-\8255*-distrib\737"
d156 v0 v1 v2 v3 v4 = du156 v2 v3 v4
du156 v0 v1 v2
  = coe
      MAlonzo.Code.Relation.Binary.PreorderReasoning.d62
      (let v3
             = let v3 = coe MAlonzo.Code.Algebra.du1146 v0 in
               let v4
                     = coe
                         MAlonzo.Code.Algebra.C333 (coe MAlonzo.Code.Algebra.d712 v3)
                         (coe MAlonzo.Code.Algebra.d714 v3)
                         (coe MAlonzo.Code.Algebra.d716 v3)
                         (coe MAlonzo.Code.Algebra.d718 v3)
                         (coe
                            MAlonzo.Code.Algebra.Structures.d1728
                            (coe MAlonzo.Code.Algebra.d720 v3)) in
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
         (MAlonzo.Code.Relation.Binary.du150 v3)
         (MAlonzo.Code.Algebra.d1076
            v0 (MAlonzo.Code.Algebra.d1078 v0 v1) v2)
         (MAlonzo.Code.Algebra.d1074
            v0
            (MAlonzo.Code.Algebra.d1076
               v0 (MAlonzo.Code.Algebra.d1078 v0 v1) v2)
            (MAlonzo.Code.Algebra.d1080 v0))
         (MAlonzo.Code.Algebra.d1078
            v0 (MAlonzo.Code.Algebra.d1076 v0 v1 v2))
         (MAlonzo.Code.Function.du158
            (MAlonzo.Code.Relation.Binary.Core.d518
               (MAlonzo.Code.Algebra.Structures.d140
                  (MAlonzo.Code.Algebra.Structures.d294
                     (MAlonzo.Code.Algebra.Structures.d820
                        (MAlonzo.Code.Algebra.Structures.d994
                           (MAlonzo.Code.Algebra.Structures.d2410
                              (MAlonzo.Code.Algebra.d1084 v0))))))
               (MAlonzo.Code.Algebra.d1074
                  v0
                  (MAlonzo.Code.Algebra.d1076
                     v0 (MAlonzo.Code.Algebra.d1078 v0 v1) v2)
                  (MAlonzo.Code.Algebra.d1080 v0))
               (MAlonzo.Code.Algebra.d1076
                  v0 (MAlonzo.Code.Algebra.d1078 v0 v1) v2))
            (MAlonzo.Code.Data.Product.d28
               (MAlonzo.Code.Algebra.Structures.d296
                  (MAlonzo.Code.Algebra.Structures.d820
                     (MAlonzo.Code.Algebra.Structures.d994
                        (MAlonzo.Code.Algebra.Structures.d2410
                           (MAlonzo.Code.Algebra.d1084 v0)))))
               (MAlonzo.Code.Algebra.d1076
                  v0 (MAlonzo.Code.Algebra.d1078 v0 v1) v2)))
         (let v4
                = let v4 = coe MAlonzo.Code.Algebra.du1146 v0 in
                  let v5
                        = coe
                            MAlonzo.Code.Algebra.C333 (coe MAlonzo.Code.Algebra.d712 v4)
                            (coe MAlonzo.Code.Algebra.d714 v4)
                            (coe MAlonzo.Code.Algebra.d716 v4)
                            (coe MAlonzo.Code.Algebra.d718 v4)
                            (coe
                               MAlonzo.Code.Algebra.Structures.d1728
                               (coe MAlonzo.Code.Algebra.d720 v4)) in
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
            (MAlonzo.Code.Relation.Binary.du150 v4)
            (MAlonzo.Code.Algebra.d1074
               v0
               (MAlonzo.Code.Algebra.d1076
                  v0 (MAlonzo.Code.Algebra.d1078 v0 v1) v2)
               (MAlonzo.Code.Algebra.d1080 v0))
            (MAlonzo.Code.Algebra.d1074
               v0
               (MAlonzo.Code.Algebra.d1076
                  v0 (MAlonzo.Code.Algebra.d1078 v0 v1) v2)
               (MAlonzo.Code.Algebra.d1074
                  v0 (MAlonzo.Code.Algebra.d1076 v0 v1 v2)
                  (MAlonzo.Code.Algebra.d1078
                     v0 (MAlonzo.Code.Algebra.d1076 v0 v1 v2))))
            (MAlonzo.Code.Algebra.d1078
               v0 (MAlonzo.Code.Algebra.d1076 v0 v1 v2))
            (MAlonzo.Code.Function.du176
               (MAlonzo.Code.Relation.Binary.Core.d516
                  (MAlonzo.Code.Algebra.Structures.d140
                     (MAlonzo.Code.Algebra.Structures.d294
                        (MAlonzo.Code.Algebra.Structures.d820
                           (MAlonzo.Code.Algebra.Structures.d994
                              (MAlonzo.Code.Algebra.Structures.d2410
                                 (MAlonzo.Code.Algebra.d1084 v0))))))
                  (MAlonzo.Code.Algebra.d1076
                     v0 (MAlonzo.Code.Algebra.d1078 v0 v1) v2))
               (MAlonzo.Code.Algebra.Structures.d144
                  (MAlonzo.Code.Algebra.Structures.d294
                     (MAlonzo.Code.Algebra.Structures.d820
                        (MAlonzo.Code.Algebra.Structures.d994
                           (MAlonzo.Code.Algebra.Structures.d2410
                              (MAlonzo.Code.Algebra.d1084 v0)))))
                  (MAlonzo.Code.Algebra.d1076
                     v0 (MAlonzo.Code.Algebra.d1078 v0 v1) v2)
                  (MAlonzo.Code.Algebra.d1076
                     v0 (MAlonzo.Code.Algebra.d1078 v0 v1) v2)
                  (MAlonzo.Code.Algebra.d1080 v0)
                  (MAlonzo.Code.Algebra.d1074
                     v0 (MAlonzo.Code.Algebra.d1076 v0 v1 v2)
                     (MAlonzo.Code.Algebra.d1078
                        v0 (MAlonzo.Code.Algebra.d1076 v0 v1 v2))))
               (MAlonzo.Code.Relation.Binary.Core.d518
                  (MAlonzo.Code.Algebra.Structures.d140
                     (MAlonzo.Code.Algebra.Structures.d294
                        (MAlonzo.Code.Algebra.Structures.d820
                           (MAlonzo.Code.Algebra.Structures.d994
                              (MAlonzo.Code.Algebra.Structures.d2410
                                 (MAlonzo.Code.Algebra.d1084 v0))))))
                  (MAlonzo.Code.Algebra.d1074
                     v0 (MAlonzo.Code.Algebra.d1076 v0 v1 v2)
                     (MAlonzo.Code.Algebra.d1078
                        v0 (MAlonzo.Code.Algebra.d1076 v0 v1 v2)))
                  (MAlonzo.Code.Algebra.d1080 v0)
                  (MAlonzo.Code.Data.Product.d28
                     (MAlonzo.Code.Algebra.Structures.d822
                        (MAlonzo.Code.Algebra.Structures.d994
                           (MAlonzo.Code.Algebra.Structures.d2410
                              (MAlonzo.Code.Algebra.d1084 v0))))
                     (MAlonzo.Code.Algebra.d1076 v0 v1 v2))))
            (let v5
                   = let v5 = coe MAlonzo.Code.Algebra.du1146 v0 in
                     let v6
                           = coe
                               MAlonzo.Code.Algebra.C333 (coe MAlonzo.Code.Algebra.d712 v5)
                               (coe MAlonzo.Code.Algebra.d714 v5)
                               (coe MAlonzo.Code.Algebra.d716 v5)
                               (coe MAlonzo.Code.Algebra.d718 v5)
                               (coe
                                  MAlonzo.Code.Algebra.Structures.d1728
                                  (coe MAlonzo.Code.Algebra.d720 v5)) in
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
               (MAlonzo.Code.Relation.Binary.du150 v5)
               (MAlonzo.Code.Algebra.d1074
                  v0
                  (MAlonzo.Code.Algebra.d1076
                     v0 (MAlonzo.Code.Algebra.d1078 v0 v1) v2)
                  (MAlonzo.Code.Algebra.d1074
                     v0 (MAlonzo.Code.Algebra.d1076 v0 v1 v2)
                     (MAlonzo.Code.Algebra.d1078
                        v0 (MAlonzo.Code.Algebra.d1076 v0 v1 v2))))
               (MAlonzo.Code.Algebra.d1074
                  v0
                  (MAlonzo.Code.Algebra.d1074
                     v0
                     (MAlonzo.Code.Algebra.d1076
                        v0 (MAlonzo.Code.Algebra.d1078 v0 v1) v2)
                     (MAlonzo.Code.Algebra.d1076 v0 v1 v2))
                  (MAlonzo.Code.Algebra.d1078
                     v0 (MAlonzo.Code.Algebra.d1076 v0 v1 v2)))
               (MAlonzo.Code.Algebra.d1078
                  v0 (MAlonzo.Code.Algebra.d1076 v0 v1 v2))
               (MAlonzo.Code.Function.du158
                  (MAlonzo.Code.Relation.Binary.Core.d518
                     (MAlonzo.Code.Algebra.Structures.d140
                        (MAlonzo.Code.Algebra.Structures.d294
                           (MAlonzo.Code.Algebra.Structures.d820
                              (MAlonzo.Code.Algebra.Structures.d994
                                 (MAlonzo.Code.Algebra.Structures.d2410
                                    (MAlonzo.Code.Algebra.d1084 v0))))))
                     (MAlonzo.Code.Algebra.d1074
                        v0
                        (MAlonzo.Code.Algebra.d1074
                           v0
                           (MAlonzo.Code.Algebra.d1076
                              v0 (MAlonzo.Code.Algebra.d1078 v0 v1) v2)
                           (MAlonzo.Code.Algebra.d1076 v0 v1 v2))
                        (MAlonzo.Code.Algebra.d1078
                           v0 (MAlonzo.Code.Algebra.d1076 v0 v1 v2)))
                     (MAlonzo.Code.Algebra.d1074
                        v0
                        (MAlonzo.Code.Algebra.d1076
                           v0 (MAlonzo.Code.Algebra.d1078 v0 v1) v2)
                        (MAlonzo.Code.Algebra.d1074
                           v0 (MAlonzo.Code.Algebra.d1076 v0 v1 v2)
                           (MAlonzo.Code.Algebra.d1078
                              v0 (MAlonzo.Code.Algebra.d1076 v0 v1 v2)))))
                  (MAlonzo.Code.Algebra.Structures.d142
                     (MAlonzo.Code.Algebra.Structures.d294
                        (MAlonzo.Code.Algebra.Structures.d820
                           (MAlonzo.Code.Algebra.Structures.d994
                              (MAlonzo.Code.Algebra.Structures.d2410
                                 (MAlonzo.Code.Algebra.d1084 v0)))))
                     (MAlonzo.Code.Algebra.d1076
                        v0 (MAlonzo.Code.Algebra.d1078 v0 v1) v2)
                     (MAlonzo.Code.Algebra.d1076 v0 v1 v2)
                     (MAlonzo.Code.Algebra.d1078
                        v0 (MAlonzo.Code.Algebra.d1076 v0 v1 v2))))
               (let v6
                      = let v6 = coe MAlonzo.Code.Algebra.du1146 v0 in
                        let v7
                              = coe
                                  MAlonzo.Code.Algebra.C333 (coe MAlonzo.Code.Algebra.d712 v6)
                                  (coe MAlonzo.Code.Algebra.d714 v6)
                                  (coe MAlonzo.Code.Algebra.d716 v6)
                                  (coe MAlonzo.Code.Algebra.d718 v6)
                                  (coe
                                     MAlonzo.Code.Algebra.Structures.d1728
                                     (coe MAlonzo.Code.Algebra.d720 v6)) in
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
                  (MAlonzo.Code.Relation.Binary.du150 v6)
                  (MAlonzo.Code.Algebra.d1074
                     v0
                     (MAlonzo.Code.Algebra.d1074
                        v0
                        (MAlonzo.Code.Algebra.d1076
                           v0 (MAlonzo.Code.Algebra.d1078 v0 v1) v2)
                        (MAlonzo.Code.Algebra.d1076 v0 v1 v2))
                     (MAlonzo.Code.Algebra.d1078
                        v0 (MAlonzo.Code.Algebra.d1076 v0 v1 v2)))
                  (MAlonzo.Code.Algebra.d1074
                     v0
                     (MAlonzo.Code.Algebra.d1076
                        v0
                        (MAlonzo.Code.Algebra.d1074
                           v0 (MAlonzo.Code.Algebra.d1078 v0 v1) v1)
                        v2)
                     (MAlonzo.Code.Algebra.d1078
                        v0 (MAlonzo.Code.Algebra.d1076 v0 v1 v2)))
                  (MAlonzo.Code.Algebra.d1078
                     v0 (MAlonzo.Code.Algebra.d1076 v0 v1 v2))
                  (MAlonzo.Code.Function.du176
                     (MAlonzo.Code.Relation.Binary.Core.d518
                        (MAlonzo.Code.Algebra.Structures.d140
                           (MAlonzo.Code.Algebra.Structures.d294
                              (MAlonzo.Code.Algebra.Structures.d820
                                 (MAlonzo.Code.Algebra.Structures.d994
                                    (MAlonzo.Code.Algebra.Structures.d2410
                                       (MAlonzo.Code.Algebra.d1084 v0))))))
                        (MAlonzo.Code.Algebra.d1076
                           v0
                           (MAlonzo.Code.Algebra.d1074
                              v0 (MAlonzo.Code.Algebra.d1078 v0 v1) v1)
                           v2)
                        (MAlonzo.Code.Algebra.d1074
                           v0
                           (MAlonzo.Code.Algebra.d1076
                              v0 (MAlonzo.Code.Algebra.d1078 v0 v1) v2)
                           (MAlonzo.Code.Algebra.d1076 v0 v1 v2))
                        (MAlonzo.Code.Data.Product.d28
                           (MAlonzo.Code.Algebra.Structures.d2414
                              (MAlonzo.Code.Algebra.d1084 v0))
                           v2 (MAlonzo.Code.Algebra.d1078 v0 v1) v1))
                     (MAlonzo.Code.Algebra.Structures.d144
                        (MAlonzo.Code.Algebra.Structures.d294
                           (MAlonzo.Code.Algebra.Structures.d820
                              (MAlonzo.Code.Algebra.Structures.d994
                                 (MAlonzo.Code.Algebra.Structures.d2410
                                    (MAlonzo.Code.Algebra.d1084 v0)))))
                        (MAlonzo.Code.Algebra.d1074
                           v0
                           (MAlonzo.Code.Algebra.d1076
                              v0 (MAlonzo.Code.Algebra.d1078 v0 v1) v2)
                           (MAlonzo.Code.Algebra.d1076 v0 v1 v2))
                        (MAlonzo.Code.Algebra.d1076
                           v0
                           (MAlonzo.Code.Algebra.d1074
                              v0 (MAlonzo.Code.Algebra.d1078 v0 v1) v1)
                           v2)
                        (MAlonzo.Code.Algebra.d1078
                           v0 (MAlonzo.Code.Algebra.d1076 v0 v1 v2))
                        (MAlonzo.Code.Algebra.d1078
                           v0 (MAlonzo.Code.Algebra.d1076 v0 v1 v2)))
                     (MAlonzo.Code.Relation.Binary.Core.d516
                        (MAlonzo.Code.Algebra.Structures.d140
                           (MAlonzo.Code.Algebra.Structures.d294
                              (MAlonzo.Code.Algebra.Structures.d820
                                 (MAlonzo.Code.Algebra.Structures.d994
                                    (MAlonzo.Code.Algebra.Structures.d2410
                                       (MAlonzo.Code.Algebra.d1084 v0))))))
                        (MAlonzo.Code.Algebra.d1078
                           v0 (MAlonzo.Code.Algebra.d1076 v0 v1 v2))))
                  (let v7
                         = let v7 = coe MAlonzo.Code.Algebra.du1146 v0 in
                           let v8
                                 = coe
                                     MAlonzo.Code.Algebra.C333 (coe MAlonzo.Code.Algebra.d712 v7)
                                     (coe MAlonzo.Code.Algebra.d714 v7)
                                     (coe MAlonzo.Code.Algebra.d716 v7)
                                     (coe MAlonzo.Code.Algebra.d718 v7)
                                     (coe
                                        MAlonzo.Code.Algebra.Structures.d1728
                                        (coe MAlonzo.Code.Algebra.d720 v7)) in
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
                     (MAlonzo.Code.Relation.Binary.du150 v7)
                     (MAlonzo.Code.Algebra.d1074
                        v0
                        (MAlonzo.Code.Algebra.d1076
                           v0
                           (MAlonzo.Code.Algebra.d1074
                              v0 (MAlonzo.Code.Algebra.d1078 v0 v1) v1)
                           v2)
                        (MAlonzo.Code.Algebra.d1078
                           v0 (MAlonzo.Code.Algebra.d1076 v0 v1 v2)))
                     (MAlonzo.Code.Algebra.d1074
                        v0
                        (MAlonzo.Code.Algebra.d1076 v0 (MAlonzo.Code.Algebra.d1080 v0) v2)
                        (MAlonzo.Code.Algebra.d1078
                           v0 (MAlonzo.Code.Algebra.d1076 v0 v1 v2)))
                     (MAlonzo.Code.Algebra.d1078
                        v0 (MAlonzo.Code.Algebra.d1076 v0 v1 v2))
                     (MAlonzo.Code.Function.du176
                        (MAlonzo.Code.Function.du176
                           (MAlonzo.Code.Data.Product.d26
                              (MAlonzo.Code.Algebra.Structures.d822
                                 (MAlonzo.Code.Algebra.Structures.d994
                                    (MAlonzo.Code.Algebra.Structures.d2410
                                       (MAlonzo.Code.Algebra.d1084 v0))))
                              v1)
                           (MAlonzo.Code.Algebra.Structures.d144
                              (MAlonzo.Code.Algebra.Structures.d294
                                 (MAlonzo.Code.Algebra.Structures.d2412
                                    (MAlonzo.Code.Algebra.d1084 v0)))
                              (MAlonzo.Code.Algebra.d1074
                                 v0 (MAlonzo.Code.Algebra.d1078 v0 v1) v1)
                              (MAlonzo.Code.Algebra.d1080 v0) v2 v2)
                           (MAlonzo.Code.Relation.Binary.Core.d516
                              (MAlonzo.Code.Algebra.Structures.d140
                                 (MAlonzo.Code.Algebra.Structures.d294
                                    (MAlonzo.Code.Algebra.Structures.d820
                                       (MAlonzo.Code.Algebra.Structures.d994
                                          (MAlonzo.Code.Algebra.Structures.d2410
                                             (MAlonzo.Code.Algebra.d1084 v0))))))
                              v2))
                        (MAlonzo.Code.Algebra.Structures.d144
                           (MAlonzo.Code.Algebra.Structures.d294
                              (MAlonzo.Code.Algebra.Structures.d820
                                 (MAlonzo.Code.Algebra.Structures.d994
                                    (MAlonzo.Code.Algebra.Structures.d2410
                                       (MAlonzo.Code.Algebra.d1084 v0)))))
                           (MAlonzo.Code.Algebra.d1076
                              v0
                              (MAlonzo.Code.Algebra.d1074
                                 v0 (MAlonzo.Code.Algebra.d1078 v0 v1) v1)
                              v2)
                           (MAlonzo.Code.Algebra.d1076 v0 (MAlonzo.Code.Algebra.d1080 v0) v2)
                           (MAlonzo.Code.Algebra.d1078
                              v0 (MAlonzo.Code.Algebra.d1076 v0 v1 v2))
                           (MAlonzo.Code.Algebra.d1078
                              v0 (MAlonzo.Code.Algebra.d1076 v0 v1 v2)))
                        (MAlonzo.Code.Relation.Binary.Core.d516
                           (MAlonzo.Code.Algebra.Structures.d140
                              (MAlonzo.Code.Algebra.Structures.d294
                                 (MAlonzo.Code.Algebra.Structures.d820
                                    (MAlonzo.Code.Algebra.Structures.d994
                                       (MAlonzo.Code.Algebra.Structures.d2410
                                          (MAlonzo.Code.Algebra.d1084 v0))))))
                           (MAlonzo.Code.Algebra.d1078
                              v0 (MAlonzo.Code.Algebra.d1076 v0 v1 v2))))
                     (let v8
                            = let v8 = coe MAlonzo.Code.Algebra.du1146 v0 in
                              let v9
                                    = coe
                                        MAlonzo.Code.Algebra.C333 (coe MAlonzo.Code.Algebra.d712 v8)
                                        (coe MAlonzo.Code.Algebra.d714 v8)
                                        (coe MAlonzo.Code.Algebra.d716 v8)
                                        (coe MAlonzo.Code.Algebra.d718 v8)
                                        (coe
                                           MAlonzo.Code.Algebra.Structures.d1728
                                           (coe MAlonzo.Code.Algebra.d720 v8)) in
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
                        (MAlonzo.Code.Relation.Binary.du150 v8)
                        (MAlonzo.Code.Algebra.d1074
                           v0
                           (MAlonzo.Code.Algebra.d1076 v0 (MAlonzo.Code.Algebra.d1080 v0) v2)
                           (MAlonzo.Code.Algebra.d1078
                              v0 (MAlonzo.Code.Algebra.d1076 v0 v1 v2)))
                        (MAlonzo.Code.Algebra.d1074
                           v0 (MAlonzo.Code.Algebra.d1080 v0)
                           (MAlonzo.Code.Algebra.d1078
                              v0 (MAlonzo.Code.Algebra.d1076 v0 v1 v2)))
                        (MAlonzo.Code.Algebra.d1078
                           v0 (MAlonzo.Code.Algebra.d1076 v0 v1 v2))
                        (MAlonzo.Code.Function.du176
                           (MAlonzo.Code.Data.Product.d26
                              (MAlonzo.Code.Algebra.Structures.du2460
                                 (MAlonzo.Code.Algebra.d1074 v0) (MAlonzo.Code.Algebra.d1076 v0)
                                 (MAlonzo.Code.Algebra.d1078 v0) (MAlonzo.Code.Algebra.d1080 v0)
                                 (MAlonzo.Code.Algebra.d1084 v0))
                              v2)
                           (MAlonzo.Code.Algebra.Structures.d144
                              (MAlonzo.Code.Algebra.Structures.d294
                                 (MAlonzo.Code.Algebra.Structures.d820
                                    (MAlonzo.Code.Algebra.Structures.d994
                                       (MAlonzo.Code.Algebra.Structures.d2410
                                          (MAlonzo.Code.Algebra.d1084 v0)))))
                              (MAlonzo.Code.Algebra.d1076 v0 (MAlonzo.Code.Algebra.d1080 v0) v2)
                              (MAlonzo.Code.Algebra.d1080 v0)
                              (MAlonzo.Code.Algebra.d1078
                                 v0 (MAlonzo.Code.Algebra.d1076 v0 v1 v2))
                              (MAlonzo.Code.Algebra.d1078
                                 v0 (MAlonzo.Code.Algebra.d1076 v0 v1 v2)))
                           (MAlonzo.Code.Relation.Binary.Core.d516
                              (MAlonzo.Code.Algebra.Structures.d140
                                 (MAlonzo.Code.Algebra.Structures.d294
                                    (MAlonzo.Code.Algebra.Structures.d820
                                       (MAlonzo.Code.Algebra.Structures.d994
                                          (MAlonzo.Code.Algebra.Structures.d2410
                                             (MAlonzo.Code.Algebra.d1084 v0))))))
                              (MAlonzo.Code.Algebra.d1078
                                 v0 (MAlonzo.Code.Algebra.d1076 v0 v1 v2))))
                        (let v9
                               = let v9 = coe MAlonzo.Code.Algebra.du1146 v0 in
                                 let v10
                                       = coe
                                           MAlonzo.Code.Algebra.C333
                                           (coe MAlonzo.Code.Algebra.d712 v9)
                                           (coe MAlonzo.Code.Algebra.d714 v9)
                                           (coe MAlonzo.Code.Algebra.d716 v9)
                                           (coe MAlonzo.Code.Algebra.d718 v9)
                                           (coe
                                              MAlonzo.Code.Algebra.Structures.d1728
                                              (coe MAlonzo.Code.Algebra.d720 v9)) in
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
                           (MAlonzo.Code.Relation.Binary.du150 v9)
                           (MAlonzo.Code.Algebra.d1074
                              v0 (MAlonzo.Code.Algebra.d1080 v0)
                              (MAlonzo.Code.Algebra.d1078
                                 v0 (MAlonzo.Code.Algebra.d1076 v0 v1 v2)))
                           (MAlonzo.Code.Algebra.d1078
                              v0 (MAlonzo.Code.Algebra.d1076 v0 v1 v2))
                           (MAlonzo.Code.Algebra.d1078
                              v0 (MAlonzo.Code.Algebra.d1076 v0 v1 v2))
                           (MAlonzo.Code.Data.Product.d26
                              (MAlonzo.Code.Algebra.Structures.d296
                                 (MAlonzo.Code.Algebra.Structures.d820
                                    (MAlonzo.Code.Algebra.Structures.d994
                                       (MAlonzo.Code.Algebra.Structures.d2410
                                          (MAlonzo.Code.Algebra.d1084 v0)))))
                              (MAlonzo.Code.Algebra.d1078
                                 v0 (MAlonzo.Code.Algebra.d1076 v0 v1 v2)))
                           (let v10
                                  = let v10 = coe MAlonzo.Code.Algebra.du1146 v0 in
                                    let v11
                                          = coe
                                              MAlonzo.Code.Algebra.C333
                                              (coe MAlonzo.Code.Algebra.d712 v10)
                                              (coe MAlonzo.Code.Algebra.d714 v10)
                                              (coe MAlonzo.Code.Algebra.d716 v10)
                                              (coe MAlonzo.Code.Algebra.d718 v10)
                                              (coe
                                                 MAlonzo.Code.Algebra.Structures.d1728
                                                 (coe MAlonzo.Code.Algebra.d720 v10)) in
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
                            let v11
                                  = coe
                                      MAlonzo.Code.Algebra.d1078 v0
                                      (coe MAlonzo.Code.Algebra.d1076 v0 v1 v2) in
                            MAlonzo.Code.Relation.Binary.PreorderReasoning.C56
                              (MAlonzo.Code.Relation.Binary.d38
                                 (MAlonzo.Code.Relation.Binary.d92
                                    (MAlonzo.Code.Relation.Binary.du150 v10))
                                 v11 v11
                                 (MAlonzo.Code.Relation.Binary.Core.d516
                                    (MAlonzo.Code.Relation.Binary.d36
                                       (MAlonzo.Code.Relation.Binary.d92
                                          (MAlonzo.Code.Relation.Binary.du150 v10)))
                                    v11))))))))))
name166 = "Algebra.Properties.Ring.-\8255*-distrib\691"
d166 v0 v1 v2 v3 v4 = du166 v2 v3 v4
du166 v0 v1 v2
  = coe
      MAlonzo.Code.Relation.Binary.PreorderReasoning.d62
      (let v3
             = let v3 = coe MAlonzo.Code.Algebra.du1146 v0 in
               let v4
                     = coe
                         MAlonzo.Code.Algebra.C333 (coe MAlonzo.Code.Algebra.d712 v3)
                         (coe MAlonzo.Code.Algebra.d714 v3)
                         (coe MAlonzo.Code.Algebra.d716 v3)
                         (coe MAlonzo.Code.Algebra.d718 v3)
                         (coe
                            MAlonzo.Code.Algebra.Structures.d1728
                            (coe MAlonzo.Code.Algebra.d720 v3)) in
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
         (MAlonzo.Code.Relation.Binary.du150 v3)
         (MAlonzo.Code.Algebra.d1076
            v0 v1 (MAlonzo.Code.Algebra.d1078 v0 v2))
         (MAlonzo.Code.Algebra.d1074
            v0 (MAlonzo.Code.Algebra.d1080 v0)
            (MAlonzo.Code.Algebra.d1076
               v0 v1 (MAlonzo.Code.Algebra.d1078 v0 v2)))
         (MAlonzo.Code.Algebra.d1078
            v0 (MAlonzo.Code.Algebra.d1076 v0 v1 v2))
         (MAlonzo.Code.Function.du158
            (MAlonzo.Code.Relation.Binary.Core.d518
               (MAlonzo.Code.Algebra.Structures.d140
                  (MAlonzo.Code.Algebra.Structures.d294
                     (MAlonzo.Code.Algebra.Structures.d820
                        (MAlonzo.Code.Algebra.Structures.d994
                           (MAlonzo.Code.Algebra.Structures.d2410
                              (MAlonzo.Code.Algebra.d1084 v0))))))
               (MAlonzo.Code.Algebra.d1074
                  v0 (MAlonzo.Code.Algebra.d1080 v0)
                  (MAlonzo.Code.Algebra.d1076
                     v0 v1 (MAlonzo.Code.Algebra.d1078 v0 v2)))
               (MAlonzo.Code.Algebra.d1076
                  v0 v1 (MAlonzo.Code.Algebra.d1078 v0 v2)))
            (MAlonzo.Code.Data.Product.d26
               (MAlonzo.Code.Algebra.Structures.d296
                  (MAlonzo.Code.Algebra.Structures.d820
                     (MAlonzo.Code.Algebra.Structures.d994
                        (MAlonzo.Code.Algebra.Structures.d2410
                           (MAlonzo.Code.Algebra.d1084 v0)))))
               (MAlonzo.Code.Algebra.d1076
                  v0 v1 (MAlonzo.Code.Algebra.d1078 v0 v2))))
         (let v4
                = let v4 = coe MAlonzo.Code.Algebra.du1146 v0 in
                  let v5
                        = coe
                            MAlonzo.Code.Algebra.C333 (coe MAlonzo.Code.Algebra.d712 v4)
                            (coe MAlonzo.Code.Algebra.d714 v4)
                            (coe MAlonzo.Code.Algebra.d716 v4)
                            (coe MAlonzo.Code.Algebra.d718 v4)
                            (coe
                               MAlonzo.Code.Algebra.Structures.d1728
                               (coe MAlonzo.Code.Algebra.d720 v4)) in
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
            (MAlonzo.Code.Relation.Binary.du150 v4)
            (MAlonzo.Code.Algebra.d1074
               v0 (MAlonzo.Code.Algebra.d1080 v0)
               (MAlonzo.Code.Algebra.d1076
                  v0 v1 (MAlonzo.Code.Algebra.d1078 v0 v2)))
            (MAlonzo.Code.Algebra.d1074
               v0
               (MAlonzo.Code.Algebra.d1074
                  v0
                  (MAlonzo.Code.Algebra.d1078
                     v0 (MAlonzo.Code.Algebra.d1076 v0 v1 v2))
                  (MAlonzo.Code.Algebra.d1076 v0 v1 v2))
               (MAlonzo.Code.Algebra.d1076
                  v0 v1 (MAlonzo.Code.Algebra.d1078 v0 v2)))
            (MAlonzo.Code.Algebra.d1078
               v0 (MAlonzo.Code.Algebra.d1076 v0 v1 v2))
            (MAlonzo.Code.Function.du176
               (MAlonzo.Code.Relation.Binary.Core.d518
                  (MAlonzo.Code.Algebra.Structures.d140
                     (MAlonzo.Code.Algebra.Structures.d294
                        (MAlonzo.Code.Algebra.Structures.d820
                           (MAlonzo.Code.Algebra.Structures.d994
                              (MAlonzo.Code.Algebra.Structures.d2410
                                 (MAlonzo.Code.Algebra.d1084 v0))))))
                  (MAlonzo.Code.Algebra.d1074
                     v0
                     (MAlonzo.Code.Algebra.d1078
                        v0 (MAlonzo.Code.Algebra.d1076 v0 v1 v2))
                     (MAlonzo.Code.Algebra.d1076 v0 v1 v2))
                  (MAlonzo.Code.Algebra.d1080 v0)
                  (MAlonzo.Code.Data.Product.d26
                     (MAlonzo.Code.Algebra.Structures.d822
                        (MAlonzo.Code.Algebra.Structures.d994
                           (MAlonzo.Code.Algebra.Structures.d2410
                              (MAlonzo.Code.Algebra.d1084 v0))))
                     (MAlonzo.Code.Algebra.d1076 v0 v1 v2)))
               (MAlonzo.Code.Algebra.Structures.d144
                  (MAlonzo.Code.Algebra.Structures.d294
                     (MAlonzo.Code.Algebra.Structures.d820
                        (MAlonzo.Code.Algebra.Structures.d994
                           (MAlonzo.Code.Algebra.Structures.d2410
                              (MAlonzo.Code.Algebra.d1084 v0)))))
                  (MAlonzo.Code.Algebra.d1080 v0)
                  (MAlonzo.Code.Algebra.d1074
                     v0
                     (MAlonzo.Code.Algebra.d1078
                        v0 (MAlonzo.Code.Algebra.d1076 v0 v1 v2))
                     (MAlonzo.Code.Algebra.d1076 v0 v1 v2))
                  (MAlonzo.Code.Algebra.d1076
                     v0 v1 (MAlonzo.Code.Algebra.d1078 v0 v2))
                  (MAlonzo.Code.Algebra.d1076
                     v0 v1 (MAlonzo.Code.Algebra.d1078 v0 v2)))
               (MAlonzo.Code.Relation.Binary.Core.d516
                  (MAlonzo.Code.Algebra.Structures.d140
                     (MAlonzo.Code.Algebra.Structures.d294
                        (MAlonzo.Code.Algebra.Structures.d820
                           (MAlonzo.Code.Algebra.Structures.d994
                              (MAlonzo.Code.Algebra.Structures.d2410
                                 (MAlonzo.Code.Algebra.d1084 v0))))))
                  (MAlonzo.Code.Algebra.d1076
                     v0 v1 (MAlonzo.Code.Algebra.d1078 v0 v2))))
            (let v5
                   = let v5 = coe MAlonzo.Code.Algebra.du1146 v0 in
                     let v6
                           = coe
                               MAlonzo.Code.Algebra.C333 (coe MAlonzo.Code.Algebra.d712 v5)
                               (coe MAlonzo.Code.Algebra.d714 v5)
                               (coe MAlonzo.Code.Algebra.d716 v5)
                               (coe MAlonzo.Code.Algebra.d718 v5)
                               (coe
                                  MAlonzo.Code.Algebra.Structures.d1728
                                  (coe MAlonzo.Code.Algebra.d720 v5)) in
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
               (MAlonzo.Code.Relation.Binary.du150 v5)
               (MAlonzo.Code.Algebra.d1074
                  v0
                  (MAlonzo.Code.Algebra.d1074
                     v0
                     (MAlonzo.Code.Algebra.d1078
                        v0 (MAlonzo.Code.Algebra.d1076 v0 v1 v2))
                     (MAlonzo.Code.Algebra.d1076 v0 v1 v2))
                  (MAlonzo.Code.Algebra.d1076
                     v0 v1 (MAlonzo.Code.Algebra.d1078 v0 v2)))
               (MAlonzo.Code.Algebra.d1074
                  v0
                  (MAlonzo.Code.Algebra.d1078
                     v0 (MAlonzo.Code.Algebra.d1076 v0 v1 v2))
                  (MAlonzo.Code.Algebra.d1074
                     v0 (MAlonzo.Code.Algebra.d1076 v0 v1 v2)
                     (MAlonzo.Code.Algebra.d1076
                        v0 v1 (MAlonzo.Code.Algebra.d1078 v0 v2))))
               (MAlonzo.Code.Algebra.d1078
                  v0 (MAlonzo.Code.Algebra.d1076 v0 v1 v2))
               (MAlonzo.Code.Algebra.Structures.d142
                  (MAlonzo.Code.Algebra.Structures.d294
                     (MAlonzo.Code.Algebra.Structures.d820
                        (MAlonzo.Code.Algebra.Structures.d994
                           (MAlonzo.Code.Algebra.Structures.d2410
                              (MAlonzo.Code.Algebra.d1084 v0)))))
                  (MAlonzo.Code.Algebra.d1078
                     v0 (MAlonzo.Code.Algebra.d1076 v0 v1 v2))
                  (MAlonzo.Code.Algebra.d1076 v0 v1 v2)
                  (MAlonzo.Code.Algebra.d1076
                     v0 v1 (MAlonzo.Code.Algebra.d1078 v0 v2)))
               (let v6
                      = let v6 = coe MAlonzo.Code.Algebra.du1146 v0 in
                        let v7
                              = coe
                                  MAlonzo.Code.Algebra.C333 (coe MAlonzo.Code.Algebra.d712 v6)
                                  (coe MAlonzo.Code.Algebra.d714 v6)
                                  (coe MAlonzo.Code.Algebra.d716 v6)
                                  (coe MAlonzo.Code.Algebra.d718 v6)
                                  (coe
                                     MAlonzo.Code.Algebra.Structures.d1728
                                     (coe MAlonzo.Code.Algebra.d720 v6)) in
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
                  (MAlonzo.Code.Relation.Binary.du150 v6)
                  (MAlonzo.Code.Algebra.d1074
                     v0
                     (MAlonzo.Code.Algebra.d1078
                        v0 (MAlonzo.Code.Algebra.d1076 v0 v1 v2))
                     (MAlonzo.Code.Algebra.d1074
                        v0 (MAlonzo.Code.Algebra.d1076 v0 v1 v2)
                        (MAlonzo.Code.Algebra.d1076
                           v0 v1 (MAlonzo.Code.Algebra.d1078 v0 v2))))
                  (MAlonzo.Code.Algebra.d1074
                     v0
                     (MAlonzo.Code.Algebra.d1078
                        v0 (MAlonzo.Code.Algebra.d1076 v0 v1 v2))
                     (MAlonzo.Code.Algebra.d1076
                        v0 v1
                        (MAlonzo.Code.Algebra.d1074
                           v0 v2 (MAlonzo.Code.Algebra.d1078 v0 v2))))
                  (MAlonzo.Code.Algebra.d1078
                     v0 (MAlonzo.Code.Algebra.d1076 v0 v1 v2))
                  (MAlonzo.Code.Function.du176
                     (MAlonzo.Code.Relation.Binary.Core.d516
                        (MAlonzo.Code.Algebra.Structures.d140
                           (MAlonzo.Code.Algebra.Structures.d294
                              (MAlonzo.Code.Algebra.Structures.d820
                                 (MAlonzo.Code.Algebra.Structures.d994
                                    (MAlonzo.Code.Algebra.Structures.d2410
                                       (MAlonzo.Code.Algebra.d1084 v0))))))
                        (MAlonzo.Code.Algebra.d1078
                           v0 (MAlonzo.Code.Algebra.d1076 v0 v1 v2)))
                     (MAlonzo.Code.Algebra.Structures.d144
                        (MAlonzo.Code.Algebra.Structures.d294
                           (MAlonzo.Code.Algebra.Structures.d820
                              (MAlonzo.Code.Algebra.Structures.d994
                                 (MAlonzo.Code.Algebra.Structures.d2410
                                    (MAlonzo.Code.Algebra.d1084 v0)))))
                        (MAlonzo.Code.Algebra.d1078
                           v0 (MAlonzo.Code.Algebra.d1076 v0 v1 v2))
                        (MAlonzo.Code.Algebra.d1078
                           v0 (MAlonzo.Code.Algebra.d1076 v0 v1 v2))
                        (MAlonzo.Code.Algebra.d1074
                           v0 (MAlonzo.Code.Algebra.d1076 v0 v1 v2)
                           (MAlonzo.Code.Algebra.d1076
                              v0 v1 (MAlonzo.Code.Algebra.d1078 v0 v2)))
                        (MAlonzo.Code.Algebra.d1076
                           v0 v1
                           (MAlonzo.Code.Algebra.d1074
                              v0 v2 (MAlonzo.Code.Algebra.d1078 v0 v2))))
                     (MAlonzo.Code.Relation.Binary.Core.d518
                        (MAlonzo.Code.Algebra.Structures.d140
                           (MAlonzo.Code.Algebra.Structures.d294
                              (MAlonzo.Code.Algebra.Structures.d820
                                 (MAlonzo.Code.Algebra.Structures.d994
                                    (MAlonzo.Code.Algebra.Structures.d2410
                                       (MAlonzo.Code.Algebra.d1084 v0))))))
                        (MAlonzo.Code.Algebra.d1076
                           v0 v1
                           (MAlonzo.Code.Algebra.d1074
                              v0 v2 (MAlonzo.Code.Algebra.d1078 v0 v2)))
                        (MAlonzo.Code.Algebra.d1074
                           v0 (MAlonzo.Code.Algebra.d1076 v0 v1 v2)
                           (MAlonzo.Code.Algebra.d1076
                              v0 v1 (MAlonzo.Code.Algebra.d1078 v0 v2)))
                        (MAlonzo.Code.Data.Product.d26
                           (MAlonzo.Code.Algebra.Structures.d2414
                              (MAlonzo.Code.Algebra.d1084 v0))
                           v1 v2 (MAlonzo.Code.Algebra.d1078 v0 v2))))
                  (let v7
                         = let v7 = coe MAlonzo.Code.Algebra.du1146 v0 in
                           let v8
                                 = coe
                                     MAlonzo.Code.Algebra.C333 (coe MAlonzo.Code.Algebra.d712 v7)
                                     (coe MAlonzo.Code.Algebra.d714 v7)
                                     (coe MAlonzo.Code.Algebra.d716 v7)
                                     (coe MAlonzo.Code.Algebra.d718 v7)
                                     (coe
                                        MAlonzo.Code.Algebra.Structures.d1728
                                        (coe MAlonzo.Code.Algebra.d720 v7)) in
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
                     (MAlonzo.Code.Relation.Binary.du150 v7)
                     (MAlonzo.Code.Algebra.d1074
                        v0
                        (MAlonzo.Code.Algebra.d1078
                           v0 (MAlonzo.Code.Algebra.d1076 v0 v1 v2))
                        (MAlonzo.Code.Algebra.d1076
                           v0 v1
                           (MAlonzo.Code.Algebra.d1074
                              v0 v2 (MAlonzo.Code.Algebra.d1078 v0 v2))))
                     (MAlonzo.Code.Algebra.d1074
                        v0
                        (MAlonzo.Code.Algebra.d1078
                           v0 (MAlonzo.Code.Algebra.d1076 v0 v1 v2))
                        (MAlonzo.Code.Algebra.d1076 v0 v1 (MAlonzo.Code.Algebra.d1080 v0)))
                     (MAlonzo.Code.Algebra.d1078
                        v0 (MAlonzo.Code.Algebra.d1076 v0 v1 v2))
                     (MAlonzo.Code.Function.du176
                        (MAlonzo.Code.Relation.Binary.Core.d516
                           (MAlonzo.Code.Algebra.Structures.d140
                              (MAlonzo.Code.Algebra.Structures.d294
                                 (MAlonzo.Code.Algebra.Structures.d820
                                    (MAlonzo.Code.Algebra.Structures.d994
                                       (MAlonzo.Code.Algebra.Structures.d2410
                                          (MAlonzo.Code.Algebra.d1084 v0))))))
                           (MAlonzo.Code.Algebra.d1078
                              v0 (MAlonzo.Code.Algebra.d1076 v0 v1 v2)))
                        (MAlonzo.Code.Algebra.Structures.d144
                           (MAlonzo.Code.Algebra.Structures.d294
                              (MAlonzo.Code.Algebra.Structures.d820
                                 (MAlonzo.Code.Algebra.Structures.d994
                                    (MAlonzo.Code.Algebra.Structures.d2410
                                       (MAlonzo.Code.Algebra.d1084 v0)))))
                           (MAlonzo.Code.Algebra.d1078
                              v0 (MAlonzo.Code.Algebra.d1076 v0 v1 v2))
                           (MAlonzo.Code.Algebra.d1078
                              v0 (MAlonzo.Code.Algebra.d1076 v0 v1 v2))
                           (MAlonzo.Code.Algebra.d1076
                              v0 v1
                              (MAlonzo.Code.Algebra.d1074
                                 v0 v2 (MAlonzo.Code.Algebra.d1078 v0 v2)))
                           (MAlonzo.Code.Algebra.d1076 v0 v1 (MAlonzo.Code.Algebra.d1080 v0)))
                        (MAlonzo.Code.Function.du176
                           (MAlonzo.Code.Relation.Binary.Core.d516
                              (MAlonzo.Code.Algebra.Structures.d140
                                 (MAlonzo.Code.Algebra.Structures.d294
                                    (MAlonzo.Code.Algebra.Structures.d820
                                       (MAlonzo.Code.Algebra.Structures.d994
                                          (MAlonzo.Code.Algebra.Structures.d2410
                                             (MAlonzo.Code.Algebra.d1084 v0))))))
                              v1)
                           (MAlonzo.Code.Algebra.Structures.d144
                              (MAlonzo.Code.Algebra.Structures.d294
                                 (MAlonzo.Code.Algebra.Structures.d2412
                                    (MAlonzo.Code.Algebra.d1084 v0)))
                              v1 v1
                              (MAlonzo.Code.Algebra.d1074
                                 v0 v2 (MAlonzo.Code.Algebra.d1078 v0 v2))
                              (MAlonzo.Code.Algebra.d1080 v0))
                           (MAlonzo.Code.Data.Product.d28
                              (MAlonzo.Code.Algebra.Structures.d822
                                 (MAlonzo.Code.Algebra.Structures.d994
                                    (MAlonzo.Code.Algebra.Structures.d2410
                                       (MAlonzo.Code.Algebra.d1084 v0))))
                              v2)))
                     (let v8
                            = let v8 = coe MAlonzo.Code.Algebra.du1146 v0 in
                              let v9
                                    = coe
                                        MAlonzo.Code.Algebra.C333 (coe MAlonzo.Code.Algebra.d712 v8)
                                        (coe MAlonzo.Code.Algebra.d714 v8)
                                        (coe MAlonzo.Code.Algebra.d716 v8)
                                        (coe MAlonzo.Code.Algebra.d718 v8)
                                        (coe
                                           MAlonzo.Code.Algebra.Structures.d1728
                                           (coe MAlonzo.Code.Algebra.d720 v8)) in
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
                        (MAlonzo.Code.Relation.Binary.du150 v8)
                        (MAlonzo.Code.Algebra.d1074
                           v0
                           (MAlonzo.Code.Algebra.d1078
                              v0 (MAlonzo.Code.Algebra.d1076 v0 v1 v2))
                           (MAlonzo.Code.Algebra.d1076 v0 v1 (MAlonzo.Code.Algebra.d1080 v0)))
                        (MAlonzo.Code.Algebra.d1074
                           v0
                           (MAlonzo.Code.Algebra.d1078
                              v0 (MAlonzo.Code.Algebra.d1076 v0 v1 v2))
                           (MAlonzo.Code.Algebra.d1080 v0))
                        (MAlonzo.Code.Algebra.d1078
                           v0 (MAlonzo.Code.Algebra.d1076 v0 v1 v2))
                        (MAlonzo.Code.Function.du176
                           (MAlonzo.Code.Relation.Binary.Core.d516
                              (MAlonzo.Code.Algebra.Structures.d140
                                 (MAlonzo.Code.Algebra.Structures.d294
                                    (MAlonzo.Code.Algebra.Structures.d820
                                       (MAlonzo.Code.Algebra.Structures.d994
                                          (MAlonzo.Code.Algebra.Structures.d2410
                                             (MAlonzo.Code.Algebra.d1084 v0))))))
                              (MAlonzo.Code.Algebra.d1078
                                 v0 (MAlonzo.Code.Algebra.d1076 v0 v1 v2)))
                           (MAlonzo.Code.Algebra.Structures.d144
                              (MAlonzo.Code.Algebra.Structures.d294
                                 (MAlonzo.Code.Algebra.Structures.d820
                                    (MAlonzo.Code.Algebra.Structures.d994
                                       (MAlonzo.Code.Algebra.Structures.d2410
                                          (MAlonzo.Code.Algebra.d1084 v0)))))
                              (MAlonzo.Code.Algebra.d1078
                                 v0 (MAlonzo.Code.Algebra.d1076 v0 v1 v2))
                              (MAlonzo.Code.Algebra.d1078
                                 v0 (MAlonzo.Code.Algebra.d1076 v0 v1 v2))
                              (MAlonzo.Code.Algebra.d1076 v0 v1 (MAlonzo.Code.Algebra.d1080 v0))
                              (MAlonzo.Code.Algebra.d1080 v0))
                           (MAlonzo.Code.Data.Product.d28
                              (MAlonzo.Code.Algebra.Structures.du2460
                                 (MAlonzo.Code.Algebra.d1074 v0) (MAlonzo.Code.Algebra.d1076 v0)
                                 (MAlonzo.Code.Algebra.d1078 v0) (MAlonzo.Code.Algebra.d1080 v0)
                                 (MAlonzo.Code.Algebra.d1084 v0))
                              v1))
                        (let v9
                               = let v9 = coe MAlonzo.Code.Algebra.du1146 v0 in
                                 let v10
                                       = coe
                                           MAlonzo.Code.Algebra.C333
                                           (coe MAlonzo.Code.Algebra.d712 v9)
                                           (coe MAlonzo.Code.Algebra.d714 v9)
                                           (coe MAlonzo.Code.Algebra.d716 v9)
                                           (coe MAlonzo.Code.Algebra.d718 v9)
                                           (coe
                                              MAlonzo.Code.Algebra.Structures.d1728
                                              (coe MAlonzo.Code.Algebra.d720 v9)) in
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
                           (MAlonzo.Code.Relation.Binary.du150 v9)
                           (MAlonzo.Code.Algebra.d1074
                              v0
                              (MAlonzo.Code.Algebra.d1078
                                 v0 (MAlonzo.Code.Algebra.d1076 v0 v1 v2))
                              (MAlonzo.Code.Algebra.d1080 v0))
                           (MAlonzo.Code.Algebra.d1078
                              v0 (MAlonzo.Code.Algebra.d1076 v0 v1 v2))
                           (MAlonzo.Code.Algebra.d1078
                              v0 (MAlonzo.Code.Algebra.d1076 v0 v1 v2))
                           (MAlonzo.Code.Data.Product.d28
                              (MAlonzo.Code.Algebra.Structures.d296
                                 (MAlonzo.Code.Algebra.Structures.d820
                                    (MAlonzo.Code.Algebra.Structures.d994
                                       (MAlonzo.Code.Algebra.Structures.d2410
                                          (MAlonzo.Code.Algebra.d1084 v0)))))
                              (MAlonzo.Code.Algebra.d1078
                                 v0 (MAlonzo.Code.Algebra.d1076 v0 v1 v2)))
                           (let v10
                                  = let v10 = coe MAlonzo.Code.Algebra.du1146 v0 in
                                    let v11
                                          = coe
                                              MAlonzo.Code.Algebra.C333
                                              (coe MAlonzo.Code.Algebra.d712 v10)
                                              (coe MAlonzo.Code.Algebra.d714 v10)
                                              (coe MAlonzo.Code.Algebra.d716 v10)
                                              (coe MAlonzo.Code.Algebra.d718 v10)
                                              (coe
                                                 MAlonzo.Code.Algebra.Structures.d1728
                                                 (coe MAlonzo.Code.Algebra.d720 v10)) in
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
                            let v11
                                  = coe
                                      MAlonzo.Code.Algebra.d1078 v0
                                      (coe MAlonzo.Code.Algebra.d1076 v0 v1 v2) in
                            MAlonzo.Code.Relation.Binary.PreorderReasoning.C56
                              (MAlonzo.Code.Relation.Binary.d38
                                 (MAlonzo.Code.Relation.Binary.d92
                                    (MAlonzo.Code.Relation.Binary.du150 v10))
                                 v11 v11
                                 (MAlonzo.Code.Relation.Binary.Core.d516
                                    (MAlonzo.Code.Relation.Binary.d36
                                       (MAlonzo.Code.Relation.Binary.d92
                                          (MAlonzo.Code.Relation.Binary.du150 v10)))
                                    v11))))))))))