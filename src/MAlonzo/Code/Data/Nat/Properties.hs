{-# LANGUAGE EmptyDataDecls, ExistentialQuantification,
             ScopedTypeVariables, NoMonomorphismRestriction, Rank2Types #-}
module MAlonzo.Code.Data.Nat.Properties where

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
import qualified MAlonzo.Code.Algebra
import qualified MAlonzo.Code.Algebra.RingSolver
import qualified MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing
import qualified MAlonzo.Code.Algebra.Structures
import qualified MAlonzo.Code.Data.Nat
import qualified MAlonzo.Code.Data.Nat.Base
import qualified MAlonzo.Code.Data.Product
import qualified MAlonzo.Code.Data.Sum
import qualified MAlonzo.Code.Function
import qualified MAlonzo.Code.Relation.Binary
import qualified MAlonzo.Code.Relation.Binary.Core
import qualified MAlonzo.Code.Relation.Binary.PreorderReasoning
import qualified MAlonzo.Code.Relation.Binary.PropositionalEquality.Core
import qualified MAlonzo.Code.Relation.Binary.Reflection

name8 = "Data.Nat.Properties._.refl"
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
name14 = "Data.Nat.Properties._._DistributesOver_"
d14 = erased
name22 = "Data.Nat.Properties._.Absorptive"
d22 = erased
name36 = "Data.Nat.Properties._.Identity"
d36 = erased
name56 = "Data.Nat.Properties._.Zero"
d56 = erased
name64 = "Data.Nat.Properties.isCommutativeSemiring"
d64
  = coe
      MAlonzo.Code.Algebra.Structures.C1155
      (coe
         MAlonzo.Code.Algebra.Structures.C221
         (coe
            MAlonzo.Code.Algebra.Structures.C75
            MAlonzo.Code.Relation.Binary.PropositionalEquality.Core.du50 erased
            erased)
         erased erased)
      (coe
         MAlonzo.Code.Algebra.Structures.C221
         (coe
            MAlonzo.Code.Algebra.Structures.C75
            MAlonzo.Code.Relation.Binary.PropositionalEquality.Core.du50 erased
            erased)
         erased erased)
      erased erased
name70 = "Data.Nat.Properties.commutativeSemiring"
d70
  = coe
      MAlonzo.Code.Algebra.C463 addInt mulInt (0 :: Integer)
      (1 :: Integer) d64
name74 = "Data.Nat.Properties.SemiringSolver._*H_"
d74
  = let v0 = coe () in
    let v1 = coe () in
    let v2
          = coe
              MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.du1002 d70 in
    coe
      MAlonzo.Code.Algebra.RingSolver.d670 v0 v0 v1
      (coe
         MAlonzo.Code.Algebra.C519
         (coe MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d164 v2)
         (coe MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166 v2)
         (coe MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d168 v2)
         (coe MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d170 v2)
         (coe
            MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d172 v2))
      v2
      (coe
         MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.du568 v2)
      MAlonzo.Code.Data.Nat.Base.d224
name76 = "Data.Nat.Properties.SemiringSolver._*HN_"
d76
  = let v0 = coe () in
    let v1 = coe () in
    let v2
          = coe
              MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.du1002 d70 in
    coe
      MAlonzo.Code.Algebra.RingSolver.d666 v0 v0 v1
      (coe
         MAlonzo.Code.Algebra.C519
         (coe MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d164 v2)
         (coe MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166 v2)
         (coe MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d168 v2)
         (coe MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d170 v2)
         (coe
            MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d172 v2))
      v2
      (coe
         MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.du568 v2)
      MAlonzo.Code.Data.Nat.Base.d224
name78 = "Data.Nat.Properties.SemiringSolver._*N_"
d78
  = let v0 = coe () in
    let v1 = coe () in
    let v2
          = coe
              MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.du1002 d70 in
    coe
      (\ v3 v4 v5 ->
         coe
           MAlonzo.Code.Algebra.RingSolver.du674 v0 v0 v1
           (coe
              MAlonzo.Code.Algebra.C519
              (coe MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d164 v2)
              (coe MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166 v2)
              (coe MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d168 v2)
              (coe MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d170 v2)
              (coe
                 MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d172 v2))
           v2
           (coe
              MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.du568 v2)
           MAlonzo.Code.Data.Nat.Base.d224 v4 v5)
name80 = "Data.Nat.Properties.SemiringSolver._*NH_"
d80
  = let v0 = coe () in
    let v1 = coe () in
    let v2
          = coe
              MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.du1002 d70 in
    coe
      MAlonzo.Code.Algebra.RingSolver.d662 v0 v0 v1
      (coe
         MAlonzo.Code.Algebra.C519
         (coe MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d164 v2)
         (coe MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166 v2)
         (coe MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d168 v2)
         (coe MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d170 v2)
         (coe
            MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d172 v2))
      v2
      (coe
         MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.du568 v2)
      MAlonzo.Code.Data.Nat.Base.d224
name86 = "Data.Nat.Properties.SemiringSolver._*x+H_"
d86
  = let v0 = coe () in
    let v1 = coe () in
    let v2
          = coe
              MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.du1002 d70 in
    coe
      MAlonzo.Code.Algebra.RingSolver.d648 v0 v0 v1
      (coe
         MAlonzo.Code.Algebra.C519
         (coe MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d164 v2)
         (coe MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166 v2)
         (coe MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d168 v2)
         (coe MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d170 v2)
         (coe
            MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d172 v2))
      v2
      (coe
         MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.du568 v2)
      MAlonzo.Code.Data.Nat.Base.d224
name88 = "Data.Nat.Properties.SemiringSolver._*x+HN_"
d88
  = let v0 = coe () in
    let v1 = coe () in
    let v2
          = coe
              MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.du1002 d70 in
    coe
      MAlonzo.Code.Algebra.RingSolver.d596 v0 v0 v1
      (coe
         MAlonzo.Code.Algebra.C519
         (coe MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d164 v2)
         (coe MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166 v2)
         (coe MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d168 v2)
         (coe MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d170 v2)
         (coe
            MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d172 v2))
      v2
      (coe
         MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.du568 v2)
      MAlonzo.Code.Data.Nat.Base.d224
name90 = "Data.Nat.Properties.SemiringSolver._+H_"
d90
  = let v0 = coe () in
    let v1 = coe () in
    let v2
          = coe
              MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.du1002 d70 in
    coe
      MAlonzo.Code.Algebra.RingSolver.d620 v0 v0 v1
      (coe
         MAlonzo.Code.Algebra.C519
         (coe MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d164 v2)
         (coe MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166 v2)
         (coe MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d168 v2)
         (coe MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d170 v2)
         (coe
            MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d172 v2))
      v2
      (coe
         MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.du568 v2)
      MAlonzo.Code.Data.Nat.Base.d224
name92 = "Data.Nat.Properties.SemiringSolver._+N_"
d92
  = let v0 = coe () in
    let v1 = coe () in
    let v2
          = coe
              MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.du1002 d70 in
    coe
      (\ v3 v4 v5 ->
         coe
           MAlonzo.Code.Algebra.RingSolver.du624 v0 v0 v1
           (coe
              MAlonzo.Code.Algebra.C519
              (coe MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d164 v2)
              (coe MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166 v2)
              (coe MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d168 v2)
              (coe MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d170 v2)
              (coe
                 MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d172 v2))
           v2
           (coe
              MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.du568 v2)
           MAlonzo.Code.Data.Nat.Base.d224 v4 v5)
name94 = "Data.Nat.Properties.SemiringSolver._:*_"
d94 v0 = du94
du94
  = coe
      MAlonzo.Code.Algebra.RingSolver.C284
      MAlonzo.Code.Algebra.RingSolver.C270
name96 = "Data.Nat.Properties.SemiringSolver._:+_"
d96 v0 = du96
du96
  = coe
      MAlonzo.Code.Algebra.RingSolver.C284
      MAlonzo.Code.Algebra.RingSolver.C268
name98 = "Data.Nat.Properties.SemiringSolver._:-_"
d98 v0 v1 v2 = du98 v1 v2
du98 v0 v1
  = coe
      MAlonzo.Code.Algebra.RingSolver.C284
      MAlonzo.Code.Algebra.RingSolver.C268 v0
      (coe MAlonzo.Code.Algebra.RingSolver.C302 v1)
name100 = "Data.Nat.Properties.SemiringSolver._\8860_"
d100 v0 = coe MAlonzo.Code.Relation.Binary.Reflection.du138
name104 = "Data.Nat.Properties.SemiringSolver._^N_"
d104
  = let v0 = coe () in
    let v1 = coe () in
    let v2
          = coe
              MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.du1002 d70 in
    coe
      MAlonzo.Code.Algebra.RingSolver.d750 v0 v0 v1
      (coe
         MAlonzo.Code.Algebra.C519
         (coe MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d164 v2)
         (coe MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166 v2)
         (coe MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d168 v2)
         (coe MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d170 v2)
         (coe
            MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d172 v2))
      v2
      (coe
         MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.du568 v2)
      MAlonzo.Code.Data.Nat.Base.d224
name106 = "Data.Nat.Properties.SemiringSolver._\8776H_"
d106 a0 a1 a2 = ()
name108 = "Data.Nat.Properties.SemiringSolver._\8776N_"
d108 a0 a1 a2 = ()
name110 = "Data.Nat.Properties.SemiringSolver._\8799H_"
d110
  = let v0 = coe () in
    let v1 = coe () in
    let v2
          = coe
              MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.du1002 d70 in
    coe
      (\ v3 v4 v5 ->
         coe
           MAlonzo.Code.Algebra.RingSolver.du432 v0 v0 v1
           (coe
              MAlonzo.Code.Algebra.C519
              (coe MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d164 v2)
              (coe MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166 v2)
              (coe MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d168 v2)
              (coe MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d170 v2)
              (coe
                 MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d172 v2))
           v2
           (coe
              MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.du568 v2)
           MAlonzo.Code.Data.Nat.Base.d224 v4 v5)
name112 = "Data.Nat.Properties.SemiringSolver._\8799N_"
d112
  = let v0 = coe () in
    let v1 = coe () in
    let v2
          = coe
              MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.du1002 d70 in
    coe
      (\ v3 v4 v5 ->
         coe
           MAlonzo.Code.Algebra.RingSolver.du436 v0 v0 v1
           (coe
              MAlonzo.Code.Algebra.C519
              (coe MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d164 v2)
              (coe MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166 v2)
              (coe MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d168 v2)
              (coe MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d170 v2)
              (coe
                 MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d172 v2))
           v2
           (coe
              MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.du568 v2)
           MAlonzo.Code.Data.Nat.Base.d224 v4 v5)
name114 = "Data.Nat.Properties.SemiringSolver.*H-homo"
d114 = erased
name116 = "Data.Nat.Properties.SemiringSolver.*HN-homo"
d116 = erased
name118 = "Data.Nat.Properties.SemiringSolver.*N-homo"
d118 = erased
name120 = "Data.Nat.Properties.SemiringSolver.*NH-homo"
d120 = erased
name122 = "Data.Nat.Properties.SemiringSolver.*x+H-homo"
d122 = erased
name124 = "Data.Nat.Properties.SemiringSolver.*x+HN\8776*x+"
d124 = erased
name126 = "Data.Nat.Properties.SemiringSolver.+H-homo"
d126 = erased
name128 = "Data.Nat.Properties.SemiringSolver.+N-homo"
d128 = erased
name130 = "Data.Nat.Properties.SemiringSolver.-H_"
d130
  = let v0 = coe () in
    let v1 = coe () in
    let v2
          = coe
              MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.du1002 d70 in
    coe
      MAlonzo.Code.Algebra.RingSolver.d760 v0 v0 v1
      (coe
         MAlonzo.Code.Algebra.C519
         (coe MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d164 v2)
         (coe MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166 v2)
         (coe MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d168 v2)
         (coe MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d170 v2)
         (coe
            MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d172 v2))
      v2
      (coe
         MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.du568 v2)
      MAlonzo.Code.Data.Nat.Base.d224
name132 = "Data.Nat.Properties.SemiringSolver.-H\8255-homo"
d132 = erased
name134 = "Data.Nat.Properties.SemiringSolver.-N_"
d134
  = let v0 = coe () in
    let v1 = coe () in
    let v2
          = coe
              MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.du1002 d70 in
    coe
      (\ v3 v4 ->
         coe
           MAlonzo.Code.Algebra.RingSolver.du764 v0 v0 v1
           (coe
              MAlonzo.Code.Algebra.C519
              (coe MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d164 v2)
              (coe MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166 v2)
              (coe MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d168 v2)
              (coe MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d170 v2)
              (coe
                 MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d172 v2))
           v2
           (coe
              MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.du568 v2)
           MAlonzo.Code.Data.Nat.Base.d224 v4)
name136 = "Data.Nat.Properties.SemiringSolver.-N\8255-homo"
d136 = erased
name138 = "Data.Nat.Properties.SemiringSolver.0H"
d138 v0 = coe MAlonzo.Code.Algebra.RingSolver.C358 v0
name140 = "Data.Nat.Properties.SemiringSolver.0N"
d140
  = let v0
          = coe
              MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.du1002 d70 in
    coe
      MAlonzo.Code.Algebra.RingSolver.du578
      (coe
         MAlonzo.Code.Algebra.C519
         (coe MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d164 v0)
         (coe MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166 v0)
         (coe MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d168 v0)
         (coe MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d170 v0)
         (coe
            MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d172 v0))
name142 = "Data.Nat.Properties.SemiringSolver.0N-homo"
d142 = erased
name144
  = "Data.Nat.Properties.SemiringSolver.0\8776\10214\&0\10215"
d144 = erased
name146 = "Data.Nat.Properties.SemiringSolver.1H"
d146
  = let v0 = coe () in
    let v1 = coe () in
    let v2
          = coe
              MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.du1002 d70 in
    coe
      MAlonzo.Code.Algebra.RingSolver.d584 v0 v0 v1
      (coe
         MAlonzo.Code.Algebra.C519
         (coe MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d164 v2)
         (coe MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166 v2)
         (coe MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d168 v2)
         (coe MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d170 v2)
         (coe
            MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d172 v2))
      v2
      (coe
         MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.du568 v2)
      MAlonzo.Code.Data.Nat.Base.d224
name148 = "Data.Nat.Properties.SemiringSolver.1N"
d148
  = let v0 = coe () in
    let v1 = coe () in
    let v2
          = coe
              MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.du1002 d70 in
    coe
      MAlonzo.Code.Algebra.RingSolver.d588 v0 v0 v1
      (coe
         MAlonzo.Code.Algebra.C519
         (coe MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d164 v2)
         (coe MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166 v2)
         (coe MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d168 v2)
         (coe MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d170 v2)
         (coe
            MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d172 v2))
      v2
      (coe
         MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.du568 v2)
      MAlonzo.Code.Data.Nat.Base.d224
name150 = "Data.Nat.Properties.SemiringSolver.1N-homo"
d150 = erased
name154 = "Data.Nat.Properties.SemiringSolver.HNF"
d154 a0 = ()
name156 = "Data.Nat.Properties.SemiringSolver.Normal"
d156 a0 = ()
name158 = "Data.Nat.Properties.SemiringSolver.Op"
d158 = ()
name160 = "Data.Nat.Properties.SemiringSolver.Polynomial"
d160 a0 = ()
name166 = "Data.Nat.Properties.SemiringSolver.^N-homo"
d166 = erased
name174 = "Data.Nat.Properties.SemiringSolver.correct"
d174 = erased
name176 = "Data.Nat.Properties.SemiringSolver.correct-con"
d176 = erased
name178 = "Data.Nat.Properties.SemiringSolver.correct-var"
d178 = erased
name180 = "Data.Nat.Properties.SemiringSolver.normalise"
d180
  = let v0 = coe () in
    let v1 = coe () in
    let v2
          = coe
              MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.du1002 d70 in
    coe
      MAlonzo.Code.Algebra.RingSolver.d790 v0 v0 v1
      (coe
         MAlonzo.Code.Algebra.C519
         (coe MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d164 v2)
         (coe MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166 v2)
         (coe MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d168 v2)
         (coe MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d170 v2)
         (coe
            MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d172 v2))
      v2
      (coe
         MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.du568 v2)
      MAlonzo.Code.Data.Nat.Base.d224
name182 = "Data.Nat.Properties.SemiringSolver.normalise-con"
d182
  = let v0 = coe () in
    let v1 = coe () in
    let v2
          = coe
              MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.du1002 d70 in
    coe
      MAlonzo.Code.Algebra.RingSolver.d774 v0 v0 v1
      (coe
         MAlonzo.Code.Algebra.C519
         (coe MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d164 v2)
         (coe MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166 v2)
         (coe MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d168 v2)
         (coe MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d170 v2)
         (coe
            MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d172 v2))
      v2
      (coe
         MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.du568 v2)
      MAlonzo.Code.Data.Nat.Base.d224
name184 = "Data.Nat.Properties.SemiringSolver.normalise-var"
d184
  = let v0 = coe () in
    let v1 = coe () in
    let v2
          = coe
              MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.du1002 d70 in
    coe
      (\ v3 v4 ->
         coe
           MAlonzo.Code.Algebra.RingSolver.du784 v0 v0 v1
           (coe
              MAlonzo.Code.Algebra.C519
              (coe MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d164 v2)
              (coe MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166 v2)
              (coe MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d168 v2)
              (coe MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d170 v2)
              (coe
                 MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d172 v2))
           v2
           (coe
              MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.du568 v2)
           MAlonzo.Code.Data.Nat.Base.d224 v4)
name192 = "Data.Nat.Properties.SemiringSolver.prove"
d192 = erased
name194 = "Data.Nat.Properties.SemiringSolver.sem"
d194
  = let v0
          = coe
              MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.du1002 d70 in
    coe MAlonzo.Code.Algebra.RingSolver.du320 v0
name196 = "Data.Nat.Properties.SemiringSolver.solve"
d196
  = let v0 = coe () in
    let v1 = coe () in
    let v2
          = coe
              MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.du1002 d70 in
    let v3
          = coe
              MAlonzo.Code.Algebra.C519
              (coe MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d164 v2)
              (coe MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166 v2)
              (coe MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d168 v2)
              (coe MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d170 v2)
              (coe
                 MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d172 v2) in
    let v4
          = coe
              MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.du568 v2 in
    coe
      MAlonzo.Code.Relation.Binary.Reflection.du110
      (let v5
             = coe
                 MAlonzo.Code.Algebra.C463
                 (coe MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d164 v2)
                 (coe MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166 v2)
                 (coe MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d170 v2)
                 (coe MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d172 v2)
                 (coe
                    MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d60
                    (coe
                       MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d174 v2)) in
       let v6 = coe MAlonzo.Code.Algebra.du984 v5 in
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
       MAlonzo.Code.Relation.Binary.C143
         (MAlonzo.Code.Algebra.Structures.d140
            (MAlonzo.Code.Algebra.Structures.d294
               (MAlonzo.Code.Algebra.d100 (MAlonzo.Code.Algebra.du186 v8)))))
      (\ v5 -> MAlonzo.Code.Algebra.RingSolver.C292)
      (\ v5 v6 v7 ->
         coe MAlonzo.Code.Algebra.RingSolver.du324 v2 v4 v6 v7)
      (coe
         MAlonzo.Code.Algebra.RingSolver.d812 v0 v0 v1 v3 v2 v4
         MAlonzo.Code.Data.Nat.Base.d224)
      (coe
         MAlonzo.Code.Algebra.RingSolver.d1266 v0 v0 v1 v3 v2 v4
         MAlonzo.Code.Data.Nat.Base.d224)
name204 = "Data.Nat.Properties.SemiringSolver.\8709*x+HN-homo"
d204 = erased
name206 = "Data.Nat.Properties.SemiringSolver.\10214_\10215"
d206
  = let v0
          = coe
              MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.du1002 d70 in
    coe
      (\ v1 v2 v3 ->
         coe
           MAlonzo.Code.Algebra.RingSolver.du324 v0
           (coe
              MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.du568 v0)
           v2 v3)
name208 = "Data.Nat.Properties.SemiringSolver.\10214_\10215H"
d208
  = let v0 = coe () in
    let v1 = coe () in
    let v2
          = coe
              MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.du1002 d70 in
    coe
      MAlonzo.Code.Algebra.RingSolver.d372 v0 v0 v1
      (coe
         MAlonzo.Code.Algebra.C519
         (coe MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d164 v2)
         (coe MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166 v2)
         (coe MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d168 v2)
         (coe MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d170 v2)
         (coe
            MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d172 v2))
      v2
      (coe
         MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.du568 v2)
      MAlonzo.Code.Data.Nat.Base.d224
name210 = "Data.Nat.Properties.SemiringSolver.\10214_\10215H-cong"
d210 = erased
name212 = "Data.Nat.Properties.SemiringSolver.\10214_\10215N"
d212
  = let v0 = coe () in
    let v1 = coe () in
    let v2
          = coe
              MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.du1002 d70 in
    coe
      (\ v3 v4 v5 ->
         coe
           MAlonzo.Code.Algebra.RingSolver.du376 v0 v0 v1
           (coe
              MAlonzo.Code.Algebra.C519
              (coe MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d164 v2)
              (coe MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166 v2)
              (coe MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d168 v2)
              (coe MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d170 v2)
              (coe
                 MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d172 v2))
           v2
           (coe
              MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.du568 v2)
           MAlonzo.Code.Data.Nat.Base.d224 v4 v5)
name214 = "Data.Nat.Properties.SemiringSolver.\10214_\10215N-cong"
d214 = erased
name216 = "Data.Nat.Properties.SemiringSolver.\10214_\10215\8595"
d216
  = let v0 = coe () in
    let v1 = coe () in
    let v2
          = coe
              MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.du1002 d70 in
    coe
      MAlonzo.Code.Algebra.RingSolver.d812 v0 v0 v1
      (coe
         MAlonzo.Code.Algebra.C519
         (coe MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d164 v2)
         (coe MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166 v2)
         (coe MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d168 v2)
         (coe MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d170 v2)
         (coe
            MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d172 v2))
      v2
      (coe
         MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.du568 v2)
      MAlonzo.Code.Data.Nat.Base.d224
name260 = "Data.Nat.Properties.\8852-assoc"
d260 = erased
name276 = "Data.Nat.Properties.\8852-identity"
d276 = coe MAlonzo.Code.Data.Product.C30 erased erased
name282 = "Data.Nat.Properties._.n\8852\&0\8801n"
d282 = erased
name288 = "Data.Nat.Properties.\8852-comm"
d288 = erased
name298 = "Data.Nat.Properties.\8851-assoc"
d298 = erased
name314 = "Data.Nat.Properties.\8851-zero"
d314 = coe MAlonzo.Code.Data.Product.C30 erased erased
name320 = "Data.Nat.Properties._.n\8851\&0\8801\&0"
d320 = erased
name326 = "Data.Nat.Properties.\8851-comm"
d326 = erased
name336 = "Data.Nat.Properties.distrib-\8851-\8852"
d336 = coe MAlonzo.Code.Data.Product.C30 erased erased
name342 = "Data.Nat.Properties._.distrib\691-\8851-\8852"
d342 = erased
name362 = "Data.Nat.Properties._.distrib\737-\8851-\8852"
d362 = erased
name370
  = "Data.Nat.Properties.\8852-\8851-0-isCommutativeSemiringWithoutOne"
d370
  = coe
      MAlonzo.Code.Algebra.Structures.C1079
      (coe
         MAlonzo.Code.Algebra.Structures.C773
         (coe
            MAlonzo.Code.Algebra.Structures.C221
            (coe
               MAlonzo.Code.Algebra.Structures.C75
               MAlonzo.Code.Relation.Binary.PropositionalEquality.Core.du50 erased
               erased)
            (coe MAlonzo.Code.Data.Product.d26 d276) erased)
         (coe
            MAlonzo.Code.Algebra.Structures.C75
            MAlonzo.Code.Relation.Binary.PropositionalEquality.Core.du50 erased
            erased)
         d336 d314)
      erased
name372
  = "Data.Nat.Properties.\8852-\8851-0-commutativeSemiringWithoutOne"
d372
  = coe
      MAlonzo.Code.Algebra.C429 MAlonzo.Code.Data.Nat.Base.d196
      MAlonzo.Code.Data.Nat.Base.d206 (0 :: Integer) d370
name374 = "Data.Nat.Properties.absorptive-\8851-\8852"
d374 = coe MAlonzo.Code.Data.Product.C30 erased erased
name380 = "Data.Nat.Properties._.abs-\8852-\8851"
d380 = erased
name390 = "Data.Nat.Properties._.abs-\8851-\8852"
d390 = erased
name400 = "Data.Nat.Properties.isDistributiveLattice"
d400
  = coe
      MAlonzo.Code.Algebra.Structures.C2083
      (coe
         MAlonzo.Code.Algebra.Structures.C1999
         MAlonzo.Code.Relation.Binary.PropositionalEquality.Core.du50 erased
         erased erased erased erased erased d374)
      (coe MAlonzo.Code.Data.Product.d28 d336)
name402 = "Data.Nat.Properties.distributiveLattice"
d402
  = coe
      MAlonzo.Code.Algebra.C687 MAlonzo.Code.Data.Nat.Base.d206
      MAlonzo.Code.Data.Nat.Base.d196 d400
name404 = "Data.Nat.Properties.\8851-sel"
d404 v0 v1
  = case coe v0 of
      0 -> coe Left erased
      _ -> let v2 = coe subInt v0 (1 :: Integer) in
           case coe v1 of
             0 -> coe Right erased
             _ -> let v3 = coe subInt v1 (1 :: Integer) in coe d404 v2 v3
name428 = "Data.Nat.Properties.\8852-sel"
d428 v0 v1
  = case coe v0 of
      0 -> coe Right erased
      _ -> let v2 = coe subInt v0 (1 :: Integer) in
           case coe v1 of
             0 -> coe Left erased
             _ -> let v3 = coe subInt v1 (1 :: Integer) in coe d428 v2 v3
name456 = "Data.Nat.Properties.\8804-step"
d456 v0 v1 v2 = du456 v1 v2
du456 v0 v1
  = case coe v1 of
      MAlonzo.Code.Data.Nat.Base.C10 v2
        -> coe
             MAlonzo.Code.Data.Nat.Base.C10 (coe addInt (1 :: Integer) v0)
      MAlonzo.Code.Data.Nat.Base.C18 v2 v3 v4
        -> coe
             MAlonzo.Code.Data.Nat.Base.C18 v2 (coe addInt (1 :: Integer) v3)
             (coe du456 v3 v4)
      _ -> coe MAlonzo.RTE.mazUnreachableError
name460 = "Data.Nat.Properties.\8804\8242\8658\8804"
d460 v0 v1 v2 = du460 v0 v2
du460 v0 v1
  = case coe v1 of
      MAlonzo.Code.Data.Nat.Base.C68
        -> coe
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
      MAlonzo.Code.Data.Nat.Base.C74 v2 v3
        -> coe du456 v2 (coe du460 v0 v3)
      _ -> coe MAlonzo.RTE.mazUnreachableError
name466 = "Data.Nat.Properties.z\8804\8242n"
d466 v0
  = case coe v0 of
      0 -> coe MAlonzo.Code.Data.Nat.Base.C68
      _ -> let v1 = coe subInt v0 (1 :: Integer) in
           coe MAlonzo.Code.Data.Nat.Base.C74 v1 (coe d466 v1)
name474 = "Data.Nat.Properties.s\8804\8242s"
d474 v0 v1 v2 = du474 v2
du474 v0
  = case coe v0 of
      MAlonzo.Code.Data.Nat.Base.C68 -> coe v0
      MAlonzo.Code.Data.Nat.Base.C74 v1 v2
        -> coe
             MAlonzo.Code.Data.Nat.Base.C74 (coe addInt (1 :: Integer) v1)
             (coe du474 v2)
      _ -> coe MAlonzo.RTE.mazUnreachableError
name478 = "Data.Nat.Properties.\8804\8658\8804\8242"
d478 v0 v1 v2 = du478 v1 v2
du478 v0 v1
  = case coe v1 of
      MAlonzo.Code.Data.Nat.Base.C10 v2 -> coe d466 v0
      MAlonzo.Code.Data.Nat.Base.C18 v2 v3 v4
        -> coe du474 (coe du478 v3 v4)
      _ -> coe MAlonzo.RTE.mazUnreachableError
name488 = "Data.Nat.Properties.\8804-steps"
d488 v0 v1 v2 v3 = du488 v1 v2 v3
du488 v0 v1 v2
  = case coe v1 of
      0 -> coe v2
      _ -> let v3 = coe subInt v1 (1 :: Integer) in
           coe du456 (coe addInt v3 v0) (coe du488 v0 v3 v2)
name500 = "Data.Nat.Properties.m\8804m+n"
d500 v0 v1
  = case coe v0 of
      0 -> coe MAlonzo.Code.Data.Nat.Base.C10 v1
      _ -> let v2 = coe subInt v0 (1 :: Integer) in
           coe
             MAlonzo.Code.Data.Nat.Base.C18 v2 (coe addInt v2 v1)
             (coe d500 v2 v1)
name512 = "Data.Nat.Properties.m\8804\8242m+n"
d512 v0 v1 = coe du478 (coe addInt v0 v1) (coe d500 v0 v1)
name522 = "Data.Nat.Properties.n\8804\8242m+n"
d522 v0 v1
  = case coe v0 of
      0 -> coe MAlonzo.Code.Data.Nat.Base.C68
      _ -> let v2 = coe subInt v0 (1 :: Integer) in
           coe
             MAlonzo.Code.Data.Nat.Base.C74 (coe addInt v2 v1) (coe d522 v2 v1)
name534 = "Data.Nat.Properties.n\8804m+n"
d534 v0 v1 = coe du460 v1 (coe d522 v0 v1)
name542 = "Data.Nat.Properties.n\8804\&1+n"
d542 v0
  = coe
      du456 v0
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
            v0))
name546 = "Data.Nat.Properties.1+n\8816n"
d546 = erased
name554 = "Data.Nat.Properties.\8804pred\8658\8804"
d554 v0 v1 v2 = du554 v1 v2
du554 v0 v1
  = case coe v0 of
      0 -> coe v1
      _ -> coe du456 (coe MAlonzo.Code.Data.Nat.Base.d184 v0) v1
name570 = "Data.Nat.Properties.\8804\8658pred\8804"
d570 v0 v1 v2
  = case coe v0 of
      0 -> coe v2
      _ -> let v3 = coe subInt v0 (1 :: Integer) in
           coe
             MAlonzo.Code.Relation.Binary.PreorderReasoning.d62
             (let v4
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
                      (MAlonzo.Code.Relation.Binary.d322 v4)))
                v3 v0 v1 (d542 v3)
                (let v5
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
                         (MAlonzo.Code.Relation.Binary.d322 v5)))
                   v0 v1 v1 v2
                   (MAlonzo.Code.Relation.Binary.PreorderReasoning.C56
                      (MAlonzo.Code.Relation.Binary.d38
                         (MAlonzo.Code.Relation.Binary.d268
                            (MAlonzo.Code.Relation.Binary.d842
                               (MAlonzo.Code.Relation.Binary.d970
                                  (MAlonzo.Code.Relation.Binary.d1052 MAlonzo.Code.Data.Nat.d12))))
                         v1 v1
                         (MAlonzo.Code.Relation.Binary.Core.d516
                            (MAlonzo.Code.Relation.Binary.d36
                               (MAlonzo.Code.Relation.Binary.d268
                                  (MAlonzo.Code.Relation.Binary.d842
                                     (MAlonzo.Code.Relation.Binary.d970
                                        (MAlonzo.Code.Relation.Binary.d1052
                                           MAlonzo.Code.Data.Nat.d12)))))
                            v1)))))
name586 = "Data.Nat.Properties.<\8658\8804pred"
d586 v0 v1 v2 = du586 v2
du586 v0
  = case coe v0 of
      MAlonzo.Code.Data.Nat.Base.C18 v1 v2 v3 -> coe v3
      _ -> coe MAlonzo.RTE.mazUnreachableError
name594 = "Data.Nat.Properties.\172i+1+j\8804i"
d594 = erased
name604 = "Data.Nat.Properties.n\8760m\8804n"
d604 v0 v1
  = case coe v0 of
      0 -> let v2
                 = coe MAlonzo.Code.Agda.Builtin.Nat.d22 v1 (0 :: Integer) in
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
             v2 v2
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
                v2)
      _ -> let v2 = coe subInt v0 (1 :: Integer) in
           case coe v1 of
             0 -> let v3
                        = coe MAlonzo.Code.Agda.Builtin.Nat.d22 (0 :: Integer) v0 in
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
                                      MAlonzo.Code.Relation.Binary.d1052
                                      MAlonzo.Code.Data.Nat.d12)))))
                       v3)
             _ -> let v3 = coe subInt v1 (1 :: Integer) in
                  coe
                    MAlonzo.Code.Relation.Binary.PreorderReasoning.d62
                    (let v4
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
                             (MAlonzo.Code.Relation.Binary.d322 v4)))
                       (MAlonzo.Code.Agda.Builtin.Nat.d22 v3 v2) v3 v1 (d604 v2 v3)
                       (let v5
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
                                (MAlonzo.Code.Relation.Binary.d322 v5)))
                          v3 v1 v1 (d542 v3)
                          (MAlonzo.Code.Relation.Binary.PreorderReasoning.C56
                             (MAlonzo.Code.Relation.Binary.d38
                                (MAlonzo.Code.Relation.Binary.d268
                                   (MAlonzo.Code.Relation.Binary.d842
                                      (MAlonzo.Code.Relation.Binary.d970
                                         (MAlonzo.Code.Relation.Binary.d1052
                                            MAlonzo.Code.Data.Nat.d12))))
                                v1 v1
                                (MAlonzo.Code.Relation.Binary.Core.d516
                                   (MAlonzo.Code.Relation.Binary.d36
                                      (MAlonzo.Code.Relation.Binary.d268
                                         (MAlonzo.Code.Relation.Binary.d842
                                            (MAlonzo.Code.Relation.Binary.d970
                                               (MAlonzo.Code.Relation.Binary.d1052
                                                  MAlonzo.Code.Data.Nat.d12)))))
                                   v1)))))
name618 = "Data.Nat.Properties.n\8804m+n\8760m"
d618 v0 v1
  = case coe v1 of
      0 -> coe
             MAlonzo.Code.Data.Nat.Base.C10
             (coe
                addInt (coe MAlonzo.Code.Agda.Builtin.Nat.d22 (0 :: Integer) v0)
                v0)
      _ -> let v2 = coe subInt v1 (1 :: Integer) in
           case coe v0 of
             0 -> coe
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
                                      MAlonzo.Code.Relation.Binary.d1052
                                      MAlonzo.Code.Data.Nat.d12)))))
                       v1)
             _ -> let v3 = coe subInt v0 (1 :: Integer) in
                  coe
                    MAlonzo.Code.Data.Nat.Base.C18 v2
                    (coe addInt v3 (coe MAlonzo.Code.Agda.Builtin.Nat.d22 v2 v3))
                    (coe d618 v3 v2)
name632 = "Data.Nat.Properties.m\8851n\8804m"
d632 v0 v1
  = case coe v0 of
      0 -> coe MAlonzo.Code.Data.Nat.Base.C10 (0 :: Integer)
      _ -> let v2 = coe subInt v0 (1 :: Integer) in
           case coe v1 of
             0 -> coe MAlonzo.Code.Data.Nat.Base.C10 v0
             _ -> let v3 = coe subInt v1 (1 :: Integer) in
                  coe
                    MAlonzo.Code.Function.du158
                    (coe
                       MAlonzo.Code.Data.Nat.Base.C18
                       (coe MAlonzo.Code.Data.Nat.Base.d206 v2 v3) v2)
                    (coe d632 v2 v3)
name644 = "Data.Nat.Properties.m\8804m\8852n"
d644 v0 v1
  = case coe v0 of
      0 -> coe
             MAlonzo.Code.Data.Nat.Base.C10
             (coe MAlonzo.Code.Data.Nat.Base.d196 (0 :: Integer) v1)
      _ -> let v2 = coe subInt v0 (1 :: Integer) in
           case coe v1 of
             0 -> coe
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
                                      MAlonzo.Code.Relation.Binary.d1052
                                      MAlonzo.Code.Data.Nat.d12)))))
                       v0)
             _ -> let v3 = coe subInt v1 (1 :: Integer) in
                  coe
                    MAlonzo.Code.Function.du158
                    (coe
                       MAlonzo.Code.Data.Nat.Base.C18 v2
                       (coe MAlonzo.Code.Data.Nat.Base.d196 v2 v3))
                    (coe d644 v2 v3)
name654 = "Data.Nat.Properties.\8968n/2\8969\8804\8242n"
d654 v0
  = case coe v0 of
      0 -> coe MAlonzo.Code.Data.Nat.Base.C68
      1 -> coe MAlonzo.Code.Data.Nat.Base.C68
      _ -> let v1 = coe subInt v0 (2 :: Integer) in
           coe du474 (coe MAlonzo.Code.Data.Nat.Base.C74 v1 (coe d654 v1))
name660 = "Data.Nat.Properties.\8970n/2\8971\8804\8242n"
d660 v0
  = case coe v0 of
      0 -> coe MAlonzo.Code.Data.Nat.Base.C68
      _ -> let v1 = coe subInt v0 (1 :: Integer) in
           coe MAlonzo.Code.Data.Nat.Base.C74 v1 (coe d654 v1)
name664 = "Data.Nat.Properties.<-trans"
d664 v0 v1 v2 v3 v4
  = coe
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
         (addInt (1 :: Integer) v0) v1 v2 v3
         (let v6
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
                  (MAlonzo.Code.Relation.Binary.d322 v6)))
            v1 (addInt (1 :: Integer) v1) v2 (d542 v1)
            (let v7
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
                     (MAlonzo.Code.Relation.Binary.d322 v7)))
               (addInt (1 :: Integer) v1) v2 v2 v4
               (MAlonzo.Code.Relation.Binary.PreorderReasoning.C56
                  (MAlonzo.Code.Relation.Binary.d38
                     (MAlonzo.Code.Relation.Binary.d268
                        (MAlonzo.Code.Relation.Binary.d842
                           (MAlonzo.Code.Relation.Binary.d970
                              (MAlonzo.Code.Relation.Binary.d1052 MAlonzo.Code.Data.Nat.d12))))
                     v2 v2
                     (MAlonzo.Code.Relation.Binary.Core.d516
                        (MAlonzo.Code.Relation.Binary.d36
                           (MAlonzo.Code.Relation.Binary.d268
                              (MAlonzo.Code.Relation.Binary.d842
                                 (MAlonzo.Code.Relation.Binary.d970
                                    (MAlonzo.Code.Relation.Binary.d1052
                                       MAlonzo.Code.Data.Nat.d12)))))
                        v2))))))
name676 = "Data.Nat.Properties.\8816\8658>"
d676 v0 v1 v2 = du676 v0 v1
du676 v0 v1
  = let v2 = coe subInt v0 (1 :: Integer) in
    case coe v1 of
      0 -> coe
             MAlonzo.Code.Data.Nat.Base.C18 (0 :: Integer) v2
             (coe MAlonzo.Code.Data.Nat.Base.C10 v2)
      _ -> let v3 = coe subInt v1 (1 :: Integer) in
           coe MAlonzo.Code.Data.Nat.Base.C18 v1 v2 (coe du676 v2 v3)
name694 = "Data.Nat.Properties.\8804\8243\8658\8804"
d694 v0 v1 v2 = du694 v0 v2
du694 v0 v1
  = case coe v1 of
      MAlonzo.Code.Data.Nat.Base.C112 v2 -> coe d500 v0 v2
      _ -> coe MAlonzo.RTE.mazUnreachableError
name696 = "Data.Nat.Properties.\8804\8658\8804\8243"
d696 v0 v1 v2 = du696 v0 v1
du696 v0 v1 = coe MAlonzo.Code.Data.Nat.Base.C112 (coe du708 v0 v1)
name708 = "Data.Nat.Properties._.k"
d708 v0 v1 v2 v3 v4 v5 = du708 v3 v4
du708 v0 v1
  = case coe v0 of
      0 -> coe v1
      _ -> let v2 = coe subInt v0 (1 :: Integer) in
           let v3 = coe subInt v1 (1 :: Integer) in coe du708 v2 v3
name726 = "Data.Nat.Properties._.proof"
d726 = erased
name734 = "Data.Nat.Properties.m\8802\&1+m+n"
d734 = erased
name740 = "Data.Nat.Properties.strictTotalOrder"
d740
  = coe
      MAlonzo.Code.Relation.Binary.C1165
      (coe
         MAlonzo.Code.Relation.Binary.C903
         MAlonzo.Code.Relation.Binary.PropositionalEquality.Core.du50 d664
         d754)
name750 = "Data.Nat.Properties._.2+m+n\8816m"
d750 = erased
name754 = "Data.Nat.Properties._.cmp"
d754 v0 v1
  = let v2 = coe MAlonzo.Code.Data.Nat.Base.d304 v0 v1 in
    case coe v2 of
      MAlonzo.Code.Data.Nat.Base.C288 v3 v4
        -> coe
             MAlonzo.Code.Relation.Binary.Core.C400
             (coe d500 (coe addInt (1 :: Integer) v3) v4)
      MAlonzo.Code.Data.Nat.Base.C292 v3
        -> coe MAlonzo.Code.Relation.Binary.Core.C408 erased
      MAlonzo.Code.Data.Nat.Base.C298 v3 v4
        -> coe
             MAlonzo.Code.Relation.Binary.Core.C416
             (coe d500 (coe addInt (1 :: Integer) v3) v4)
      _ -> coe MAlonzo.RTE.mazUnreachableError
name774 = "Data.Nat.Properties.0\8760n\8801\&0"
d774 = erased
name778 = "Data.Nat.Properties.n\8760n\8801\&0"
d778 = erased
name788 = "Data.Nat.Properties.\8760-+-assoc"
d788 = erased
name816 = "Data.Nat.Properties.+-\8760-assoc"
d816 = erased
name836 = "Data.Nat.Properties.m+n\8760n\8801m"
d836 = erased
name846 = "Data.Nat.Properties.m+n\8760m\8801n"
d846 = erased
name860 = "Data.Nat.Properties.m\8851n+n\8760m\8801n"
d860 = erased
name874 = "Data.Nat.Properties.[m\8760n]\8851[n\8760m]\8801\&0"
d874 = erased
name890 = "Data.Nat.Properties.[i+j]\8760[i+k]\8801j\8760k"
d890 = erased
name908 = "Data.Nat.Properties.i\8760k\8760j+j\8760k\8801i+j\8760k"
d908 = erased
name940 = "Data.Nat.Properties.i+j\8801\&0\8658i\8801\&0"
d940 = erased
name950 = "Data.Nat.Properties.i+j\8801\&0\8658j\8801\&0"
d950 = erased
name962
  = "Data.Nat.Properties.i*j\8801\&0\8658i\8801\&0\8744j\8801\&0"
d962 v0 v1 v2 = du962 v0
du962 v0
  = case coe v0 of
      0 -> coe Left erased
      _ -> coe Right erased
name980 = "Data.Nat.Properties.i*j\8801\&1\8658i\8801\&1"
d980 = erased
name1008 = "Data.Nat.Properties.i*j\8801\&1\8658j\8801\&1"
d1008 = erased
name1022 = "Data.Nat.Properties.cancel-+-left"
d1022 = erased
name1036 = "Data.Nat.Properties.cancel-+-left-\8804"
d1036 v0 v1 v2 v3 = du1036 v0 v3
du1036 v0 v1
  = case coe v0 of
      0 -> coe v1
      _ -> let v2 = coe subInt v0 (1 :: Integer) in
           case coe v1 of
             MAlonzo.Code.Data.Nat.Base.C18 v3 v4 v5 -> coe du1036 v2 v5
             _ -> coe MAlonzo.RTE.mazUnreachableError
name1050 = "Data.Nat.Properties.cancel-*-right"
d1050 = erased
name1072 = "Data.Nat.Properties.cancel-*-right-\8804"
d1072 v0 v1 v2 v3 = du1072 v0 v1
du1072 v0 v1
  = case coe v0 of
      0 -> coe MAlonzo.Code.Data.Nat.Base.C10 v1
      _ -> let v2 = coe subInt v0 (1 :: Integer) in
           let v3 = coe subInt v1 (1 :: Integer) in
           coe MAlonzo.Code.Data.Nat.Base.C18 v2 v3 (coe du1072 v2 v3)
name1084 = "Data.Nat.Properties.*-distrib-\8760\691"
d1084 = erased
name1108 = "Data.Nat.Properties.im\8801jm+n\8658[i\8760j]m\8801n"
d1108 = erased
name1124 = "Data.Nat.Properties.i+1+j\8802i"
d1124 = erased
name1164 = "Data.Nat.Properties._._.reflexive"
d1164 v0 v1 v2 = du1164
du1164
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
name1200 = "Data.Nat.Properties.\8970n/2\8971-mono"
d1200 v0 v1 v2 = du1200 v1 v2
du1200 v0 v1
  = case coe v1 of
      MAlonzo.Code.Data.Nat.Base.C10 v2
        -> coe
             MAlonzo.Code.Data.Nat.Base.C10
             (coe MAlonzo.Code.Data.Nat.Base.d216 v0)
      MAlonzo.Code.Data.Nat.Base.C18 v2 v3 v4
        -> case coe v4 of
             MAlonzo.Code.Data.Nat.Base.C10 v5
               -> coe
                    MAlonzo.Code.Data.Nat.Base.C10
                    (coe
                       MAlonzo.Code.Data.Nat.Base.d216 (coe addInt (1 :: Integer) v3))
             MAlonzo.Code.Data.Nat.Base.C18 v5 v6 v7
               -> coe
                    MAlonzo.Code.Data.Nat.Base.C18
                    (coe MAlonzo.Code.Data.Nat.Base.d216 v5)
                    (coe MAlonzo.Code.Data.Nat.Base.d216 v6) (coe du1200 v6 v7)
             _ -> coe MAlonzo.RTE.mazUnreachableError
      _ -> coe MAlonzo.RTE.mazUnreachableError
name1204 = "Data.Nat.Properties.\8968n/2\8969-mono"
d1204 v0 v1 v2
  = coe
      du1200 (coe addInt (1 :: Integer) v1)
      (coe MAlonzo.Code.Data.Nat.Base.C18 v0 v1 v2)
name1208 = "Data.Nat.Properties.pred-mono"
d1208 v0 v1 v2 = du1208 v1 v2
du1208 v0 v1
  = case coe v1 of
      MAlonzo.Code.Data.Nat.Base.C10 v2
        -> coe
             MAlonzo.Code.Data.Nat.Base.C10
             (coe MAlonzo.Code.Data.Nat.Base.d184 v0)
      MAlonzo.Code.Data.Nat.Base.C18 v2 v3 v4 -> coe v4
      _ -> coe MAlonzo.RTE.mazUnreachableError
name1212 = "Data.Nat.Properties._+-mono_"
d1212 v0 v1 v2 v3 v4 v5
  = let v6
          = case coe v4 of
              MAlonzo.Code.Data.Nat.Base.C18 v6 v7 v8
                -> coe
                     MAlonzo.Code.Data.Nat.Base.C18 (coe addInt v2 v6)
                     (coe addInt v3 v7) (coe d1212 v6 v7 v2 v3 v8 v5)
              _ -> coe MAlonzo.RTE.mazUnreachableError in
    case coe v0 of
      0 -> case coe v4 of
             MAlonzo.Code.Data.Nat.Base.C10 v7
               -> coe
                    MAlonzo.Code.Relation.Binary.PreorderReasoning.d62
                    (let v8
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
                             (MAlonzo.Code.Relation.Binary.d322 v8)))
                       v2 v3 (addInt v1 v3) v5
                       (let v9
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
                                (MAlonzo.Code.Relation.Binary.d322 v9)))
                          v3 (addInt v1 v3) (addInt v1 v3) (d534 v1 v3)
                          (let v10 = coe addInt v1 v3 in
                           MAlonzo.Code.Relation.Binary.PreorderReasoning.C56
                             (MAlonzo.Code.Relation.Binary.d38
                                (MAlonzo.Code.Relation.Binary.d268
                                   (MAlonzo.Code.Relation.Binary.d842
                                      (MAlonzo.Code.Relation.Binary.d970
                                         (MAlonzo.Code.Relation.Binary.d1052
                                            MAlonzo.Code.Data.Nat.d12))))
                                v10 v10
                                (MAlonzo.Code.Relation.Binary.Core.d516
                                   (MAlonzo.Code.Relation.Binary.d36
                                      (MAlonzo.Code.Relation.Binary.d268
                                         (MAlonzo.Code.Relation.Binary.d842
                                            (MAlonzo.Code.Relation.Binary.d970
                                               (MAlonzo.Code.Relation.Binary.d1052
                                                  MAlonzo.Code.Data.Nat.d12)))))
                                   v10)))))
             MAlonzo.Code.Data.Nat.Base.C18 v7 v8 v9
               -> coe
                    MAlonzo.Code.Data.Nat.Base.C18 (coe addInt v2 v7)
                    (coe addInt v3 v8) (coe d1212 v7 v8 v2 v3 v9 v5)
             _ -> coe MAlonzo.RTE.mazUnreachableError
      _ -> coe v6
name1226 = "Data.Nat.Properties._*-mono_"
d1226 v0 v1 v2 v3 v4 v5 = du1226 v1 v2 v3 v4 v5
du1226 v0 v1 v2 v3 v4
  = case coe v3 of
      MAlonzo.Code.Data.Nat.Base.C10 v5
        -> coe MAlonzo.Code.Data.Nat.Base.C10 (coe mulInt v0 v2)
      MAlonzo.Code.Data.Nat.Base.C18 v5 v6 v7
        -> coe
             d1212 v1 v2 (coe mulInt v5 v1) (coe mulInt v6 v2) v4
             (coe du1226 v6 v1 v2 v7 v4)
      _ -> coe MAlonzo.RTE.mazUnreachableError
name1234 = "Data.Nat.Properties.\8760-mono"
d1234 v0 v1 v2 v3 v4 v5 = du1234 v0 v1 v2 v4 v5
du1234 v0 v1 v2 v3 v4
  = case coe v3 of
      MAlonzo.Code.Data.Nat.Base.C10 v5
        -> case coe v4 of
             MAlonzo.Code.Data.Nat.Base.C18 v6 v7 v8
               -> coe
                    MAlonzo.Code.Data.Nat.Base.C10
                    (coe
                       MAlonzo.Code.Agda.Builtin.Nat.d22 v1
                       (coe addInt (1 :: Integer) v6))
             MAlonzo.Code.Data.Nat.Base.C10 v6
               -> coe
                    MAlonzo.Code.Relation.Binary.PreorderReasoning.d62
                    (let v7
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
                             (MAlonzo.Code.Relation.Binary.d322 v7)))
                       (MAlonzo.Code.Agda.Builtin.Nat.d22 v0 v2) v0 v1 (d604 v2 v0)
                       (let v8
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
                                (MAlonzo.Code.Relation.Binary.d322 v8)))
                          v0 v1 v1 v3
                          (MAlonzo.Code.Relation.Binary.PreorderReasoning.C56
                             (MAlonzo.Code.Relation.Binary.d38
                                (MAlonzo.Code.Relation.Binary.d268
                                   (MAlonzo.Code.Relation.Binary.d842
                                      (MAlonzo.Code.Relation.Binary.d970
                                         (MAlonzo.Code.Relation.Binary.d1052
                                            MAlonzo.Code.Data.Nat.d12))))
                                v1 v1
                                (MAlonzo.Code.Relation.Binary.Core.d516
                                   (MAlonzo.Code.Relation.Binary.d36
                                      (MAlonzo.Code.Relation.Binary.d268
                                         (MAlonzo.Code.Relation.Binary.d842
                                            (MAlonzo.Code.Relation.Binary.d970
                                               (MAlonzo.Code.Relation.Binary.d1052
                                                  MAlonzo.Code.Data.Nat.d12)))))
                                   v1)))))
             _ -> coe MAlonzo.RTE.mazUnreachableError
      MAlonzo.Code.Data.Nat.Base.C18 v5 v6 v7
        -> case coe v4 of
             MAlonzo.Code.Data.Nat.Base.C18 v8 v9 v10
               -> coe du1234 v5 v6 v9 v7 v10
             MAlonzo.Code.Data.Nat.Base.C10 v8
               -> coe
                    MAlonzo.Code.Relation.Binary.PreorderReasoning.d62
                    (let v9
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
                             (MAlonzo.Code.Relation.Binary.d322 v9)))
                       (MAlonzo.Code.Agda.Builtin.Nat.d22 v0 v2) v0 v1 (d604 v2 v0)
                       (let v10
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
                                (MAlonzo.Code.Relation.Binary.d322 v10)))
                          v0 v1 v1 v3
                          (MAlonzo.Code.Relation.Binary.PreorderReasoning.C56
                             (MAlonzo.Code.Relation.Binary.d38
                                (MAlonzo.Code.Relation.Binary.d268
                                   (MAlonzo.Code.Relation.Binary.d842
                                      (MAlonzo.Code.Relation.Binary.d970
                                         (MAlonzo.Code.Relation.Binary.d1052
                                            MAlonzo.Code.Data.Nat.d12))))
                                v1 v1
                                (MAlonzo.Code.Relation.Binary.Core.d516
                                   (MAlonzo.Code.Relation.Binary.d36
                                      (MAlonzo.Code.Relation.Binary.d268
                                         (MAlonzo.Code.Relation.Binary.d842
                                            (MAlonzo.Code.Relation.Binary.d970
                                               (MAlonzo.Code.Relation.Binary.d1052
                                                  MAlonzo.Code.Data.Nat.d12)))))
                                   v1)))))
             _ -> coe MAlonzo.RTE.mazUnreachableError
      _ -> coe MAlonzo.RTE.mazUnreachableError