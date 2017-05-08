{-# LANGUAGE EmptyDataDecls, ExistentialQuantification,
             ScopedTypeVariables, NoMonomorphismRestriction, Rank2Types #-}
module MAlonzo.Code.Algebra.RingSolver.Simple where

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
import qualified MAlonzo.Code.Algebra.RingSolver
import qualified MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing
import qualified MAlonzo.Code.Algebra.Structures
import qualified MAlonzo.Code.Relation.Binary
import qualified MAlonzo.Code.Relation.Binary.Reflection

name98 = "Algebra.RingSolver.Simple._.rawRing"
d98 v0 v1 = du98 v0
du98 v0
  = coe
      MAlonzo.Code.Algebra.C519
      (coe MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d164 v0)
      (coe MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166 v0)
      (coe MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d168 v0)
      (coe MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d170 v0)
      (coe MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d172 v0)
name118 = "Algebra.RingSolver.Simple._._*H_"
d118 v0 v1 v2 v3
  = coe
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
      v3
name120 = "Algebra.RingSolver.Simple._._*HN_"
d120 v0 v1 v2 v3
  = coe
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
      v3
name122 = "Algebra.RingSolver.Simple._._*N_"
d122 v0 v1 v2 v3 v4 v5 v6
  = coe
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
      v3 v5 v6
name124 = "Algebra.RingSolver.Simple._._*NH_"
d124 v0 v1 v2 v3
  = coe
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
      v3
name130 = "Algebra.RingSolver.Simple._._*x+H_"
d130 v0 v1 v2 v3
  = coe
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
      v3
name132 = "Algebra.RingSolver.Simple._._*x+HN_"
d132 v0 v1 v2 v3
  = coe
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
      v3
name134 = "Algebra.RingSolver.Simple._._+H_"
d134 v0 v1 v2 v3
  = coe
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
      v3
name136 = "Algebra.RingSolver.Simple._._+N_"
d136 v0 v1 v2 v3 v4 v5 v6
  = coe
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
      v3 v5 v6
name138 = "Algebra.RingSolver.Simple._._:*_"
d138 v0 = du138
du138
  = coe
      MAlonzo.Code.Algebra.RingSolver.C284
      MAlonzo.Code.Algebra.RingSolver.C270
name140 = "Algebra.RingSolver.Simple._._:+_"
d140 v0 = du140
du140
  = coe
      MAlonzo.Code.Algebra.RingSolver.C284
      MAlonzo.Code.Algebra.RingSolver.C268
name142 = "Algebra.RingSolver.Simple._._:-_"
d142 v0 v1 v2 = du142 v1 v2
du142 v0 v1
  = coe
      MAlonzo.Code.Algebra.RingSolver.C284
      MAlonzo.Code.Algebra.RingSolver.C268 v0
      (coe MAlonzo.Code.Algebra.RingSolver.C302 v1)
name144 = "Algebra.RingSolver.Simple._._\8860_"
d144 v0 v1 v2 v3 = du144
du144 v0 = coe MAlonzo.Code.Relation.Binary.Reflection.du138
name148 = "Algebra.RingSolver.Simple._._^N_"
d148 v0 v1 v2 v3
  = coe
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
      v3
name150 = "Algebra.RingSolver.Simple._._\8776H_"
d150 a0 a1 a2 a3 a4 a5 a6 = ()
name152 = "Algebra.RingSolver.Simple._._\8776N_"
d152 a0 a1 a2 a3 a4 a5 a6 = ()
name154 = "Algebra.RingSolver.Simple._._\8799H_"
d154 v0 v1 v2 v3 v4 v5 v6
  = coe
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
      v3 v5 v6
name156 = "Algebra.RingSolver.Simple._._\8799N_"
d156 v0 v1 v2 v3 v4 v5 v6
  = coe
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
      v3 v5 v6
name158 = "Algebra.RingSolver.Simple._.*H-homo"
d158 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Algebra.RingSolver.d1046 v0 v0 v1
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
      v3
name160 = "Algebra.RingSolver.Simple._.*HN-homo"
d160 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Algebra.RingSolver.d1036 v0 v0 v1
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
      v3
name162 = "Algebra.RingSolver.Simple._.*N-homo"
d162 v0 v1 v2 v3 v4 v5 v6 v7
  = coe
      MAlonzo.Code.Algebra.RingSolver.du1056 v0 v0 v1
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
      v3 v5 v6 v7
name164 = "Algebra.RingSolver.Simple._.*NH-homo"
d164 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Algebra.RingSolver.d1024 v0 v0 v1
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
      v3
name166 = "Algebra.RingSolver.Simple._.*x+H-homo"
d166 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Algebra.RingSolver.d994 v0 v0 v1
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
      v3
name168 = "Algebra.RingSolver.Simple._.*x+HN\8776*x+"
d168 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Algebra.RingSolver.d860 v0 v0 v1
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
      v3
name170 = "Algebra.RingSolver.Simple._.+H-homo"
d170 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Algebra.RingSolver.d940 v0 v0 v1
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
      v3
name172 = "Algebra.RingSolver.Simple._.+N-homo"
d172 v0 v1 v2 v3 v4 v5 v6 v7
  = coe
      MAlonzo.Code.Algebra.RingSolver.du950 v0 v0 v1
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
      v3 v5 v6 v7
name174 = "Algebra.RingSolver.Simple._.-H_"
d174 v0 v1 v2 v3
  = coe
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
      v3
name176 = "Algebra.RingSolver.Simple._.-H\8255-homo"
d176 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Algebra.RingSolver.d1204 v0 v0 v1
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
      v3
name178 = "Algebra.RingSolver.Simple._.-N_"
d178 v0 v1 v2 v3 v4 v5
  = coe
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
      v3 v5
name180 = "Algebra.RingSolver.Simple._.-N\8255-homo"
d180 v0 v1 v2 v3 v4 v5 v6
  = coe
      MAlonzo.Code.Algebra.RingSolver.du1212 v0 v0 v1
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
      v3 v5 v6
name182 = "Algebra.RingSolver.Simple._.0H"
d182 v0 v1 v2 v3 v4 = du182 v4
du182 v0 = coe MAlonzo.Code.Algebra.RingSolver.C358 v0
name184 = "Algebra.RingSolver.Simple._.0N"
d184 v0 v1 v2 v3 = du184 v2
du184 v0
  = coe
      MAlonzo.Code.Algebra.RingSolver.du578
      (coe
         MAlonzo.Code.Algebra.C519
         (coe MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d164 v0)
         (coe MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166 v0)
         (coe MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d168 v0)
         (coe MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d170 v0)
         (coe
            MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d172 v0))
name186 = "Algebra.RingSolver.Simple._.0N-homo"
d186 v0 v1 v2 v3 v4 v5
  = coe
      MAlonzo.Code.Algebra.RingSolver.du822 v0 v0 v1
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
      v3 v5
name188 = "Algebra.RingSolver.Simple._.0\8776\10214\&0\10215"
d188 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Algebra.RingSolver.d834 v0 v0 v1
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
      v3
name190 = "Algebra.RingSolver.Simple._.1H"
d190 v0 v1 v2 v3
  = coe
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
      v3
name192 = "Algebra.RingSolver.Simple._.1N"
d192 v0 v1 v2 v3
  = coe
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
      v3
name194 = "Algebra.RingSolver.Simple._.1N-homo"
d194 v0 v1 v2 v3 v4 v5
  = coe
      MAlonzo.Code.Algebra.RingSolver.du846 v0 v0 v1
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
      v3 v5
name198 = "Algebra.RingSolver.Simple._.HNF"
d198 a0 a1 a2 a3 a4 = ()
name200 = "Algebra.RingSolver.Simple._.Normal"
d200 a0 a1 a2 a3 a4 = ()
name202 = "Algebra.RingSolver.Simple._.Op"
d202 a0 a1 a2 a3 = ()
name204 = "Algebra.RingSolver.Simple._.Polynomial"
d204 a0 a1 a2 a3 a4 = ()
name210 = "Algebra.RingSolver.Simple._.^N-homo"
d210 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Algebra.RingSolver.d1186 v0 v0 v1
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
      v3
name218 = "Algebra.RingSolver.Simple._.correct"
d218 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Algebra.RingSolver.d1266 v0 v0 v1
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
      v3
name220 = "Algebra.RingSolver.Simple._.correct-con"
d220 v0 v1 v2 v3 v4 v5 v6
  = coe
      MAlonzo.Code.Algebra.RingSolver.du1232 v0 v0 v1
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
      v3 v5 v6
name222 = "Algebra.RingSolver.Simple._.correct-var"
d222 v0 v1 v2 v3 v4 v5 v6
  = coe
      MAlonzo.Code.Algebra.RingSolver.du1248 v0 v0 v1
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
      v3 v5 v6
name224 = "Algebra.RingSolver.Simple._.normalise"
d224 v0 v1 v2 v3
  = coe
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
      v3
name226 = "Algebra.RingSolver.Simple._.normalise-con"
d226 v0 v1 v2 v3
  = coe
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
      v3
name228 = "Algebra.RingSolver.Simple._.normalise-var"
d228 v0 v1 v2 v3 v4 v5
  = coe
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
      v3 v5
name236 = "Algebra.RingSolver.Simple._.prove"
d236 v0 v1 v2 v3
  = let v4
          = coe
              MAlonzo.Code.Algebra.C519
              (coe MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d164 v2)
              (coe MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166 v2)
              (coe MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d168 v2)
              (coe MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d170 v2)
              (coe
                 MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d172 v2) in
    let v5
          = coe
              MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.du568 v2 in
    coe
      MAlonzo.Code.Relation.Binary.Reflection.du86
      (let v6
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
       let v7 = coe MAlonzo.Code.Algebra.du984 v6 in
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
       MAlonzo.Code.Relation.Binary.C143
         (MAlonzo.Code.Algebra.Structures.d140
            (MAlonzo.Code.Algebra.Structures.d294
               (MAlonzo.Code.Algebra.d100 (MAlonzo.Code.Algebra.du186 v9)))))
      (\ v6 v7 v8 ->
         coe MAlonzo.Code.Algebra.RingSolver.du324 v2 v5 v7 v8)
      (coe MAlonzo.Code.Algebra.RingSolver.d812 v0 v0 v1 v4 v2 v5 v3)
      (coe MAlonzo.Code.Algebra.RingSolver.d1266 v0 v0 v1 v4 v2 v5 v3)
name238 = "Algebra.RingSolver.Simple._.sem"
d238 v0 v1 v2 v3 = du238 v2
du238 v0 = coe MAlonzo.Code.Algebra.RingSolver.du320 v0
name240 = "Algebra.RingSolver.Simple._.solve"
d240 v0 v1 v2 v3
  = let v4
          = coe
              MAlonzo.Code.Algebra.C519
              (coe MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d164 v2)
              (coe MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166 v2)
              (coe MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d168 v2)
              (coe MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d170 v2)
              (coe
                 MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d172 v2) in
    let v5
          = coe
              MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.du568 v2 in
    coe
      MAlonzo.Code.Relation.Binary.Reflection.du110
      (let v6
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
       let v7 = coe MAlonzo.Code.Algebra.du984 v6 in
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
       MAlonzo.Code.Relation.Binary.C143
         (MAlonzo.Code.Algebra.Structures.d140
            (MAlonzo.Code.Algebra.Structures.d294
               (MAlonzo.Code.Algebra.d100 (MAlonzo.Code.Algebra.du186 v9)))))
      (\ v6 -> MAlonzo.Code.Algebra.RingSolver.C292)
      (\ v6 v7 v8 ->
         coe MAlonzo.Code.Algebra.RingSolver.du324 v2 v5 v7 v8)
      (coe MAlonzo.Code.Algebra.RingSolver.d812 v0 v0 v1 v4 v2 v5 v3)
      (coe MAlonzo.Code.Algebra.RingSolver.d1266 v0 v0 v1 v4 v2 v5 v3)
name248 = "Algebra.RingSolver.Simple._.\8709*x+HN-homo"
d248 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Algebra.RingSolver.d904 v0 v0 v1
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
      v3
name250 = "Algebra.RingSolver.Simple._.\10214_\10215"
d250 v0 v1 v2 v3 = du250 v2
du250 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Algebra.RingSolver.du324 v0
      (coe
         MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.du568 v0)
      v2 v3
name252 = "Algebra.RingSolver.Simple._.\10214_\10215H"
d252 v0 v1 v2 v3
  = coe
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
      v3
name254 = "Algebra.RingSolver.Simple._.\10214_\10215H-cong"
d254 v0 v1 v2 v3 v4 v5 v6 v7 v8
  = coe
      MAlonzo.Code.Algebra.RingSolver.du546 v0 v0 v1
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
      v3 v4 v7 v8
name256 = "Algebra.RingSolver.Simple._.\10214_\10215N"
d256 v0 v1 v2 v3 v4 v5 v6
  = coe
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
      v3 v5 v6
name258 = "Algebra.RingSolver.Simple._.\10214_\10215N-cong"
d258 v0 v1 v2 v3 v4 v5 v6 v7 v8
  = coe
      MAlonzo.Code.Algebra.RingSolver.du556 v0 v0 v1
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
      v3 v7 v8
name260 = "Algebra.RingSolver.Simple._.\10214_\10215\8595"
d260 v0 v1 v2 v3
  = coe
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
      v3