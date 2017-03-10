{-# LANGUAGE EmptyDataDecls, ExistentialQuantification,
             ScopedTypeVariables, NoMonomorphismRestriction, Rank2Types #-}
module MAlonzo.Code.Data.Bool.Properties where

import MAlonzo.RTE (coe, erased, addInt, subInt, mulInt, quotInt,
                    remInt, geqInt, ltInt, eqInt, eqFloat)
import qualified Control.Exception
import qualified Data.Text
import qualified Data.Text.IO
import qualified MAlonzo.RTE
import qualified System.Environment
import qualified System.IO
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Builtin.Bool
import qualified MAlonzo.Code.Algebra
import qualified MAlonzo.Code.Algebra.Properties.BooleanAlgebra
import qualified MAlonzo.Code.Algebra.RingSolver
import qualified MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing
import qualified MAlonzo.Code.Algebra.Structures
import qualified MAlonzo.Code.Data.Bool.Base
import qualified MAlonzo.Code.Data.Product
import qualified MAlonzo.Code.Data.Sum
import qualified MAlonzo.Code.Function.Equivalence
import qualified MAlonzo.Code.Relation.Binary
import qualified MAlonzo.Code.Relation.Binary.PropositionalEquality.Core
import qualified MAlonzo.Code.Relation.Binary.Reflection

name10 = "Data.Bool.Properties._._DistributesOver_"
d10 = erased
name18 = "Data.Bool.Properties._.Absorptive"
d18 = erased
name34 = "Data.Bool.Properties._.Inverse"
d34 = erased
name60 = "Data.Bool.Properties.\8744-assoc"
d60 = erased
name70 = "Data.Bool.Properties.\8743-assoc"
d70 = erased
name80 = "Data.Bool.Properties.\8744-comm"
d80 = erased
name82 = "Data.Bool.Properties.\8743-comm"
d82 = erased
name84 = "Data.Bool.Properties.\8743-\8744-dist\737"
d84 = erased
name94 = "Data.Bool.Properties.\8743-\8744-dist\691"
d94 = erased
name102 = "Data.Bool.Properties.distrib-\8743-\8744"
d102 = coe MAlonzo.Code.Data.Product.C30 erased erased
name104 = "Data.Bool.Properties.isCommutativeSemiring-\8744-\8743"
d104
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
      (coe MAlonzo.Code.Data.Product.d28 d102) erased
name112 = "Data.Bool.Properties.commutativeSemiring-\8744-\8743"
d112
  = coe
      MAlonzo.Code.Algebra.C463 MAlonzo.Code.Data.Bool.Base.d30
      MAlonzo.Code.Data.Bool.Base.d24 False True d104
name116 = "Data.Bool.Properties.RingSolver._*H_"
d116
  = let v0 = coe () in
    let v1 = coe () in
    let v2
          = coe
              MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.du1002
              d112 in
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
      MAlonzo.Code.Data.Bool.Base.d42
name118 = "Data.Bool.Properties.RingSolver._*HN_"
d118
  = let v0 = coe () in
    let v1 = coe () in
    let v2
          = coe
              MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.du1002
              d112 in
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
      MAlonzo.Code.Data.Bool.Base.d42
name120 = "Data.Bool.Properties.RingSolver._*N_"
d120
  = let v0 = coe () in
    let v1 = coe () in
    let v2
          = coe
              MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.du1002
              d112 in
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
           MAlonzo.Code.Data.Bool.Base.d42 v4 v5)
name122 = "Data.Bool.Properties.RingSolver._*NH_"
d122
  = let v0 = coe () in
    let v1 = coe () in
    let v2
          = coe
              MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.du1002
              d112 in
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
      MAlonzo.Code.Data.Bool.Base.d42
name128 = "Data.Bool.Properties.RingSolver._*x+H_"
d128
  = let v0 = coe () in
    let v1 = coe () in
    let v2
          = coe
              MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.du1002
              d112 in
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
      MAlonzo.Code.Data.Bool.Base.d42
name130 = "Data.Bool.Properties.RingSolver._*x+HN_"
d130
  = let v0 = coe () in
    let v1 = coe () in
    let v2
          = coe
              MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.du1002
              d112 in
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
      MAlonzo.Code.Data.Bool.Base.d42
name132 = "Data.Bool.Properties.RingSolver._+H_"
d132
  = let v0 = coe () in
    let v1 = coe () in
    let v2
          = coe
              MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.du1002
              d112 in
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
      MAlonzo.Code.Data.Bool.Base.d42
name134 = "Data.Bool.Properties.RingSolver._+N_"
d134
  = let v0 = coe () in
    let v1 = coe () in
    let v2
          = coe
              MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.du1002
              d112 in
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
           MAlonzo.Code.Data.Bool.Base.d42 v4 v5)
name136 = "Data.Bool.Properties.RingSolver._:*_"
d136 v0 = du136
du136
  = coe
      MAlonzo.Code.Algebra.RingSolver.C284
      MAlonzo.Code.Algebra.RingSolver.C270
name138 = "Data.Bool.Properties.RingSolver._:+_"
d138 v0 = du138
du138
  = coe
      MAlonzo.Code.Algebra.RingSolver.C284
      MAlonzo.Code.Algebra.RingSolver.C268
name140 = "Data.Bool.Properties.RingSolver._:-_"
d140 v0 v1 v2 = du140 v1 v2
du140 v0 v1
  = coe
      MAlonzo.Code.Algebra.RingSolver.C284
      MAlonzo.Code.Algebra.RingSolver.C268 v0
      (coe MAlonzo.Code.Algebra.RingSolver.C302 v1)
name142 = "Data.Bool.Properties.RingSolver._\8860_"
d142 v0 = coe MAlonzo.Code.Relation.Binary.Reflection.du138
name146 = "Data.Bool.Properties.RingSolver._^N_"
d146
  = let v0 = coe () in
    let v1 = coe () in
    let v2
          = coe
              MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.du1002
              d112 in
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
      MAlonzo.Code.Data.Bool.Base.d42
name148 = "Data.Bool.Properties.RingSolver._\8776H_"
d148 a0 a1 a2 = ()
name150 = "Data.Bool.Properties.RingSolver._\8776N_"
d150 a0 a1 a2 = ()
name152 = "Data.Bool.Properties.RingSolver._\8799H_"
d152
  = let v0 = coe () in
    let v1 = coe () in
    let v2
          = coe
              MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.du1002
              d112 in
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
           MAlonzo.Code.Data.Bool.Base.d42 v4 v5)
name154 = "Data.Bool.Properties.RingSolver._\8799N_"
d154
  = let v0 = coe () in
    let v1 = coe () in
    let v2
          = coe
              MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.du1002
              d112 in
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
           MAlonzo.Code.Data.Bool.Base.d42 v4 v5)
name156 = "Data.Bool.Properties.RingSolver.*H-homo"
d156 = erased
name158 = "Data.Bool.Properties.RingSolver.*HN-homo"
d158 = erased
name160 = "Data.Bool.Properties.RingSolver.*N-homo"
d160 = erased
name162 = "Data.Bool.Properties.RingSolver.*NH-homo"
d162 = erased
name164 = "Data.Bool.Properties.RingSolver.*x+H-homo"
d164 = erased
name166 = "Data.Bool.Properties.RingSolver.*x+HN\8776*x+"
d166 = erased
name168 = "Data.Bool.Properties.RingSolver.+H-homo"
d168 = erased
name170 = "Data.Bool.Properties.RingSolver.+N-homo"
d170 = erased
name172 = "Data.Bool.Properties.RingSolver.-H_"
d172
  = let v0 = coe () in
    let v1 = coe () in
    let v2
          = coe
              MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.du1002
              d112 in
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
      MAlonzo.Code.Data.Bool.Base.d42
name174 = "Data.Bool.Properties.RingSolver.-H\8255-homo"
d174 = erased
name176 = "Data.Bool.Properties.RingSolver.-N_"
d176
  = let v0 = coe () in
    let v1 = coe () in
    let v2
          = coe
              MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.du1002
              d112 in
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
           MAlonzo.Code.Data.Bool.Base.d42 v4)
name178 = "Data.Bool.Properties.RingSolver.-N\8255-homo"
d178 = erased
name180 = "Data.Bool.Properties.RingSolver.0H"
d180 v0 = coe MAlonzo.Code.Algebra.RingSolver.C358 v0
name182 = "Data.Bool.Properties.RingSolver.0N"
d182
  = let v0
          = coe
              MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.du1002
              d112 in
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
name184 = "Data.Bool.Properties.RingSolver.0N-homo"
d184 = erased
name186 = "Data.Bool.Properties.RingSolver.0\8776\10214\&0\10215"
d186 = erased
name188 = "Data.Bool.Properties.RingSolver.1H"
d188
  = let v0 = coe () in
    let v1 = coe () in
    let v2
          = coe
              MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.du1002
              d112 in
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
      MAlonzo.Code.Data.Bool.Base.d42
name190 = "Data.Bool.Properties.RingSolver.1N"
d190
  = let v0 = coe () in
    let v1 = coe () in
    let v2
          = coe
              MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.du1002
              d112 in
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
      MAlonzo.Code.Data.Bool.Base.d42
name192 = "Data.Bool.Properties.RingSolver.1N-homo"
d192 = erased
name196 = "Data.Bool.Properties.RingSolver.HNF"
d196 a0 = ()
name198 = "Data.Bool.Properties.RingSolver.Normal"
d198 a0 = ()
name200 = "Data.Bool.Properties.RingSolver.Op"
d200 = ()
name202 = "Data.Bool.Properties.RingSolver.Polynomial"
d202 a0 = ()
name208 = "Data.Bool.Properties.RingSolver.^N-homo"
d208 = erased
name216 = "Data.Bool.Properties.RingSolver.correct"
d216 = erased
name218 = "Data.Bool.Properties.RingSolver.correct-con"
d218 = erased
name220 = "Data.Bool.Properties.RingSolver.correct-var"
d220 = erased
name222 = "Data.Bool.Properties.RingSolver.normalise"
d222
  = let v0 = coe () in
    let v1 = coe () in
    let v2
          = coe
              MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.du1002
              d112 in
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
      MAlonzo.Code.Data.Bool.Base.d42
name224 = "Data.Bool.Properties.RingSolver.normalise-con"
d224
  = let v0 = coe () in
    let v1 = coe () in
    let v2
          = coe
              MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.du1002
              d112 in
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
      MAlonzo.Code.Data.Bool.Base.d42
name226 = "Data.Bool.Properties.RingSolver.normalise-var"
d226
  = let v0 = coe () in
    let v1 = coe () in
    let v2
          = coe
              MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.du1002
              d112 in
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
           MAlonzo.Code.Data.Bool.Base.d42 v4)
name234 = "Data.Bool.Properties.RingSolver.prove"
d234 = erased
name236 = "Data.Bool.Properties.RingSolver.sem"
d236
  = let v0
          = coe
              MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.du1002
              d112 in
    coe MAlonzo.Code.Algebra.RingSolver.du320 v0
name238 = "Data.Bool.Properties.RingSolver.solve"
d238
  = let v0 = coe () in
    let v1 = coe () in
    let v2
          = coe
              MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.du1002
              d112 in
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
         MAlonzo.Code.Data.Bool.Base.d42)
      (coe
         MAlonzo.Code.Algebra.RingSolver.d1266 v0 v0 v1 v3 v2 v4
         MAlonzo.Code.Data.Bool.Base.d42)
name246 = "Data.Bool.Properties.RingSolver.\8709*x+HN-homo"
d246 = erased
name248 = "Data.Bool.Properties.RingSolver.\10214_\10215"
d248
  = let v0
          = coe
              MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.du1002
              d112 in
    coe
      (\ v1 v2 v3 ->
         coe
           MAlonzo.Code.Algebra.RingSolver.du324 v0
           (coe
              MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.du568 v0)
           v2 v3)
name250 = "Data.Bool.Properties.RingSolver.\10214_\10215H"
d250
  = let v0 = coe () in
    let v1 = coe () in
    let v2
          = coe
              MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.du1002
              d112 in
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
      MAlonzo.Code.Data.Bool.Base.d42
name252 = "Data.Bool.Properties.RingSolver.\10214_\10215H-cong"
d252 = erased
name254 = "Data.Bool.Properties.RingSolver.\10214_\10215N"
d254
  = let v0 = coe () in
    let v1 = coe () in
    let v2
          = coe
              MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.du1002
              d112 in
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
           MAlonzo.Code.Data.Bool.Base.d42 v4 v5)
name256 = "Data.Bool.Properties.RingSolver.\10214_\10215N-cong"
d256 = erased
name258 = "Data.Bool.Properties.RingSolver.\10214_\10215\8595"
d258
  = let v0 = coe () in
    let v1 = coe () in
    let v2
          = coe
              MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.du1002
              d112 in
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
      MAlonzo.Code.Data.Bool.Base.d42
name302 = "Data.Bool.Properties.\8744-\8743-dist\737"
d302 = erased
name312 = "Data.Bool.Properties.\8744-\8743-dist\691"
d312 = erased
name320 = "Data.Bool.Properties.\8744-\8743-distrib"
d320 = coe MAlonzo.Code.Data.Product.C30 erased erased
name322 = "Data.Bool.Properties.isCommutativeSemiring-\8743-\8744"
d322
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
name330 = "Data.Bool.Properties.commutativeSemiring-\8743-\8744"
d330
  = coe
      MAlonzo.Code.Algebra.C463 MAlonzo.Code.Data.Bool.Base.d24
      MAlonzo.Code.Data.Bool.Base.d30 True False d322
name332 = "Data.Bool.Properties.\8744-\8743-abs"
d332 = erased
name338 = "Data.Bool.Properties.\8743-\8744-abs"
d338 = erased
name344 = "Data.Bool.Properties.\8744-\8743-absorptive"
d344 = coe MAlonzo.Code.Data.Product.C30 erased erased
name346 = "Data.Bool.Properties.not-\8743-inverse\737"
d346 = erased
name348 = "Data.Bool.Properties.not-\8743-inverse\691"
d348 = erased
name352 = "Data.Bool.Properties.not-\8743-inverse"
d352 = coe MAlonzo.Code.Data.Product.C30 erased erased
name354 = "Data.Bool.Properties.not-\8744-inverse\737"
d354 = erased
name356 = "Data.Bool.Properties.not-\8744-inverse\691"
d356 = erased
name360 = "Data.Bool.Properties.not-\8744-inverse"
d360 = coe MAlonzo.Code.Data.Product.C30 erased erased
name362 = "Data.Bool.Properties.isBooleanAlgebra"
d362
  = coe
      MAlonzo.Code.Algebra.Structures.C2165
      (coe
         MAlonzo.Code.Algebra.Structures.C2083
         (coe
            MAlonzo.Code.Algebra.Structures.C1999
            MAlonzo.Code.Relation.Binary.PropositionalEquality.Core.du50 erased
            erased erased erased erased erased d344)
         erased)
      erased erased erased
name364 = "Data.Bool.Properties.booleanAlgebra"
d364
  = coe
      MAlonzo.Code.Algebra.C719 MAlonzo.Code.Data.Bool.Base.d30
      MAlonzo.Code.Data.Bool.Base.d24 MAlonzo.Code.Data.Bool.Base.d6 True
      False d362
name370 = "Data.Bool.Properties.xor-is-ok"
d370 = erased
name396 = "Data.Bool.Properties._.CS.identity"
d396 v0 = du396
du396
  = let v0 = coe MAlonzo.Code.Algebra.d916 d112 in
    let v1 = coe MAlonzo.Code.Algebra.d918 d112 in
    let v2 = coe MAlonzo.Code.Algebra.d920 d112 in
    let v3 = coe MAlonzo.Code.Algebra.d922 d112 in
    let v4 = coe MAlonzo.Code.Algebra.d924 d112 in
    coe
      MAlonzo.Code.Algebra.Structures.d296
      (coe
         MAlonzo.Code.Algebra.Structures.d1544
         (coe
            MAlonzo.Code.Algebra.Structures.d1728
            (coe MAlonzo.Code.Algebra.Structures.du2214 v0 v1 v2 v3 v4)))
name480 = "Data.Bool.Properties.commutativeRing-xor-\8743"
d480
  = coe
      MAlonzo.Code.Algebra.Properties.BooleanAlgebra.du540 d364
      MAlonzo.Code.Data.Bool.Base.d36 erased
name554 = "Data.Bool.Properties._._.XorRing.commutativeRing"
d554
  = coe MAlonzo.Code.Algebra.Properties.BooleanAlgebra.du540 d364
name566 = "Data.Bool.Properties._._.commutativeRing"
d566
  = coe
      MAlonzo.Code.Algebra.Properties.BooleanAlgebra.du540 d364
      MAlonzo.Code.Data.Bool.Base.d36 erased
name578 = "Data.Bool.Properties.XorRingSolver._*H_"
d578
  = let v0 = coe () in
    let v1 = coe () in
    let v2
          = coe
              MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.du832 d480 in
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
      MAlonzo.Code.Data.Bool.Base.d42
name580 = "Data.Bool.Properties.XorRingSolver._*HN_"
d580
  = let v0 = coe () in
    let v1 = coe () in
    let v2
          = coe
              MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.du832 d480 in
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
      MAlonzo.Code.Data.Bool.Base.d42
name582 = "Data.Bool.Properties.XorRingSolver._*N_"
d582
  = let v0 = coe () in
    let v1 = coe () in
    let v2
          = coe
              MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.du832 d480 in
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
           MAlonzo.Code.Data.Bool.Base.d42 v4 v5)
name584 = "Data.Bool.Properties.XorRingSolver._*NH_"
d584
  = let v0 = coe () in
    let v1 = coe () in
    let v2
          = coe
              MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.du832 d480 in
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
      MAlonzo.Code.Data.Bool.Base.d42
name590 = "Data.Bool.Properties.XorRingSolver._*x+H_"
d590
  = let v0 = coe () in
    let v1 = coe () in
    let v2
          = coe
              MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.du832 d480 in
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
      MAlonzo.Code.Data.Bool.Base.d42
name592 = "Data.Bool.Properties.XorRingSolver._*x+HN_"
d592
  = let v0 = coe () in
    let v1 = coe () in
    let v2
          = coe
              MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.du832 d480 in
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
      MAlonzo.Code.Data.Bool.Base.d42
name594 = "Data.Bool.Properties.XorRingSolver._+H_"
d594
  = let v0 = coe () in
    let v1 = coe () in
    let v2
          = coe
              MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.du832 d480 in
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
      MAlonzo.Code.Data.Bool.Base.d42
name596 = "Data.Bool.Properties.XorRingSolver._+N_"
d596
  = let v0 = coe () in
    let v1 = coe () in
    let v2
          = coe
              MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.du832 d480 in
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
           MAlonzo.Code.Data.Bool.Base.d42 v4 v5)
name598 = "Data.Bool.Properties.XorRingSolver._:*_"
d598 v0 = du598
du598
  = coe
      MAlonzo.Code.Algebra.RingSolver.C284
      MAlonzo.Code.Algebra.RingSolver.C270
name600 = "Data.Bool.Properties.XorRingSolver._:+_"
d600 v0 = du600
du600
  = coe
      MAlonzo.Code.Algebra.RingSolver.C284
      MAlonzo.Code.Algebra.RingSolver.C268
name602 = "Data.Bool.Properties.XorRingSolver._:-_"
d602 v0 v1 v2 = du602 v1 v2
du602 v0 v1
  = coe
      MAlonzo.Code.Algebra.RingSolver.C284
      MAlonzo.Code.Algebra.RingSolver.C268 v0
      (coe MAlonzo.Code.Algebra.RingSolver.C302 v1)
name604 = "Data.Bool.Properties.XorRingSolver._\8860_"
d604 v0 = coe MAlonzo.Code.Relation.Binary.Reflection.du138
name608 = "Data.Bool.Properties.XorRingSolver._^N_"
d608
  = let v0 = coe () in
    let v1 = coe () in
    let v2
          = coe
              MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.du832 d480 in
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
      MAlonzo.Code.Data.Bool.Base.d42
name610 = "Data.Bool.Properties.XorRingSolver._\8776H_"
d610 a0 a1 a2 = ()
name612 = "Data.Bool.Properties.XorRingSolver._\8776N_"
d612 a0 a1 a2 = ()
name614 = "Data.Bool.Properties.XorRingSolver._\8799H_"
d614
  = let v0 = coe () in
    let v1 = coe () in
    let v2
          = coe
              MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.du832 d480 in
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
           MAlonzo.Code.Data.Bool.Base.d42 v4 v5)
name616 = "Data.Bool.Properties.XorRingSolver._\8799N_"
d616
  = let v0 = coe () in
    let v1 = coe () in
    let v2
          = coe
              MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.du832 d480 in
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
           MAlonzo.Code.Data.Bool.Base.d42 v4 v5)
name618 = "Data.Bool.Properties.XorRingSolver.*H-homo"
d618 = erased
name620 = "Data.Bool.Properties.XorRingSolver.*HN-homo"
d620 = erased
name622 = "Data.Bool.Properties.XorRingSolver.*N-homo"
d622 = erased
name624 = "Data.Bool.Properties.XorRingSolver.*NH-homo"
d624 = erased
name626 = "Data.Bool.Properties.XorRingSolver.*x+H-homo"
d626 = erased
name628 = "Data.Bool.Properties.XorRingSolver.*x+HN\8776*x+"
d628 = erased
name630 = "Data.Bool.Properties.XorRingSolver.+H-homo"
d630 = erased
name632 = "Data.Bool.Properties.XorRingSolver.+N-homo"
d632 = erased
name634 = "Data.Bool.Properties.XorRingSolver.-H_"
d634
  = let v0 = coe () in
    let v1 = coe () in
    let v2
          = coe
              MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.du832 d480 in
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
      MAlonzo.Code.Data.Bool.Base.d42
name636 = "Data.Bool.Properties.XorRingSolver.-H\8255-homo"
d636 = erased
name638 = "Data.Bool.Properties.XorRingSolver.-N_"
d638
  = let v0 = coe () in
    let v1 = coe () in
    let v2
          = coe
              MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.du832 d480 in
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
           MAlonzo.Code.Data.Bool.Base.d42 v4)
name640 = "Data.Bool.Properties.XorRingSolver.-N\8255-homo"
d640 = erased
name642 = "Data.Bool.Properties.XorRingSolver.0H"
d642 v0 = coe MAlonzo.Code.Algebra.RingSolver.C358 v0
name644 = "Data.Bool.Properties.XorRingSolver.0N"
d644
  = let v0
          = coe
              MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.du832 d480 in
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
name646 = "Data.Bool.Properties.XorRingSolver.0N-homo"
d646 = erased
name648
  = "Data.Bool.Properties.XorRingSolver.0\8776\10214\&0\10215"
d648 = erased
name650 = "Data.Bool.Properties.XorRingSolver.1H"
d650
  = let v0 = coe () in
    let v1 = coe () in
    let v2
          = coe
              MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.du832 d480 in
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
      MAlonzo.Code.Data.Bool.Base.d42
name652 = "Data.Bool.Properties.XorRingSolver.1N"
d652
  = let v0 = coe () in
    let v1 = coe () in
    let v2
          = coe
              MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.du832 d480 in
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
      MAlonzo.Code.Data.Bool.Base.d42
name654 = "Data.Bool.Properties.XorRingSolver.1N-homo"
d654 = erased
name658 = "Data.Bool.Properties.XorRingSolver.HNF"
d658 a0 = ()
name660 = "Data.Bool.Properties.XorRingSolver.Normal"
d660 a0 = ()
name662 = "Data.Bool.Properties.XorRingSolver.Op"
d662 = ()
name664 = "Data.Bool.Properties.XorRingSolver.Polynomial"
d664 a0 = ()
name670 = "Data.Bool.Properties.XorRingSolver.^N-homo"
d670 = erased
name678 = "Data.Bool.Properties.XorRingSolver.correct"
d678 = erased
name680 = "Data.Bool.Properties.XorRingSolver.correct-con"
d680 = erased
name682 = "Data.Bool.Properties.XorRingSolver.correct-var"
d682 = erased
name684 = "Data.Bool.Properties.XorRingSolver.normalise"
d684
  = let v0 = coe () in
    let v1 = coe () in
    let v2
          = coe
              MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.du832 d480 in
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
      MAlonzo.Code.Data.Bool.Base.d42
name686 = "Data.Bool.Properties.XorRingSolver.normalise-con"
d686
  = let v0 = coe () in
    let v1 = coe () in
    let v2
          = coe
              MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.du832 d480 in
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
      MAlonzo.Code.Data.Bool.Base.d42
name688 = "Data.Bool.Properties.XorRingSolver.normalise-var"
d688
  = let v0 = coe () in
    let v1 = coe () in
    let v2
          = coe
              MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.du832 d480 in
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
           MAlonzo.Code.Data.Bool.Base.d42 v4)
name696 = "Data.Bool.Properties.XorRingSolver.prove"
d696 = erased
name698 = "Data.Bool.Properties.XorRingSolver.sem"
d698
  = let v0
          = coe
              MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.du832 d480 in
    coe MAlonzo.Code.Algebra.RingSolver.du320 v0
name700 = "Data.Bool.Properties.XorRingSolver.solve"
d700
  = let v0 = coe () in
    let v1 = coe () in
    let v2
          = coe
              MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.du832 d480 in
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
         MAlonzo.Code.Data.Bool.Base.d42)
      (coe
         MAlonzo.Code.Algebra.RingSolver.d1266 v0 v0 v1 v3 v2 v4
         MAlonzo.Code.Data.Bool.Base.d42)
name708 = "Data.Bool.Properties.XorRingSolver.\8709*x+HN-homo"
d708 = erased
name710 = "Data.Bool.Properties.XorRingSolver.\10214_\10215"
d710
  = let v0
          = coe
              MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.du832 d480 in
    coe
      (\ v1 v2 v3 ->
         coe
           MAlonzo.Code.Algebra.RingSolver.du324 v0
           (coe
              MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.du568 v0)
           v2 v3)
name712 = "Data.Bool.Properties.XorRingSolver.\10214_\10215H"
d712
  = let v0 = coe () in
    let v1 = coe () in
    let v2
          = coe
              MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.du832 d480 in
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
      MAlonzo.Code.Data.Bool.Base.d42
name714 = "Data.Bool.Properties.XorRingSolver.\10214_\10215H-cong"
d714 = erased
name716 = "Data.Bool.Properties.XorRingSolver.\10214_\10215N"
d716
  = let v0 = coe () in
    let v1 = coe () in
    let v2
          = coe
              MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.du832 d480 in
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
           MAlonzo.Code.Data.Bool.Base.d42 v4 v5)
name718 = "Data.Bool.Properties.XorRingSolver.\10214_\10215N-cong"
d718 = erased
name720 = "Data.Bool.Properties.XorRingSolver.\10214_\10215\8595"
d720
  = let v0 = coe () in
    let v1 = coe () in
    let v2
          = coe
              MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.du832 d480 in
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
      MAlonzo.Code.Data.Bool.Base.d42
name764 = "Data.Bool.Properties.not-involutive"
d764 = erased
name770 = "Data.Bool.Properties.not-\172"
d770 = erased
name776 = "Data.Bool.Properties.\172-not"
d776 = erased
name788 = "Data.Bool.Properties.\8660\8594\8801"
d788 = erased
name804 = "Data.Bool.Properties.T-\8801"
d804 v0
  = coe
      seq v0 (coe MAlonzo.Code.Function.Equivalence.du56 erased erased)
name808 = "Data.Bool.Properties.T-not-\8801"
d808 v0
  = coe
      seq v0 (coe MAlonzo.Code.Function.Equivalence.du56 erased erased)
name814 = "Data.Bool.Properties.T-\8743"
d814 v0 v1
  = case coe v0 of
      False
        -> coe
             MAlonzo.Code.Function.Equivalence.du56 erased
             MAlonzo.Code.Data.Product.d26
      True
        -> case coe v1 of
             False
               -> coe
                    MAlonzo.Code.Function.Equivalence.du56 erased
                    MAlonzo.Code.Data.Product.d28
             True
               -> coe
                    MAlonzo.Code.Function.Equivalence.du56
                    (let v2 = coe MAlonzo.Code.Data.Product.C30 erased erased in
                     \ v3 -> v2)
                    erased
             _ -> coe MAlonzo.RTE.mazUnreachableError
      _ -> coe MAlonzo.RTE.mazUnreachableError
name820 = "Data.Bool.Properties.T-\8744"
d820 v0 v1
  = case coe v0 of
      False
        -> case coe v1 of
             False
               -> coe
                    MAlonzo.Code.Function.Equivalence.du56 Left
                    (coe MAlonzo.Code.Data.Sum.du48 (\ v2 -> v2) (\ v2 -> v2))
             True -> coe MAlonzo.Code.Function.Equivalence.du56 Right erased
             _ -> coe MAlonzo.RTE.mazUnreachableError
      True -> coe MAlonzo.Code.Function.Equivalence.du56 Left erased
      _ -> coe MAlonzo.RTE.mazUnreachableError
name830 = "Data.Bool.Properties.proof-irrelevance"
d830 = erased
name848 = "Data.Bool.Properties.push-function-into-if"
d848 = erased
name857 = "Data.Bool.Properties..absurdlambda"
d857 = erased
name861 = "Data.Bool.Properties..absurdlambda"
d861 = erased
name879 = "Data.Bool.Properties..absurdlambda"
d879 = erased
name883 = "Data.Bool.Properties..absurdlambda"
d883 = erased
name955 = "Data.Bool.Properties..absurdlambda"
d955 = erased
name991 = "Data.Bool.Properties..absurdlambda"
d991 = erased