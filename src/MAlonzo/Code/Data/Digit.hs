{-# LANGUAGE EmptyDataDecls, ExistentialQuantification,
             ScopedTypeVariables, NoMonomorphismRestriction, Rank2Types #-}
module MAlonzo.Code.Data.Digit where

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
import qualified MAlonzo.Code.Algebra
import qualified MAlonzo.Code.Algebra.RingSolver
import qualified MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing
import qualified MAlonzo.Code.Algebra.Structures
import qualified MAlonzo.Code.Data.Fin
import qualified MAlonzo.Code.Data.List.Base
import qualified MAlonzo.Code.Data.Nat
import qualified MAlonzo.Code.Data.Nat.Base
import qualified MAlonzo.Code.Data.Nat.DivMod
import qualified MAlonzo.Code.Data.Nat.Properties
import qualified MAlonzo.Code.Data.Product
import qualified MAlonzo.Code.Data.Vec
import qualified MAlonzo.Code.Data.Vec.NZ45Zary
import qualified MAlonzo.Code.Function
import qualified MAlonzo.Code.Induction.WellFounded
import qualified MAlonzo.Code.Relation.Binary
import qualified MAlonzo.Code.Relation.Binary.Core
import qualified MAlonzo.Code.Relation.Binary.PreorderReasoning
import qualified MAlonzo.Code.Relation.Binary.Reflection
import qualified MAlonzo.Code.Relation.Nullary.Decidable

name10 = "Data.Digit.lem"
d10 v0 v1 v2
  = coe
      MAlonzo.Code.Function.du158
      (coe
         MAlonzo.Code.Data.Nat.Properties.du478
         (coe
            addInt
            (coe
               mulInt (coe addInt (1 :: Integer) v0)
               (coe addInt (2 :: Integer) v1))
            v2))
      (coe
         MAlonzo.Code.Relation.Binary.PreorderReasoning.d62
         (let v3
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
                  (MAlonzo.Code.Relation.Binary.d322 v3)))
            (addInt (2 :: Integer) v0)
            (addInt
               (addInt
                  (addInt
                     (addInt (2 :: Integer) (mulInt (addInt (1 :: Integer) v0) v1)) v0)
                  v0)
               v2)
            (addInt
               (mulInt (addInt (1 :: Integer) v0) (addInt (2 :: Integer) v1)) v2)
            (MAlonzo.Code.Data.Nat.Properties.d500
               (addInt (2 :: Integer) v0)
               (addInt (addInt (mulInt (addInt (1 :: Integer) v0) v1) v0) v2))
            (let v4
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
                     (MAlonzo.Code.Relation.Binary.d322 v4)))
               (addInt
                  (addInt
                     (addInt
                        (addInt (2 :: Integer) (mulInt (addInt (1 :: Integer) v0) v1)) v0)
                     v0)
                  v2)
               (MAlonzo.Code.Data.Vec.NZ45Zary.du66
                  (MAlonzo.Code.Data.Vec.NZ45Zary.du46
                     (3 :: Integer)
                     (MAlonzo.Code.Algebra.RingSolver.du324
                        (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.du1002
                           MAlonzo.Code.Data.Nat.Properties.d70)
                        (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.du568
                           (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.du1002
                              MAlonzo.Code.Data.Nat.Properties.d70))
                        (MAlonzo.Code.Data.Product.d28
                           (MAlonzo.Code.Relation.Binary.Reflection.du100
                              (\ v5 -> MAlonzo.Code.Algebra.RingSolver.C292) (3 :: Integer)
                              (\ v5 v6 v7 ->
                                 MAlonzo.Code.Relation.Binary.Reflection.du138
                                   (MAlonzo.Code.Algebra.RingSolver.C284
                                      MAlonzo.Code.Algebra.RingSolver.C268
                                      (MAlonzo.Code.Algebra.RingSolver.C284
                                         MAlonzo.Code.Algebra.RingSolver.C268
                                         (MAlonzo.Code.Algebra.RingSolver.C288 (2 :: Integer)) v5)
                                      (MAlonzo.Code.Algebra.RingSolver.C284
                                         MAlonzo.Code.Algebra.RingSolver.C268
                                         (MAlonzo.Code.Algebra.RingSolver.C284
                                            MAlonzo.Code.Algebra.RingSolver.C268 v5
                                            (MAlonzo.Code.Algebra.RingSolver.C284
                                               MAlonzo.Code.Algebra.RingSolver.C270
                                               (MAlonzo.Code.Algebra.RingSolver.C284
                                                  MAlonzo.Code.Algebra.RingSolver.C268
                                                  (MAlonzo.Code.Algebra.RingSolver.C288
                                                     (1 :: Integer))
                                                  v5)
                                               v7))
                                         v6))
                                   (MAlonzo.Code.Algebra.RingSolver.C284
                                      MAlonzo.Code.Algebra.RingSolver.C268 v6
                                      (MAlonzo.Code.Algebra.RingSolver.C284
                                         MAlonzo.Code.Algebra.RingSolver.C270
                                         (MAlonzo.Code.Algebra.RingSolver.C284
                                            MAlonzo.Code.Algebra.RingSolver.C268
                                            (MAlonzo.Code.Algebra.RingSolver.C288 (1 :: Integer))
                                            v5)
                                         (MAlonzo.Code.Algebra.RingSolver.C284
                                            MAlonzo.Code.Algebra.RingSolver.C268
                                            (MAlonzo.Code.Algebra.RingSolver.C288 (2 :: Integer))
                                            v7))))))))
                  (MAlonzo.Code.Data.Vec.C22
                     (2 :: Integer) v0
                     (MAlonzo.Code.Data.Vec.C22
                        (1 :: Integer) v2
                        (MAlonzo.Code.Data.Vec.C22
                           (0 :: Integer) v1 MAlonzo.Code.Data.Vec.C14))))
               (addInt
                  (mulInt (addInt (1 :: Integer) v0) (addInt (2 :: Integer) v1)) v2)
               (let v5 = coe () in
                let v6 = coe () in
                let v7
                      = coe
                          MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.du1002
                          MAlonzo.Code.Data.Nat.Properties.d70 in
                let v8
                      = coe
                          MAlonzo.Code.Algebra.C519
                          (coe MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d164 v7)
                          (coe MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166 v7)
                          (coe MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d168 v7)
                          (coe MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d170 v7)
                          (coe
                             MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d172 v7) in
                let v9
                      = coe
                          MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.du568 v7 in
                MAlonzo.Code.Relation.Binary.Reflection.du110
                  (let v10
                         = coe
                             MAlonzo.Code.Algebra.C463
                             (coe MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d164 v7)
                             (coe MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166 v7)
                             (coe MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d170 v7)
                             (coe MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d172 v7)
                             (coe
                                MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d60
                                (coe
                                   MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d174
                                   v7)) in
                   let v11 = coe MAlonzo.Code.Algebra.du984 v10 in
                   let v12
                         = coe
                             MAlonzo.Code.Algebra.C333 (coe MAlonzo.Code.Algebra.d712 v11)
                             (coe MAlonzo.Code.Algebra.d714 v11)
                             (coe MAlonzo.Code.Algebra.d716 v11)
                             (coe MAlonzo.Code.Algebra.d718 v11)
                             (coe
                                MAlonzo.Code.Algebra.Structures.d1728
                                (coe MAlonzo.Code.Algebra.d720 v11)) in
                   let v13
                         = coe
                             MAlonzo.Code.Algebra.C97 (coe MAlonzo.Code.Algebra.d616 v12)
                             (coe MAlonzo.Code.Algebra.d620 v12)
                             (coe
                                MAlonzo.Code.Algebra.Structures.d1542
                                (coe MAlonzo.Code.Algebra.d624 v12)) in
                   MAlonzo.Code.Relation.Binary.C143
                     (MAlonzo.Code.Algebra.Structures.d140
                        (MAlonzo.Code.Algebra.Structures.d294
                           (MAlonzo.Code.Algebra.d100 (MAlonzo.Code.Algebra.du186 v13)))))
                  (\ v10 -> MAlonzo.Code.Algebra.RingSolver.C292)
                  (\ v10 v11 v12 ->
                     MAlonzo.Code.Algebra.RingSolver.du324 v7 v9 v11 v12)
                  (MAlonzo.Code.Algebra.RingSolver.d812
                     v5 v5 v6 v8 v7 v9 MAlonzo.Code.Data.Nat.Base.d224)
                  (MAlonzo.Code.Algebra.RingSolver.d1266
                     v5 v5 v6 v8 v7 v9 MAlonzo.Code.Data.Nat.Base.d224)
                  (3 :: Integer)
                  (\ v10 v11 v12 ->
                     MAlonzo.Code.Relation.Binary.Reflection.du138
                       (MAlonzo.Code.Algebra.RingSolver.C284
                          MAlonzo.Code.Algebra.RingSolver.C268
                          (MAlonzo.Code.Algebra.RingSolver.C284
                             MAlonzo.Code.Algebra.RingSolver.C268
                             (MAlonzo.Code.Algebra.RingSolver.C288 (2 :: Integer)) v10)
                          (MAlonzo.Code.Algebra.RingSolver.C284
                             MAlonzo.Code.Algebra.RingSolver.C268
                             (MAlonzo.Code.Algebra.RingSolver.C284
                                MAlonzo.Code.Algebra.RingSolver.C268 v10
                                (MAlonzo.Code.Algebra.RingSolver.C284
                                   MAlonzo.Code.Algebra.RingSolver.C270
                                   (MAlonzo.Code.Algebra.RingSolver.C284
                                      MAlonzo.Code.Algebra.RingSolver.C268
                                      (MAlonzo.Code.Algebra.RingSolver.C288 (1 :: Integer)) v10)
                                   v12))
                             v11))
                       (MAlonzo.Code.Algebra.RingSolver.C284
                          MAlonzo.Code.Algebra.RingSolver.C268 v11
                          (MAlonzo.Code.Algebra.RingSolver.C284
                             MAlonzo.Code.Algebra.RingSolver.C270
                             (MAlonzo.Code.Algebra.RingSolver.C284
                                MAlonzo.Code.Algebra.RingSolver.C268
                                (MAlonzo.Code.Algebra.RingSolver.C288 (1 :: Integer)) v10)
                             (MAlonzo.Code.Algebra.RingSolver.C284
                                MAlonzo.Code.Algebra.RingSolver.C268
                                (MAlonzo.Code.Algebra.RingSolver.C288 (2 :: Integer)) v12))))
                  erased v0 v2 v1)
               (let v5
                      = coe
                          addInt
                          (coe
                             mulInt (coe addInt (1 :: Integer) v0)
                             (coe addInt (2 :: Integer) v1))
                          v2 in
                MAlonzo.Code.Relation.Binary.PreorderReasoning.C56
                  (MAlonzo.Code.Relation.Binary.d38
                     (MAlonzo.Code.Relation.Binary.d268
                        (MAlonzo.Code.Relation.Binary.d842
                           (MAlonzo.Code.Relation.Binary.d970
                              (MAlonzo.Code.Relation.Binary.d1052 MAlonzo.Code.Data.Nat.d12))))
                     v5 v5
                     (MAlonzo.Code.Relation.Binary.Core.d516
                        (MAlonzo.Code.Relation.Binary.d36
                           (MAlonzo.Code.Relation.Binary.d268
                              (MAlonzo.Code.Relation.Binary.d842
                                 (MAlonzo.Code.Relation.Binary.d970
                                    (MAlonzo.Code.Relation.Binary.d1052
                                       MAlonzo.Code.Data.Nat.d12)))))
                        v5))))))
name24 = "Data.Digit.Digit"
d24 = erased
name28 = "Data.Digit.Decimal"
d28 = erased
name30 = "Data.Digit.Bit"
d30 = erased
name32 = "Data.Digit.0b"
d32 = coe MAlonzo.Code.Data.Fin.C8 (1 :: Integer)
name34 = "Data.Digit.1b"
d34
  = coe
      MAlonzo.Code.Data.Fin.C14 (1 :: Integer)
      (coe MAlonzo.Code.Data.Fin.C8 (0 :: Integer))
name36 = "Data.Digit.digitChars"
d36
  = coe
      MAlonzo.Code.Data.Vec.C22 (15 :: Integer) '0'
      (coe
         MAlonzo.Code.Data.Vec.C22 (14 :: Integer) '1'
         (coe
            MAlonzo.Code.Data.Vec.C22 (13 :: Integer) '2'
            (coe
               MAlonzo.Code.Data.Vec.C22 (12 :: Integer) '3'
               (coe
                  MAlonzo.Code.Data.Vec.C22 (11 :: Integer) '4'
                  (coe
                     MAlonzo.Code.Data.Vec.C22 (10 :: Integer) '5'
                     (coe
                        MAlonzo.Code.Data.Vec.C22 (9 :: Integer) '6'
                        (coe
                           MAlonzo.Code.Data.Vec.C22 (8 :: Integer) '7'
                           (coe
                              MAlonzo.Code.Data.Vec.C22 (7 :: Integer) '8'
                              (coe
                                 MAlonzo.Code.Data.Vec.C22 (6 :: Integer) '9'
                                 (coe
                                    MAlonzo.Code.Data.Vec.C22 (5 :: Integer) 'a'
                                    (coe
                                       MAlonzo.Code.Data.Vec.C22 (4 :: Integer) 'b'
                                       (coe
                                          MAlonzo.Code.Data.Vec.C22 (3 :: Integer) 'c'
                                          (coe
                                             MAlonzo.Code.Data.Vec.C22 (2 :: Integer) 'd'
                                             (coe
                                                MAlonzo.Code.Data.Vec.C22 (1 :: Integer) 'e'
                                                (coe
                                                   MAlonzo.Code.Data.Vec.C22 (0 :: Integer) 'f'
                                                   MAlonzo.Code.Data.Vec.C14)))))))))))))))
name42 = "Data.Digit.showDigit"
d42 v0 v1 v2 = du42 v0 v2
du42 v0 v1
  = coe
      MAlonzo.Code.Data.Vec.du714
      (coe
         MAlonzo.Code.Data.Fin.du136 v1
         (coe
            MAlonzo.Code.Relation.Nullary.Decidable.du34
            (coe MAlonzo.Code.Data.Nat.Base.d258 v0 (16 :: Integer))))
      d36
name50 = "Data.Digit.fromDigits"
d50 v0 v1
  = case coe v1 of
      [] -> 0 :: Integer
      (:) v2 v3
        -> coe
             addInt (coe MAlonzo.Code.Data.Fin.du18 v2)
             (coe mulInt (coe d50 v0 v3) v0)
      _ -> coe MAlonzo.RTE.mazUnreachableError
name66 = "Data.Digit.toDigits"
d66 v0 v1 v2 = du66 v0 v2
du66 v0 v1
  = let v2 = coe subInt v0 (2 :: Integer) in
    coe
      MAlonzo.Code.Induction.WellFounded.du110 erased (coe du100 v2) v1
name76 = "Data.Digit._.base"
d76 v0 v1 v2 = du76 v0
du76 v0 = coe addInt (2 :: Integer) v0
name78 = "Data.Digit._.Pred"
d78 = erased
name88 = "Data.Digit._.cons"
d88 v0 v1 v2 v3 v4 v5 = du88 v4 v5
du88 v0 v1
  = coe
      MAlonzo.Code.Data.Product.C30
      (coe (:) v0 (coe MAlonzo.Code.Data.Product.d26 v1)) erased
name100 = "Data.Digit._.helper"
d100 v0 v1 v2 v3 v4 = du100 v0 v3 v4
du100 v0 v1 v2
  = let v3
          = coe MAlonzo.Code.Data.Nat.DivMod.du160 v1 (coe du76 v0) in
    case coe v3 of
      MAlonzo.Code.Data.Nat.DivMod.C28 v4 v5
        -> case coe v4 of
             0 -> coe
                    MAlonzo.Code.Data.Product.C30
                    (coe MAlonzo.Code.Data.List.Base.du10 v5) erased
             _ -> coe
                    du88 v5
                    (coe
                       v2 v4
                       (coe
                          d10 (coe MAlonzo.Code.Data.Nat.Base.d184 v4) v0
                          (coe MAlonzo.Code.Data.Fin.du18 v5)))
      _ -> coe MAlonzo.RTE.mazUnreachableError