{-# LANGUAGE EmptyDataDecls, ExistentialQuantification,
             ScopedTypeVariables, NoMonomorphismRestriction, Rank2Types #-}
module MAlonzo.Code.Algebra.Morphism where

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
import qualified MAlonzo.Code.Algebra.Properties.Group
import qualified MAlonzo.Code.Algebra.Structures
import qualified MAlonzo.Code.Data.Product
import qualified MAlonzo.Code.Relation.Binary
import qualified MAlonzo.Code.Relation.Binary.Core
import qualified MAlonzo.Code.Relation.Binary.PreorderReasoning

name18 = "Algebra.Morphism.Definitions.Morphism"
d18 = erased
name20 = "Algebra.Morphism.Definitions.Homomorphic\8320"
d20 = erased
name28 = "Algebra.Morphism.Definitions.Homomorphic\8321"
d28 = erased
name38 = "Algebra.Morphism.Definitions.Homomorphic\8322"
d38 = erased
name62 = "Algebra.Morphism._-Ring\10230_"
d62 a0 a1 a2 a3 a4 a5 = ()
data T62 a0 a1 a2 a3 a4 = C835 a0 a1 a2 a3 a4
name78 = "Algebra.Morphism.F._*_"
d78 v0 v1 v2 v3 v4 v5 = du78 v4
du78 v0 = coe MAlonzo.Code.Algebra.d1076 v0
name80 = "Algebra.Morphism.F._+_"
d80 v0 v1 v2 v3 v4 v5 = du80 v4
du80 v0 = coe MAlonzo.Code.Algebra.d1074 v0
name84 = "Algebra.Morphism.F._\8776_"
d84 = erased
name140 = "Algebra.Morphism.F.1#"
d140 v0 v1 v2 v3 v4 v5 = du140 v4
du140 v0 = coe MAlonzo.Code.Algebra.d1082 v0
name142 = "Algebra.Morphism.F.Carrier"
d142 = erased
name286 = "Algebra.Morphism._.Homomorphic\8320"
d286 = erased
name290 = "Algebra.Morphism._.Homomorphic\8322"
d290 = erased
name292 = "Algebra.Morphism._.Morphism"
d292 = erased
name308 = "Algebra.Morphism._-Ring\10230_.F._+_"
d308 v0 v1 v2 v3 v4 v5 v6 = du308 v4
du308 v0 = coe MAlonzo.Code.Algebra.d1074 v0
name342 = "Algebra.Morphism._-Ring\10230_.F.identity"
d342 v0 v1 v2 v3 v4 v5 v6 = du342 v4
du342 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d296
      (coe
         MAlonzo.Code.Algebra.Structures.d820
         (coe
            MAlonzo.Code.Algebra.Structures.d994
            (coe
               MAlonzo.Code.Algebra.Structures.d2410
               (coe MAlonzo.Code.Algebra.d1084 v0))))
name360 = "Algebra.Morphism._-Ring\10230_.F.-_"
d360 v0 v1 v2 v3 v4 v5 v6 = du360 v4
du360 v0 = coe MAlonzo.Code.Algebra.d1078 v0
name364 = "Algebra.Morphism._-Ring\10230_.F.inverse"
d364 v0 v1 v2 v3 v4 v5 v6 = du364 v4
du364 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d822
      (coe
         MAlonzo.Code.Algebra.Structures.d994
         (coe
            MAlonzo.Code.Algebra.Structures.d2410
            (coe MAlonzo.Code.Algebra.d1084 v0)))
name366 = "Algebra.Morphism._-Ring\10230_.F.0#"
d366 v0 v1 v2 v3 v4 v5 v6 = du366 v4
du366 v0 = coe MAlonzo.Code.Algebra.d1080 v0
name370 = "Algebra.Morphism._-Ring\10230_.F.Carrier"
d370 = erased
name412 = "Algebra.Morphism._-Ring\10230_.T._+_"
d412 v0 v1 v2 v3 v4 v5 v6 = du412 v5
du412 v0 = coe MAlonzo.Code.Algebra.d1074 v0
name416 = "Algebra.Morphism._-Ring\10230_.T._\8776_"
d416 = erased
name444 = "Algebra.Morphism._-Ring\10230_.T.group"
d444 v0 v1 v2 v3 v4 v5 v6 = du444 v5
du444 v0
  = coe
      MAlonzo.Code.Algebra.C161 (coe MAlonzo.Code.Algebra.d1074 v0)
      (coe MAlonzo.Code.Algebra.d1080 v0)
      (coe MAlonzo.Code.Algebra.d1078 v0)
      (coe
         MAlonzo.Code.Algebra.Structures.d994
         (coe
            MAlonzo.Code.Algebra.Structures.d2410
            (coe MAlonzo.Code.Algebra.d1084 v0)))
name464 = "Algebra.Morphism._-Ring\10230_.T.-_"
d464 v0 v1 v2 v3 v4 v5 v6 = du464 v5
du464 v0 = coe MAlonzo.Code.Algebra.d1078 v0
name470 = "Algebra.Morphism._-Ring\10230_.T.0#"
d470 v0 v1 v2 v3 v4 v5 v6 = du470 v5
du470 v0 = coe MAlonzo.Code.Algebra.d1080 v0
name474 = "Algebra.Morphism._-Ring\10230_.T.Carrier"
d474 = erased
name504 = "Algebra.Morphism._-Ring\10230_.T.setoid"
d504 v0 v1 v2 v3 v4 v5 v6 = du504 v5
du504 v0
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
name506 = "Algebra.Morphism._-Ring\10230_.T.sym"
d506 v0 v1 v2 v3 v4 v5 v6 = du506 v5
du506 v0
  = coe
      MAlonzo.Code.Relation.Binary.Core.d518
      (coe
         MAlonzo.Code.Algebra.Structures.d140
         (coe
            MAlonzo.Code.Algebra.Structures.d294
            (coe
               MAlonzo.Code.Algebra.Structures.d820
               (coe
                  MAlonzo.Code.Algebra.Structures.d994
                  (coe
                     MAlonzo.Code.Algebra.Structures.d2410
                     (coe MAlonzo.Code.Algebra.d1084 v0))))))
name514 = "Algebra.Morphism._-Ring\10230_._.Homomorphic\8320"
d514 = erased
name522 = "Algebra.Morphism._-Ring\10230_.\10214_\10215"
d522 v0
  = case coe v0 of
      C835 v1 v2 v3 v4 v5 -> coe v1
      _ -> coe MAlonzo.RTE.mazUnreachableError
name524 = "Algebra.Morphism._-Ring\10230_.\10214\10215-cong"
d524 v0
  = case coe v0 of
      C835 v1 v2 v3 v4 v5 -> coe v2
      _ -> coe MAlonzo.RTE.mazUnreachableError
name526 = "Algebra.Morphism._-Ring\10230_.+-homo"
d526 v0
  = case coe v0 of
      C835 v1 v2 v3 v4 v5 -> coe v3
      _ -> coe MAlonzo.RTE.mazUnreachableError
name528 = "Algebra.Morphism._-Ring\10230_.*-homo"
d528 v0
  = case coe v0 of
      C835 v1 v2 v3 v4 v5 -> coe v4
      _ -> coe MAlonzo.RTE.mazUnreachableError
name530 = "Algebra.Morphism._-Ring\10230_.1-homo"
d530 v0
  = case coe v0 of
      C835 v1 v2 v3 v4 v5 -> coe v5
      _ -> coe MAlonzo.RTE.mazUnreachableError
name536 = "Algebra.Morphism._-Ring\10230_._._\8718"
d536 v0 v1 v2 v3 v4 v5 v6 = du536 v5
du536 v0
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
name538 = "Algebra.Morphism._-Ring\10230_._._\8764\10216_\10217_"
d538 v0 v1 v2 v3 v4 v5 v6 = du538 v5
du538 v0
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
name552 = "Algebra.Morphism._-Ring\10230_.0-homo"
d552 v0 v1 v2 v3 v4 v5 v6 = du552 v4 v5 v6
du552 v0 v1 v2
  = coe
      MAlonzo.Code.Algebra.Properties.Group.du164
      (coe
         MAlonzo.Code.Algebra.C161 (coe MAlonzo.Code.Algebra.d1074 v1)
         (coe MAlonzo.Code.Algebra.d1080 v1)
         (coe MAlonzo.Code.Algebra.d1078 v1)
         (coe
            MAlonzo.Code.Algebra.Structures.d994
            (coe
               MAlonzo.Code.Algebra.Structures.d2410
               (coe MAlonzo.Code.Algebra.d1084 v1))))
      (coe d522 v2 (coe MAlonzo.Code.Algebra.d1080 v0))
      (coe d522 v2 (coe MAlonzo.Code.Algebra.d1080 v0))
      (coe
         MAlonzo.Code.Relation.Binary.PreorderReasoning.d62
         (let v3
                = let v3 = coe MAlonzo.Code.Algebra.du1146 v1 in
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
            (MAlonzo.Code.Algebra.d1074
               v1 (d522 v2 (MAlonzo.Code.Algebra.d1080 v0))
               (d522 v2 (MAlonzo.Code.Algebra.d1080 v0)))
            (d522
               v2
               (MAlonzo.Code.Algebra.d1074
                  v0 (MAlonzo.Code.Algebra.d1080 v0)
                  (MAlonzo.Code.Algebra.d1080 v0)))
            (d522 v2 (MAlonzo.Code.Algebra.d1080 v0))
            (MAlonzo.Code.Relation.Binary.Core.d518
               (MAlonzo.Code.Algebra.Structures.d140
                  (MAlonzo.Code.Algebra.Structures.d294
                     (MAlonzo.Code.Algebra.Structures.d820
                        (MAlonzo.Code.Algebra.Structures.d994
                           (MAlonzo.Code.Algebra.Structures.d2410
                              (MAlonzo.Code.Algebra.d1084 v1))))))
               (d522
                  v2
                  (MAlonzo.Code.Algebra.d1074
                     v0 (MAlonzo.Code.Algebra.d1080 v0)
                     (MAlonzo.Code.Algebra.d1080 v0)))
               (MAlonzo.Code.Algebra.d1074
                  v1 (d522 v2 (MAlonzo.Code.Algebra.d1080 v0))
                  (d522 v2 (MAlonzo.Code.Algebra.d1080 v0)))
               (d526
                  v2 (MAlonzo.Code.Algebra.d1080 v0)
                  (MAlonzo.Code.Algebra.d1080 v0)))
            (let v4
                   = let v4 = coe MAlonzo.Code.Algebra.du1146 v1 in
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
               (d522
                  v2
                  (MAlonzo.Code.Algebra.d1074
                     v0 (MAlonzo.Code.Algebra.d1080 v0)
                     (MAlonzo.Code.Algebra.d1080 v0)))
               (d522 v2 (MAlonzo.Code.Algebra.d1080 v0))
               (d522 v2 (MAlonzo.Code.Algebra.d1080 v0))
               (d524
                  v2
                  (MAlonzo.Code.Algebra.d1074
                     v0 (MAlonzo.Code.Algebra.d1080 v0) (MAlonzo.Code.Algebra.d1080 v0))
                  (MAlonzo.Code.Algebra.d1080 v0)
                  (MAlonzo.Code.Data.Product.d26
                     (MAlonzo.Code.Algebra.Structures.d296
                        (MAlonzo.Code.Algebra.Structures.d820
                           (MAlonzo.Code.Algebra.Structures.d994
                              (MAlonzo.Code.Algebra.Structures.d2410
                                 (MAlonzo.Code.Algebra.d1084 v0)))))
                     (MAlonzo.Code.Algebra.d1080 v0)))
               (let v5
                      = let v5 = coe MAlonzo.Code.Algebra.du1146 v1 in
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
                                   MAlonzo.Code.Algebra.d100
                                   (coe MAlonzo.Code.Algebra.du186 v7)))) in
                let v6 = coe d522 v2 (coe MAlonzo.Code.Algebra.d1080 v0) in
                MAlonzo.Code.Relation.Binary.PreorderReasoning.C56
                  (MAlonzo.Code.Relation.Binary.d38
                     (MAlonzo.Code.Relation.Binary.d92
                        (MAlonzo.Code.Relation.Binary.du150 v5))
                     v6 v6
                     (MAlonzo.Code.Relation.Binary.Core.d516
                        (MAlonzo.Code.Relation.Binary.d36
                           (MAlonzo.Code.Relation.Binary.d92
                              (MAlonzo.Code.Relation.Binary.du150 v5)))
                        v6))))))
name554 = "Algebra.Morphism._-Ring\10230_.-\8255homo"
d554 v0 v1 v2 v3 v4 v5 v6 v7 = du554 v4 v5 v6 v7
du554 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Algebra.Properties.Group.du196
      (coe
         MAlonzo.Code.Algebra.C161 (coe MAlonzo.Code.Algebra.d1074 v1)
         (coe MAlonzo.Code.Algebra.d1080 v1)
         (coe MAlonzo.Code.Algebra.d1078 v1)
         (coe
            MAlonzo.Code.Algebra.Structures.d994
            (coe
               MAlonzo.Code.Algebra.Structures.d2410
               (coe MAlonzo.Code.Algebra.d1084 v1))))
      (coe d522 v2 (coe MAlonzo.Code.Algebra.d1078 v0 v3))
      (coe d522 v2 v3)
      (coe
         MAlonzo.Code.Relation.Binary.PreorderReasoning.d62
         (let v4
                = let v4 = coe MAlonzo.Code.Algebra.du1146 v1 in
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
               v1 (d522 v2 (MAlonzo.Code.Algebra.d1078 v0 v3)) (d522 v2 v3))
            (d522
               v2
               (MAlonzo.Code.Algebra.d1074
                  v0 (MAlonzo.Code.Algebra.d1078 v0 v3) v3))
            (MAlonzo.Code.Algebra.d1080 v1)
            (MAlonzo.Code.Relation.Binary.Core.d518
               (MAlonzo.Code.Algebra.Structures.d140
                  (MAlonzo.Code.Algebra.Structures.d294
                     (MAlonzo.Code.Algebra.Structures.d820
                        (MAlonzo.Code.Algebra.Structures.d994
                           (MAlonzo.Code.Algebra.Structures.d2410
                              (MAlonzo.Code.Algebra.d1084 v1))))))
               (d522
                  v2
                  (MAlonzo.Code.Algebra.d1074
                     v0 (MAlonzo.Code.Algebra.d1078 v0 v3) v3))
               (MAlonzo.Code.Algebra.d1074
                  v1 (d522 v2 (MAlonzo.Code.Algebra.d1078 v0 v3)) (d522 v2 v3))
               (d526 v2 (MAlonzo.Code.Algebra.d1078 v0 v3) v3))
            (let v5
                   = let v5 = coe MAlonzo.Code.Algebra.du1146 v1 in
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
               (d522
                  v2
                  (MAlonzo.Code.Algebra.d1074
                     v0 (MAlonzo.Code.Algebra.d1078 v0 v3) v3))
               (d522 v2 (MAlonzo.Code.Algebra.d1080 v0))
               (MAlonzo.Code.Algebra.d1080 v1)
               (d524
                  v2
                  (MAlonzo.Code.Algebra.d1074
                     v0 (MAlonzo.Code.Algebra.d1078 v0 v3) v3)
                  (MAlonzo.Code.Algebra.d1080 v0)
                  (MAlonzo.Code.Data.Product.d26
                     (MAlonzo.Code.Algebra.Structures.d822
                        (MAlonzo.Code.Algebra.Structures.d994
                           (MAlonzo.Code.Algebra.Structures.d2410
                              (MAlonzo.Code.Algebra.d1084 v0))))
                     v3))
               (let v6
                      = let v6 = coe MAlonzo.Code.Algebra.du1146 v1 in
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
                  (d522 v2 (MAlonzo.Code.Algebra.d1080 v0))
                  (MAlonzo.Code.Algebra.d1080 v1) (MAlonzo.Code.Algebra.d1080 v1)
                  (du552 v0 v1 v2)
                  (let v7
                         = let v7 = coe MAlonzo.Code.Algebra.du1146 v1 in
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
                   let v8 = coe MAlonzo.Code.Algebra.d1080 v1 in
                   MAlonzo.Code.Relation.Binary.PreorderReasoning.C56
                     (MAlonzo.Code.Relation.Binary.d38
                        (MAlonzo.Code.Relation.Binary.d92
                           (MAlonzo.Code.Relation.Binary.du150 v7))
                        v8 v8
                        (MAlonzo.Code.Relation.Binary.Core.d516
                           (MAlonzo.Code.Relation.Binary.d36
                              (MAlonzo.Code.Relation.Binary.d92
                                 (MAlonzo.Code.Relation.Binary.du150 v7)))
                           v8)))))))