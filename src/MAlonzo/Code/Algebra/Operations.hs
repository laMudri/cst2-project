{-# LANGUAGE EmptyDataDecls, ExistentialQuantification,
             ScopedTypeVariables, NoMonomorphismRestriction, Rank2Types #-}
module MAlonzo.Code.Algebra.Operations where

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
import qualified MAlonzo.Code.Function
import qualified MAlonzo.Code.Relation.Binary
import qualified MAlonzo.Code.Relation.Binary.Core
import qualified MAlonzo.Code.Relation.Binary.PreorderReasoning

name44 = "Algebra.Operations._.identity"
d44 v0 v1 v2 = du44 v2
du44 v0
  = let v1 = coe MAlonzo.Code.Algebra.d712 v0 in
    let v2 = coe MAlonzo.Code.Algebra.d716 v0 in
    let v3 = coe MAlonzo.Code.Algebra.d720 v0 in
    let v4 = coe MAlonzo.Code.Algebra.Structures.d1728 v3 in
    coe
      MAlonzo.Code.Algebra.Structures.du476 v1 v2
      (coe MAlonzo.Code.Algebra.Structures.d1542 v4)
name80 = "Algebra.Operations._.reflexive"
d80 v0 v1 v2 = du80 v2
du80 v0
  = let v1 = coe MAlonzo.Code.Algebra.d720 v0 in
    let v2 = coe MAlonzo.Code.Algebra.Structures.d1728 v1 in
    let v3 = coe MAlonzo.Code.Algebra.Structures.d1542 v2 in
    let v4 = coe MAlonzo.Code.Algebra.Structures.d454 v3 in
    \ v5 v6 v7 ->
      coe
        MAlonzo.Code.Relation.Binary.Core.du522
        (coe MAlonzo.Code.Algebra.Structures.d140 v4) v5
name86 = "Algebra.Operations._.setoid"
d86 v0 v1 v2 = du86 v2
du86 v0
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
name96 = "Algebra.Operations._._\8718"
d96 v0 v1 v2 = du96 v2
du96 v0
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
name98 = "Algebra.Operations._._\8764\10216_\10217_"
d98 v0 v1 v2 = du98 v2
du98 v0
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
name112 = "Algebra.Operations._\215_"
d112 v0 v1 v2 v3 v4 = du112 v2 v3 v4
du112 v0 v1 v2
  = case coe v1 of
      0 -> coe MAlonzo.Code.Algebra.d716 v0
      _ -> let v3 = coe subInt v1 (1 :: Integer) in
           coe MAlonzo.Code.Algebra.d712 v0 v2 (coe du112 v0 v3 v2)
name120 = "Algebra.Operations._\215\8242_"
d120 v0 v1 v2 v3 v4 = du120 v2 v3 v4
du120 v0 v1 v2
  = let v3 = coe subInt v1 (1 :: Integer) in
    let v4
          = coe MAlonzo.Code.Algebra.d712 v0 v2 (coe du120 v0 v3 v2) in
    case coe v1 of
      0 -> coe MAlonzo.Code.Algebra.d716 v0
      1 -> coe v2
      _ -> coe v4
name130 = "Algebra.Operations._^_"
d130 v0 v1 v2 v3 v4 = du130 v2 v3 v4
du130 v0 v1 v2
  = case coe v2 of
      0 -> coe MAlonzo.Code.Algebra.d718 v0
      _ -> let v3 = coe subInt v2 (1 :: Integer) in
           coe MAlonzo.Code.Algebra.d714 v0 v1 (coe du130 v0 v1 v3)
name142 = "Algebra.Operations.1+\215\8242"
d142 v0 v1 v2 v3 v4 = du142 v2 v3 v4
du142 v0 v1 v2
  = case coe v1 of
      0 -> coe
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
                (MAlonzo.Code.Relation.Binary.du150 v3) v2
                (MAlonzo.Code.Algebra.d712 v0 v2 (MAlonzo.Code.Algebra.d716 v0))
                (MAlonzo.Code.Algebra.d712 v0 v2 (MAlonzo.Code.Algebra.d716 v0))
                (MAlonzo.Code.Function.du158
                   (MAlonzo.Code.Relation.Binary.Core.d518
                      (MAlonzo.Code.Algebra.Structures.d140
                         (MAlonzo.Code.Algebra.Structures.d454
                            (MAlonzo.Code.Algebra.Structures.d1542
                               (MAlonzo.Code.Algebra.Structures.d1728
                                  (MAlonzo.Code.Algebra.d720 v0)))))
                      (MAlonzo.Code.Algebra.d712 v0 v2 (MAlonzo.Code.Algebra.d716 v0))
                      v2)
                   (MAlonzo.Code.Data.Product.d28
                      (let v4 = coe MAlonzo.Code.Algebra.d712 v0 in
                       let v5 = coe MAlonzo.Code.Algebra.d716 v0 in
                       let v6 = coe MAlonzo.Code.Algebra.d720 v0 in
                       let v7 = coe MAlonzo.Code.Algebra.Structures.d1728 v6 in
                       MAlonzo.Code.Algebra.Structures.du476
                         v4 v5 (MAlonzo.Code.Algebra.Structures.d1542 v7))
                      v2))
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
                                    MAlonzo.Code.Algebra.d100
                                    (coe MAlonzo.Code.Algebra.du186 v5)))) in
                 let v5
                       = coe
                           MAlonzo.Code.Algebra.d712 v0 v2
                           (coe MAlonzo.Code.Algebra.d716 v0) in
                 MAlonzo.Code.Relation.Binary.PreorderReasoning.C56
                   (MAlonzo.Code.Relation.Binary.d38
                      (MAlonzo.Code.Relation.Binary.d92
                         (MAlonzo.Code.Relation.Binary.du150 v4))
                      v5 v5
                      (MAlonzo.Code.Relation.Binary.Core.d516
                         (MAlonzo.Code.Relation.Binary.d36
                            (MAlonzo.Code.Relation.Binary.d92
                               (MAlonzo.Code.Relation.Binary.du150 v4)))
                         v5))))
      _ -> coe
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
              let v4
                    = coe MAlonzo.Code.Algebra.d712 v0 v2 (coe du120 v0 v1 v2) in
              MAlonzo.Code.Relation.Binary.PreorderReasoning.C56
                (MAlonzo.Code.Relation.Binary.d38
                   (MAlonzo.Code.Relation.Binary.d92
                      (MAlonzo.Code.Relation.Binary.du150 v3))
                   v4 v4
                   (MAlonzo.Code.Relation.Binary.Core.d516
                      (MAlonzo.Code.Relation.Binary.d36
                         (MAlonzo.Code.Relation.Binary.d92
                            (MAlonzo.Code.Relation.Binary.du150 v3)))
                      v4)))
name154 = "Algebra.Operations.\215\8776\215\8242"
d154 v0 v1 v2 v3 v4 = du154 v2 v3 v4
du154 v0 v1 v2
  = case coe v1 of
      0 -> coe
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
              let v4 = coe MAlonzo.Code.Algebra.d716 v0 in
              MAlonzo.Code.Relation.Binary.PreorderReasoning.C56
                (MAlonzo.Code.Relation.Binary.d38
                   (MAlonzo.Code.Relation.Binary.d92
                      (MAlonzo.Code.Relation.Binary.du150 v3))
                   v4 v4
                   (MAlonzo.Code.Relation.Binary.Core.d516
                      (MAlonzo.Code.Relation.Binary.d36
                         (MAlonzo.Code.Relation.Binary.d92
                            (MAlonzo.Code.Relation.Binary.du150 v3)))
                      v4)))
      _ -> let v3 = coe subInt v1 (1 :: Integer) in
           coe
             MAlonzo.Code.Relation.Binary.PreorderReasoning.d62
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
                (MAlonzo.Code.Algebra.d712 v0 v2 (du112 v0 v3 v2))
                (MAlonzo.Code.Algebra.d712 v0 v2 (du120 v0 v3 v2)) (du120 v0 v1 v2)
                (MAlonzo.Code.Algebra.Structures.d144
                   (MAlonzo.Code.Algebra.Structures.d454
                      (MAlonzo.Code.Algebra.Structures.d1542
                         (MAlonzo.Code.Algebra.Structures.d1728
                            (MAlonzo.Code.Algebra.d720 v0))))
                   v2 v2 (du112 v0 v3 v2) (du120 v0 v3 v2)
                   (MAlonzo.Code.Relation.Binary.Core.d516
                      (MAlonzo.Code.Algebra.Structures.d140
                         (MAlonzo.Code.Algebra.Structures.d454
                            (MAlonzo.Code.Algebra.Structures.d1542
                               (MAlonzo.Code.Algebra.Structures.d1728
                                  (MAlonzo.Code.Algebra.d720 v0)))))
                      v2)
                   (du154 v0 v3 v2))
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
                   (MAlonzo.Code.Algebra.d712 v0 v2 (du120 v0 v3 v2)) (du120 v0 v1 v2)
                   (du120 v0 v1 v2)
                   (MAlonzo.Code.Function.du158
                      (MAlonzo.Code.Relation.Binary.Core.d518
                         (MAlonzo.Code.Algebra.Structures.d140
                            (MAlonzo.Code.Algebra.Structures.d454
                               (MAlonzo.Code.Algebra.Structures.d1542
                                  (MAlonzo.Code.Algebra.Structures.d1728
                                     (MAlonzo.Code.Algebra.d720 v0)))))
                         (du120 v0 v1 v2)
                         (MAlonzo.Code.Algebra.d712 v0 v2 (du120 v0 v3 v2)))
                      (du142 v0 v3 v2))
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
                    let v7 = coe du120 v0 v1 v2 in
                    MAlonzo.Code.Relation.Binary.PreorderReasoning.C56
                      (MAlonzo.Code.Relation.Binary.d38
                         (MAlonzo.Code.Relation.Binary.d92
                            (MAlonzo.Code.Relation.Binary.du150 v6))
                         v7 v7
                         (MAlonzo.Code.Relation.Binary.Core.d516
                            (MAlonzo.Code.Relation.Binary.d36
                               (MAlonzo.Code.Relation.Binary.d92
                                  (MAlonzo.Code.Relation.Binary.du150 v6)))
                            v7)))))
name168 = "Algebra.Operations.\215-homo-+"
d168 v0 v1 v2 v3 v4 v5 = du168 v2 v3 v4 v5
du168 v0 v1 v2 v3
  = case coe v2 of
      0 -> coe
             MAlonzo.Code.Relation.Binary.PreorderReasoning.d62
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
                (MAlonzo.Code.Relation.Binary.du150 v4) (du112 v0 v3 v1)
                (MAlonzo.Code.Algebra.d712
                   v0 (MAlonzo.Code.Algebra.d716 v0) (du112 v0 v3 v1))
                (MAlonzo.Code.Algebra.d712
                   v0 (MAlonzo.Code.Algebra.d716 v0) (du112 v0 v3 v1))
                (MAlonzo.Code.Function.du158
                   (MAlonzo.Code.Relation.Binary.Core.d518
                      (MAlonzo.Code.Algebra.Structures.d140
                         (MAlonzo.Code.Algebra.Structures.d454
                            (MAlonzo.Code.Algebra.Structures.d1542
                               (MAlonzo.Code.Algebra.Structures.d1728
                                  (MAlonzo.Code.Algebra.d720 v0)))))
                      (MAlonzo.Code.Algebra.d712
                         v0 (MAlonzo.Code.Algebra.d716 v0) (du112 v0 v3 v1))
                      (du112 v0 v3 v1))
                   (MAlonzo.Code.Data.Product.d26
                      (let v5 = coe MAlonzo.Code.Algebra.d712 v0 in
                       let v6 = coe MAlonzo.Code.Algebra.d716 v0 in
                       let v7 = coe MAlonzo.Code.Algebra.d720 v0 in
                       let v8 = coe MAlonzo.Code.Algebra.Structures.d1728 v7 in
                       MAlonzo.Code.Algebra.Structures.du476
                         v5 v6 (MAlonzo.Code.Algebra.Structures.d1542 v8))
                      (du112 v0 v3 v1)))
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
                 let v6
                       = coe
                           MAlonzo.Code.Algebra.d712 v0 (coe MAlonzo.Code.Algebra.d716 v0)
                           (coe du112 v0 v3 v1) in
                 MAlonzo.Code.Relation.Binary.PreorderReasoning.C56
                   (MAlonzo.Code.Relation.Binary.d38
                      (MAlonzo.Code.Relation.Binary.d92
                         (MAlonzo.Code.Relation.Binary.du150 v5))
                      v6 v6
                      (MAlonzo.Code.Relation.Binary.Core.d516
                         (MAlonzo.Code.Relation.Binary.d36
                            (MAlonzo.Code.Relation.Binary.d92
                               (MAlonzo.Code.Relation.Binary.du150 v5)))
                         v6))))
      _ -> let v4 = coe subInt v2 (1 :: Integer) in
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
                                 MAlonzo.Code.Algebra.d100 (coe MAlonzo.Code.Algebra.du186 v6)))) in
              MAlonzo.Code.Relation.Binary.PreorderReasoning.du72
                (MAlonzo.Code.Relation.Binary.du150 v5)
                (MAlonzo.Code.Algebra.d712 v0 v1 (du112 v0 (addInt v4 v3) v1))
                (MAlonzo.Code.Algebra.d712
                   v0 v1
                   (MAlonzo.Code.Algebra.d712 v0 (du112 v0 v4 v1) (du112 v0 v3 v1)))
                (MAlonzo.Code.Algebra.d712
                   v0 (MAlonzo.Code.Algebra.d712 v0 v1 (du112 v0 v4 v1))
                   (du112 v0 v3 v1))
                (MAlonzo.Code.Algebra.Structures.d144
                   (MAlonzo.Code.Algebra.Structures.d454
                      (MAlonzo.Code.Algebra.Structures.d1542
                         (MAlonzo.Code.Algebra.Structures.d1728
                            (MAlonzo.Code.Algebra.d720 v0))))
                   v1 v1 (du112 v0 (addInt v4 v3) v1)
                   (MAlonzo.Code.Algebra.d712 v0 (du112 v0 v4 v1) (du112 v0 v3 v1))
                   (MAlonzo.Code.Relation.Binary.Core.d516
                      (MAlonzo.Code.Algebra.Structures.d140
                         (MAlonzo.Code.Algebra.Structures.d454
                            (MAlonzo.Code.Algebra.Structures.d1542
                               (MAlonzo.Code.Algebra.Structures.d1728
                                  (MAlonzo.Code.Algebra.d720 v0)))))
                      v1)
                   (du168 v0 v1 v4 v3))
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
                   (MAlonzo.Code.Algebra.d712
                      v0 v1
                      (MAlonzo.Code.Algebra.d712 v0 (du112 v0 v4 v1) (du112 v0 v3 v1)))
                   (MAlonzo.Code.Algebra.d712
                      v0 (MAlonzo.Code.Algebra.d712 v0 v1 (du112 v0 v4 v1))
                      (du112 v0 v3 v1))
                   (MAlonzo.Code.Algebra.d712
                      v0 (MAlonzo.Code.Algebra.d712 v0 v1 (du112 v0 v4 v1))
                      (du112 v0 v3 v1))
                   (MAlonzo.Code.Function.du158
                      (MAlonzo.Code.Relation.Binary.Core.d518
                         (MAlonzo.Code.Algebra.Structures.d140
                            (MAlonzo.Code.Algebra.Structures.d454
                               (MAlonzo.Code.Algebra.Structures.d1542
                                  (MAlonzo.Code.Algebra.Structures.d1728
                                     (MAlonzo.Code.Algebra.d720 v0)))))
                         (MAlonzo.Code.Algebra.d712
                            v0 (MAlonzo.Code.Algebra.d712 v0 v1 (du112 v0 v4 v1))
                            (du112 v0 v3 v1))
                         (MAlonzo.Code.Algebra.d712
                            v0 v1
                            (MAlonzo.Code.Algebra.d712 v0 (du112 v0 v4 v1) (du112 v0 v3 v1))))
                      (MAlonzo.Code.Algebra.Structures.d142
                         (MAlonzo.Code.Algebra.Structures.d454
                            (MAlonzo.Code.Algebra.Structures.d1542
                               (MAlonzo.Code.Algebra.Structures.d1728
                                  (MAlonzo.Code.Algebra.d720 v0))))
                         v1 (du112 v0 v4 v1) (du112 v0 v3 v1)))
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
                    let v8
                          = coe
                              MAlonzo.Code.Algebra.d712 v0
                              (coe MAlonzo.Code.Algebra.d712 v0 v1 (coe du112 v0 v4 v1))
                              (coe du112 v0 v3 v1) in
                    MAlonzo.Code.Relation.Binary.PreorderReasoning.C56
                      (MAlonzo.Code.Relation.Binary.d38
                         (MAlonzo.Code.Relation.Binary.d92
                            (MAlonzo.Code.Relation.Binary.du150 v7))
                         v8 v8
                         (MAlonzo.Code.Relation.Binary.Core.d516
                            (MAlonzo.Code.Relation.Binary.d36
                               (MAlonzo.Code.Relation.Binary.d92
                                  (MAlonzo.Code.Relation.Binary.du150 v7)))
                            v8)))))
name186 = "Algebra.Operations.\215\8242-homo-+"
d186 v0 v1 v2 v3 v4 v5 = du186 v2 v3 v4 v5
du186 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Relation.Binary.PreorderReasoning.d62
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
         (du120 v0 (addInt v2 v3) v1) (du112 v0 (addInt v2 v3) v1)
         (MAlonzo.Code.Algebra.d712 v0 (du120 v0 v2 v1) (du120 v0 v3 v1))
         (MAlonzo.Code.Function.du158
            (MAlonzo.Code.Relation.Binary.Core.d518
               (MAlonzo.Code.Algebra.Structures.d140
                  (MAlonzo.Code.Algebra.Structures.d454
                     (MAlonzo.Code.Algebra.Structures.d1542
                        (MAlonzo.Code.Algebra.Structures.d1728
                           (MAlonzo.Code.Algebra.d720 v0)))))
               (du112 v0 (addInt v2 v3) v1) (du120 v0 (addInt v2 v3) v1))
            (du154 v0 (addInt v2 v3) v1))
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
            (du112 v0 (addInt v2 v3) v1)
            (MAlonzo.Code.Algebra.d712 v0 (du112 v0 v2 v1) (du112 v0 v3 v1))
            (MAlonzo.Code.Algebra.d712 v0 (du120 v0 v2 v1) (du120 v0 v3 v1))
            (du168 v0 v1 v2 v3)
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
               (MAlonzo.Code.Algebra.d712 v0 (du112 v0 v2 v1) (du112 v0 v3 v1))
               (MAlonzo.Code.Algebra.d712 v0 (du120 v0 v2 v1) (du120 v0 v3 v1))
               (MAlonzo.Code.Algebra.d712 v0 (du120 v0 v2 v1) (du120 v0 v3 v1))
               (MAlonzo.Code.Algebra.Structures.d144
                  (MAlonzo.Code.Algebra.Structures.d454
                     (MAlonzo.Code.Algebra.Structures.d1542
                        (MAlonzo.Code.Algebra.Structures.d1728
                           (MAlonzo.Code.Algebra.d720 v0))))
                  (du112 v0 v2 v1) (du120 v0 v2 v1) (du112 v0 v3 v1) (du120 v0 v3 v1)
                  (du154 v0 v2 v1) (du154 v0 v3 v1))
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
                let v8
                      = coe
                          MAlonzo.Code.Algebra.d712 v0 (coe du120 v0 v2 v1)
                          (coe du120 v0 v3 v1) in
                MAlonzo.Code.Relation.Binary.PreorderReasoning.C56
                  (MAlonzo.Code.Relation.Binary.d38
                     (MAlonzo.Code.Relation.Binary.d92
                        (MAlonzo.Code.Relation.Binary.du150 v7))
                     v8 v8
                     (MAlonzo.Code.Relation.Binary.Core.d516
                        (MAlonzo.Code.Relation.Binary.d36
                           (MAlonzo.Code.Relation.Binary.d92
                              (MAlonzo.Code.Relation.Binary.du150 v7)))
                        v8))))))
name198 = "Algebra.Operations.\215\&1-homo-*"
d198 v0 v1 v2 v3 v4 = du198 v2 v3 v4
du198 v0 v1 v2
  = case coe v1 of
      0 -> coe
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
                (MAlonzo.Code.Algebra.d716 v0)
                (MAlonzo.Code.Algebra.d714
                   v0 (MAlonzo.Code.Algebra.d716 v0)
                   (du112 v0 v2 (MAlonzo.Code.Algebra.d718 v0)))
                (MAlonzo.Code.Algebra.d714
                   v0 (MAlonzo.Code.Algebra.d716 v0)
                   (du112 v0 v2 (MAlonzo.Code.Algebra.d718 v0)))
                (MAlonzo.Code.Function.du158
                   (MAlonzo.Code.Relation.Binary.Core.d518
                      (MAlonzo.Code.Algebra.Structures.d140
                         (MAlonzo.Code.Algebra.Structures.d454
                            (MAlonzo.Code.Algebra.Structures.d1542
                               (MAlonzo.Code.Algebra.Structures.d1728
                                  (MAlonzo.Code.Algebra.d720 v0)))))
                      (MAlonzo.Code.Algebra.d714
                         v0 (MAlonzo.Code.Algebra.d716 v0)
                         (du112 v0 v2 (MAlonzo.Code.Algebra.d718 v0)))
                      (MAlonzo.Code.Algebra.d716 v0))
                   (MAlonzo.Code.Data.Product.d26
                      (MAlonzo.Code.Algebra.Structures.d1730
                         (MAlonzo.Code.Algebra.d720 v0))
                      (du112 v0 v2 (MAlonzo.Code.Algebra.d718 v0))))
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
                                    MAlonzo.Code.Algebra.d100
                                    (coe MAlonzo.Code.Algebra.du186 v5)))) in
                 let v5
                       = coe
                           MAlonzo.Code.Algebra.d714 v0 (coe MAlonzo.Code.Algebra.d716 v0)
                           (coe du112 v0 v2 (coe MAlonzo.Code.Algebra.d718 v0)) in
                 MAlonzo.Code.Relation.Binary.PreorderReasoning.C56
                   (MAlonzo.Code.Relation.Binary.d38
                      (MAlonzo.Code.Relation.Binary.d92
                         (MAlonzo.Code.Relation.Binary.du150 v4))
                      v5 v5
                      (MAlonzo.Code.Relation.Binary.Core.d516
                         (MAlonzo.Code.Relation.Binary.d36
                            (MAlonzo.Code.Relation.Binary.d92
                               (MAlonzo.Code.Relation.Binary.du150 v4)))
                         v5))))
      _ -> let v3 = coe subInt v1 (1 :: Integer) in
           coe
             MAlonzo.Code.Relation.Binary.PreorderReasoning.d62
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
                (du112
                   v0 (addInt v2 (mulInt v3 v2)) (MAlonzo.Code.Algebra.d718 v0))
                (MAlonzo.Code.Algebra.d712
                   v0 (du112 v0 v2 (MAlonzo.Code.Algebra.d718 v0))
                   (du112 v0 (mulInt v3 v2) (MAlonzo.Code.Algebra.d718 v0)))
                (MAlonzo.Code.Algebra.d714
                   v0
                   (MAlonzo.Code.Algebra.d712
                      v0 (MAlonzo.Code.Algebra.d718 v0)
                      (du112 v0 v3 (MAlonzo.Code.Algebra.d718 v0)))
                   (du112 v0 v2 (MAlonzo.Code.Algebra.d718 v0)))
                (du168 v0 (MAlonzo.Code.Algebra.d718 v0) v2 (mulInt v3 v2))
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
                   (MAlonzo.Code.Algebra.d712
                      v0 (du112 v0 v2 (MAlonzo.Code.Algebra.d718 v0))
                      (du112 v0 (mulInt v3 v2) (MAlonzo.Code.Algebra.d718 v0)))
                   (MAlonzo.Code.Algebra.d712
                      v0 (du112 v0 v2 (MAlonzo.Code.Algebra.d718 v0))
                      (MAlonzo.Code.Algebra.d714
                         v0 (du112 v0 v3 (MAlonzo.Code.Algebra.d718 v0))
                         (du112 v0 v2 (MAlonzo.Code.Algebra.d718 v0))))
                   (MAlonzo.Code.Algebra.d714
                      v0
                      (MAlonzo.Code.Algebra.d712
                         v0 (MAlonzo.Code.Algebra.d718 v0)
                         (du112 v0 v3 (MAlonzo.Code.Algebra.d718 v0)))
                      (du112 v0 v2 (MAlonzo.Code.Algebra.d718 v0)))
                   (MAlonzo.Code.Algebra.Structures.d144
                      (MAlonzo.Code.Algebra.Structures.d454
                         (MAlonzo.Code.Algebra.Structures.d1542
                            (MAlonzo.Code.Algebra.Structures.d1728
                               (MAlonzo.Code.Algebra.d720 v0))))
                      (du112 v0 v2 (MAlonzo.Code.Algebra.d718 v0))
                      (du112 v0 v2 (MAlonzo.Code.Algebra.d718 v0))
                      (du112 v0 (mulInt v3 v2) (MAlonzo.Code.Algebra.d718 v0))
                      (MAlonzo.Code.Algebra.d714
                         v0 (du112 v0 v3 (MAlonzo.Code.Algebra.d718 v0))
                         (du112 v0 v2 (MAlonzo.Code.Algebra.d718 v0)))
                      (MAlonzo.Code.Relation.Binary.Core.d516
                         (MAlonzo.Code.Algebra.Structures.d140
                            (MAlonzo.Code.Algebra.Structures.d454
                               (MAlonzo.Code.Algebra.Structures.d1542
                                  (MAlonzo.Code.Algebra.Structures.d1728
                                     (MAlonzo.Code.Algebra.d720 v0)))))
                         (du112 v0 v2 (MAlonzo.Code.Algebra.d718 v0)))
                      (du198 v0 v3 v2))
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
                      (MAlonzo.Code.Algebra.d712
                         v0 (du112 v0 v2 (MAlonzo.Code.Algebra.d718 v0))
                         (MAlonzo.Code.Algebra.d714
                            v0 (du112 v0 v3 (MAlonzo.Code.Algebra.d718 v0))
                            (du112 v0 v2 (MAlonzo.Code.Algebra.d718 v0))))
                      (MAlonzo.Code.Algebra.d712
                         v0
                         (MAlonzo.Code.Algebra.d714
                            v0 (MAlonzo.Code.Algebra.d718 v0)
                            (du112 v0 v2 (MAlonzo.Code.Algebra.d718 v0)))
                         (MAlonzo.Code.Algebra.d714
                            v0 (du112 v0 v3 (MAlonzo.Code.Algebra.d718 v0))
                            (du112 v0 v2 (MAlonzo.Code.Algebra.d718 v0))))
                      (MAlonzo.Code.Algebra.d714
                         v0
                         (MAlonzo.Code.Algebra.d712
                            v0 (MAlonzo.Code.Algebra.d718 v0)
                            (du112 v0 v3 (MAlonzo.Code.Algebra.d718 v0)))
                         (du112 v0 v2 (MAlonzo.Code.Algebra.d718 v0)))
                      (MAlonzo.Code.Function.du158
                         (MAlonzo.Code.Relation.Binary.Core.d518
                            (MAlonzo.Code.Algebra.Structures.d140
                               (MAlonzo.Code.Algebra.Structures.d454
                                  (MAlonzo.Code.Algebra.Structures.d1542
                                     (MAlonzo.Code.Algebra.Structures.d1728
                                        (MAlonzo.Code.Algebra.d720 v0)))))
                            (MAlonzo.Code.Algebra.d712
                               v0
                               (MAlonzo.Code.Algebra.d714
                                  v0 (MAlonzo.Code.Algebra.d718 v0)
                                  (du112 v0 v2 (MAlonzo.Code.Algebra.d718 v0)))
                               (MAlonzo.Code.Algebra.d714
                                  v0 (du112 v0 v3 (MAlonzo.Code.Algebra.d718 v0))
                                  (du112 v0 v2 (MAlonzo.Code.Algebra.d718 v0))))
                            (MAlonzo.Code.Algebra.d712
                               v0 (du112 v0 v2 (MAlonzo.Code.Algebra.d718 v0))
                               (MAlonzo.Code.Algebra.d714
                                  v0 (du112 v0 v3 (MAlonzo.Code.Algebra.d718 v0))
                                  (du112 v0 v2 (MAlonzo.Code.Algebra.d718 v0)))))
                         (MAlonzo.Code.Algebra.Structures.d144
                            (MAlonzo.Code.Algebra.Structures.d454
                               (MAlonzo.Code.Algebra.Structures.d1542
                                  (MAlonzo.Code.Algebra.Structures.d1728
                                     (MAlonzo.Code.Algebra.d720 v0))))
                            (MAlonzo.Code.Algebra.d714
                               v0 (MAlonzo.Code.Algebra.d718 v0)
                               (du112 v0 v2 (MAlonzo.Code.Algebra.d718 v0)))
                            (du112 v0 v2 (MAlonzo.Code.Algebra.d718 v0))
                            (MAlonzo.Code.Algebra.d714
                               v0 (du112 v0 v3 (MAlonzo.Code.Algebra.d718 v0))
                               (du112 v0 v2 (MAlonzo.Code.Algebra.d718 v0)))
                            (MAlonzo.Code.Algebra.d714
                               v0 (du112 v0 v3 (MAlonzo.Code.Algebra.d718 v0))
                               (du112 v0 v2 (MAlonzo.Code.Algebra.d718 v0)))
                            (MAlonzo.Code.Data.Product.d26
                               (MAlonzo.Code.Algebra.Structures.d296
                                  (MAlonzo.Code.Algebra.Structures.d1544
                                     (MAlonzo.Code.Algebra.Structures.d1728
                                        (MAlonzo.Code.Algebra.d720 v0))))
                               (du112 v0 v2 (MAlonzo.Code.Algebra.d718 v0)))
                            (MAlonzo.Code.Relation.Binary.Core.d516
                               (MAlonzo.Code.Algebra.Structures.d140
                                  (MAlonzo.Code.Algebra.Structures.d454
                                     (MAlonzo.Code.Algebra.Structures.d1542
                                        (MAlonzo.Code.Algebra.Structures.d1728
                                           (MAlonzo.Code.Algebra.d720 v0)))))
                               (MAlonzo.Code.Algebra.d714
                                  v0 (du112 v0 v3 (MAlonzo.Code.Algebra.d718 v0))
                                  (du112 v0 v2 (MAlonzo.Code.Algebra.d718 v0))))))
                      (let v7
                             = let v7
                                     = coe
                                         MAlonzo.Code.Algebra.C333
                                         (coe MAlonzo.Code.Algebra.d712 v0)
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
                            (MAlonzo.Code.Algebra.d714
                               v0 (MAlonzo.Code.Algebra.d718 v0)
                               (du112 v0 v2 (MAlonzo.Code.Algebra.d718 v0)))
                            (MAlonzo.Code.Algebra.d714
                               v0 (du112 v0 v3 (MAlonzo.Code.Algebra.d718 v0))
                               (du112 v0 v2 (MAlonzo.Code.Algebra.d718 v0))))
                         (MAlonzo.Code.Algebra.d714
                            v0
                            (MAlonzo.Code.Algebra.d712
                               v0 (MAlonzo.Code.Algebra.d718 v0)
                               (du112 v0 v3 (MAlonzo.Code.Algebra.d718 v0)))
                            (du112 v0 v2 (MAlonzo.Code.Algebra.d718 v0)))
                         (MAlonzo.Code.Algebra.d714
                            v0
                            (MAlonzo.Code.Algebra.d712
                               v0 (MAlonzo.Code.Algebra.d718 v0)
                               (du112 v0 v3 (MAlonzo.Code.Algebra.d718 v0)))
                            (du112 v0 v2 (MAlonzo.Code.Algebra.d718 v0)))
                         (MAlonzo.Code.Function.du158
                            (MAlonzo.Code.Relation.Binary.Core.d518
                               (MAlonzo.Code.Algebra.Structures.d140
                                  (MAlonzo.Code.Algebra.Structures.d454
                                     (MAlonzo.Code.Algebra.Structures.d1542
                                        (MAlonzo.Code.Algebra.Structures.d1728
                                           (MAlonzo.Code.Algebra.d720 v0)))))
                               (MAlonzo.Code.Algebra.d714
                                  v0
                                  (MAlonzo.Code.Algebra.d712
                                     v0 (MAlonzo.Code.Algebra.d718 v0)
                                     (du112 v0 v3 (MAlonzo.Code.Algebra.d718 v0)))
                                  (du112 v0 v2 (MAlonzo.Code.Algebra.d718 v0)))
                               (MAlonzo.Code.Algebra.d712
                                  v0
                                  (MAlonzo.Code.Algebra.d714
                                     v0 (MAlonzo.Code.Algebra.d718 v0)
                                     (du112 v0 v2 (MAlonzo.Code.Algebra.d718 v0)))
                                  (MAlonzo.Code.Algebra.d714
                                     v0 (du112 v0 v3 (MAlonzo.Code.Algebra.d718 v0))
                                     (du112 v0 v2 (MAlonzo.Code.Algebra.d718 v0)))))
                            (MAlonzo.Code.Data.Product.d28
                               (MAlonzo.Code.Algebra.Structures.d1546
                                  (MAlonzo.Code.Algebra.Structures.d1728
                                     (MAlonzo.Code.Algebra.d720 v0)))
                               (du112 v0 v2 (MAlonzo.Code.Algebra.d718 v0))
                               (MAlonzo.Code.Algebra.d718 v0)
                               (du112 v0 v3 (MAlonzo.Code.Algebra.d718 v0))))
                         (let v8
                                = let v8
                                        = coe
                                            MAlonzo.Code.Algebra.C333
                                            (coe MAlonzo.Code.Algebra.d712 v0)
                                            (coe MAlonzo.Code.Algebra.d714 v0)
                                            (coe MAlonzo.Code.Algebra.d716 v0)
                                            (coe MAlonzo.Code.Algebra.d718 v0)
                                            (coe
                                               MAlonzo.Code.Algebra.Structures.d1728
                                               (coe MAlonzo.Code.Algebra.d720 v0)) in
                                  let v9
                                        = coe
                                            MAlonzo.Code.Algebra.C97
                                            (coe MAlonzo.Code.Algebra.d616 v8)
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
                          let v9
                                = coe
                                    MAlonzo.Code.Algebra.d714 v0
                                    (coe
                                       MAlonzo.Code.Algebra.d712 v0
                                       (coe MAlonzo.Code.Algebra.d718 v0)
                                       (coe du112 v0 v3 (coe MAlonzo.Code.Algebra.d718 v0)))
                                    (coe du112 v0 v2 (coe MAlonzo.Code.Algebra.d718 v0)) in
                          MAlonzo.Code.Relation.Binary.PreorderReasoning.C56
                            (MAlonzo.Code.Relation.Binary.d38
                               (MAlonzo.Code.Relation.Binary.d92
                                  (MAlonzo.Code.Relation.Binary.du150 v8))
                               v9 v9
                               (MAlonzo.Code.Relation.Binary.Core.d516
                                  (MAlonzo.Code.Relation.Binary.d36
                                     (MAlonzo.Code.Relation.Binary.d92
                                        (MAlonzo.Code.Relation.Binary.du150 v8)))
                                  v9)))))))
name210 = "Algebra.Operations.\215\8242\&1-homo-*"
d210 v0 v1 v2 v3 v4 = du210 v2 v3 v4
du210 v0 v1 v2
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
         (du120 v0 (mulInt v1 v2) (MAlonzo.Code.Algebra.d718 v0))
         (du112 v0 (mulInt v1 v2) (MAlonzo.Code.Algebra.d718 v0))
         (MAlonzo.Code.Algebra.d714
            v0 (du120 v0 v1 (MAlonzo.Code.Algebra.d718 v0))
            (du120 v0 v2 (MAlonzo.Code.Algebra.d718 v0)))
         (MAlonzo.Code.Function.du158
            (MAlonzo.Code.Relation.Binary.Core.d518
               (MAlonzo.Code.Algebra.Structures.d140
                  (MAlonzo.Code.Algebra.Structures.d454
                     (MAlonzo.Code.Algebra.Structures.d1542
                        (MAlonzo.Code.Algebra.Structures.d1728
                           (MAlonzo.Code.Algebra.d720 v0)))))
               (du112 v0 (mulInt v1 v2) (MAlonzo.Code.Algebra.d718 v0))
               (du120 v0 (mulInt v1 v2) (MAlonzo.Code.Algebra.d718 v0)))
            (du154 v0 (mulInt v1 v2) (MAlonzo.Code.Algebra.d718 v0)))
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
            (du112 v0 (mulInt v1 v2) (MAlonzo.Code.Algebra.d718 v0))
            (MAlonzo.Code.Algebra.d714
               v0 (du112 v0 v1 (MAlonzo.Code.Algebra.d718 v0))
               (du112 v0 v2 (MAlonzo.Code.Algebra.d718 v0)))
            (MAlonzo.Code.Algebra.d714
               v0 (du120 v0 v1 (MAlonzo.Code.Algebra.d718 v0))
               (du120 v0 v2 (MAlonzo.Code.Algebra.d718 v0)))
            (du198 v0 v1 v2)
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
                  v0 (du112 v0 v1 (MAlonzo.Code.Algebra.d718 v0))
                  (du112 v0 v2 (MAlonzo.Code.Algebra.d718 v0)))
               (MAlonzo.Code.Algebra.d714
                  v0 (du120 v0 v1 (MAlonzo.Code.Algebra.d718 v0))
                  (du120 v0 v2 (MAlonzo.Code.Algebra.d718 v0)))
               (MAlonzo.Code.Algebra.d714
                  v0 (du120 v0 v1 (MAlonzo.Code.Algebra.d718 v0))
                  (du120 v0 v2 (MAlonzo.Code.Algebra.d718 v0)))
               (MAlonzo.Code.Algebra.Structures.d144
                  (MAlonzo.Code.Algebra.Structures.d294
                     (MAlonzo.Code.Algebra.Structures.d1544
                        (MAlonzo.Code.Algebra.Structures.d1728
                           (MAlonzo.Code.Algebra.d720 v0))))
                  (du112 v0 v1 (MAlonzo.Code.Algebra.d718 v0))
                  (du120 v0 v1 (MAlonzo.Code.Algebra.d718 v0))
                  (du112 v0 v2 (MAlonzo.Code.Algebra.d718 v0))
                  (du120 v0 v2 (MAlonzo.Code.Algebra.d718 v0))
                  (du154 v0 v1 (MAlonzo.Code.Algebra.d718 v0))
                  (du154 v0 v2 (MAlonzo.Code.Algebra.d718 v0)))
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
                let v7
                      = coe
                          MAlonzo.Code.Algebra.d714 v0
                          (coe du120 v0 v1 (coe MAlonzo.Code.Algebra.d718 v0))
                          (coe du120 v0 v2 (coe MAlonzo.Code.Algebra.d718 v0)) in
                MAlonzo.Code.Relation.Binary.PreorderReasoning.C56
                  (MAlonzo.Code.Relation.Binary.d38
                     (MAlonzo.Code.Relation.Binary.d92
                        (MAlonzo.Code.Relation.Binary.du150 v6))
                     v7 v7
                     (MAlonzo.Code.Relation.Binary.Core.d516
                        (MAlonzo.Code.Relation.Binary.d36
                           (MAlonzo.Code.Relation.Binary.d92
                              (MAlonzo.Code.Relation.Binary.du150 v6)))
                        v7))))))
name216 = "Algebra.Operations.\215-cong"
d216 v0 v1 v2 v3 v4 v5 v6 v7 v8 = du216 v2 v3 v4 v5 v6 v8
du216 v0 v1 v2 v3 v4 v5
  = coe
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
         (MAlonzo.Code.Relation.Binary.du150 v6) (du112 v0 v1 v3)
         (du112 v0 v2 v3) (du112 v0 v2 v4)
         (MAlonzo.Code.Function.du158
            (let v7 = coe MAlonzo.Code.Algebra.d720 v0 in
             let v8 = coe MAlonzo.Code.Algebra.Structures.d1728 v7 in
             let v9 = coe MAlonzo.Code.Algebra.Structures.d1542 v8 in
             let v10 = coe MAlonzo.Code.Algebra.Structures.d454 v9 in
             \ v11 ->
               MAlonzo.Code.Relation.Binary.Core.du522
                 (MAlonzo.Code.Algebra.Structures.d140 v10) (du112 v0 v1 v3))
            erased)
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
                             MAlonzo.Code.Algebra.d100 (coe MAlonzo.Code.Algebra.du186 v8)))) in
          MAlonzo.Code.Relation.Binary.PreorderReasoning.du72
            (MAlonzo.Code.Relation.Binary.du150 v7) (du112 v0 v2 v3)
            (du112 v0 v2 v4) (du112 v0 v2 v4) (du236 v0 v2 v3 v4 v5)
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
             let v9 = coe du112 v0 v2 v4 in
             MAlonzo.Code.Relation.Binary.PreorderReasoning.C56
               (MAlonzo.Code.Relation.Binary.d38
                  (MAlonzo.Code.Relation.Binary.d92
                     (MAlonzo.Code.Relation.Binary.du150 v8))
                  v9 v9
                  (MAlonzo.Code.Relation.Binary.Core.d516
                     (MAlonzo.Code.Relation.Binary.d36
                        (MAlonzo.Code.Relation.Binary.d92
                           (MAlonzo.Code.Relation.Binary.du150 v8)))
                     v9)))))
name236 = "Algebra.Operations._.\215-cong\691"
d236 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12
  = du236 v2 v9 v10 v11 v12
du236 v0 v1 v2 v3 v4
  = case coe v1 of
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
             (coe du112 v0 (0 :: Integer) v2)
      _ -> let v5 = coe subInt v1 (1 :: Integer) in
           coe
             MAlonzo.Code.Function.du176 v4
             (coe
                MAlonzo.Code.Algebra.Structures.d144
                (coe
                   MAlonzo.Code.Algebra.Structures.d454
                   (coe
                      MAlonzo.Code.Algebra.Structures.d1542
                      (coe
                         MAlonzo.Code.Algebra.Structures.d1728
                         (coe MAlonzo.Code.Algebra.d720 v0))))
                v2 v3 (coe du112 v0 v5 v2) (coe du112 v0 v5 v3))
             (coe du236 v0 v5 v2 v3 v4)
name246 = "Algebra.Operations.\215\8242-cong"
d246 v0 v1 v2 v3 v4 v5 v6 v7 v8 = du246 v2 v3 v4 v5 v6 v8
du246 v0 v1 v2 v3 v4 v5
  = coe
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
         (MAlonzo.Code.Relation.Binary.du150 v6) (du120 v0 v1 v3)
         (du112 v0 v1 v3) (du120 v0 v2 v4)
         (MAlonzo.Code.Function.du158
            (MAlonzo.Code.Relation.Binary.Core.d518
               (MAlonzo.Code.Algebra.Structures.d140
                  (MAlonzo.Code.Algebra.Structures.d454
                     (MAlonzo.Code.Algebra.Structures.d1542
                        (MAlonzo.Code.Algebra.Structures.d1728
                           (MAlonzo.Code.Algebra.d720 v0)))))
               (du112 v0 v1 v3) (du120 v0 v1 v3))
            (du154 v0 v1 v3))
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
                             MAlonzo.Code.Algebra.d100 (coe MAlonzo.Code.Algebra.du186 v8)))) in
          MAlonzo.Code.Relation.Binary.PreorderReasoning.du72
            (MAlonzo.Code.Relation.Binary.du150 v7) (du112 v0 v1 v3)
            (du112 v0 v2 v4) (du120 v0 v2 v4) (du216 v0 v1 v2 v3 v4 v5)
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
               (MAlonzo.Code.Relation.Binary.du150 v8) (du112 v0 v2 v4)
               (du120 v0 v2 v4) (du120 v0 v2 v4) (du154 v0 v2 v4)
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
                let v10 = coe du120 v0 v2 v4 in
                MAlonzo.Code.Relation.Binary.PreorderReasoning.C56
                  (MAlonzo.Code.Relation.Binary.d38
                     (MAlonzo.Code.Relation.Binary.d92
                        (MAlonzo.Code.Relation.Binary.du150 v9))
                     v10 v10
                     (MAlonzo.Code.Relation.Binary.Core.d516
                        (MAlonzo.Code.Relation.Binary.d36
                           (MAlonzo.Code.Relation.Binary.d92
                              (MAlonzo.Code.Relation.Binary.du150 v9)))
                        v10))))))
name260 = "Algebra.Operations.^-cong"
d260 v0 v1 v2 v3 v4 v5 v6 v7 v8 = du260 v2 v3 v4 v5 v6 v7
du260 v0 v1 v2 v3 v4 v5
  = coe
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
         (MAlonzo.Code.Relation.Binary.du150 v6) (du130 v0 v1 v3)
         (du130 v0 v1 v4) (du130 v0 v2 v4)
         (MAlonzo.Code.Function.du158
            (let v7 = coe MAlonzo.Code.Algebra.d720 v0 in
             let v8 = coe MAlonzo.Code.Algebra.Structures.d1728 v7 in
             let v9 = coe MAlonzo.Code.Algebra.Structures.d1542 v8 in
             let v10 = coe MAlonzo.Code.Algebra.Structures.d454 v9 in
             \ v11 ->
               MAlonzo.Code.Relation.Binary.Core.du522
                 (MAlonzo.Code.Algebra.Structures.d140 v10) (du130 v0 v1 v3))
            erased)
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
                             MAlonzo.Code.Algebra.d100 (coe MAlonzo.Code.Algebra.du186 v8)))) in
          MAlonzo.Code.Relation.Binary.PreorderReasoning.du72
            (MAlonzo.Code.Relation.Binary.du150 v7) (du130 v0 v1 v4)
            (du130 v0 v2 v4) (du130 v0 v2 v4) (du282 v0 v4 v1 v2 v5)
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
             let v9 = coe du130 v0 v2 v4 in
             MAlonzo.Code.Relation.Binary.PreorderReasoning.C56
               (MAlonzo.Code.Relation.Binary.d38
                  (MAlonzo.Code.Relation.Binary.d92
                     (MAlonzo.Code.Relation.Binary.du150 v8))
                  v9 v9
                  (MAlonzo.Code.Relation.Binary.Core.d516
                     (MAlonzo.Code.Relation.Binary.d36
                        (MAlonzo.Code.Relation.Binary.d92
                           (MAlonzo.Code.Relation.Binary.du150 v8)))
                     v9)))))
name282 = "Algebra.Operations._.^-cong\737"
d282 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12
  = du282 v2 v9 v10 v11 v12
du282 v0 v1 v2 v3 v4
  = case coe v1 of
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
             (coe du130 v0 v2 (0 :: Integer))
      _ -> let v5 = coe subInt v1 (1 :: Integer) in
           coe
             MAlonzo.Code.Function.du176 v4
             (coe
                MAlonzo.Code.Algebra.Structures.d144
                (coe
                   MAlonzo.Code.Algebra.Structures.d294
                   (coe
                      MAlonzo.Code.Algebra.Structures.d1544
                      (coe
                         MAlonzo.Code.Algebra.Structures.d1728
                         (coe MAlonzo.Code.Algebra.d720 v0))))
                v2 v3 (coe du130 v0 v2 v5) (coe du130 v0 v3 v5))
             (coe du282 v0 v5 v2 v3 v4)