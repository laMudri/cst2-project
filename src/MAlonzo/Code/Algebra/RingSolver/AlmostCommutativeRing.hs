{-# LANGUAGE EmptyDataDecls, ExistentialQuantification,
             ScopedTypeVariables, NoMonomorphismRestriction, Rank2Types #-}
module MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing where

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
import qualified MAlonzo.Code.Algebra.Properties.Ring
import qualified MAlonzo.Code.Algebra.Structures
import qualified MAlonzo.Code.Relation.Binary
import qualified MAlonzo.Code.Relation.Binary.Core

name24
  = "Algebra.RingSolver.AlmostCommutativeRing.IsAlmostCommutativeRing"
d24 a0 a1 a2 a3 a4 a5 a6 a7 a8 = ()
data T24 a0 a1 a2 a3 = C15 a0 a1 a2 a3
name60
  = "Algebra.RingSolver.AlmostCommutativeRing.IsAlmostCommutativeRing.isCommutativeSemiring"
d60 v0
  = case coe v0 of
      C15 v1 v2 v3 v4 -> coe v1
      _ -> coe MAlonzo.RTE.mazUnreachableError
name62
  = "Algebra.RingSolver.AlmostCommutativeRing.IsAlmostCommutativeRing.-\8255cong"
d62 v0
  = case coe v0 of
      C15 v1 v2 v3 v4 -> coe v2
      _ -> coe MAlonzo.RTE.mazUnreachableError
name68
  = "Algebra.RingSolver.AlmostCommutativeRing.IsAlmostCommutativeRing.-\8255*-distrib\737"
d68 v0
  = case coe v0 of
      C15 v1 v2 v3 v4 -> coe v3
      _ -> coe MAlonzo.RTE.mazUnreachableError
name74
  = "Algebra.RingSolver.AlmostCommutativeRing.IsAlmostCommutativeRing.-\8255+-comm"
d74 v0
  = case coe v0 of
      C15 v1 v2 v3 v4 -> coe v4
      _ -> coe MAlonzo.RTE.mazUnreachableError
name78
  = "Algebra.RingSolver.AlmostCommutativeRing.IsAlmostCommutativeRing._.assoc"
d78 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 = du78 v4 v5 v7 v8 v9
du78 v0 v1 v2 v3 v4
  = let v5 = coe d60 v4 in
    coe
      MAlonzo.Code.Algebra.Structures.d142
      (coe
         MAlonzo.Code.Algebra.Structures.d294
         (coe
            MAlonzo.Code.Algebra.Structures.d1544
            (coe
               MAlonzo.Code.Algebra.Structures.d1728
               (coe MAlonzo.Code.Algebra.Structures.du2214 v0 v1 v2 v3 v5))))
name80
  = "Algebra.RingSolver.AlmostCommutativeRing.IsAlmostCommutativeRing._.comm"
d80 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d458
      (coe MAlonzo.Code.Algebra.Structures.d2112 (coe d60 v0))
name82
  = "Algebra.RingSolver.AlmostCommutativeRing.IsAlmostCommutativeRing._.\8729-cong"
d82 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 = du82 v4 v5 v7 v8 v9
du82 v0 v1 v2 v3 v4
  = let v5 = coe d60 v4 in
    coe
      MAlonzo.Code.Algebra.Structures.d144
      (coe
         MAlonzo.Code.Algebra.Structures.d294
         (coe
            MAlonzo.Code.Algebra.Structures.d1544
            (coe
               MAlonzo.Code.Algebra.Structures.d1728
               (coe MAlonzo.Code.Algebra.Structures.du2214 v0 v1 v2 v3 v5))))
name84
  = "Algebra.RingSolver.AlmostCommutativeRing.IsAlmostCommutativeRing._.identity"
d84 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 = du84 v4 v5 v7 v8 v9
du84 v0 v1 v2 v3 v4
  = let v5 = coe d60 v4 in
    coe
      MAlonzo.Code.Algebra.Structures.d296
      (coe
         MAlonzo.Code.Algebra.Structures.d1544
         (coe
            MAlonzo.Code.Algebra.Structures.d1728
            (coe MAlonzo.Code.Algebra.Structures.du2214 v0 v1 v2 v3 v5)))
name86
  = "Algebra.RingSolver.AlmostCommutativeRing.IsAlmostCommutativeRing._.*-isCommutativeMonoid"
d86 v0 = coe MAlonzo.Code.Algebra.Structures.d2112 (coe d60 v0)
name88
  = "Algebra.RingSolver.AlmostCommutativeRing.IsAlmostCommutativeRing._.*-isMonoid"
d88 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 = du88 v4 v5 v7 v8 v9
du88 v0 v1 v2 v3 v4
  = let v5 = coe d60 v4 in
    coe
      MAlonzo.Code.Algebra.Structures.d1544
      (coe
         MAlonzo.Code.Algebra.Structures.d1728
         (coe MAlonzo.Code.Algebra.Structures.du2214 v0 v1 v2 v3 v5))
name90
  = "Algebra.RingSolver.AlmostCommutativeRing.IsAlmostCommutativeRing._.isSemigroup"
d90 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 = du90 v4 v5 v7 v8 v9
du90 v0 v1 v2 v3 v4
  = let v5 = coe d60 v4 in
    coe
      MAlonzo.Code.Algebra.Structures.d294
      (coe
         MAlonzo.Code.Algebra.Structures.d1544
         (coe
            MAlonzo.Code.Algebra.Structures.d1728
            (coe MAlonzo.Code.Algebra.Structures.du2214 v0 v1 v2 v3 v5)))
name92
  = "Algebra.RingSolver.AlmostCommutativeRing.IsAlmostCommutativeRing._.assoc"
d92 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 = du92 v4 v5 v7 v8 v9
du92 v0 v1 v2 v3 v4
  = let v5 = coe d60 v4 in
    coe
      MAlonzo.Code.Algebra.Structures.d142
      (coe
         MAlonzo.Code.Algebra.Structures.d454
         (coe
            MAlonzo.Code.Algebra.Structures.d1542
            (coe
               MAlonzo.Code.Algebra.Structures.d1728
               (coe MAlonzo.Code.Algebra.Structures.du2214 v0 v1 v2 v3 v5))))
name94
  = "Algebra.RingSolver.AlmostCommutativeRing.IsAlmostCommutativeRing._.comm"
d94 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 = du94 v4 v5 v7 v8 v9
du94 v0 v1 v2 v3 v4
  = let v5 = coe d60 v4 in
    coe
      MAlonzo.Code.Algebra.Structures.d458
      (coe
         MAlonzo.Code.Algebra.Structures.d1542
         (coe
            MAlonzo.Code.Algebra.Structures.d1728
            (coe MAlonzo.Code.Algebra.Structures.du2214 v0 v1 v2 v3 v5)))
name96
  = "Algebra.RingSolver.AlmostCommutativeRing.IsAlmostCommutativeRing._.\8729-cong"
d96 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 = du96 v4 v5 v7 v8 v9
du96 v0 v1 v2 v3 v4
  = let v5 = coe d60 v4 in
    coe
      MAlonzo.Code.Algebra.Structures.d144
      (coe
         MAlonzo.Code.Algebra.Structures.d454
         (coe
            MAlonzo.Code.Algebra.Structures.d1542
            (coe
               MAlonzo.Code.Algebra.Structures.d1728
               (coe MAlonzo.Code.Algebra.Structures.du2214 v0 v1 v2 v3 v5))))
name98
  = "Algebra.RingSolver.AlmostCommutativeRing.IsAlmostCommutativeRing._.identity"
d98 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 = du98 v4 v5 v7 v8 v9
du98 v0 v1 v2 v3 v4
  = let v5 = coe d60 v4 in
    let v6
          = coe MAlonzo.Code.Algebra.Structures.du2214 v0 v1 v2 v3 v5 in
    let v7 = coe MAlonzo.Code.Algebra.Structures.d1728 v6 in
    coe
      MAlonzo.Code.Algebra.Structures.du476 v0 v2
      (coe MAlonzo.Code.Algebra.Structures.d1542 v7)
name100
  = "Algebra.RingSolver.AlmostCommutativeRing.IsAlmostCommutativeRing._.+-isCommutativeMonoid"
d100 v0 = coe MAlonzo.Code.Algebra.Structures.d2110 (coe d60 v0)
name102
  = "Algebra.RingSolver.AlmostCommutativeRing.IsAlmostCommutativeRing._.isMonoid"
d102 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 = du102 v4 v5 v7 v8 v9
du102 v0 v1 v2 v3 v4
  = let v5 = coe d60 v4 in
    let v6
          = coe MAlonzo.Code.Algebra.Structures.du2214 v0 v1 v2 v3 v5 in
    let v7 = coe MAlonzo.Code.Algebra.Structures.d1728 v6 in
    coe
      MAlonzo.Code.Algebra.Structures.du506 v0 v2
      (coe MAlonzo.Code.Algebra.Structures.d1542 v7)
name104
  = "Algebra.RingSolver.AlmostCommutativeRing.IsAlmostCommutativeRing._.isSemigroup"
d104 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 = du104 v4 v5 v7 v8 v9
du104 v0 v1 v2 v3 v4
  = let v5 = coe d60 v4 in
    coe
      MAlonzo.Code.Algebra.Structures.d454
      (coe
         MAlonzo.Code.Algebra.Structures.d1542
         (coe
            MAlonzo.Code.Algebra.Structures.d1728
            (coe MAlonzo.Code.Algebra.Structures.du2214 v0 v1 v2 v3 v5)))
name106
  = "Algebra.RingSolver.AlmostCommutativeRing.IsAlmostCommutativeRing._.distrib"
d106 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 = du106 v4 v5 v9
du106 v0 v1 v2
  = coe MAlonzo.Code.Algebra.Structures.du2190 v0 v1 (coe d60 v2)
name108
  = "Algebra.RingSolver.AlmostCommutativeRing.IsAlmostCommutativeRing._.distrib\691"
d108 v0 = coe MAlonzo.Code.Algebra.Structures.d2114 (coe d60 v0)
name110
  = "Algebra.RingSolver.AlmostCommutativeRing.IsAlmostCommutativeRing._.isCommutativeSemiringWithoutOne"
d110 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 = du110 v4 v5 v7 v8 v9
du110 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Algebra.Structures.du2256 v0 v1 v2 v3 (coe d60 v4)
name112
  = "Algebra.RingSolver.AlmostCommutativeRing.IsAlmostCommutativeRing._.isEquivalence"
d112 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 = du112 v4 v5 v7 v8 v9
du112 v0 v1 v2 v3 v4
  = let v5 = coe d60 v4 in
    coe
      MAlonzo.Code.Algebra.Structures.d140
      (coe
         MAlonzo.Code.Algebra.Structures.d454
         (coe
            MAlonzo.Code.Algebra.Structures.d1542
            (coe
               MAlonzo.Code.Algebra.Structures.d1728
               (coe MAlonzo.Code.Algebra.Structures.du2214 v0 v1 v2 v3 v5))))
name114
  = "Algebra.RingSolver.AlmostCommutativeRing.IsAlmostCommutativeRing._.isNearSemiring"
d114 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 = du114 v4 v5 v7 v8 v9
du114 v0 v1 v2 v3 v4
  = let v5 = coe d60 v4 in
    let v6
          = coe MAlonzo.Code.Algebra.Structures.du2214 v0 v1 v2 v3 v5 in
    coe
      MAlonzo.Code.Algebra.Structures.du1392 v0 v2
      (coe
         MAlonzo.Code.Algebra.Structures.C773
         (coe
            MAlonzo.Code.Algebra.Structures.d1542
            (coe MAlonzo.Code.Algebra.Structures.d1728 v6))
         (coe
            MAlonzo.Code.Algebra.Structures.d294
            (coe
               MAlonzo.Code.Algebra.Structures.d1544
               (coe MAlonzo.Code.Algebra.Structures.d1728 v6)))
         (coe
            MAlonzo.Code.Algebra.Structures.d1546
            (coe MAlonzo.Code.Algebra.Structures.d1728 v6))
         (coe MAlonzo.Code.Algebra.Structures.d1730 v6))
name116
  = "Algebra.RingSolver.AlmostCommutativeRing.IsAlmostCommutativeRing._.isSemiring"
d116 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 = du116 v4 v5 v7 v8 v9
du116 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Algebra.Structures.du2214 v0 v1 v2 v3 (coe d60 v4)
name118
  = "Algebra.RingSolver.AlmostCommutativeRing.IsAlmostCommutativeRing._.isSemiringWithoutAnnihilatingZero"
d118 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 = du118 v4 v5 v7 v8 v9
du118 v0 v1 v2 v3 v4
  = let v5 = coe d60 v4 in
    coe
      MAlonzo.Code.Algebra.Structures.d1728
      (coe MAlonzo.Code.Algebra.Structures.du2214 v0 v1 v2 v3 v5)
name120
  = "Algebra.RingSolver.AlmostCommutativeRing.IsAlmostCommutativeRing._.isSemiringWithoutOne"
d120 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 = du120 v4 v5 v7 v8 v9
du120 v0 v1 v2 v3 v4
  = let v5 = coe d60 v4 in
    coe
      MAlonzo.Code.Algebra.Structures.C773
      (coe
         MAlonzo.Code.Algebra.Structures.d1542
         (coe
            MAlonzo.Code.Algebra.Structures.d1728
            (coe MAlonzo.Code.Algebra.Structures.du2214 v0 v1 v2 v3 v5)))
      (coe
         MAlonzo.Code.Algebra.Structures.d294
         (coe
            MAlonzo.Code.Algebra.Structures.d1544
            (coe
               MAlonzo.Code.Algebra.Structures.d1728
               (coe MAlonzo.Code.Algebra.Structures.du2214 v0 v1 v2 v3 v5))))
      (coe
         MAlonzo.Code.Algebra.Structures.d1546
         (coe
            MAlonzo.Code.Algebra.Structures.d1728
            (coe MAlonzo.Code.Algebra.Structures.du2214 v0 v1 v2 v3 v5)))
      (coe
         MAlonzo.Code.Algebra.Structures.d1730
         (coe MAlonzo.Code.Algebra.Structures.du2214 v0 v1 v2 v3 v5))
name122
  = "Algebra.RingSolver.AlmostCommutativeRing.IsAlmostCommutativeRing._.refl"
d122 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 = du122 v4 v5 v7 v8 v9
du122 v0 v1 v2 v3 v4
  = let v5 = coe d60 v4 in
    coe
      MAlonzo.Code.Relation.Binary.Core.d516
      (coe
         MAlonzo.Code.Algebra.Structures.d140
         (coe
            MAlonzo.Code.Algebra.Structures.d454
            (coe
               MAlonzo.Code.Algebra.Structures.d1542
               (coe
                  MAlonzo.Code.Algebra.Structures.d1728
                  (coe MAlonzo.Code.Algebra.Structures.du2214 v0 v1 v2 v3 v5)))))
name124
  = "Algebra.RingSolver.AlmostCommutativeRing.IsAlmostCommutativeRing._.reflexive"
d124 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 = du124 v4 v5 v7 v8 v9
du124 v0 v1 v2 v3 v4
  = let v5 = coe d60 v4 in
    let v6
          = coe MAlonzo.Code.Algebra.Structures.du2214 v0 v1 v2 v3 v5 in
    let v7 = coe MAlonzo.Code.Algebra.Structures.d1728 v6 in
    let v8 = coe MAlonzo.Code.Algebra.Structures.d1542 v7 in
    let v9 = coe MAlonzo.Code.Algebra.Structures.d454 v8 in
    \ v10 v11 v12 ->
      coe
        MAlonzo.Code.Relation.Binary.Core.du522
        (coe MAlonzo.Code.Algebra.Structures.d140 v9) v10
name126
  = "Algebra.RingSolver.AlmostCommutativeRing.IsAlmostCommutativeRing._.sym"
d126 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 = du126 v4 v5 v7 v8 v9
du126 v0 v1 v2 v3 v4
  = let v5 = coe d60 v4 in
    coe
      MAlonzo.Code.Relation.Binary.Core.d518
      (coe
         MAlonzo.Code.Algebra.Structures.d140
         (coe
            MAlonzo.Code.Algebra.Structures.d454
            (coe
               MAlonzo.Code.Algebra.Structures.d1542
               (coe
                  MAlonzo.Code.Algebra.Structures.d1728
                  (coe MAlonzo.Code.Algebra.Structures.du2214 v0 v1 v2 v3 v5)))))
name128
  = "Algebra.RingSolver.AlmostCommutativeRing.IsAlmostCommutativeRing._.trans"
d128 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 = du128 v4 v5 v7 v8 v9
du128 v0 v1 v2 v3 v4
  = let v5 = coe d60 v4 in
    coe
      MAlonzo.Code.Relation.Binary.Core.d520
      (coe
         MAlonzo.Code.Algebra.Structures.d140
         (coe
            MAlonzo.Code.Algebra.Structures.d454
            (coe
               MAlonzo.Code.Algebra.Structures.d1542
               (coe
                  MAlonzo.Code.Algebra.Structures.d1728
                  (coe MAlonzo.Code.Algebra.Structures.du2214 v0 v1 v2 v3 v5)))))
name130
  = "Algebra.RingSolver.AlmostCommutativeRing.IsAlmostCommutativeRing._.zero"
d130 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 = du130 v5 v7 v9
du130 v0 v1 v2
  = coe MAlonzo.Code.Algebra.Structures.du2204 v0 v1 (coe d60 v2)
name132
  = "Algebra.RingSolver.AlmostCommutativeRing.IsAlmostCommutativeRing._.zero\737"
d132 v0 = coe MAlonzo.Code.Algebra.Structures.d2116 (coe d60 v0)
name138
  = "Algebra.RingSolver.AlmostCommutativeRing.AlmostCommutativeRing"
d138 a0 a1 = ()
data T138 a0 a1 a2 a3 a4 a5 a6 a7 = C33 a0 a1 a2 a3 a4 a5
name160
  = "Algebra.RingSolver.AlmostCommutativeRing.AlmostCommutativeRing.Carrier"
d160 = erased
name162
  = "Algebra.RingSolver.AlmostCommutativeRing.AlmostCommutativeRing._\8776_"
d162 = erased
name164
  = "Algebra.RingSolver.AlmostCommutativeRing.AlmostCommutativeRing._+_"
d164 v0
  = case coe v0 of
      C33 v3 v4 v5 v6 v7 v8 -> coe v3
      _ -> coe MAlonzo.RTE.mazUnreachableError
name166
  = "Algebra.RingSolver.AlmostCommutativeRing.AlmostCommutativeRing._*_"
d166 v0
  = case coe v0 of
      C33 v3 v4 v5 v6 v7 v8 -> coe v4
      _ -> coe MAlonzo.RTE.mazUnreachableError
name168
  = "Algebra.RingSolver.AlmostCommutativeRing.AlmostCommutativeRing.-_"
d168 v0
  = case coe v0 of
      C33 v3 v4 v5 v6 v7 v8 -> coe v5
      _ -> coe MAlonzo.RTE.mazUnreachableError
name170
  = "Algebra.RingSolver.AlmostCommutativeRing.AlmostCommutativeRing.0#"
d170 v0
  = case coe v0 of
      C33 v3 v4 v5 v6 v7 v8 -> coe v6
      _ -> coe MAlonzo.RTE.mazUnreachableError
name172
  = "Algebra.RingSolver.AlmostCommutativeRing.AlmostCommutativeRing.1#"
d172 v0
  = case coe v0 of
      C33 v3 v4 v5 v6 v7 v8 -> coe v7
      _ -> coe MAlonzo.RTE.mazUnreachableError
name174
  = "Algebra.RingSolver.AlmostCommutativeRing.AlmostCommutativeRing.isAlmostCommutativeRing"
d174 v0
  = case coe v0 of
      C33 v3 v4 v5 v6 v7 v8 -> coe v8
      _ -> coe MAlonzo.RTE.mazUnreachableError
name178
  = "Algebra.RingSolver.AlmostCommutativeRing.AlmostCommutativeRing._.assoc"
d178 v0 v1 v2 = du178 v2
du178 v0
  = let v1 = coe d164 v0 in
    let v2 = coe d166 v0 in
    let v3 = coe d170 v0 in
    let v4 = coe d172 v0 in
    let v5 = coe d174 v0 in
    let v6 = coe d60 v5 in
    coe
      MAlonzo.Code.Algebra.Structures.d142
      (coe
         MAlonzo.Code.Algebra.Structures.d294
         (coe
            MAlonzo.Code.Algebra.Structures.d1544
            (coe
               MAlonzo.Code.Algebra.Structures.d1728
               (coe MAlonzo.Code.Algebra.Structures.du2214 v1 v2 v3 v4 v6))))
name180
  = "Algebra.RingSolver.AlmostCommutativeRing.AlmostCommutativeRing._.comm"
d180 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d458
      (coe MAlonzo.Code.Algebra.Structures.d2112 (coe d60 (coe d174 v0)))
name182
  = "Algebra.RingSolver.AlmostCommutativeRing.AlmostCommutativeRing._.\8729-cong"
d182 v0 v1 v2 = du182 v2
du182 v0
  = let v1 = coe d164 v0 in
    let v2 = coe d166 v0 in
    let v3 = coe d170 v0 in
    let v4 = coe d172 v0 in
    let v5 = coe d174 v0 in
    let v6 = coe d60 v5 in
    coe
      MAlonzo.Code.Algebra.Structures.d144
      (coe
         MAlonzo.Code.Algebra.Structures.d294
         (coe
            MAlonzo.Code.Algebra.Structures.d1544
            (coe
               MAlonzo.Code.Algebra.Structures.d1728
               (coe MAlonzo.Code.Algebra.Structures.du2214 v1 v2 v3 v4 v6))))
name184
  = "Algebra.RingSolver.AlmostCommutativeRing.AlmostCommutativeRing._.identity"
d184 v0 v1 v2 = du184 v2
du184 v0
  = let v1 = coe d164 v0 in
    let v2 = coe d166 v0 in
    let v3 = coe d170 v0 in
    let v4 = coe d172 v0 in
    let v5 = coe d174 v0 in
    let v6 = coe d60 v5 in
    coe
      MAlonzo.Code.Algebra.Structures.d296
      (coe
         MAlonzo.Code.Algebra.Structures.d1544
         (coe
            MAlonzo.Code.Algebra.Structures.d1728
            (coe MAlonzo.Code.Algebra.Structures.du2214 v1 v2 v3 v4 v6)))
name186
  = "Algebra.RingSolver.AlmostCommutativeRing.AlmostCommutativeRing._.*-isCommutativeMonoid"
d186 v0
  = coe MAlonzo.Code.Algebra.Structures.d2112 (coe d60 (coe d174 v0))
name188
  = "Algebra.RingSolver.AlmostCommutativeRing.AlmostCommutativeRing._.*-isMonoid"
d188 v0 v1 v2 = du188 v2
du188 v0
  = let v1 = coe d164 v0 in
    let v2 = coe d166 v0 in
    let v3 = coe d170 v0 in
    let v4 = coe d172 v0 in
    let v5 = coe d174 v0 in
    let v6 = coe d60 v5 in
    coe
      MAlonzo.Code.Algebra.Structures.d1544
      (coe
         MAlonzo.Code.Algebra.Structures.d1728
         (coe MAlonzo.Code.Algebra.Structures.du2214 v1 v2 v3 v4 v6))
name190
  = "Algebra.RingSolver.AlmostCommutativeRing.AlmostCommutativeRing._.isSemigroup"
d190 v0 v1 v2 = du190 v2
du190 v0
  = let v1 = coe d164 v0 in
    let v2 = coe d166 v0 in
    let v3 = coe d170 v0 in
    let v4 = coe d172 v0 in
    let v5 = coe d174 v0 in
    let v6 = coe d60 v5 in
    coe
      MAlonzo.Code.Algebra.Structures.d294
      (coe
         MAlonzo.Code.Algebra.Structures.d1544
         (coe
            MAlonzo.Code.Algebra.Structures.d1728
            (coe MAlonzo.Code.Algebra.Structures.du2214 v1 v2 v3 v4 v6)))
name192
  = "Algebra.RingSolver.AlmostCommutativeRing.AlmostCommutativeRing._.assoc"
d192 v0 v1 v2 = du192 v2
du192 v0
  = let v1 = coe d164 v0 in
    let v2 = coe d166 v0 in
    let v3 = coe d170 v0 in
    let v4 = coe d172 v0 in
    let v5 = coe d174 v0 in
    let v6 = coe d60 v5 in
    coe
      MAlonzo.Code.Algebra.Structures.d142
      (coe
         MAlonzo.Code.Algebra.Structures.d454
         (coe
            MAlonzo.Code.Algebra.Structures.d1542
            (coe
               MAlonzo.Code.Algebra.Structures.d1728
               (coe MAlonzo.Code.Algebra.Structures.du2214 v1 v2 v3 v4 v6))))
name194
  = "Algebra.RingSolver.AlmostCommutativeRing.AlmostCommutativeRing._.comm"
d194 v0 v1 v2 = du194 v2
du194 v0
  = let v1 = coe d164 v0 in
    let v2 = coe d166 v0 in
    let v3 = coe d170 v0 in
    let v4 = coe d172 v0 in
    let v5 = coe d174 v0 in
    let v6 = coe d60 v5 in
    coe
      MAlonzo.Code.Algebra.Structures.d458
      (coe
         MAlonzo.Code.Algebra.Structures.d1542
         (coe
            MAlonzo.Code.Algebra.Structures.d1728
            (coe MAlonzo.Code.Algebra.Structures.du2214 v1 v2 v3 v4 v6)))
name196
  = "Algebra.RingSolver.AlmostCommutativeRing.AlmostCommutativeRing._.\8729-cong"
d196 v0 v1 v2 = du196 v2
du196 v0
  = let v1 = coe d164 v0 in
    let v2 = coe d166 v0 in
    let v3 = coe d170 v0 in
    let v4 = coe d172 v0 in
    let v5 = coe d174 v0 in
    let v6 = coe d60 v5 in
    coe
      MAlonzo.Code.Algebra.Structures.d144
      (coe
         MAlonzo.Code.Algebra.Structures.d454
         (coe
            MAlonzo.Code.Algebra.Structures.d1542
            (coe
               MAlonzo.Code.Algebra.Structures.d1728
               (coe MAlonzo.Code.Algebra.Structures.du2214 v1 v2 v3 v4 v6))))
name198
  = "Algebra.RingSolver.AlmostCommutativeRing.AlmostCommutativeRing._.identity"
d198 v0 v1 v2 = du198 v2
du198 v0
  = let v1 = coe d164 v0 in
    let v2 = coe d166 v0 in
    let v3 = coe d170 v0 in
    let v4 = coe d172 v0 in
    let v5 = coe d174 v0 in
    let v6 = coe d60 v5 in
    let v7
          = coe MAlonzo.Code.Algebra.Structures.du2214 v1 v2 v3 v4 v6 in
    let v8 = coe MAlonzo.Code.Algebra.Structures.d1728 v7 in
    coe
      MAlonzo.Code.Algebra.Structures.du476 v1 v3
      (coe MAlonzo.Code.Algebra.Structures.d1542 v8)
name200
  = "Algebra.RingSolver.AlmostCommutativeRing.AlmostCommutativeRing._.+-isCommutativeMonoid"
d200 v0
  = coe MAlonzo.Code.Algebra.Structures.d2110 (coe d60 (coe d174 v0))
name202
  = "Algebra.RingSolver.AlmostCommutativeRing.AlmostCommutativeRing._.isMonoid"
d202 v0 v1 v2 = du202 v2
du202 v0
  = let v1 = coe d164 v0 in
    let v2 = coe d166 v0 in
    let v3 = coe d170 v0 in
    let v4 = coe d172 v0 in
    let v5 = coe d174 v0 in
    let v6 = coe d60 v5 in
    let v7
          = coe MAlonzo.Code.Algebra.Structures.du2214 v1 v2 v3 v4 v6 in
    let v8 = coe MAlonzo.Code.Algebra.Structures.d1728 v7 in
    coe
      MAlonzo.Code.Algebra.Structures.du506 v1 v3
      (coe MAlonzo.Code.Algebra.Structures.d1542 v8)
name204
  = "Algebra.RingSolver.AlmostCommutativeRing.AlmostCommutativeRing._.isSemigroup"
d204 v0 v1 v2 = du204 v2
du204 v0
  = let v1 = coe d164 v0 in
    let v2 = coe d166 v0 in
    let v3 = coe d170 v0 in
    let v4 = coe d172 v0 in
    let v5 = coe d174 v0 in
    let v6 = coe d60 v5 in
    coe
      MAlonzo.Code.Algebra.Structures.d454
      (coe
         MAlonzo.Code.Algebra.Structures.d1542
         (coe
            MAlonzo.Code.Algebra.Structures.d1728
            (coe MAlonzo.Code.Algebra.Structures.du2214 v1 v2 v3 v4 v6)))
name206
  = "Algebra.RingSolver.AlmostCommutativeRing.AlmostCommutativeRing._.-\8255*-distrib\737"
d206 v0 = coe d68 (coe d174 v0)
name208
  = "Algebra.RingSolver.AlmostCommutativeRing.AlmostCommutativeRing._.-\8255+-comm"
d208 v0 = coe d74 (coe d174 v0)
name210
  = "Algebra.RingSolver.AlmostCommutativeRing.AlmostCommutativeRing._.-\8255cong"
d210 v0 = coe d62 (coe d174 v0)
name212
  = "Algebra.RingSolver.AlmostCommutativeRing.AlmostCommutativeRing._.distrib"
d212 v0 v1 v2 = du212 v2
du212 v0
  = let v1 = coe d164 v0 in
    let v2 = coe d166 v0 in
    let v3 = coe d174 v0 in
    coe MAlonzo.Code.Algebra.Structures.du2190 v1 v2 (coe d60 v3)
name214
  = "Algebra.RingSolver.AlmostCommutativeRing.AlmostCommutativeRing._.distrib\691"
d214 v0
  = coe MAlonzo.Code.Algebra.Structures.d2114 (coe d60 (coe d174 v0))
name216
  = "Algebra.RingSolver.AlmostCommutativeRing.AlmostCommutativeRing._.isCommutativeSemiring"
d216 v0 = coe d60 (coe d174 v0)
name218
  = "Algebra.RingSolver.AlmostCommutativeRing.AlmostCommutativeRing._.isCommutativeSemiringWithoutOne"
d218 v0 v1 v2 = du218 v2
du218 v0
  = let v1 = coe d164 v0 in
    let v2 = coe d166 v0 in
    let v3 = coe d170 v0 in
    let v4 = coe d172 v0 in
    let v5 = coe d174 v0 in
    coe MAlonzo.Code.Algebra.Structures.du2256 v1 v2 v3 v4 (coe d60 v5)
name220
  = "Algebra.RingSolver.AlmostCommutativeRing.AlmostCommutativeRing._.isEquivalence"
d220 v0 v1 v2 = du220 v2
du220 v0
  = let v1 = coe d164 v0 in
    let v2 = coe d166 v0 in
    let v3 = coe d170 v0 in
    let v4 = coe d172 v0 in
    let v5 = coe d174 v0 in
    let v6 = coe d60 v5 in
    coe
      MAlonzo.Code.Algebra.Structures.d140
      (coe
         MAlonzo.Code.Algebra.Structures.d454
         (coe
            MAlonzo.Code.Algebra.Structures.d1542
            (coe
               MAlonzo.Code.Algebra.Structures.d1728
               (coe MAlonzo.Code.Algebra.Structures.du2214 v1 v2 v3 v4 v6))))
name222
  = "Algebra.RingSolver.AlmostCommutativeRing.AlmostCommutativeRing._.isNearSemiring"
d222 v0 v1 v2 = du222 v2
du222 v0
  = let v1 = coe d164 v0 in
    let v2 = coe d166 v0 in
    let v3 = coe d170 v0 in
    let v4 = coe d172 v0 in
    let v5 = coe d174 v0 in
    let v6 = coe d60 v5 in
    let v7
          = coe MAlonzo.Code.Algebra.Structures.du2214 v1 v2 v3 v4 v6 in
    coe
      MAlonzo.Code.Algebra.Structures.du1392 v1 v3
      (coe
         MAlonzo.Code.Algebra.Structures.C773
         (coe
            MAlonzo.Code.Algebra.Structures.d1542
            (coe MAlonzo.Code.Algebra.Structures.d1728 v7))
         (coe
            MAlonzo.Code.Algebra.Structures.d294
            (coe
               MAlonzo.Code.Algebra.Structures.d1544
               (coe MAlonzo.Code.Algebra.Structures.d1728 v7)))
         (coe
            MAlonzo.Code.Algebra.Structures.d1546
            (coe MAlonzo.Code.Algebra.Structures.d1728 v7))
         (coe MAlonzo.Code.Algebra.Structures.d1730 v7))
name224
  = "Algebra.RingSolver.AlmostCommutativeRing.AlmostCommutativeRing._.isSemiring"
d224 v0 v1 v2 = du224 v2
du224 v0
  = let v1 = coe d164 v0 in
    let v2 = coe d166 v0 in
    let v3 = coe d170 v0 in
    let v4 = coe d172 v0 in
    let v5 = coe d174 v0 in
    coe MAlonzo.Code.Algebra.Structures.du2214 v1 v2 v3 v4 (coe d60 v5)
name226
  = "Algebra.RingSolver.AlmostCommutativeRing.AlmostCommutativeRing._.isSemiringWithoutAnnihilatingZero"
d226 v0 v1 v2 = du226 v2
du226 v0
  = let v1 = coe d164 v0 in
    let v2 = coe d166 v0 in
    let v3 = coe d170 v0 in
    let v4 = coe d172 v0 in
    let v5 = coe d174 v0 in
    let v6 = coe d60 v5 in
    coe
      MAlonzo.Code.Algebra.Structures.d1728
      (coe MAlonzo.Code.Algebra.Structures.du2214 v1 v2 v3 v4 v6)
name228
  = "Algebra.RingSolver.AlmostCommutativeRing.AlmostCommutativeRing._.isSemiringWithoutOne"
d228 v0 v1 v2 = du228 v2
du228 v0
  = let v1 = coe d164 v0 in
    let v2 = coe d166 v0 in
    let v3 = coe d170 v0 in
    let v4 = coe d172 v0 in
    let v5 = coe d174 v0 in
    let v6 = coe d60 v5 in
    coe
      MAlonzo.Code.Algebra.Structures.C773
      (coe
         MAlonzo.Code.Algebra.Structures.d1542
         (coe
            MAlonzo.Code.Algebra.Structures.d1728
            (coe MAlonzo.Code.Algebra.Structures.du2214 v1 v2 v3 v4 v6)))
      (coe
         MAlonzo.Code.Algebra.Structures.d294
         (coe
            MAlonzo.Code.Algebra.Structures.d1544
            (coe
               MAlonzo.Code.Algebra.Structures.d1728
               (coe MAlonzo.Code.Algebra.Structures.du2214 v1 v2 v3 v4 v6))))
      (coe
         MAlonzo.Code.Algebra.Structures.d1546
         (coe
            MAlonzo.Code.Algebra.Structures.d1728
            (coe MAlonzo.Code.Algebra.Structures.du2214 v1 v2 v3 v4 v6)))
      (coe
         MAlonzo.Code.Algebra.Structures.d1730
         (coe MAlonzo.Code.Algebra.Structures.du2214 v1 v2 v3 v4 v6))
name230
  = "Algebra.RingSolver.AlmostCommutativeRing.AlmostCommutativeRing._.refl"
d230 v0 v1 v2 = du230 v2
du230 v0
  = let v1 = coe d164 v0 in
    let v2 = coe d166 v0 in
    let v3 = coe d170 v0 in
    let v4 = coe d172 v0 in
    let v5 = coe d174 v0 in
    let v6 = coe d60 v5 in
    coe
      MAlonzo.Code.Relation.Binary.Core.d516
      (coe
         MAlonzo.Code.Algebra.Structures.d140
         (coe
            MAlonzo.Code.Algebra.Structures.d454
            (coe
               MAlonzo.Code.Algebra.Structures.d1542
               (coe
                  MAlonzo.Code.Algebra.Structures.d1728
                  (coe MAlonzo.Code.Algebra.Structures.du2214 v1 v2 v3 v4 v6)))))
name232
  = "Algebra.RingSolver.AlmostCommutativeRing.AlmostCommutativeRing._.reflexive"
d232 v0 v1 v2 = du232 v2
du232 v0
  = let v1 = coe d164 v0 in
    let v2 = coe d166 v0 in
    let v3 = coe d170 v0 in
    let v4 = coe d172 v0 in
    let v5 = coe d174 v0 in
    let v6 = coe d60 v5 in
    let v7
          = coe MAlonzo.Code.Algebra.Structures.du2214 v1 v2 v3 v4 v6 in
    let v8 = coe MAlonzo.Code.Algebra.Structures.d1728 v7 in
    let v9 = coe MAlonzo.Code.Algebra.Structures.d1542 v8 in
    let v10 = coe MAlonzo.Code.Algebra.Structures.d454 v9 in
    \ v11 v12 v13 ->
      coe
        MAlonzo.Code.Relation.Binary.Core.du522
        (coe MAlonzo.Code.Algebra.Structures.d140 v10) v11
name234
  = "Algebra.RingSolver.AlmostCommutativeRing.AlmostCommutativeRing._.sym"
d234 v0 v1 v2 = du234 v2
du234 v0
  = let v1 = coe d164 v0 in
    let v2 = coe d166 v0 in
    let v3 = coe d170 v0 in
    let v4 = coe d172 v0 in
    let v5 = coe d174 v0 in
    let v6 = coe d60 v5 in
    coe
      MAlonzo.Code.Relation.Binary.Core.d518
      (coe
         MAlonzo.Code.Algebra.Structures.d140
         (coe
            MAlonzo.Code.Algebra.Structures.d454
            (coe
               MAlonzo.Code.Algebra.Structures.d1542
               (coe
                  MAlonzo.Code.Algebra.Structures.d1728
                  (coe MAlonzo.Code.Algebra.Structures.du2214 v1 v2 v3 v4 v6)))))
name236
  = "Algebra.RingSolver.AlmostCommutativeRing.AlmostCommutativeRing._.trans"
d236 v0 v1 v2 = du236 v2
du236 v0
  = let v1 = coe d164 v0 in
    let v2 = coe d166 v0 in
    let v3 = coe d170 v0 in
    let v4 = coe d172 v0 in
    let v5 = coe d174 v0 in
    let v6 = coe d60 v5 in
    coe
      MAlonzo.Code.Relation.Binary.Core.d520
      (coe
         MAlonzo.Code.Algebra.Structures.d140
         (coe
            MAlonzo.Code.Algebra.Structures.d454
            (coe
               MAlonzo.Code.Algebra.Structures.d1542
               (coe
                  MAlonzo.Code.Algebra.Structures.d1728
                  (coe MAlonzo.Code.Algebra.Structures.du2214 v1 v2 v3 v4 v6)))))
name238
  = "Algebra.RingSolver.AlmostCommutativeRing.AlmostCommutativeRing._.zero"
d238 v0 v1 v2 = du238 v2
du238 v0
  = let v1 = coe d166 v0 in
    let v2 = coe d170 v0 in
    let v3 = coe d174 v0 in
    coe MAlonzo.Code.Algebra.Structures.du2204 v1 v2 (coe d60 v3)
name240
  = "Algebra.RingSolver.AlmostCommutativeRing.AlmostCommutativeRing._.zero\737"
d240 v0
  = coe MAlonzo.Code.Algebra.Structures.d2116 (coe d60 (coe d174 v0))
name242
  = "Algebra.RingSolver.AlmostCommutativeRing.AlmostCommutativeRing.commutativeSemiring"
d242 v0
  = coe
      MAlonzo.Code.Algebra.C463 (coe d164 v0) (coe d166 v0) (coe d170 v0)
      (coe d172 v0) (coe d60 (coe d174 v0))
name246
  = "Algebra.RingSolver.AlmostCommutativeRing.AlmostCommutativeRing._.*-commutativeMonoid"
d246 v0
  = coe
      MAlonzo.Code.Algebra.C97 (coe d166 v0) (coe d172 v0)
      (coe MAlonzo.Code.Algebra.Structures.d2112 (coe d60 (coe d174 v0)))
name248
  = "Algebra.RingSolver.AlmostCommutativeRing.AlmostCommutativeRing._.*-monoid"
d248 v0 v1 v2 = du248 v2
du248 v0
  = let v1
          = coe
              MAlonzo.Code.Algebra.C463 (coe d164 v0) (coe d166 v0) (coe d170 v0)
              (coe d172 v0) (coe d60 (coe d174 v0)) in
    coe
      MAlonzo.Code.Algebra.C49
      (coe MAlonzo.Code.Algebra.d714 (coe MAlonzo.Code.Algebra.du984 v1))
      (coe MAlonzo.Code.Algebra.d718 (coe MAlonzo.Code.Algebra.du984 v1))
      (coe
         MAlonzo.Code.Algebra.Structures.d1544
         (coe
            MAlonzo.Code.Algebra.Structures.d1728
            (coe
               MAlonzo.Code.Algebra.d720 (coe MAlonzo.Code.Algebra.du984 v1))))
name250
  = "Algebra.RingSolver.AlmostCommutativeRing.AlmostCommutativeRing._.semigroup"
d250 v0 v1 v2 = du250 v2
du250 v0
  = let v1
          = coe
              MAlonzo.Code.Algebra.C463 (coe d164 v0) (coe d166 v0) (coe d170 v0)
              (coe d172 v0) (coe d60 (coe d174 v0)) in
    coe
      MAlonzo.Code.Algebra.C5
      (coe MAlonzo.Code.Algebra.d714 (coe MAlonzo.Code.Algebra.du984 v1))
      (coe
         MAlonzo.Code.Algebra.Structures.d294
         (coe
            MAlonzo.Code.Algebra.Structures.d1544
            (coe
               MAlonzo.Code.Algebra.Structures.d1728
               (coe
                  MAlonzo.Code.Algebra.d720 (coe MAlonzo.Code.Algebra.du984 v1)))))
name252
  = "Algebra.RingSolver.AlmostCommutativeRing.AlmostCommutativeRing._.+-commutativeMonoid"
d252 v0 v1 v2 = du252 v2
du252 v0
  = let v1
          = coe
              MAlonzo.Code.Algebra.C463 (coe d164 v0) (coe d166 v0) (coe d170 v0)
              (coe d172 v0) (coe d60 (coe d174 v0)) in
    coe
      MAlonzo.Code.Algebra.C97
      (coe MAlonzo.Code.Algebra.d712 (coe MAlonzo.Code.Algebra.du984 v1))
      (coe MAlonzo.Code.Algebra.d716 (coe MAlonzo.Code.Algebra.du984 v1))
      (coe
         MAlonzo.Code.Algebra.Structures.d1542
         (coe
            MAlonzo.Code.Algebra.Structures.d1728
            (coe
               MAlonzo.Code.Algebra.d720 (coe MAlonzo.Code.Algebra.du984 v1))))
name254
  = "Algebra.RingSolver.AlmostCommutativeRing.AlmostCommutativeRing._.monoid"
d254 v0 v1 v2 = du254 v2
du254 v0
  = let v1
          = coe
              MAlonzo.Code.Algebra.C463 (coe d164 v0) (coe d166 v0) (coe d170 v0)
              (coe d172 v0) (coe d60 (coe d174 v0)) in
    let v2 = coe MAlonzo.Code.Algebra.du984 v1 in
    let v3
          = coe
              MAlonzo.Code.Algebra.C333 (coe MAlonzo.Code.Algebra.d712 v2)
              (coe MAlonzo.Code.Algebra.d714 v2)
              (coe MAlonzo.Code.Algebra.d716 v2)
              (coe MAlonzo.Code.Algebra.d718 v2)
              (coe
                 MAlonzo.Code.Algebra.Structures.d1728
                 (coe MAlonzo.Code.Algebra.d720 v2)) in
    coe
      MAlonzo.Code.Algebra.du186
      (coe
         MAlonzo.Code.Algebra.C97 (coe MAlonzo.Code.Algebra.d616 v3)
         (coe MAlonzo.Code.Algebra.d620 v3)
         (coe
            MAlonzo.Code.Algebra.Structures.d1542
            (coe MAlonzo.Code.Algebra.d624 v3)))
name256
  = "Algebra.RingSolver.AlmostCommutativeRing.AlmostCommutativeRing._.semigroup"
d256 v0 v1 v2 = du256 v2
du256 v0
  = let v1
          = coe
              MAlonzo.Code.Algebra.C463 (coe d164 v0) (coe d166 v0) (coe d170 v0)
              (coe d172 v0) (coe d60 (coe d174 v0)) in
    let v2 = coe MAlonzo.Code.Algebra.du984 v1 in
    let v3
          = coe
              MAlonzo.Code.Algebra.C333 (coe MAlonzo.Code.Algebra.d712 v2)
              (coe MAlonzo.Code.Algebra.d714 v2)
              (coe MAlonzo.Code.Algebra.d716 v2)
              (coe MAlonzo.Code.Algebra.d718 v2)
              (coe
                 MAlonzo.Code.Algebra.Structures.d1728
                 (coe MAlonzo.Code.Algebra.d720 v2)) in
    let v4
          = coe
              MAlonzo.Code.Algebra.C97 (coe MAlonzo.Code.Algebra.d616 v3)
              (coe MAlonzo.Code.Algebra.d620 v3)
              (coe
                 MAlonzo.Code.Algebra.Structures.d1542
                 (coe MAlonzo.Code.Algebra.d624 v3)) in
    coe
      MAlonzo.Code.Algebra.C5
      (coe MAlonzo.Code.Algebra.d96 (coe MAlonzo.Code.Algebra.du186 v4))
      (coe
         MAlonzo.Code.Algebra.Structures.d294
         (coe
            MAlonzo.Code.Algebra.d100 (coe MAlonzo.Code.Algebra.du186 v4)))
name258
  = "Algebra.RingSolver.AlmostCommutativeRing.AlmostCommutativeRing._.semiring"
d258 v0 v1 v2 = du258 v2
du258 v0
  = coe
      MAlonzo.Code.Algebra.du984
      (coe
         MAlonzo.Code.Algebra.C463 (coe d164 v0) (coe d166 v0) (coe d170 v0)
         (coe d172 v0) (coe d60 (coe d174 v0)))
name260
  = "Algebra.RingSolver.AlmostCommutativeRing.AlmostCommutativeRing._.setoid"
d260 v0 v1 v2 = du260 v2
du260 v0
  = let v1
          = coe
              MAlonzo.Code.Algebra.C463 (coe d164 v0) (coe d166 v0) (coe d170 v0)
              (coe d172 v0) (coe d60 (coe d174 v0)) in
    let v2 = coe MAlonzo.Code.Algebra.du984 v1 in
    let v3
          = coe
              MAlonzo.Code.Algebra.C333 (coe MAlonzo.Code.Algebra.d712 v2)
              (coe MAlonzo.Code.Algebra.d714 v2)
              (coe MAlonzo.Code.Algebra.d716 v2)
              (coe MAlonzo.Code.Algebra.d718 v2)
              (coe
                 MAlonzo.Code.Algebra.Structures.d1728
                 (coe MAlonzo.Code.Algebra.d720 v2)) in
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
               MAlonzo.Code.Algebra.d100 (coe MAlonzo.Code.Algebra.du186 v4))))
name262
  = "Algebra.RingSolver.AlmostCommutativeRing.AlmostCommutativeRing.rawRing"
d262 v0
  = coe
      MAlonzo.Code.Algebra.C519 (coe d164 v0) (coe d166 v0) (coe d168 v0)
      (coe d170 v0) (coe d172 v0)
name274
  = "Algebra.RingSolver.AlmostCommutativeRing._-Raw-AlmostCommutative\10230_"
d274 a0 a1 a2 a3 a4 = ()
data T274 a0 a1 a2 a3 a4 a5 = C519 a0 a1 a2 a3 a4 a5
name288 = "Algebra.RingSolver.AlmostCommutativeRing.F._*_"
d288 v0 v1 v2 v3 v4 = du288 v3
du288 v0 = coe MAlonzo.Code.Algebra.d1036 v0
name290 = "Algebra.RingSolver.AlmostCommutativeRing.F._+_"
d290 v0 v1 v2 v3 v4 = du290 v3
du290 v0 = coe MAlonzo.Code.Algebra.d1034 v0
name292 = "Algebra.RingSolver.AlmostCommutativeRing.F.-_"
d292 v0 v1 v2 v3 v4 = du292 v3
du292 v0 = coe MAlonzo.Code.Algebra.d1038 v0
name294 = "Algebra.RingSolver.AlmostCommutativeRing.F.0#"
d294 v0 v1 v2 v3 v4 = du294 v3
du294 v0 = coe MAlonzo.Code.Algebra.d1040 v0
name296 = "Algebra.RingSolver.AlmostCommutativeRing.F.1#"
d296 v0 v1 v2 v3 v4 = du296 v3
du296 v0 = coe MAlonzo.Code.Algebra.d1042 v0
name298 = "Algebra.RingSolver.AlmostCommutativeRing.F.Carrier"
d298 = erased
name404
  = "Algebra.RingSolver.AlmostCommutativeRing._.Homomorphic\8320"
d404 = erased
name406
  = "Algebra.RingSolver.AlmostCommutativeRing._.Homomorphic\8321"
d406 = erased
name408
  = "Algebra.RingSolver.AlmostCommutativeRing._.Homomorphic\8322"
d408 = erased
name410 = "Algebra.RingSolver.AlmostCommutativeRing._.Morphism"
d410 = erased
name550
  = "Algebra.RingSolver.AlmostCommutativeRing._-Raw-AlmostCommutative\10230_.\10214_\10215"
d550 v0
  = case coe v0 of
      C519 v1 v2 v3 v4 v5 v6 -> coe v1
      _ -> coe MAlonzo.RTE.mazUnreachableError
name552
  = "Algebra.RingSolver.AlmostCommutativeRing._-Raw-AlmostCommutative\10230_.+-homo"
d552 v0
  = case coe v0 of
      C519 v1 v2 v3 v4 v5 v6 -> coe v2
      _ -> coe MAlonzo.RTE.mazUnreachableError
name554
  = "Algebra.RingSolver.AlmostCommutativeRing._-Raw-AlmostCommutative\10230_.*-homo"
d554 v0
  = case coe v0 of
      C519 v1 v2 v3 v4 v5 v6 -> coe v3
      _ -> coe MAlonzo.RTE.mazUnreachableError
name556
  = "Algebra.RingSolver.AlmostCommutativeRing._-Raw-AlmostCommutative\10230_.-\8255homo"
d556 v0
  = case coe v0 of
      C519 v1 v2 v3 v4 v5 v6 -> coe v4
      _ -> coe MAlonzo.RTE.mazUnreachableError
name558
  = "Algebra.RingSolver.AlmostCommutativeRing._-Raw-AlmostCommutative\10230_.0-homo"
d558 v0
  = case coe v0 of
      C519 v1 v2 v3 v4 v5 v6 -> coe v5
      _ -> coe MAlonzo.RTE.mazUnreachableError
name560
  = "Algebra.RingSolver.AlmostCommutativeRing._-Raw-AlmostCommutative\10230_.1-homo"
d560 v0
  = case coe v0 of
      C519 v1 v2 v3 v4 v5 v6 -> coe v6
      _ -> coe MAlonzo.RTE.mazUnreachableError
name568
  = "Algebra.RingSolver.AlmostCommutativeRing.-raw-almostCommutative\10230"
d568 v0 v1 v2 = du568 v2
du568 v0
  = coe
      C519 (\ v1 -> v1)
      (\ v1 v2 ->
         let v3 = coe d164 v0 in
         let v4 = coe d166 v0 in
         let v5 = coe d170 v0 in
         let v6 = coe d172 v0 in
         let v7 = coe d174 v0 in
         let v8 = coe d60 v7 in
         MAlonzo.Code.Relation.Binary.Core.d516
           (MAlonzo.Code.Algebra.Structures.d140
              (MAlonzo.Code.Algebra.Structures.d454
                 (MAlonzo.Code.Algebra.Structures.d1542
                    (MAlonzo.Code.Algebra.Structures.d1728
                       (MAlonzo.Code.Algebra.Structures.du2214 v3 v4 v5 v6 v8)))))
           (let v9
                  = coe
                      MAlonzo.Code.Algebra.C519 (coe d164 v0) (coe d166 v0) (coe d168 v0)
                      (coe d170 v0) (coe d172 v0) in
            MAlonzo.Code.Algebra.d1034 v9 v1 v2))
      (\ v1 v2 ->
         let v3 = coe d164 v0 in
         let v4 = coe d166 v0 in
         let v5 = coe d170 v0 in
         let v6 = coe d172 v0 in
         let v7 = coe d174 v0 in
         let v8 = coe d60 v7 in
         MAlonzo.Code.Relation.Binary.Core.d516
           (MAlonzo.Code.Algebra.Structures.d140
              (MAlonzo.Code.Algebra.Structures.d454
                 (MAlonzo.Code.Algebra.Structures.d1542
                    (MAlonzo.Code.Algebra.Structures.d1728
                       (MAlonzo.Code.Algebra.Structures.du2214 v3 v4 v5 v6 v8)))))
           (let v9
                  = coe
                      MAlonzo.Code.Algebra.C519 (coe d164 v0) (coe d166 v0) (coe d168 v0)
                      (coe d170 v0) (coe d172 v0) in
            MAlonzo.Code.Algebra.d1036 v9 v1 v2))
      (\ v1 ->
         let v2 = coe d164 v0 in
         let v3 = coe d166 v0 in
         let v4 = coe d170 v0 in
         let v5 = coe d172 v0 in
         let v6 = coe d174 v0 in
         let v7 = coe d60 v6 in
         MAlonzo.Code.Relation.Binary.Core.d516
           (MAlonzo.Code.Algebra.Structures.d140
              (MAlonzo.Code.Algebra.Structures.d454
                 (MAlonzo.Code.Algebra.Structures.d1542
                    (MAlonzo.Code.Algebra.Structures.d1728
                       (MAlonzo.Code.Algebra.Structures.du2214 v2 v3 v4 v5 v7)))))
           (let v8
                  = coe
                      MAlonzo.Code.Algebra.C519 (coe d164 v0) (coe d166 v0) (coe d168 v0)
                      (coe d170 v0) (coe d172 v0) in
            MAlonzo.Code.Algebra.d1038 v8 v1))
      (let v1 = coe d164 v0 in
       let v2 = coe d166 v0 in
       let v3 = coe d170 v0 in
       let v4 = coe d172 v0 in
       let v5 = coe d174 v0 in
       let v6 = coe d60 v5 in
       MAlonzo.Code.Relation.Binary.Core.d516
         (MAlonzo.Code.Algebra.Structures.d140
            (MAlonzo.Code.Algebra.Structures.d454
               (MAlonzo.Code.Algebra.Structures.d1542
                  (MAlonzo.Code.Algebra.Structures.d1728
                     (MAlonzo.Code.Algebra.Structures.du2214 v1 v2 v3 v4 v6)))))
         (let v7
                = coe
                    MAlonzo.Code.Algebra.C519 (coe d164 v0) (coe d166 v0) (coe d168 v0)
                    (coe d170 v0) (coe d172 v0) in
          MAlonzo.Code.Algebra.d1040 v7))
      (let v1 = coe d164 v0 in
       let v2 = coe d166 v0 in
       let v3 = coe d170 v0 in
       let v4 = coe d172 v0 in
       let v5 = coe d174 v0 in
       let v6 = coe d60 v5 in
       MAlonzo.Code.Relation.Binary.Core.d516
         (MAlonzo.Code.Algebra.Structures.d140
            (MAlonzo.Code.Algebra.Structures.d454
               (MAlonzo.Code.Algebra.Structures.d1542
                  (MAlonzo.Code.Algebra.Structures.d1728
                     (MAlonzo.Code.Algebra.Structures.du2214 v1 v2 v3 v4 v6)))))
         (let v7
                = coe
                    MAlonzo.Code.Algebra.C519 (coe d164 v0) (coe d166 v0) (coe d168 v0)
                    (coe d170 v0) (coe d172 v0) in
          MAlonzo.Code.Algebra.d1042 v7))
name662 = "Algebra.RingSolver.AlmostCommutativeRing._._.refl"
d662 v0 v1 v2 = du662 v2
du662 v0
  = let v1 = coe d164 v0 in
    let v2 = coe d166 v0 in
    let v3 = coe d170 v0 in
    let v4 = coe d172 v0 in
    let v5 = coe d174 v0 in
    let v6 = coe d60 v5 in
    coe
      MAlonzo.Code.Relation.Binary.Core.d516
      (coe
         MAlonzo.Code.Algebra.Structures.d140
         (coe
            MAlonzo.Code.Algebra.Structures.d454
            (coe
               MAlonzo.Code.Algebra.Structures.d1542
               (coe
                  MAlonzo.Code.Algebra.Structures.d1728
                  (coe MAlonzo.Code.Algebra.Structures.du2214 v1 v2 v3 v4 v6)))))
name698
  = "Algebra.RingSolver.AlmostCommutativeRing.Induced-equivalence"
d698 = erased
name718 = "Algebra.RingSolver.AlmostCommutativeRing._._._\8776_"
d718 = erased
name826
  = "Algebra.RingSolver.AlmostCommutativeRing._._.\10214_\10215"
d826 v0 v1 v2 = du826 v0
du826 v0 = coe d550 v0
name832
  = "Algebra.RingSolver.AlmostCommutativeRing.fromCommutativeRing"
d832 v0 v1 v2 = du832 v2
du832 v0
  = coe
      C33 (coe MAlonzo.Code.Algebra.d1208 v0)
      (coe MAlonzo.Code.Algebra.d1210 v0)
      (coe MAlonzo.Code.Algebra.d1212 v0)
      (coe MAlonzo.Code.Algebra.d1214 v0)
      (coe MAlonzo.Code.Algebra.d1216 v0)
      (coe
         C15
         (coe
            MAlonzo.Code.Algebra.Structures.du2716
            (coe MAlonzo.Code.Algebra.d1208 v0)
            (coe MAlonzo.Code.Algebra.d1210 v0)
            (coe MAlonzo.Code.Algebra.d1212 v0)
            (coe MAlonzo.Code.Algebra.d1214 v0)
            (coe MAlonzo.Code.Algebra.d1218 v0))
         (coe
            MAlonzo.Code.Algebra.Structures.d824
            (coe
               MAlonzo.Code.Algebra.Structures.d994
               (coe
                  MAlonzo.Code.Algebra.Structures.d2410
                  (coe
                     MAlonzo.Code.Algebra.Structures.d2654
                     (coe MAlonzo.Code.Algebra.d1218 v0)))))
         (coe
            MAlonzo.Code.Algebra.Properties.Ring.du156
            (coe
               MAlonzo.Code.Algebra.C541 (coe MAlonzo.Code.Algebra.d1208 v0)
               (coe MAlonzo.Code.Algebra.d1210 v0)
               (coe MAlonzo.Code.Algebra.d1212 v0)
               (coe MAlonzo.Code.Algebra.d1214 v0)
               (coe MAlonzo.Code.Algebra.d1216 v0)
               (coe
                  MAlonzo.Code.Algebra.Structures.d2654
                  (coe MAlonzo.Code.Algebra.d1218 v0))))
         (coe
            MAlonzo.Code.Algebra.Properties.AbelianGroup.du118
            (coe
               MAlonzo.Code.Algebra.C195 (coe MAlonzo.Code.Algebra.d1208 v0)
               (coe MAlonzo.Code.Algebra.d1214 v0)
               (coe MAlonzo.Code.Algebra.d1212 v0)
               (coe
                  MAlonzo.Code.Algebra.Structures.d2410
                  (coe
                     MAlonzo.Code.Algebra.Structures.d2654
                     (coe MAlonzo.Code.Algebra.d1218 v0))))))
name922
  = "Algebra.RingSolver.AlmostCommutativeRing._._.isCommutativeSemiring"
d922 v0 v1 v2 = du922 v2
du922 v0
  = coe
      MAlonzo.Code.Algebra.Structures.du2716
      (coe MAlonzo.Code.Algebra.d1208 v0)
      (coe MAlonzo.Code.Algebra.d1210 v0)
      (coe MAlonzo.Code.Algebra.d1212 v0)
      (coe MAlonzo.Code.Algebra.d1214 v0)
      (coe MAlonzo.Code.Algebra.d1218 v0)
name976
  = "Algebra.RingSolver.AlmostCommutativeRing._._.-\8255*-distrib\737"
d976 v0 v1 v2 = du976 v2
du976 v0
  = coe
      MAlonzo.Code.Algebra.Properties.Ring.du156
      (coe
         MAlonzo.Code.Algebra.C541 (coe MAlonzo.Code.Algebra.d1208 v0)
         (coe MAlonzo.Code.Algebra.d1210 v0)
         (coe MAlonzo.Code.Algebra.d1212 v0)
         (coe MAlonzo.Code.Algebra.d1214 v0)
         (coe MAlonzo.Code.Algebra.d1216 v0)
         (coe
            MAlonzo.Code.Algebra.Structures.d2654
            (coe MAlonzo.Code.Algebra.d1218 v0)))
name996
  = "Algebra.RingSolver.AlmostCommutativeRing._._.\8315\185-\8729-comm"
d996 v0 v1 v2 = du996 v2
du996 v0
  = coe
      MAlonzo.Code.Algebra.Properties.AbelianGroup.du118
      (coe
         MAlonzo.Code.Algebra.C195 (coe MAlonzo.Code.Algebra.d1208 v0)
         (coe MAlonzo.Code.Algebra.d1214 v0)
         (coe MAlonzo.Code.Algebra.d1212 v0)
         (coe
            MAlonzo.Code.Algebra.Structures.d2410
            (coe
               MAlonzo.Code.Algebra.Structures.d2654
               (coe MAlonzo.Code.Algebra.d1218 v0))))
name1002
  = "Algebra.RingSolver.AlmostCommutativeRing.fromCommutativeSemiring"
d1002 v0 v1 v2 = du1002 v2
du1002 v0
  = coe
      C33 (coe MAlonzo.Code.Algebra.d916 v0)
      (coe MAlonzo.Code.Algebra.d918 v0) (\ v1 -> v1)
      (coe MAlonzo.Code.Algebra.d920 v0)
      (coe MAlonzo.Code.Algebra.d922 v0)
      (coe
         C15 (coe MAlonzo.Code.Algebra.d924 v0) (\ v1 v2 v3 -> v3)
         (\ v1 v2 ->
            let v3 = coe MAlonzo.Code.Algebra.d916 v0 in
            let v4 = coe MAlonzo.Code.Algebra.d918 v0 in
            let v5 = coe MAlonzo.Code.Algebra.d920 v0 in
            let v6 = coe MAlonzo.Code.Algebra.d922 v0 in
            let v7 = coe MAlonzo.Code.Algebra.d924 v0 in
            MAlonzo.Code.Relation.Binary.Core.d516
              (MAlonzo.Code.Algebra.Structures.d140
                 (MAlonzo.Code.Algebra.Structures.d454
                    (MAlonzo.Code.Algebra.Structures.d1542
                       (MAlonzo.Code.Algebra.Structures.d1728
                          (MAlonzo.Code.Algebra.Structures.du2214 v3 v4 v5 v6 v7)))))
              (MAlonzo.Code.Algebra.d918 v0 v1 v2))
         (\ v1 v2 ->
            let v3 = coe MAlonzo.Code.Algebra.d916 v0 in
            let v4 = coe MAlonzo.Code.Algebra.d918 v0 in
            let v5 = coe MAlonzo.Code.Algebra.d920 v0 in
            let v6 = coe MAlonzo.Code.Algebra.d922 v0 in
            let v7 = coe MAlonzo.Code.Algebra.d924 v0 in
            MAlonzo.Code.Relation.Binary.Core.d516
              (MAlonzo.Code.Algebra.Structures.d140
                 (MAlonzo.Code.Algebra.Structures.d454
                    (MAlonzo.Code.Algebra.Structures.d1542
                       (MAlonzo.Code.Algebra.Structures.d1728
                          (MAlonzo.Code.Algebra.Structures.du2214 v3 v4 v5 v6 v7)))))
              (MAlonzo.Code.Algebra.d916 v0 v1 v2)))
name1090 = "Algebra.RingSolver.AlmostCommutativeRing._._.refl"
d1090 v0 v1 v2 = du1090 v2
du1090 v0
  = let v1 = coe MAlonzo.Code.Algebra.d916 v0 in
    let v2 = coe MAlonzo.Code.Algebra.d918 v0 in
    let v3 = coe MAlonzo.Code.Algebra.d920 v0 in
    let v4 = coe MAlonzo.Code.Algebra.d922 v0 in
    let v5 = coe MAlonzo.Code.Algebra.d924 v0 in
    coe
      MAlonzo.Code.Relation.Binary.Core.d516
      (coe
         MAlonzo.Code.Algebra.Structures.d140
         (coe
            MAlonzo.Code.Algebra.Structures.d454
            (coe
               MAlonzo.Code.Algebra.Structures.d1542
               (coe
                  MAlonzo.Code.Algebra.Structures.d1728
                  (coe MAlonzo.Code.Algebra.Structures.du2214 v1 v2 v3 v4 v5)))))