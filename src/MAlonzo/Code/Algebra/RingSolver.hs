{-# LANGUAGE EmptyDataDecls, ExistentialQuantification,
             ScopedTypeVariables, NoMonomorphismRestriction, Rank2Types #-}
module MAlonzo.Code.Algebra.RingSolver where

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
import qualified MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing
import qualified MAlonzo.Code.Algebra.RingSolver.Lemmas
import qualified MAlonzo.Code.Algebra.Structures
import qualified MAlonzo.Code.Data.Fin
import qualified MAlonzo.Code.Data.Product
import qualified MAlonzo.Code.Data.Vec
import qualified MAlonzo.Code.Function
import qualified MAlonzo.Code.Relation.Binary
import qualified MAlonzo.Code.Relation.Binary.Core
import qualified MAlonzo.Code.Relation.Binary.PreorderReasoning
import qualified MAlonzo.Code.Relation.Binary.Reflection
import qualified MAlonzo.Code.Relation.Nullary

name20 = "Algebra.RingSolver._.lemma\8320"
d20 v0 v1 v2 v3 v4 v5 v6 = du20 v4
du20 v0 = coe MAlonzo.Code.Algebra.RingSolver.Lemmas.du176 v0
name22 = "Algebra.RingSolver._.lemma\8321"
d22 v0 v1 v2 v3 v4 v5 v6 = du22 v4
du22 v0 = coe MAlonzo.Code.Algebra.RingSolver.Lemmas.du196 v0
name24 = "Algebra.RingSolver._.lemma\8322"
d24 v0 v1 v2 v3 v4 v5 v6 = du24 v4
du24 v0 = coe MAlonzo.Code.Algebra.RingSolver.Lemmas.du216 v0
name26 = "Algebra.RingSolver._.lemma\8323"
d26 v0 v1 v2 v3 v4 v5 v6 = du26 v4
du26 v0 = coe MAlonzo.Code.Algebra.RingSolver.Lemmas.du240 v0
name28 = "Algebra.RingSolver._.lemma\8324"
d28 v0 v1 v2 v3 v4 v5 v6 = du28 v4
du28 v0 = coe MAlonzo.Code.Algebra.RingSolver.Lemmas.du260 v0
name30 = "Algebra.RingSolver._.lemma\8325"
d30 v0 v1 v2 v3 v4 v5 v6 = du30 v4
du30 v0 = coe MAlonzo.Code.Algebra.RingSolver.Lemmas.du284 v0
name32 = "Algebra.RingSolver._.lemma\8326"
d32 v0 v1 v2 v3 v4 v5 v6 = du32 v4
du32 v0 = coe MAlonzo.Code.Algebra.RingSolver.Lemmas.du292 v0
name34 = "Algebra.RingSolver._.lemma\8327"
d34 v0 v1 v2 v3 v4 v5 v6 = du34 v4
du34 v0 = coe MAlonzo.Code.Algebra.RingSolver.Lemmas.du300 v0
name38 = "Algebra.RingSolver.C._*_"
d38 v0 v1 v2 v3 v4 v5 v6 = du38 v3
du38 v0 = coe MAlonzo.Code.Algebra.d1036 v0
name40 = "Algebra.RingSolver.C._+_"
d40 v0 v1 v2 v3 v4 v5 v6 = du40 v3
du40 v0 = coe MAlonzo.Code.Algebra.d1034 v0
name42 = "Algebra.RingSolver.C.-_"
d42 v0 v1 v2 v3 v4 v5 v6 = du42 v3
du42 v0 = coe MAlonzo.Code.Algebra.d1038 v0
name44 = "Algebra.RingSolver.C.0#"
d44 v0 v1 v2 v3 v4 v5 v6 = du44 v3
du44 v0 = coe MAlonzo.Code.Algebra.d1040 v0
name46 = "Algebra.RingSolver.C.1#"
d46 v0 v1 v2 v3 v4 v5 v6 = du46 v3
du46 v0 = coe MAlonzo.Code.Algebra.d1042 v0
name48 = "Algebra.RingSolver.C.Carrier"
d48 = erased
name52 = "Algebra.RingSolver._._*_"
d52 v0 v1 v2 v3 v4 v5 v6 = du52 v4
du52 v0
  = coe MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166 v0
name54 = "Algebra.RingSolver._._+_"
d54 v0 v1 v2 v3 v4 v5 v6 = du54 v4
du54 v0
  = coe MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d164 v0
name56 = "Algebra.RingSolver._._\8776_"
d56 = erased
name64 = "Algebra.RingSolver._.\8729-cong"
d64 v0 v1 v2 v3 v4 v5 v6 = du64 v4
du64 v0
  = let v1
          = coe
              MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d164 v0 in
    let v2
          = coe
              MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166 v0 in
    let v3
          = coe
              MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d170 v0 in
    let v4
          = coe
              MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d172 v0 in
    let v5
          = coe
              MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d174 v0 in
    let v6
          = coe
              MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d60 v5 in
    coe
      MAlonzo.Code.Algebra.Structures.d144
      (coe
         MAlonzo.Code.Algebra.Structures.d294
         (coe
            MAlonzo.Code.Algebra.Structures.d1544
            (coe
               MAlonzo.Code.Algebra.Structures.d1728
               (coe MAlonzo.Code.Algebra.Structures.du2214 v1 v2 v3 v4 v6))))
name84 = "Algebra.RingSolver._.\8729-cong"
d84 v0 v1 v2 v3 v4 v5 v6 = du84 v4
du84 v0
  = let v1
          = coe
              MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d164 v0 in
    let v2
          = coe
              MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166 v0 in
    let v3
          = coe
              MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d170 v0 in
    let v4
          = coe
              MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d172 v0 in
    let v5
          = coe
              MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d174 v0 in
    let v6
          = coe
              MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d60 v5 in
    coe
      MAlonzo.Code.Algebra.Structures.d144
      (coe
         MAlonzo.Code.Algebra.Structures.d454
         (coe
            MAlonzo.Code.Algebra.Structures.d1542
            (coe
               MAlonzo.Code.Algebra.Structures.d1728
               (coe MAlonzo.Code.Algebra.Structures.du2214 v1 v2 v3 v4 v6))))
name86 = "Algebra.RingSolver._.identity"
d86 v0 v1 v2 v3 v4 v5 v6 = du86 v4
du86 v0
  = let v1
          = coe
              MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d164 v0 in
    let v2
          = coe
              MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166 v0 in
    let v3
          = coe
              MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d170 v0 in
    let v4
          = coe
              MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d172 v0 in
    let v5
          = coe
              MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d174 v0 in
    let v6
          = coe
              MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d60 v5 in
    let v7
          = coe MAlonzo.Code.Algebra.Structures.du2214 v1 v2 v3 v4 v6 in
    let v8 = coe MAlonzo.Code.Algebra.Structures.d1728 v7 in
    coe
      MAlonzo.Code.Algebra.Structures.du476 v1 v3
      (coe MAlonzo.Code.Algebra.Structures.d1542 v8)
name98 = "Algebra.RingSolver._.-_"
d98 v0 v1 v2 v3 v4 v5 v6 = du98 v4
du98 v0
  = coe MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d168 v0
name104 = "Algebra.RingSolver._.-\8255cong"
d104 v0 v1 v2 v3 v4 v5 v6 = du104 v4
du104 v0
  = coe
      MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d62
      (coe MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d174 v0)
name106 = "Algebra.RingSolver._.0#"
d106 v0 v1 v2 v3 v4 v5 v6 = du106 v4
du106 v0
  = coe MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d170 v0
name108 = "Algebra.RingSolver._.1#"
d108 v0 v1 v2 v3 v4 v5 v6 = du108 v4
du108 v0
  = coe MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d172 v0
name110 = "Algebra.RingSolver._.Carrier"
d110 = erased
name136 = "Algebra.RingSolver._.refl"
d136 v0 v1 v2 v3 v4 v5 v6 = du136 v4
du136 v0
  = let v1
          = coe
              MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d164 v0 in
    let v2
          = coe
              MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166 v0 in
    let v3
          = coe
              MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d170 v0 in
    let v4
          = coe
              MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d172 v0 in
    let v5
          = coe
              MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d174 v0 in
    let v6
          = coe
              MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d60 v5 in
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
name140 = "Algebra.RingSolver._.semiring"
d140 v0 v1 v2 v3 v4 v5 v6 = du140 v4
du140 v0
  = coe
      MAlonzo.Code.Algebra.du984
      (coe
         MAlonzo.Code.Algebra.C463
         (coe MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d164 v0)
         (coe MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166 v0)
         (coe MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d170 v0)
         (coe MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d172 v0)
         (coe
            MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d60
            (coe
               MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d174 v0)))
name142 = "Algebra.RingSolver._.setoid"
d142 v0 v1 v2 v3 v4 v5 v6 = du142 v4
du142 v0
  = let v1
          = coe
              MAlonzo.Code.Algebra.C463
              (coe MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d164 v0)
              (coe MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166 v0)
              (coe MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d170 v0)
              (coe MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d172 v0)
              (coe
                 MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d60
                 (coe
                    MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d174 v0)) in
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
name144 = "Algebra.RingSolver._.sym"
d144 v0 v1 v2 v3 v4 v5 v6 = du144 v4
du144 v0
  = let v1
          = coe
              MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d164 v0 in
    let v2
          = coe
              MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166 v0 in
    let v3
          = coe
              MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d170 v0 in
    let v4
          = coe
              MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d172 v0 in
    let v5
          = coe
              MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d174 v0 in
    let v6
          = coe
              MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d60 v5 in
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
name146 = "Algebra.RingSolver._.trans"
d146 v0 v1 v2 v3 v4 v5 v6 = du146 v4
du146 v0
  = let v1
          = coe
              MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d164 v0 in
    let v2
          = coe
              MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166 v0 in
    let v3
          = coe
              MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d170 v0 in
    let v4
          = coe
              MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d172 v0 in
    let v5
          = coe
              MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d174 v0 in
    let v6
          = coe
              MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d60 v5 in
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
name148 = "Algebra.RingSolver._.zero"
d148 v0 v1 v2 v3 v4 v5 v6 = du148 v4
du148 v0
  = let v1
          = coe
              MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166 v0 in
    let v2
          = coe
              MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d170 v0 in
    let v3
          = coe
              MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d174 v0 in
    coe
      MAlonzo.Code.Algebra.Structures.du2204 v1 v2
      (coe MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d60 v3)
name204 = "Algebra.RingSolver._.Core.Op\8322"
d204 = erased
name208 = "Algebra.RingSolver._.*-homo"
d208 v0 v1 v2 v3 v4 v5 v6 = du208 v5
du208 v0
  = coe MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d554 v0
name210 = "Algebra.RingSolver._.+-homo"
d210 v0 v1 v2 v3 v4 v5 v6 = du210 v5
du210 v0
  = coe MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d552 v0
name212 = "Algebra.RingSolver._.-\8255homo"
d212 v0 v1 v2 v3 v4 v5 v6 = du212 v5
du212 v0
  = coe MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d556 v0
name214 = "Algebra.RingSolver._.0-homo"
d214 v0 v1 v2 v3 v4 v5 v6 = du214 v5
du214 v0
  = coe MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d558 v0
name216 = "Algebra.RingSolver._.1-homo"
d216 v0 v1 v2 v3 v4 v5 v6 = du216 v5
du216 v0
  = coe MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d560 v0
name218 = "Algebra.RingSolver._.\10214_\10215"
d218 v0 v1 v2 v3 v4 v5 v6 = du218 v5
du218 v0
  = coe MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d550 v0
name222 = "Algebra.RingSolver._._^_"
d222 v0 v1 v2 v3 v4 v5 v6 = du222 v4
du222 v0
  = coe
      MAlonzo.Code.Algebra.Operations.du130
      (coe
         MAlonzo.Code.Algebra.du984
         (coe
            MAlonzo.Code.Algebra.C463
            (coe MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d164 v0)
            (coe MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166 v0)
            (coe MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d170 v0)
            (coe MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d172 v0)
            (coe
               MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d60
               (coe
                  MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d174 v0))))
name230 = "Algebra.RingSolver._.^-cong"
d230 v0 v1 v2 v3 v4 v5 v6 = du230 v4
du230 v0 v1 v2 v3 v4 v5 v6
  = coe
      MAlonzo.Code.Algebra.Operations.du260
      (coe
         MAlonzo.Code.Algebra.du984
         (coe
            MAlonzo.Code.Algebra.C463
            (coe MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d164 v0)
            (coe MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166 v0)
            (coe MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d170 v0)
            (coe MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d172 v0)
            (coe
               MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d60
               (coe
                  MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d174 v0))))
      v1 v2 v3 v4 v5
name250 = "Algebra.RingSolver._._\8718"
d250 v0 v1 v2 v3 v4 v5 v6 = du250 v4
du250 v0
  = let v1
          = let v1
                  = coe
                      MAlonzo.Code.Algebra.C463
                      (coe MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d164 v0)
                      (coe MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166 v0)
                      (coe MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d170 v0)
                      (coe MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d172 v0)
                      (coe
                         MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d60
                         (coe
                            MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d174 v0)) in
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
                       MAlonzo.Code.Algebra.d100 (coe MAlonzo.Code.Algebra.du186 v4)))) in
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
name252 = "Algebra.RingSolver._._\8764\10216_\10217_"
d252 v0 v1 v2 v3 v4 v5 v6 = du252 v4
du252 v0
  = let v1
          = let v1
                  = coe
                      MAlonzo.Code.Algebra.C463
                      (coe MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d164 v0)
                      (coe MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166 v0)
                      (coe MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d170 v0)
                      (coe MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d172 v0)
                      (coe
                         MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d60
                         (coe
                            MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d174 v0)) in
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
                       MAlonzo.Code.Algebra.d100 (coe MAlonzo.Code.Algebra.du186 v4)))) in
    coe
      MAlonzo.Code.Relation.Binary.PreorderReasoning.du72
      (coe MAlonzo.Code.Relation.Binary.du150 v1)
name266 = "Algebra.RingSolver.Op"
d266 a0 a1 a2 a3 a4 a5 a6 = ()
data T266 = C268 | C270
name274 = "Algebra.RingSolver.Polynomial"
d274 a0 a1 a2 a3 a4 a5 a6 a7 = ()
data T274 a0 a1 a2
  = C284 a0 a1 a2 | C288 a0 | C292 a0 | C298 a0 a1 | C302 a0
name306 = "Algebra.RingSolver._:+_"
d306 = coe C284 C268
name310 = "Algebra.RingSolver._:*_"
d310 = coe C284 C270
name314 = "Algebra.RingSolver._:-_"
d314 v0 v1 = coe C284 C268 v0 (coe C302 v1)
name320 = "Algebra.RingSolver.sem"
d320 v0 v1 v2 v3 v4 v5 v6 v7 = du320 v4 v7
du320 v0 v1
  = case coe v1 of
      C268
        -> coe
             MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d164 v0
      C270
        -> coe
             MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166 v0
      _ -> coe MAlonzo.RTE.mazUnreachableError
name324 = "Algebra.RingSolver.\10214_\10215"
d324 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 = du324 v4 v5 v8 v9
du324 v0 v1 v2 v3
  = case coe v2 of
      C284 v4 v5 v6
        -> coe
             MAlonzo.Code.Function.du176 (coe du324 v0 v1 v5 v3)
             (coe du320 v0 v4) (coe du324 v0 v1 v6 v3)
      C288 v4
        -> coe
             MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d550 v1 v4
      C292 v4 -> coe MAlonzo.Code.Data.Vec.du714 v4 v3
      C298 v4 v5
        -> coe
             MAlonzo.Code.Algebra.Operations.du130
             (coe
                MAlonzo.Code.Algebra.du984
                (coe
                   MAlonzo.Code.Algebra.C463
                   (coe MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d164 v0)
                   (coe MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166 v0)
                   (coe MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d170 v0)
                   (coe MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d172 v0)
                   (coe
                      MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d60
                      (coe
                         MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d174 v0))))
             (coe du324 v0 v1 v4 v3) v5
      C302 v4
        -> coe
             MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d168 v0
             (coe du324 v0 v1 v4 v3)
      _ -> coe MAlonzo.RTE.mazUnreachableError
name352 = "Algebra.RingSolver.HNF"
d352 a0 a1 a2 a3 a4 a5 a6 a7 = ()
data T352 a0 a1 a2 = C358 a0 | C362 a0 a1 a2
name354 = "Algebra.RingSolver.Normal"
d354 a0 a1 a2 a3 a4 a5 a6 a7 = ()
data T354 a0 a1 = C364 a0 | C368 a0 a1
name372 = "Algebra.RingSolver.\10214_\10215H"
d372 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9
  = case coe v8 of
      C358 v10
        -> coe
             MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d170 v4
      C362 v10 v11 v12
        -> case coe v9 of
             MAlonzo.Code.Data.Vec.C22 v13 v14 v15
               -> coe
                    MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d164 v4
                    (coe
                       MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166 v4
                       (coe
                          d372 v0 v1 v2 v3 v4 v5 v6 v7 v11
                          (coe MAlonzo.Code.Data.Vec.C22 v7 v14 v15))
                       v14)
                    (coe du376 v0 v1 v2 v3 v4 v5 v6 v12 v15)
             _ -> coe MAlonzo.RTE.mazUnreachableError
      _ -> coe MAlonzo.RTE.mazUnreachableError
name376 = "Algebra.RingSolver.\10214_\10215N"
d376 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9
  = du376 v0 v1 v2 v3 v4 v5 v6 v8 v9
du376 v0 v1 v2 v3 v4 v5 v6 v7 v8
  = case coe v7 of
      C364 v9
        -> coe
             MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d550 v5 v9
      C368 v9 v10 -> coe d372 v0 v1 v2 v3 v4 v5 v6 v9 v10 v8
      _ -> coe MAlonzo.RTE.mazUnreachableError
name394 = "Algebra.RingSolver._\8776H_"
d394 a0 a1 a2 a3 a4 a5 a6 a7 a8 a9 = ()
data T394 a0 a1 a2 a3 a4 a5 a6
  = C402 a0 | C414 a0 a1 a2 a3 a4 a5 a6
name398 = "Algebra.RingSolver._\8776N_"
d398 a0 a1 a2 a3 a4 a5 a6 a7 a8 a9 = ()
data T398 a0 a1 a2 a3 = C420 a0 a1 a2 | C428 a0 a1 a2 a3
name432 = "Algebra.RingSolver._\8799H_"
d432 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9
  = du432 v0 v1 v2 v3 v4 v5 v6 v8 v9
du432 v0 v1 v2 v3 v4 v5 v6 v7 v8
  = case coe v7 of
      C358 v9
        -> case coe v8 of
             C358 v10 -> coe MAlonzo.Code.Relation.Nullary.C22 (coe C402 v9)
             C362 v10 v11 v12 -> coe MAlonzo.Code.Relation.Nullary.C26
             _ -> coe MAlonzo.RTE.mazUnreachableError
      C362 v9 v10 v11
        -> case coe v8 of
             C358 v12 -> coe MAlonzo.Code.Relation.Nullary.C26
             C362 v12 v13 v14
               -> let v15 = coe du432 v0 v1 v2 v3 v4 v5 v6 v10 v13 in
                  let v16 = coe du436 v0 v1 v2 v3 v4 v5 v6 v11 v14 in
                  case coe v15 of
                    MAlonzo.Code.Relation.Nullary.C22 v17
                      -> case coe v16 of
                           MAlonzo.Code.Relation.Nullary.C22 v18
                             -> coe
                                  MAlonzo.Code.Relation.Nullary.C22
                                  (coe C414 v9 v10 v13 v11 v14 v17 v18)
                           MAlonzo.Code.Relation.Nullary.C26
                             -> coe MAlonzo.Code.Relation.Nullary.C26
                           _ -> coe MAlonzo.RTE.mazUnreachableError
                    MAlonzo.Code.Relation.Nullary.C26
                      -> let v18 = coe MAlonzo.Code.Relation.Nullary.C26 in
                         case coe v16 of
                           MAlonzo.Code.Relation.Nullary.C26
                             -> coe MAlonzo.Code.Relation.Nullary.C26
                           _ -> coe v18
                    _ -> coe MAlonzo.RTE.mazUnreachableError
             _ -> coe MAlonzo.RTE.mazUnreachableError
      _ -> coe MAlonzo.RTE.mazUnreachableError
name436 = "Algebra.RingSolver._\8799N_"
d436 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9
  = du436 v0 v1 v2 v3 v4 v5 v6 v8 v9
du436 v0 v1 v2 v3 v4 v5 v6 v7 v8
  = case coe v7 of
      C364 v9
        -> case coe v8 of
             C364 v10
               -> let v11 = coe v6 v9 v10 in
                  case coe v11 of
                    MAlonzo.Code.Relation.Nullary.C22 v12
                      -> coe MAlonzo.Code.Relation.Nullary.C22 (coe C420 v9 v10 v12)
                    MAlonzo.Code.Relation.Nullary.C26
                      -> coe MAlonzo.Code.Relation.Nullary.C26
                    _ -> coe MAlonzo.RTE.mazUnreachableError
             _ -> coe MAlonzo.RTE.mazUnreachableError
      C368 v9 v10
        -> case coe v8 of
             C368 v11 v12
               -> let v13 = coe du432 v0 v1 v2 v3 v4 v5 v6 v10 v12 in
                  case coe v13 of
                    MAlonzo.Code.Relation.Nullary.C22 v14
                      -> coe MAlonzo.Code.Relation.Nullary.C22 (coe C428 v9 v10 v12 v14)
                    MAlonzo.Code.Relation.Nullary.C26
                      -> coe MAlonzo.Code.Relation.Nullary.C26
                    _ -> coe MAlonzo.RTE.mazUnreachableError
             _ -> coe MAlonzo.RTE.mazUnreachableError
      _ -> coe MAlonzo.RTE.mazUnreachableError
name546 = "Algebra.RingSolver.\10214_\10215H-cong"
d546 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11
  = du546 v0 v1 v2 v3 v4 v5 v6 v7 v10 v11
du546 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9
  = case coe v8 of
      C402 v10
        -> let v11
                 = coe
                     MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d164 v4 in
           let v12
                 = coe
                     MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166 v4 in
           let v13
                 = coe
                     MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d170 v4 in
           let v14
                 = coe
                     MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d172 v4 in
           let v15
                 = coe
                     MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d174 v4 in
           let v16
                 = coe
                     MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d60 v15 in
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
                         (coe
                            MAlonzo.Code.Algebra.Structures.du2214 v11 v12 v13 v14 v16)))))
             (coe d372 v0 v1 v2 v3 v4 v5 v6 v7 (coe C358 v7) v9)
      C414 v10 v11 v12 v13 v14 v15 v16
        -> case coe v9 of
             MAlonzo.Code.Data.Vec.C22 v17 v18 v19
               -> coe
                    MAlonzo.Code.Function.du176
                    (coe
                       MAlonzo.Code.Function.du176
                       (coe
                          du546 v0 v1 v2 v3 v4 v5 v6 v7 v15
                          (coe MAlonzo.Code.Data.Vec.C22 v7 v18 v19))
                       (let v20
                              = coe
                                  MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d164 v4 in
                        let v21
                              = coe
                                  MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166 v4 in
                        let v22
                              = coe
                                  MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d170 v4 in
                        let v23
                              = coe
                                  MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d172 v4 in
                        let v24
                              = coe
                                  MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d174 v4 in
                        let v25
                              = coe
                                  MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d60 v24 in
                        MAlonzo.Code.Algebra.Structures.d144
                          (MAlonzo.Code.Algebra.Structures.d294
                             (MAlonzo.Code.Algebra.Structures.d1544
                                (MAlonzo.Code.Algebra.Structures.d1728
                                   (MAlonzo.Code.Algebra.Structures.du2214 v20 v21 v22 v23 v25))))
                          (d372
                             v0 v1 v2 v3 v4 v5 v6 v7 v11 (MAlonzo.Code.Data.Vec.C22 v7 v18 v19))
                          (d372
                             v0 v1 v2 v3 v4 v5 v6 v7 v12 (MAlonzo.Code.Data.Vec.C22 v7 v18 v19))
                          v18 v18)
                       (let v20
                              = coe
                                  MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d164 v4 in
                        let v21
                              = coe
                                  MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166 v4 in
                        let v22
                              = coe
                                  MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d170 v4 in
                        let v23
                              = coe
                                  MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d172 v4 in
                        let v24
                              = coe
                                  MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d174 v4 in
                        let v25
                              = coe
                                  MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d60 v24 in
                        MAlonzo.Code.Relation.Binary.Core.d516
                          (MAlonzo.Code.Algebra.Structures.d140
                             (MAlonzo.Code.Algebra.Structures.d454
                                (MAlonzo.Code.Algebra.Structures.d1542
                                   (MAlonzo.Code.Algebra.Structures.d1728
                                      (MAlonzo.Code.Algebra.Structures.du2214
                                         v20 v21 v22 v23 v25)))))
                          v18))
                    (let v20
                           = coe
                               MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d164 v4 in
                     let v21
                           = coe
                               MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166 v4 in
                     let v22
                           = coe
                               MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d170 v4 in
                     let v23
                           = coe
                               MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d172 v4 in
                     let v24
                           = coe
                               MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d174 v4 in
                     let v25
                           = coe
                               MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d60 v24 in
                     MAlonzo.Code.Algebra.Structures.d144
                       (MAlonzo.Code.Algebra.Structures.d454
                          (MAlonzo.Code.Algebra.Structures.d1542
                             (MAlonzo.Code.Algebra.Structures.d1728
                                (MAlonzo.Code.Algebra.Structures.du2214 v20 v21 v22 v23 v25))))
                       (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                          v4
                          (d372
                             v0 v1 v2 v3 v4 v5 v6 v7 v11 (MAlonzo.Code.Data.Vec.C22 v7 v18 v19))
                          v18)
                       (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                          v4
                          (d372
                             v0 v1 v2 v3 v4 v5 v6 v7 v12 (MAlonzo.Code.Data.Vec.C22 v7 v18 v19))
                          v18)
                       (du376 v0 v1 v2 v3 v4 v5 v6 v13 v19)
                       (du376 v0 v1 v2 v3 v4 v5 v6 v14 v19))
                    (coe du556 v0 v1 v2 v3 v4 v5 v6 v16 v19)
             _ -> coe MAlonzo.RTE.mazUnreachableError
      _ -> coe MAlonzo.RTE.mazUnreachableError
name556 = "Algebra.RingSolver.\10214_\10215N-cong"
d556 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11
  = du556 v0 v1 v2 v3 v4 v5 v6 v10 v11
du556 v0 v1 v2 v3 v4 v5 v6 v7 v8
  = case coe v7 of
      C420 v9 v10 v11 -> coe v11
      C428 v9 v10 v11 v12 -> coe du546 v0 v1 v2 v3 v4 v5 v6 v9 v12 v8
      _ -> coe MAlonzo.RTE.mazUnreachableError
name574 = "Algebra.RingSolver.0H"
d574 v0 v1 v2 = du574 v2
du574 v0 = coe C358 v0
name578 = "Algebra.RingSolver.0N"
d578 v0 v1 v2 v3 v4 v5 v6 v7 = du578 v3 v7
du578 v0 v1
  = case coe v1 of
      0 -> coe C364 (coe MAlonzo.Code.Algebra.d1040 v0)
      _ -> let v2 = coe subInt v1 (1 :: Integer) in
           coe C368 v2 (coe C358 v2)
name584 = "Algebra.RingSolver.1H"
d584 v0 v1 v2 v3 v4 v5 v6 v7
  = coe C362 v7 (coe C358 v7) (coe d588 v0 v1 v2 v3 v4 v5 v6 v7)
name588 = "Algebra.RingSolver.1N"
d588 v0 v1 v2 v3 v4 v5 v6 v7
  = case coe v7 of
      0 -> coe C364 (coe MAlonzo.Code.Algebra.d1042 v3)
      _ -> let v8 = coe subInt v7 (1 :: Integer) in
           coe C368 v8 (coe d584 v0 v1 v2 v3 v4 v5 v6 v8)
name596 = "Algebra.RingSolver._*x+HN_"
d596 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9
  = case coe v8 of
      C358 v10
        -> let v11 = coe du436 v0 v1 v2 v3 v4 v5 v6 v9 (coe du578 v3 v7) in
           case coe v11 of
             MAlonzo.Code.Relation.Nullary.C22 v12 -> coe C358 v7
             MAlonzo.Code.Relation.Nullary.C26 -> coe C362 v7 (coe C358 v7) v9
             _ -> coe MAlonzo.RTE.mazUnreachableError
      C362 v10 v11 v12 -> coe C362 v7 (coe C362 v7 v11 v12) v9
      _ -> coe MAlonzo.RTE.mazUnreachableError
name620 = "Algebra.RingSolver._+H_"
d620 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9
  = case coe v8 of
      C358 v10 -> coe v9
      C362 v10 v11 v12
        -> case coe v9 of
             C358 v13 -> coe v8
             C362 v13 v14 v15
               -> coe
                    d596 v0 v1 v2 v3 v4 v5 v6 v7
                    (coe d620 v0 v1 v2 v3 v4 v5 v6 v7 v11 v14)
                    (coe du624 v0 v1 v2 v3 v4 v5 v6 v12 v15)
             _ -> coe MAlonzo.RTE.mazUnreachableError
      _ -> coe MAlonzo.RTE.mazUnreachableError
name624 = "Algebra.RingSolver._+N_"
d624 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9
  = du624 v0 v1 v2 v3 v4 v5 v6 v8 v9
du624 v0 v1 v2 v3 v4 v5 v6 v7 v8
  = case coe v7 of
      C364 v9
        -> case coe v8 of
             C364 v10 -> coe C364 (coe MAlonzo.Code.Algebra.d1034 v3 v9 v10)
             _ -> coe MAlonzo.RTE.mazUnreachableError
      C368 v9 v10
        -> case coe v8 of
             C368 v11 v12
               -> coe C368 v9 (coe d620 v0 v1 v2 v3 v4 v5 v6 v9 v10 v12)
             _ -> coe MAlonzo.RTE.mazUnreachableError
      _ -> coe MAlonzo.RTE.mazUnreachableError
name648 = "Algebra.RingSolver._*x+H_"
d648 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9
  = case coe v9 of
      C358 v10
        -> case coe v8 of
             C358 v11 -> coe C358 v7
             C362 v11 v12 v13
               -> coe C362 v7 (coe C362 v7 v12 v13) (coe du578 v3 v7)
             _ -> coe MAlonzo.RTE.mazUnreachableError
      C362 v10 v11 v12
        -> coe
             d596 v0 v1 v2 v3 v4 v5 v6 v7
             (coe d620 v0 v1 v2 v3 v4 v5 v6 v7 v8 v11) v12
      _ -> coe MAlonzo.RTE.mazUnreachableError
name662 = "Algebra.RingSolver._*NH_"
d662 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9
  = case coe v9 of
      C358 v10 -> coe C358 v7
      C362 v10 v11 v12
        -> let v13 = coe du436 v0 v1 v2 v3 v4 v5 v6 v8 (coe du578 v3 v7) in
           case coe v13 of
             MAlonzo.Code.Relation.Nullary.C22 v14 -> coe C358 v7
             MAlonzo.Code.Relation.Nullary.C26
               -> coe
                    C362 v7 (coe d662 v0 v1 v2 v3 v4 v5 v6 v7 v8 v11)
                    (coe du674 v0 v1 v2 v3 v4 v5 v6 v8 v12)
             _ -> coe MAlonzo.RTE.mazUnreachableError
      _ -> coe MAlonzo.RTE.mazUnreachableError
name666 = "Algebra.RingSolver._*HN_"
d666 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9
  = case coe v8 of
      C358 v10 -> coe C358 v7
      C362 v10 v11 v12
        -> let v13 = coe du436 v0 v1 v2 v3 v4 v5 v6 v9 (coe du578 v3 v7) in
           case coe v13 of
             MAlonzo.Code.Relation.Nullary.C22 v14 -> coe C358 v7
             MAlonzo.Code.Relation.Nullary.C26
               -> coe
                    C362 v7 (coe d666 v0 v1 v2 v3 v4 v5 v6 v7 v11 v9)
                    (coe du674 v0 v1 v2 v3 v4 v5 v6 v12 v9)
             _ -> coe MAlonzo.RTE.mazUnreachableError
      _ -> coe MAlonzo.RTE.mazUnreachableError
name670 = "Algebra.RingSolver._*H_"
d670 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9
  = case coe v8 of
      C358 v10 -> coe C358 v7
      C362 v10 v11 v12
        -> case coe v9 of
             C358 v13 -> coe C358 v7
             C362 v13 v14 v15
               -> coe
                    d596 v0 v1 v2 v3 v4 v5 v6 v7
                    (coe
                       d648 v0 v1 v2 v3 v4 v5 v6 v7
                       (coe d670 v0 v1 v2 v3 v4 v5 v6 v7 v11 v14)
                       (coe
                          d620 v0 v1 v2 v3 v4 v5 v6 v7
                          (coe d666 v0 v1 v2 v3 v4 v5 v6 v7 v11 v15)
                          (coe d662 v0 v1 v2 v3 v4 v5 v6 v7 v12 v14)))
                    (coe du674 v0 v1 v2 v3 v4 v5 v6 v12 v15)
             _ -> coe MAlonzo.RTE.mazUnreachableError
      _ -> coe MAlonzo.RTE.mazUnreachableError
name674 = "Algebra.RingSolver._*N_"
d674 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9
  = du674 v0 v1 v2 v3 v4 v5 v6 v8 v9
du674 v0 v1 v2 v3 v4 v5 v6 v7 v8
  = case coe v7 of
      C364 v9
        -> case coe v8 of
             C364 v10 -> coe C364 (coe MAlonzo.Code.Algebra.d1036 v3 v9 v10)
             _ -> coe MAlonzo.RTE.mazUnreachableError
      C368 v9 v10
        -> case coe v8 of
             C368 v11 v12
               -> coe C368 v9 (coe d670 v0 v1 v2 v3 v4 v5 v6 v9 v10 v12)
             _ -> coe MAlonzo.RTE.mazUnreachableError
      _ -> coe MAlonzo.RTE.mazUnreachableError
name750 = "Algebra.RingSolver._^N_"
d750 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9
  = case coe v9 of
      0 -> coe d588 v0 v1 v2 v3 v4 v5 v6 v7
      _ -> let v10 = coe subInt v9 (1 :: Integer) in
           coe
             du674 v0 v1 v2 v3 v4 v5 v6 v8
             (coe d750 v0 v1 v2 v3 v4 v5 v6 v7 v8 v10)
name760 = "Algebra.RingSolver.-H_"
d760 v0 v1 v2 v3 v4 v5 v6 v7 v8
  = coe
      d662 v0 v1 v2 v3 v4 v5 v6 v7
      (coe du764 v0 v1 v2 v3 v4 v5 v6 (coe d588 v0 v1 v2 v3 v4 v5 v6 v7))
      v8
name764 = "Algebra.RingSolver.-N_"
d764 v0 v1 v2 v3 v4 v5 v6 v7 v8 = du764 v0 v1 v2 v3 v4 v5 v6 v8
du764 v0 v1 v2 v3 v4 v5 v6 v7
  = case coe v7 of
      C364 v8 -> coe C364 (coe MAlonzo.Code.Algebra.d1038 v3 v8)
      C368 v8 v9 -> coe C368 v8 (coe d760 v0 v1 v2 v3 v4 v5 v6 v8 v9)
      _ -> coe MAlonzo.RTE.mazUnreachableError
name774 = "Algebra.RingSolver.normalise-con"
d774 v0 v1 v2 v3 v4 v5 v6 v7 v8
  = case coe v7 of
      0 -> coe C364 v8
      _ -> let v9 = coe subInt v7 (1 :: Integer) in
           coe
             C368 v9
             (coe
                d596 v0 v1 v2 v3 v4 v5 v6 v9 (coe C358 v9)
                (coe d774 v0 v1 v2 v3 v4 v5 v6 v9 v8))
name784 = "Algebra.RingSolver.normalise-var"
d784 v0 v1 v2 v3 v4 v5 v6 v7 v8 = du784 v0 v1 v2 v3 v4 v5 v6 v8
du784 v0 v1 v2 v3 v4 v5 v6 v7
  = case coe v7 of
      MAlonzo.Code.Data.Fin.C8 v8
        -> coe
             C368 v8
             (coe
                C362 v8
                (coe C362 v8 (coe C358 v8) (coe d588 v0 v1 v2 v3 v4 v5 v6 v8))
                (coe du578 v3 v8))
      MAlonzo.Code.Data.Fin.C14 v8 v9
        -> coe
             C368 v8
             (coe
                d596 v0 v1 v2 v3 v4 v5 v6 v8 (coe C358 v8)
                (coe du784 v0 v1 v2 v3 v4 v5 v6 v9))
      _ -> coe MAlonzo.RTE.mazUnreachableError
name790 = "Algebra.RingSolver.normalise"
d790 v0 v1 v2 v3 v4 v5 v6 v7 v8
  = case coe v8 of
      C284 v9 v10 v11
        -> case coe v9 of
             C268
               -> coe
                    du624 v0 v1 v2 v3 v4 v5 v6 (coe d790 v0 v1 v2 v3 v4 v5 v6 v7 v10)
                    (coe d790 v0 v1 v2 v3 v4 v5 v6 v7 v11)
             C270
               -> coe
                    du674 v0 v1 v2 v3 v4 v5 v6 (coe d790 v0 v1 v2 v3 v4 v5 v6 v7 v10)
                    (coe d790 v0 v1 v2 v3 v4 v5 v6 v7 v11)
             _ -> coe MAlonzo.RTE.mazUnreachableError
      C288 v9 -> coe d774 v0 v1 v2 v3 v4 v5 v6 v7 v9
      C292 v9 -> coe du784 v0 v1 v2 v3 v4 v5 v6 v9
      C298 v9 v10
        -> coe
             d750 v0 v1 v2 v3 v4 v5 v6 v7 (coe d790 v0 v1 v2 v3 v4 v5 v6 v7 v9)
             v10
      C302 v9
        -> coe
             du764 v0 v1 v2 v3 v4 v5 v6 (coe d790 v0 v1 v2 v3 v4 v5 v6 v7 v9)
      _ -> coe MAlonzo.RTE.mazUnreachableError
name812 = "Algebra.RingSolver.\10214_\10215\8595"
d812 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9
  = coe
      du376 v0 v1 v2 v3 v4 v5 v6 (coe d790 v0 v1 v2 v3 v4 v5 v6 v7 v8) v9
name822 = "Algebra.RingSolver.0N-homo"
d822 v0 v1 v2 v3 v4 v5 v6 v7 v8 = du822 v0 v1 v2 v3 v4 v5 v6 v8
du822 v0 v1 v2 v3 v4 v5 v6 v7
  = case coe v7 of
      MAlonzo.Code.Data.Vec.C14
        -> coe
             MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d558 v5
      MAlonzo.Code.Data.Vec.C22 v8 v9 v10
        -> let v11
                 = coe
                     MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d164 v4 in
           let v12
                 = coe
                     MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166 v4 in
           let v13
                 = coe
                     MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d170 v4 in
           let v14
                 = coe
                     MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d172 v4 in
           let v15
                 = coe
                     MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d174 v4 in
           let v16
                 = coe
                     MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d60 v15 in
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
                         (coe
                            MAlonzo.Code.Algebra.Structures.du2214 v11 v12 v13 v14 v16)))))
             (coe
                du376 v0 v1 v2 v3 v4 v5 v6
                (coe du578 v3 (coe addInt (1 :: Integer) v8)) v7)
      _ -> coe MAlonzo.RTE.mazUnreachableError
name834 = "Algebra.RingSolver.0\8776\10214\&0\10215"
d834 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10
  = let v11
          = coe
              MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d164 v4 in
    let v12
          = coe
              MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166 v4 in
    let v13
          = coe
              MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d170 v4 in
    let v14
          = coe
              MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d172 v4 in
    let v15
          = coe
              MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d174 v4 in
    let v16
          = coe
              MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d60 v15 in
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
                  (coe
                     MAlonzo.Code.Algebra.Structures.du2214 v11 v12 v13 v14 v16)))))
      (coe du376 v0 v1 v2 v3 v4 v5 v6 v8 v10)
      (coe MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d170 v4)
      (coe
         MAlonzo.Code.Relation.Binary.PreorderReasoning.d62
         (let v17
                = let v17
                        = coe
                            MAlonzo.Code.Algebra.C463
                            (coe MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d164 v4)
                            (coe MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166 v4)
                            (coe MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d170 v4)
                            (coe MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d172 v4)
                            (coe
                               MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d60
                               (coe
                                  MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d174 v4)) in
                  let v18 = coe MAlonzo.Code.Algebra.du984 v17 in
                  let v19
                        = coe
                            MAlonzo.Code.Algebra.C333 (coe MAlonzo.Code.Algebra.d712 v18)
                            (coe MAlonzo.Code.Algebra.d714 v18)
                            (coe MAlonzo.Code.Algebra.d716 v18)
                            (coe MAlonzo.Code.Algebra.d718 v18)
                            (coe
                               MAlonzo.Code.Algebra.Structures.d1728
                               (coe MAlonzo.Code.Algebra.d720 v18)) in
                  let v20
                        = coe
                            MAlonzo.Code.Algebra.C97 (coe MAlonzo.Code.Algebra.d616 v19)
                            (coe MAlonzo.Code.Algebra.d620 v19)
                            (coe
                               MAlonzo.Code.Algebra.Structures.d1542
                               (coe MAlonzo.Code.Algebra.d624 v19)) in
                  coe
                    MAlonzo.Code.Relation.Binary.C143
                    (coe
                       MAlonzo.Code.Algebra.Structures.d140
                       (coe
                          MAlonzo.Code.Algebra.Structures.d294
                          (coe
                             MAlonzo.Code.Algebra.d100
                             (coe MAlonzo.Code.Algebra.du186 v20)))) in
          MAlonzo.Code.Relation.Binary.PreorderReasoning.du72
            (MAlonzo.Code.Relation.Binary.du150 v17)
            (du376 v0 v1 v2 v3 v4 v5 v6 v8 v10)
            (du376 v0 v1 v2 v3 v4 v5 v6 (du578 v3 v7) v10)
            (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d170 v4)
            (du556 v0 v1 v2 v3 v4 v5 v6 v9 v10)
            (let v18
                   = let v18
                           = coe
                               MAlonzo.Code.Algebra.C463
                               (coe MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d164 v4)
                               (coe MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166 v4)
                               (coe MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d170 v4)
                               (coe MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d172 v4)
                               (coe
                                  MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d60
                                  (coe
                                     MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d174
                                     v4)) in
                     let v19 = coe MAlonzo.Code.Algebra.du984 v18 in
                     let v20
                           = coe
                               MAlonzo.Code.Algebra.C333 (coe MAlonzo.Code.Algebra.d712 v19)
                               (coe MAlonzo.Code.Algebra.d714 v19)
                               (coe MAlonzo.Code.Algebra.d716 v19)
                               (coe MAlonzo.Code.Algebra.d718 v19)
                               (coe
                                  MAlonzo.Code.Algebra.Structures.d1728
                                  (coe MAlonzo.Code.Algebra.d720 v19)) in
                     let v21
                           = coe
                               MAlonzo.Code.Algebra.C97 (coe MAlonzo.Code.Algebra.d616 v20)
                               (coe MAlonzo.Code.Algebra.d620 v20)
                               (coe
                                  MAlonzo.Code.Algebra.Structures.d1542
                                  (coe MAlonzo.Code.Algebra.d624 v20)) in
                     coe
                       MAlonzo.Code.Relation.Binary.C143
                       (coe
                          MAlonzo.Code.Algebra.Structures.d140
                          (coe
                             MAlonzo.Code.Algebra.Structures.d294
                             (coe
                                MAlonzo.Code.Algebra.d100
                                (coe MAlonzo.Code.Algebra.du186 v21)))) in
             MAlonzo.Code.Relation.Binary.PreorderReasoning.du72
               (MAlonzo.Code.Relation.Binary.du150 v18)
               (du376 v0 v1 v2 v3 v4 v5 v6 (du578 v3 v7) v10)
               (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d170 v4)
               (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d170 v4)
               (du822 v0 v1 v2 v3 v4 v5 v6 v10)
               (let v19
                      = let v19
                              = coe
                                  MAlonzo.Code.Algebra.C463
                                  (coe
                                     MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d164 v4)
                                  (coe
                                     MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166 v4)
                                  (coe
                                     MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d170 v4)
                                  (coe
                                     MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d172 v4)
                                  (coe
                                     MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d60
                                     (coe
                                        MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d174
                                        v4)) in
                        let v20 = coe MAlonzo.Code.Algebra.du984 v19 in
                        let v21
                              = coe
                                  MAlonzo.Code.Algebra.C333 (coe MAlonzo.Code.Algebra.d712 v20)
                                  (coe MAlonzo.Code.Algebra.d714 v20)
                                  (coe MAlonzo.Code.Algebra.d716 v20)
                                  (coe MAlonzo.Code.Algebra.d718 v20)
                                  (coe
                                     MAlonzo.Code.Algebra.Structures.d1728
                                     (coe MAlonzo.Code.Algebra.d720 v20)) in
                        let v22
                              = coe
                                  MAlonzo.Code.Algebra.C97 (coe MAlonzo.Code.Algebra.d616 v21)
                                  (coe MAlonzo.Code.Algebra.d620 v21)
                                  (coe
                                     MAlonzo.Code.Algebra.Structures.d1542
                                     (coe MAlonzo.Code.Algebra.d624 v21)) in
                        coe
                          MAlonzo.Code.Relation.Binary.C143
                          (coe
                             MAlonzo.Code.Algebra.Structures.d140
                             (coe
                                MAlonzo.Code.Algebra.Structures.d294
                                (coe
                                   MAlonzo.Code.Algebra.d100
                                   (coe MAlonzo.Code.Algebra.du186 v22)))) in
                let v20
                      = coe
                          MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d170 v4 in
                MAlonzo.Code.Relation.Binary.PreorderReasoning.C56
                  (MAlonzo.Code.Relation.Binary.d38
                     (MAlonzo.Code.Relation.Binary.d92
                        (MAlonzo.Code.Relation.Binary.du150 v19))
                     v20 v20
                     (MAlonzo.Code.Relation.Binary.Core.d516
                        (MAlonzo.Code.Relation.Binary.d36
                           (MAlonzo.Code.Relation.Binary.d92
                              (MAlonzo.Code.Relation.Binary.du150 v19)))
                        v20))))))
name846 = "Algebra.RingSolver.1N-homo"
d846 v0 v1 v2 v3 v4 v5 v6 v7 v8 = du846 v0 v1 v2 v3 v4 v5 v6 v8
du846 v0 v1 v2 v3 v4 v5 v6 v7
  = case coe v7 of
      MAlonzo.Code.Data.Vec.C14
        -> coe
             MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d560 v5
      MAlonzo.Code.Data.Vec.C22 v8 v9 v10
        -> coe
             MAlonzo.Code.Relation.Binary.PreorderReasoning.d62
             (let v11
                    = let v11
                            = coe
                                MAlonzo.Code.Algebra.C463
                                (coe MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d164 v4)
                                (coe MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166 v4)
                                (coe MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d170 v4)
                                (coe MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d172 v4)
                                (coe
                                   MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d60
                                   (coe
                                      MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d174
                                      v4)) in
                      let v12 = coe MAlonzo.Code.Algebra.du984 v11 in
                      let v13
                            = coe
                                MAlonzo.Code.Algebra.C333 (coe MAlonzo.Code.Algebra.d712 v12)
                                (coe MAlonzo.Code.Algebra.d714 v12)
                                (coe MAlonzo.Code.Algebra.d716 v12)
                                (coe MAlonzo.Code.Algebra.d718 v12)
                                (coe
                                   MAlonzo.Code.Algebra.Structures.d1728
                                   (coe MAlonzo.Code.Algebra.d720 v12)) in
                      let v14
                            = coe
                                MAlonzo.Code.Algebra.C97 (coe MAlonzo.Code.Algebra.d616 v13)
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
                (MAlonzo.Code.Relation.Binary.du150 v11)
                (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d164
                   v4
                   (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                      v4 (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d170 v4)
                      v9)
                   (du376 v0 v1 v2 v3 v4 v5 v6 (d588 v0 v1 v2 v3 v4 v5 v6 v8) v10))
                (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d164
                   v4
                   (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                      v4 (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d170 v4)
                      v9)
                   (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d172 v4))
                (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d172 v4)
                (MAlonzo.Code.Function.du176
                   (let v12
                          = coe
                              MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d164 v4 in
                    let v13
                          = coe
                              MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166 v4 in
                    let v14
                          = coe
                              MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d170 v4 in
                    let v15
                          = coe
                              MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d172 v4 in
                    let v16
                          = coe
                              MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d174 v4 in
                    let v17
                          = coe
                              MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d60 v16 in
                    MAlonzo.Code.Relation.Binary.Core.d516
                      (MAlonzo.Code.Algebra.Structures.d140
                         (MAlonzo.Code.Algebra.Structures.d454
                            (MAlonzo.Code.Algebra.Structures.d1542
                               (MAlonzo.Code.Algebra.Structures.d1728
                                  (MAlonzo.Code.Algebra.Structures.du2214 v12 v13 v14 v15 v17)))))
                      (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                         v4 (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d170 v4)
                         v9))
                   (let v12
                          = coe
                              MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d164 v4 in
                    let v13
                          = coe
                              MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166 v4 in
                    let v14
                          = coe
                              MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d170 v4 in
                    let v15
                          = coe
                              MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d172 v4 in
                    let v16
                          = coe
                              MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d174 v4 in
                    let v17
                          = coe
                              MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d60 v16 in
                    MAlonzo.Code.Algebra.Structures.d144
                      (MAlonzo.Code.Algebra.Structures.d454
                         (MAlonzo.Code.Algebra.Structures.d1542
                            (MAlonzo.Code.Algebra.Structures.d1728
                               (MAlonzo.Code.Algebra.Structures.du2214 v12 v13 v14 v15 v17))))
                      (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                         v4 (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d170 v4)
                         v9)
                      (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                         v4 (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d170 v4)
                         v9)
                      (du376 v0 v1 v2 v3 v4 v5 v6 (d588 v0 v1 v2 v3 v4 v5 v6 v8) v10)
                      (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d172 v4))
                   (du846 v0 v1 v2 v3 v4 v5 v6 v10))
                (let v12
                       = let v12
                               = coe
                                   MAlonzo.Code.Algebra.C463
                                   (coe
                                      MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d164 v4)
                                   (coe
                                      MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166 v4)
                                   (coe
                                      MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d170 v4)
                                   (coe
                                      MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d172 v4)
                                   (coe
                                      MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d60
                                      (coe
                                         MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d174
                                         v4)) in
                         let v13 = coe MAlonzo.Code.Algebra.du984 v12 in
                         let v14
                               = coe
                                   MAlonzo.Code.Algebra.C333 (coe MAlonzo.Code.Algebra.d712 v13)
                                   (coe MAlonzo.Code.Algebra.d714 v13)
                                   (coe MAlonzo.Code.Algebra.d716 v13)
                                   (coe MAlonzo.Code.Algebra.d718 v13)
                                   (coe
                                      MAlonzo.Code.Algebra.Structures.d1728
                                      (coe MAlonzo.Code.Algebra.d720 v13)) in
                         let v15
                               = coe
                                   MAlonzo.Code.Algebra.C97 (coe MAlonzo.Code.Algebra.d616 v14)
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
                   (MAlonzo.Code.Relation.Binary.du150 v12)
                   (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d164
                      v4
                      (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                         v4 (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d170 v4)
                         v9)
                      (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d172 v4))
                   (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d172 v4)
                   (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d172 v4)
                   (MAlonzo.Code.Algebra.RingSolver.Lemmas.du292
                      v4 (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d172 v4)
                      v9)
                   (let v13
                          = let v13
                                  = coe
                                      MAlonzo.Code.Algebra.C463
                                      (coe
                                         MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d164
                                         v4)
                                      (coe
                                         MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                                         v4)
                                      (coe
                                         MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d170
                                         v4)
                                      (coe
                                         MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d172
                                         v4)
                                      (coe
                                         MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d60
                                         (coe
                                            MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d174
                                            v4)) in
                            let v14 = coe MAlonzo.Code.Algebra.du984 v13 in
                            let v15
                                  = coe
                                      MAlonzo.Code.Algebra.C333 (coe MAlonzo.Code.Algebra.d712 v14)
                                      (coe MAlonzo.Code.Algebra.d714 v14)
                                      (coe MAlonzo.Code.Algebra.d716 v14)
                                      (coe MAlonzo.Code.Algebra.d718 v14)
                                      (coe
                                         MAlonzo.Code.Algebra.Structures.d1728
                                         (coe MAlonzo.Code.Algebra.d720 v14)) in
                            let v16
                                  = coe
                                      MAlonzo.Code.Algebra.C97 (coe MAlonzo.Code.Algebra.d616 v15)
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
                    let v14
                          = coe
                              MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d172 v4 in
                    MAlonzo.Code.Relation.Binary.PreorderReasoning.C56
                      (MAlonzo.Code.Relation.Binary.d38
                         (MAlonzo.Code.Relation.Binary.d92
                            (MAlonzo.Code.Relation.Binary.du150 v13))
                         v14 v14
                         (MAlonzo.Code.Relation.Binary.Core.d516
                            (MAlonzo.Code.Relation.Binary.d36
                               (MAlonzo.Code.Relation.Binary.d92
                                  (MAlonzo.Code.Relation.Binary.du150 v13)))
                            v14)))))
      _ -> coe MAlonzo.RTE.mazUnreachableError
name860 = "Algebra.RingSolver.*x+HN\8776*x+"
d860 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10
  = case coe v8 of
      C358 v11
        -> case coe v10 of
             MAlonzo.Code.Data.Vec.C22 v12 v13 v14
               -> let v15 = coe du436 v0 v1 v2 v3 v4 v5 v6 v9 (coe du578 v3 v7) in
                  case coe v15 of
                    MAlonzo.Code.Relation.Nullary.C22 v16
                      -> coe
                           MAlonzo.Code.Relation.Binary.PreorderReasoning.d62
                           (let v17
                                  = let v17
                                          = coe
                                              MAlonzo.Code.Algebra.C463
                                              (coe
                                                 MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d164
                                                 v4)
                                              (coe
                                                 MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                                                 v4)
                                              (coe
                                                 MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d170
                                                 v4)
                                              (coe
                                                 MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d172
                                                 v4)
                                              (coe
                                                 MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d60
                                                 (coe
                                                    MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d174
                                                    v4)) in
                                    let v18 = coe MAlonzo.Code.Algebra.du984 v17 in
                                    let v19
                                          = coe
                                              MAlonzo.Code.Algebra.C333
                                              (coe MAlonzo.Code.Algebra.d712 v18)
                                              (coe MAlonzo.Code.Algebra.d714 v18)
                                              (coe MAlonzo.Code.Algebra.d716 v18)
                                              (coe MAlonzo.Code.Algebra.d718 v18)
                                              (coe
                                                 MAlonzo.Code.Algebra.Structures.d1728
                                                 (coe MAlonzo.Code.Algebra.d720 v18)) in
                                    let v20
                                          = coe
                                              MAlonzo.Code.Algebra.C97
                                              (coe MAlonzo.Code.Algebra.d616 v19)
                                              (coe MAlonzo.Code.Algebra.d620 v19)
                                              (coe
                                                 MAlonzo.Code.Algebra.Structures.d1542
                                                 (coe MAlonzo.Code.Algebra.d624 v19)) in
                                    coe
                                      MAlonzo.Code.Relation.Binary.C143
                                      (coe
                                         MAlonzo.Code.Algebra.Structures.d140
                                         (coe
                                            MAlonzo.Code.Algebra.Structures.d294
                                            (coe
                                               MAlonzo.Code.Algebra.d100
                                               (coe MAlonzo.Code.Algebra.du186 v20)))) in
                            MAlonzo.Code.Relation.Binary.PreorderReasoning.du72
                              (MAlonzo.Code.Relation.Binary.du150 v17)
                              (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d170 v4)
                              (du376 v0 v1 v2 v3 v4 v5 v6 v9 v14)
                              (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d164
                                 v4
                                 (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                                    v4
                                    (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d170 v4)
                                    v13)
                                 (du376 v0 v1 v2 v3 v4 v5 v6 v9 v14))
                              (d834 v0 v1 v2 v3 v4 v5 v6 v7 v9 v16 v14)
                              (let v18
                                     = let v18
                                             = coe
                                                 MAlonzo.Code.Algebra.C463
                                                 (coe
                                                    MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d164
                                                    v4)
                                                 (coe
                                                    MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                                                    v4)
                                                 (coe
                                                    MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d170
                                                    v4)
                                                 (coe
                                                    MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d172
                                                    v4)
                                                 (coe
                                                    MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d60
                                                    (coe
                                                       MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d174
                                                       v4)) in
                                       let v19 = coe MAlonzo.Code.Algebra.du984 v18 in
                                       let v20
                                             = coe
                                                 MAlonzo.Code.Algebra.C333
                                                 (coe MAlonzo.Code.Algebra.d712 v19)
                                                 (coe MAlonzo.Code.Algebra.d714 v19)
                                                 (coe MAlonzo.Code.Algebra.d716 v19)
                                                 (coe MAlonzo.Code.Algebra.d718 v19)
                                                 (coe
                                                    MAlonzo.Code.Algebra.Structures.d1728
                                                    (coe MAlonzo.Code.Algebra.d720 v19)) in
                                       let v21
                                             = coe
                                                 MAlonzo.Code.Algebra.C97
                                                 (coe MAlonzo.Code.Algebra.d616 v20)
                                                 (coe MAlonzo.Code.Algebra.d620 v20)
                                                 (coe
                                                    MAlonzo.Code.Algebra.Structures.d1542
                                                    (coe MAlonzo.Code.Algebra.d624 v20)) in
                                       coe
                                         MAlonzo.Code.Relation.Binary.C143
                                         (coe
                                            MAlonzo.Code.Algebra.Structures.d140
                                            (coe
                                               MAlonzo.Code.Algebra.Structures.d294
                                               (coe
                                                  MAlonzo.Code.Algebra.d100
                                                  (coe MAlonzo.Code.Algebra.du186 v21)))) in
                               MAlonzo.Code.Relation.Binary.PreorderReasoning.du72
                                 (MAlonzo.Code.Relation.Binary.du150 v18)
                                 (du376 v0 v1 v2 v3 v4 v5 v6 v9 v14)
                                 (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d164
                                    v4
                                    (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                                       v4
                                       (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d170
                                          v4)
                                       v13)
                                    (du376 v0 v1 v2 v3 v4 v5 v6 v9 v14))
                                 (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d164
                                    v4
                                    (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                                       v4
                                       (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d170
                                          v4)
                                       v13)
                                    (du376 v0 v1 v2 v3 v4 v5 v6 v9 v14))
                                 (MAlonzo.Code.Function.du158
                                    (let v19
                                           = coe
                                               MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d164
                                               v4 in
                                     let v20
                                           = coe
                                               MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                                               v4 in
                                     let v21
                                           = coe
                                               MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d170
                                               v4 in
                                     let v22
                                           = coe
                                               MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d172
                                               v4 in
                                     let v23
                                           = coe
                                               MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d174
                                               v4 in
                                     let v24
                                           = coe
                                               MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d60
                                               v23 in
                                     MAlonzo.Code.Relation.Binary.Core.d518
                                       (MAlonzo.Code.Algebra.Structures.d140
                                          (MAlonzo.Code.Algebra.Structures.d454
                                             (MAlonzo.Code.Algebra.Structures.d1542
                                                (MAlonzo.Code.Algebra.Structures.d1728
                                                   (MAlonzo.Code.Algebra.Structures.du2214
                                                      v19 v20 v21 v22 v24)))))
                                       (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d164
                                          v4
                                          (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                                             v4
                                             (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d170
                                                v4)
                                             v13)
                                          (du376 v0 v1 v2 v3 v4 v5 v6 v9 v14))
                                       (du376 v0 v1 v2 v3 v4 v5 v6 v9 v14))
                                    (MAlonzo.Code.Algebra.RingSolver.Lemmas.du292
                                       v4 (du376 v0 v1 v2 v3 v4 v5 v6 v9 v14) v13))
                                 (let v19
                                        = let v19
                                                = coe
                                                    MAlonzo.Code.Algebra.C463
                                                    (coe
                                                       MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d164
                                                       v4)
                                                    (coe
                                                       MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                                                       v4)
                                                    (coe
                                                       MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d170
                                                       v4)
                                                    (coe
                                                       MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d172
                                                       v4)
                                                    (coe
                                                       MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d60
                                                       (coe
                                                          MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d174
                                                          v4)) in
                                          let v20 = coe MAlonzo.Code.Algebra.du984 v19 in
                                          let v21
                                                = coe
                                                    MAlonzo.Code.Algebra.C333
                                                    (coe MAlonzo.Code.Algebra.d712 v20)
                                                    (coe MAlonzo.Code.Algebra.d714 v20)
                                                    (coe MAlonzo.Code.Algebra.d716 v20)
                                                    (coe MAlonzo.Code.Algebra.d718 v20)
                                                    (coe
                                                       MAlonzo.Code.Algebra.Structures.d1728
                                                       (coe MAlonzo.Code.Algebra.d720 v20)) in
                                          let v22
                                                = coe
                                                    MAlonzo.Code.Algebra.C97
                                                    (coe MAlonzo.Code.Algebra.d616 v21)
                                                    (coe MAlonzo.Code.Algebra.d620 v21)
                                                    (coe
                                                       MAlonzo.Code.Algebra.Structures.d1542
                                                       (coe MAlonzo.Code.Algebra.d624 v21)) in
                                          coe
                                            MAlonzo.Code.Relation.Binary.C143
                                            (coe
                                               MAlonzo.Code.Algebra.Structures.d140
                                               (coe
                                                  MAlonzo.Code.Algebra.Structures.d294
                                                  (coe
                                                     MAlonzo.Code.Algebra.d100
                                                     (coe MAlonzo.Code.Algebra.du186 v22)))) in
                                  let v20
                                        = coe
                                            MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d164
                                            v4
                                            (coe
                                               MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                                               v4
                                               (coe
                                                  MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d170
                                                  v4)
                                               v13)
                                            (coe du376 v0 v1 v2 v3 v4 v5 v6 v9 v14) in
                                  MAlonzo.Code.Relation.Binary.PreorderReasoning.C56
                                    (MAlonzo.Code.Relation.Binary.d38
                                       (MAlonzo.Code.Relation.Binary.d92
                                          (MAlonzo.Code.Relation.Binary.du150 v19))
                                       v20 v20
                                       (MAlonzo.Code.Relation.Binary.Core.d516
                                          (MAlonzo.Code.Relation.Binary.d36
                                             (MAlonzo.Code.Relation.Binary.d92
                                                (MAlonzo.Code.Relation.Binary.du150 v19)))
                                          v20)))))
                    MAlonzo.Code.Relation.Nullary.C26
                      -> let v17
                               = coe
                                   MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d164 v4 in
                         let v18
                               = coe
                                   MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166 v4 in
                         let v19
                               = coe
                                   MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d170 v4 in
                         let v20
                               = coe
                                   MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d172 v4 in
                         let v21
                               = coe
                                   MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d174 v4 in
                         let v22
                               = coe
                                   MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d60 v21 in
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
                                       (coe
                                          MAlonzo.Code.Algebra.Structures.du2214 v17 v18 v19 v20
                                          v22)))))
                           (coe
                              d372 v0 v1 v2 v3 v4 v5 v6 v7 (coe C362 v7 (coe C358 v7) v9)
                              (coe MAlonzo.Code.Data.Vec.C22 v7 v13 v14))
                    _ -> coe MAlonzo.RTE.mazUnreachableError
             _ -> coe MAlonzo.RTE.mazUnreachableError
      C362 v11 v12 v13
        -> let v14
                 = coe
                     MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d164 v4 in
           let v15
                 = coe
                     MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166 v4 in
           let v16
                 = coe
                     MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d170 v4 in
           let v17
                 = coe
                     MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d172 v4 in
           let v18
                 = coe
                     MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d174 v4 in
           let v19
                 = coe
                     MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d60 v18 in
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
                         (coe
                            MAlonzo.Code.Algebra.Structures.du2214 v14 v15 v16 v17 v19)))))
             (coe
                d372 v0 v1 v2 v3 v4 v5 v6 v7
                (coe d596 v0 v1 v2 v3 v4 v5 v6 v7 (coe C362 v7 v12 v13) v9) v10)
      _ -> coe MAlonzo.RTE.mazUnreachableError
name904 = "Algebra.RingSolver.\8709*x+HN-homo"
d904 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10
  = let v11 = coe du436 v0 v1 v2 v3 v4 v5 v6 v8 (coe du578 v3 v7) in
    case coe v11 of
      MAlonzo.Code.Relation.Nullary.C22 v12
        -> coe d834 v0 v1 v2 v3 v4 v5 v6 v7 v8 v12 v10
      MAlonzo.Code.Relation.Nullary.C26
        -> coe
             MAlonzo.Code.Algebra.RingSolver.Lemmas.du292 v4
             (coe du376 v0 v1 v2 v3 v4 v5 v6 v8 v10) v9
      _ -> coe MAlonzo.RTE.mazUnreachableError
name940 = "Algebra.RingSolver.+H-homo"
d940 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10
  = case coe v8 of
      C358 v11
        -> let v12
                 = coe
                     MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d164 v4 in
           let v13
                 = coe
                     MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166 v4 in
           let v14
                 = coe
                     MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d170 v4 in
           let v15
                 = coe
                     MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d172 v4 in
           let v16
                 = coe
                     MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d174 v4 in
           let v17
                 = coe
                     MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d60 v16 in
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
                         (coe
                            MAlonzo.Code.Algebra.Structures.du2214 v12 v13 v14 v15 v17)))))
             (coe
                MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d164 v4
                (coe MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d170 v4)
                (coe
                   d372 v0 v1 v2 v3 v4 v5 v6 v7
                   (coe d620 v0 v1 v2 v3 v4 v5 v6 v7 (coe C358 v7) v9) v10))
             (coe
                d372 v0 v1 v2 v3 v4 v5 v6 v7
                (coe d620 v0 v1 v2 v3 v4 v5 v6 v7 (coe C358 v7) v9) v10)
             (coe
                MAlonzo.Code.Data.Product.d26
                (let v18
                       = coe
                           MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d164 v4 in
                 let v19
                       = coe
                           MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166 v4 in
                 let v20
                       = coe
                           MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d170 v4 in
                 let v21
                       = coe
                           MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d172 v4 in
                 let v22
                       = coe
                           MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d174 v4 in
                 let v23
                       = coe
                           MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d60 v22 in
                 let v24
                       = coe MAlonzo.Code.Algebra.Structures.du2214 v18 v19 v20 v21 v23 in
                 let v25 = coe MAlonzo.Code.Algebra.Structures.d1728 v24 in
                 MAlonzo.Code.Algebra.Structures.du476
                   v18 v20 (MAlonzo.Code.Algebra.Structures.d1542 v25))
                (coe
                   d372 v0 v1 v2 v3 v4 v5 v6 v7
                   (coe d620 v0 v1 v2 v3 v4 v5 v6 v7 (coe C358 v7) v9) v10))
      C362 v11 v12 v13
        -> case coe v9 of
             C358 v14
               -> let v15
                        = coe
                            MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d164 v4 in
                  let v16
                        = coe
                            MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166 v4 in
                  let v17
                        = coe
                            MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d170 v4 in
                  let v18
                        = coe
                            MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d172 v4 in
                  let v19
                        = coe
                            MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d174 v4 in
                  let v20
                        = coe
                            MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d60 v19 in
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
                                (coe
                                   MAlonzo.Code.Algebra.Structures.du2214 v15 v16 v17 v18 v20)))))
                    (coe
                       MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d164 v4
                       (coe
                          d372 v0 v1 v2 v3 v4 v5 v6 v7
                          (coe
                             d620 v0 v1 v2 v3 v4 v5 v6 v7 (coe C362 v7 v12 v13) (coe C358 v7))
                          v10)
                       (coe
                          MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d170 v4))
                    (coe
                       d372 v0 v1 v2 v3 v4 v5 v6 v7
                       (coe
                          d620 v0 v1 v2 v3 v4 v5 v6 v7 (coe C362 v7 v12 v13) (coe C358 v7))
                       v10)
                    (coe
                       MAlonzo.Code.Data.Product.d28
                       (let v21
                              = coe
                                  MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d164 v4 in
                        let v22
                              = coe
                                  MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166 v4 in
                        let v23
                              = coe
                                  MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d170 v4 in
                        let v24
                              = coe
                                  MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d172 v4 in
                        let v25
                              = coe
                                  MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d174 v4 in
                        let v26
                              = coe
                                  MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d60 v25 in
                        let v27
                              = coe MAlonzo.Code.Algebra.Structures.du2214 v21 v22 v23 v24 v26 in
                        let v28 = coe MAlonzo.Code.Algebra.Structures.d1728 v27 in
                        MAlonzo.Code.Algebra.Structures.du476
                          v21 v23 (MAlonzo.Code.Algebra.Structures.d1542 v28))
                       (coe
                          d372 v0 v1 v2 v3 v4 v5 v6 v7
                          (coe
                             d620 v0 v1 v2 v3 v4 v5 v6 v7 (coe C362 v7 v12 v13) (coe C358 v7))
                          v10))
             C362 v14 v15 v16
               -> case coe v10 of
                    MAlonzo.Code.Data.Vec.C22 v17 v18 v19
                      -> coe
                           MAlonzo.Code.Relation.Binary.PreorderReasoning.d62
                           (let v20
                                  = let v20
                                          = coe
                                              MAlonzo.Code.Algebra.C463
                                              (coe
                                                 MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d164
                                                 v4)
                                              (coe
                                                 MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                                                 v4)
                                              (coe
                                                 MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d170
                                                 v4)
                                              (coe
                                                 MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d172
                                                 v4)
                                              (coe
                                                 MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d60
                                                 (coe
                                                    MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d174
                                                    v4)) in
                                    let v21 = coe MAlonzo.Code.Algebra.du984 v20 in
                                    let v22
                                          = coe
                                              MAlonzo.Code.Algebra.C333
                                              (coe MAlonzo.Code.Algebra.d712 v21)
                                              (coe MAlonzo.Code.Algebra.d714 v21)
                                              (coe MAlonzo.Code.Algebra.d716 v21)
                                              (coe MAlonzo.Code.Algebra.d718 v21)
                                              (coe
                                                 MAlonzo.Code.Algebra.Structures.d1728
                                                 (coe MAlonzo.Code.Algebra.d720 v21)) in
                                    let v23
                                          = coe
                                              MAlonzo.Code.Algebra.C97
                                              (coe MAlonzo.Code.Algebra.d616 v22)
                                              (coe MAlonzo.Code.Algebra.d620 v22)
                                              (coe
                                                 MAlonzo.Code.Algebra.Structures.d1542
                                                 (coe MAlonzo.Code.Algebra.d624 v22)) in
                                    coe
                                      MAlonzo.Code.Relation.Binary.C143
                                      (coe
                                         MAlonzo.Code.Algebra.Structures.d140
                                         (coe
                                            MAlonzo.Code.Algebra.Structures.d294
                                            (coe
                                               MAlonzo.Code.Algebra.d100
                                               (coe MAlonzo.Code.Algebra.du186 v23)))) in
                            MAlonzo.Code.Relation.Binary.PreorderReasoning.du72
                              (MAlonzo.Code.Relation.Binary.du150 v20)
                              (d372
                                 v0 v1 v2 v3 v4 v5 v6 v7
                                 (d596
                                    v0 v1 v2 v3 v4 v5 v6 v7 (d620 v0 v1 v2 v3 v4 v5 v6 v7 v12 v15)
                                    (du624 v0 v1 v2 v3 v4 v5 v6 v13 v16))
                                 (MAlonzo.Code.Data.Vec.C22 v7 v18 v19))
                              (d372
                                 v0 v1 v2 v3 v4 v5 v6 v7
                                 (C362
                                    v7 (d620 v0 v1 v2 v3 v4 v5 v6 v7 v12 v15)
                                    (du624 v0 v1 v2 v3 v4 v5 v6 v13 v16))
                                 (MAlonzo.Code.Data.Vec.C22 v7 v18 v19))
                              (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d164
                                 v4
                                 (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d164
                                    v4
                                    (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                                       v4
                                       (d372
                                          v0 v1 v2 v3 v4 v5 v6 v7 v12
                                          (MAlonzo.Code.Data.Vec.C22 v7 v18 v19))
                                       v18)
                                    (du376 v0 v1 v2 v3 v4 v5 v6 v13 v19))
                                 (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d164
                                    v4
                                    (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                                       v4
                                       (d372
                                          v0 v1 v2 v3 v4 v5 v6 v7 v15
                                          (MAlonzo.Code.Data.Vec.C22 v7 v18 v19))
                                       v18)
                                    (du376 v0 v1 v2 v3 v4 v5 v6 v16 v19)))
                              (d860
                                 v0 v1 v2 v3 v4 v5 v6 v7 (d620 v0 v1 v2 v3 v4 v5 v6 v7 v12 v15)
                                 (du624 v0 v1 v2 v3 v4 v5 v6 v13 v16)
                                 (MAlonzo.Code.Data.Vec.C22 v7 v18 v19))
                              (let v21
                                     = let v21
                                             = coe
                                                 MAlonzo.Code.Algebra.C463
                                                 (coe
                                                    MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d164
                                                    v4)
                                                 (coe
                                                    MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                                                    v4)
                                                 (coe
                                                    MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d170
                                                    v4)
                                                 (coe
                                                    MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d172
                                                    v4)
                                                 (coe
                                                    MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d60
                                                    (coe
                                                       MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d174
                                                       v4)) in
                                       let v22 = coe MAlonzo.Code.Algebra.du984 v21 in
                                       let v23
                                             = coe
                                                 MAlonzo.Code.Algebra.C333
                                                 (coe MAlonzo.Code.Algebra.d712 v22)
                                                 (coe MAlonzo.Code.Algebra.d714 v22)
                                                 (coe MAlonzo.Code.Algebra.d716 v22)
                                                 (coe MAlonzo.Code.Algebra.d718 v22)
                                                 (coe
                                                    MAlonzo.Code.Algebra.Structures.d1728
                                                    (coe MAlonzo.Code.Algebra.d720 v22)) in
                                       let v24
                                             = coe
                                                 MAlonzo.Code.Algebra.C97
                                                 (coe MAlonzo.Code.Algebra.d616 v23)
                                                 (coe MAlonzo.Code.Algebra.d620 v23)
                                                 (coe
                                                    MAlonzo.Code.Algebra.Structures.d1542
                                                    (coe MAlonzo.Code.Algebra.d624 v23)) in
                                       coe
                                         MAlonzo.Code.Relation.Binary.C143
                                         (coe
                                            MAlonzo.Code.Algebra.Structures.d140
                                            (coe
                                               MAlonzo.Code.Algebra.Structures.d294
                                               (coe
                                                  MAlonzo.Code.Algebra.d100
                                                  (coe MAlonzo.Code.Algebra.du186 v24)))) in
                               MAlonzo.Code.Relation.Binary.PreorderReasoning.du72
                                 (MAlonzo.Code.Relation.Binary.du150 v21)
                                 (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d164
                                    v4
                                    (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                                       v4
                                       (d372
                                          v0 v1 v2 v3 v4 v5 v6 v7
                                          (d620 v0 v1 v2 v3 v4 v5 v6 v7 v12 v15)
                                          (MAlonzo.Code.Data.Vec.C22 v7 v18 v19))
                                       v18)
                                    (du376
                                       v0 v1 v2 v3 v4 v5 v6 (du624 v0 v1 v2 v3 v4 v5 v6 v13 v16)
                                       v19))
                                 (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d164
                                    v4
                                    (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                                       v4
                                       (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d164
                                          v4
                                          (d372
                                             v0 v1 v2 v3 v4 v5 v6 v7 v12
                                             (MAlonzo.Code.Data.Vec.C22 v7 v18 v19))
                                          (d372
                                             v0 v1 v2 v3 v4 v5 v6 v7 v15
                                             (MAlonzo.Code.Data.Vec.C22 v7 v18 v19)))
                                       v18)
                                    (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d164
                                       v4 (du376 v0 v1 v2 v3 v4 v5 v6 v13 v19)
                                       (du376 v0 v1 v2 v3 v4 v5 v6 v16 v19)))
                                 (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d164
                                    v4
                                    (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d164
                                       v4
                                       (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                                          v4
                                          (d372
                                             v0 v1 v2 v3 v4 v5 v6 v7 v12
                                             (MAlonzo.Code.Data.Vec.C22 v7 v18 v19))
                                          v18)
                                       (du376 v0 v1 v2 v3 v4 v5 v6 v13 v19))
                                    (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d164
                                       v4
                                       (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                                          v4
                                          (d372
                                             v0 v1 v2 v3 v4 v5 v6 v7 v15
                                             (MAlonzo.Code.Data.Vec.C22 v7 v18 v19))
                                          v18)
                                       (du376 v0 v1 v2 v3 v4 v5 v6 v16 v19)))
                                 (MAlonzo.Code.Function.du176
                                    (MAlonzo.Code.Function.du176
                                       (d940
                                          v0 v1 v2 v3 v4 v5 v6 v7 v12 v15
                                          (MAlonzo.Code.Data.Vec.C22 v7 v18 v19))
                                       (let v22
                                              = coe
                                                  MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d164
                                                  v4 in
                                        let v23
                                              = coe
                                                  MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                                                  v4 in
                                        let v24
                                              = coe
                                                  MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d170
                                                  v4 in
                                        let v25
                                              = coe
                                                  MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d172
                                                  v4 in
                                        let v26
                                              = coe
                                                  MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d174
                                                  v4 in
                                        let v27
                                              = coe
                                                  MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d60
                                                  v26 in
                                        MAlonzo.Code.Algebra.Structures.d144
                                          (MAlonzo.Code.Algebra.Structures.d294
                                             (MAlonzo.Code.Algebra.Structures.d1544
                                                (MAlonzo.Code.Algebra.Structures.d1728
                                                   (MAlonzo.Code.Algebra.Structures.du2214
                                                      v22 v23 v24 v25 v27))))
                                          (d372
                                             v0 v1 v2 v3 v4 v5 v6 v7
                                             (d620 v0 v1 v2 v3 v4 v5 v6 v7 v12 v15)
                                             (MAlonzo.Code.Data.Vec.C22 v7 v18 v19))
                                          (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d164
                                             v4
                                             (d372
                                                v0 v1 v2 v3 v4 v5 v6 v7 v12
                                                (MAlonzo.Code.Data.Vec.C22 v7 v18 v19))
                                             (d372
                                                v0 v1 v2 v3 v4 v5 v6 v7 v15
                                                (MAlonzo.Code.Data.Vec.C22 v7 v18 v19)))
                                          v18 v18)
                                       (let v22
                                              = coe
                                                  MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d164
                                                  v4 in
                                        let v23
                                              = coe
                                                  MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                                                  v4 in
                                        let v24
                                              = coe
                                                  MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d170
                                                  v4 in
                                        let v25
                                              = coe
                                                  MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d172
                                                  v4 in
                                        let v26
                                              = coe
                                                  MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d174
                                                  v4 in
                                        let v27
                                              = coe
                                                  MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d60
                                                  v26 in
                                        MAlonzo.Code.Relation.Binary.Core.d516
                                          (MAlonzo.Code.Algebra.Structures.d140
                                             (MAlonzo.Code.Algebra.Structures.d454
                                                (MAlonzo.Code.Algebra.Structures.d1542
                                                   (MAlonzo.Code.Algebra.Structures.d1728
                                                      (MAlonzo.Code.Algebra.Structures.du2214
                                                         v22 v23 v24 v25 v27)))))
                                          v18))
                                    (let v22
                                           = coe
                                               MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d164
                                               v4 in
                                     let v23
                                           = coe
                                               MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                                               v4 in
                                     let v24
                                           = coe
                                               MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d170
                                               v4 in
                                     let v25
                                           = coe
                                               MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d172
                                               v4 in
                                     let v26
                                           = coe
                                               MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d174
                                               v4 in
                                     let v27
                                           = coe
                                               MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d60
                                               v26 in
                                     MAlonzo.Code.Algebra.Structures.d144
                                       (MAlonzo.Code.Algebra.Structures.d454
                                          (MAlonzo.Code.Algebra.Structures.d1542
                                             (MAlonzo.Code.Algebra.Structures.d1728
                                                (MAlonzo.Code.Algebra.Structures.du2214
                                                   v22 v23 v24 v25 v27))))
                                       (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                                          v4
                                          (d372
                                             v0 v1 v2 v3 v4 v5 v6 v7
                                             (d620 v0 v1 v2 v3 v4 v5 v6 v7 v12 v15)
                                             (MAlonzo.Code.Data.Vec.C22 v7 v18 v19))
                                          v18)
                                       (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                                          v4
                                          (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d164
                                             v4
                                             (d372
                                                v0 v1 v2 v3 v4 v5 v6 v7 v12
                                                (MAlonzo.Code.Data.Vec.C22 v7 v18 v19))
                                             (d372
                                                v0 v1 v2 v3 v4 v5 v6 v7 v15
                                                (MAlonzo.Code.Data.Vec.C22 v7 v18 v19)))
                                          v18)
                                       (du376
                                          v0 v1 v2 v3 v4 v5 v6 (du624 v0 v1 v2 v3 v4 v5 v6 v13 v16)
                                          v19)
                                       (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d164
                                          v4 (du376 v0 v1 v2 v3 v4 v5 v6 v13 v19)
                                          (du376 v0 v1 v2 v3 v4 v5 v6 v16 v19)))
                                    (du950 v0 v1 v2 v3 v4 v5 v6 v13 v16 v19))
                                 (let v22
                                        = let v22
                                                = coe
                                                    MAlonzo.Code.Algebra.C463
                                                    (coe
                                                       MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d164
                                                       v4)
                                                    (coe
                                                       MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                                                       v4)
                                                    (coe
                                                       MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d170
                                                       v4)
                                                    (coe
                                                       MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d172
                                                       v4)
                                                    (coe
                                                       MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d60
                                                       (coe
                                                          MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d174
                                                          v4)) in
                                          let v23 = coe MAlonzo.Code.Algebra.du984 v22 in
                                          let v24
                                                = coe
                                                    MAlonzo.Code.Algebra.C333
                                                    (coe MAlonzo.Code.Algebra.d712 v23)
                                                    (coe MAlonzo.Code.Algebra.d714 v23)
                                                    (coe MAlonzo.Code.Algebra.d716 v23)
                                                    (coe MAlonzo.Code.Algebra.d718 v23)
                                                    (coe
                                                       MAlonzo.Code.Algebra.Structures.d1728
                                                       (coe MAlonzo.Code.Algebra.d720 v23)) in
                                          let v25
                                                = coe
                                                    MAlonzo.Code.Algebra.C97
                                                    (coe MAlonzo.Code.Algebra.d616 v24)
                                                    (coe MAlonzo.Code.Algebra.d620 v24)
                                                    (coe
                                                       MAlonzo.Code.Algebra.Structures.d1542
                                                       (coe MAlonzo.Code.Algebra.d624 v24)) in
                                          coe
                                            MAlonzo.Code.Relation.Binary.C143
                                            (coe
                                               MAlonzo.Code.Algebra.Structures.d140
                                               (coe
                                                  MAlonzo.Code.Algebra.Structures.d294
                                                  (coe
                                                     MAlonzo.Code.Algebra.d100
                                                     (coe MAlonzo.Code.Algebra.du186 v25)))) in
                                  MAlonzo.Code.Relation.Binary.PreorderReasoning.du72
                                    (MAlonzo.Code.Relation.Binary.du150 v22)
                                    (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d164
                                       v4
                                       (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                                          v4
                                          (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d164
                                             v4
                                             (d372
                                                v0 v1 v2 v3 v4 v5 v6 v7 v12
                                                (MAlonzo.Code.Data.Vec.C22 v7 v18 v19))
                                             (d372
                                                v0 v1 v2 v3 v4 v5 v6 v7 v15
                                                (MAlonzo.Code.Data.Vec.C22 v7 v18 v19)))
                                          v18)
                                       (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d164
                                          v4 (du376 v0 v1 v2 v3 v4 v5 v6 v13 v19)
                                          (du376 v0 v1 v2 v3 v4 v5 v6 v16 v19)))
                                    (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d164
                                       v4
                                       (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d164
                                          v4
                                          (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                                             v4
                                             (d372
                                                v0 v1 v2 v3 v4 v5 v6 v7 v12
                                                (MAlonzo.Code.Data.Vec.C22 v7 v18 v19))
                                             v18)
                                          (du376 v0 v1 v2 v3 v4 v5 v6 v13 v19))
                                       (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d164
                                          v4
                                          (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                                             v4
                                             (d372
                                                v0 v1 v2 v3 v4 v5 v6 v7 v15
                                                (MAlonzo.Code.Data.Vec.C22 v7 v18 v19))
                                             v18)
                                          (du376 v0 v1 v2 v3 v4 v5 v6 v16 v19)))
                                    (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d164
                                       v4
                                       (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d164
                                          v4
                                          (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                                             v4
                                             (d372
                                                v0 v1 v2 v3 v4 v5 v6 v7 v12
                                                (MAlonzo.Code.Data.Vec.C22 v7 v18 v19))
                                             v18)
                                          (du376 v0 v1 v2 v3 v4 v5 v6 v13 v19))
                                       (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d164
                                          v4
                                          (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                                             v4
                                             (d372
                                                v0 v1 v2 v3 v4 v5 v6 v7 v15
                                                (MAlonzo.Code.Data.Vec.C22 v7 v18 v19))
                                             v18)
                                          (du376 v0 v1 v2 v3 v4 v5 v6 v16 v19)))
                                    (MAlonzo.Code.Algebra.RingSolver.Lemmas.du196
                                       v4
                                       (d372
                                          v0 v1 v2 v3 v4 v5 v6 v7 v12
                                          (MAlonzo.Code.Data.Vec.C22 v7 v18 v19))
                                       (d372
                                          v0 v1 v2 v3 v4 v5 v6 v7 v15
                                          (MAlonzo.Code.Data.Vec.C22 v7 v18 v19))
                                       (du376 v0 v1 v2 v3 v4 v5 v6 v13 v19)
                                       (du376 v0 v1 v2 v3 v4 v5 v6 v16 v19) v18)
                                    (let v23
                                           = let v23
                                                   = coe
                                                       MAlonzo.Code.Algebra.C463
                                                       (coe
                                                          MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d164
                                                          v4)
                                                       (coe
                                                          MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                                                          v4)
                                                       (coe
                                                          MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d170
                                                          v4)
                                                       (coe
                                                          MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d172
                                                          v4)
                                                       (coe
                                                          MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d60
                                                          (coe
                                                             MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d174
                                                             v4)) in
                                             let v24 = coe MAlonzo.Code.Algebra.du984 v23 in
                                             let v25
                                                   = coe
                                                       MAlonzo.Code.Algebra.C333
                                                       (coe MAlonzo.Code.Algebra.d712 v24)
                                                       (coe MAlonzo.Code.Algebra.d714 v24)
                                                       (coe MAlonzo.Code.Algebra.d716 v24)
                                                       (coe MAlonzo.Code.Algebra.d718 v24)
                                                       (coe
                                                          MAlonzo.Code.Algebra.Structures.d1728
                                                          (coe MAlonzo.Code.Algebra.d720 v24)) in
                                             let v26
                                                   = coe
                                                       MAlonzo.Code.Algebra.C97
                                                       (coe MAlonzo.Code.Algebra.d616 v25)
                                                       (coe MAlonzo.Code.Algebra.d620 v25)
                                                       (coe
                                                          MAlonzo.Code.Algebra.Structures.d1542
                                                          (coe MAlonzo.Code.Algebra.d624 v25)) in
                                             coe
                                               MAlonzo.Code.Relation.Binary.C143
                                               (coe
                                                  MAlonzo.Code.Algebra.Structures.d140
                                                  (coe
                                                     MAlonzo.Code.Algebra.Structures.d294
                                                     (coe
                                                        MAlonzo.Code.Algebra.d100
                                                        (coe MAlonzo.Code.Algebra.du186 v26)))) in
                                     let v24
                                           = coe
                                               MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d164
                                               v4
                                               (coe
                                                  MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d164
                                                  v4
                                                  (coe
                                                     MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                                                     v4
                                                     (coe
                                                        d372 v0 v1 v2 v3 v4 v5 v6 v7 v12
                                                        (coe MAlonzo.Code.Data.Vec.C22 v7 v18 v19))
                                                     v18)
                                                  (coe du376 v0 v1 v2 v3 v4 v5 v6 v13 v19))
                                               (coe
                                                  MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d164
                                                  v4
                                                  (coe
                                                     MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                                                     v4
                                                     (coe
                                                        d372 v0 v1 v2 v3 v4 v5 v6 v7 v15
                                                        (coe MAlonzo.Code.Data.Vec.C22 v7 v18 v19))
                                                     v18)
                                                  (coe du376 v0 v1 v2 v3 v4 v5 v6 v16 v19)) in
                                     MAlonzo.Code.Relation.Binary.PreorderReasoning.C56
                                       (MAlonzo.Code.Relation.Binary.d38
                                          (MAlonzo.Code.Relation.Binary.d92
                                             (MAlonzo.Code.Relation.Binary.du150 v23))
                                          v24 v24
                                          (MAlonzo.Code.Relation.Binary.Core.d516
                                             (MAlonzo.Code.Relation.Binary.d36
                                                (MAlonzo.Code.Relation.Binary.d92
                                                   (MAlonzo.Code.Relation.Binary.du150 v23)))
                                             v24))))))
                    _ -> coe MAlonzo.RTE.mazUnreachableError
             _ -> coe MAlonzo.RTE.mazUnreachableError
      _ -> coe MAlonzo.RTE.mazUnreachableError
name950 = "Algebra.RingSolver.+N-homo"
d950 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10
  = du950 v0 v1 v2 v3 v4 v5 v6 v8 v9 v10
du950 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9
  = case coe v7 of
      C364 v10
        -> case coe v8 of
             C364 v11
               -> coe
                    MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d552 v5 v10
                    v11
             _ -> coe MAlonzo.RTE.mazUnreachableError
      C368 v10 v11
        -> case coe v8 of
             C368 v12 v13 -> coe d940 v0 v1 v2 v3 v4 v5 v6 v10 v11 v13 v9
             _ -> coe MAlonzo.RTE.mazUnreachableError
      _ -> coe MAlonzo.RTE.mazUnreachableError
name994 = "Algebra.RingSolver.*x+H-homo"
d994 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11
  = case coe v8 of
      C358 v12
        -> case coe v9 of
             C358 v13
               -> coe
                    MAlonzo.Code.Function.du158
                    (let v14
                           = coe
                               MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d164 v4 in
                     let v15
                           = coe
                               MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166 v4 in
                     let v16
                           = coe
                               MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d170 v4 in
                     let v17
                           = coe
                               MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d172 v4 in
                     let v18
                           = coe
                               MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d174 v4 in
                     let v19
                           = coe
                               MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d60 v18 in
                     MAlonzo.Code.Relation.Binary.Core.d518
                       (MAlonzo.Code.Algebra.Structures.d140
                          (MAlonzo.Code.Algebra.Structures.d454
                             (MAlonzo.Code.Algebra.Structures.d1542
                                (MAlonzo.Code.Algebra.Structures.d1728
                                   (MAlonzo.Code.Algebra.Structures.du2214 v14 v15 v16 v17 v19)))))
                       (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d164
                          v4
                          (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                             v4 (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d170 v4)
                             v10)
                          (d372
                             v0 v1 v2 v3 v4 v5 v6 v7
                             (d648 v0 v1 v2 v3 v4 v5 v6 v7 (C358 v7) (C358 v7))
                             (MAlonzo.Code.Data.Vec.C22 v7 v10 v11)))
                       (d372
                          v0 v1 v2 v3 v4 v5 v6 v7
                          (d648 v0 v1 v2 v3 v4 v5 v6 v7 (C358 v7) (C358 v7))
                          (MAlonzo.Code.Data.Vec.C22 v7 v10 v11)))
                    (coe
                       MAlonzo.Code.Algebra.RingSolver.Lemmas.du292 v4
                       (coe
                          d372 v0 v1 v2 v3 v4 v5 v6 v7
                          (coe d648 v0 v1 v2 v3 v4 v5 v6 v7 (coe C358 v7) (coe C358 v7))
                          (coe MAlonzo.Code.Data.Vec.C22 v7 v10 v11))
                       v10)
             C362 v13 v14 v15
               -> coe
                    MAlonzo.Code.Relation.Binary.PreorderReasoning.d62
                    (let v16
                           = let v16
                                   = coe
                                       MAlonzo.Code.Algebra.C463
                                       (coe
                                          MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d164
                                          v4)
                                       (coe
                                          MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                                          v4)
                                       (coe
                                          MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d170
                                          v4)
                                       (coe
                                          MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d172
                                          v4)
                                       (coe
                                          MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d60
                                          (coe
                                             MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d174
                                             v4)) in
                             let v17 = coe MAlonzo.Code.Algebra.du984 v16 in
                             let v18
                                   = coe
                                       MAlonzo.Code.Algebra.C333 (coe MAlonzo.Code.Algebra.d712 v17)
                                       (coe MAlonzo.Code.Algebra.d714 v17)
                                       (coe MAlonzo.Code.Algebra.d716 v17)
                                       (coe MAlonzo.Code.Algebra.d718 v17)
                                       (coe
                                          MAlonzo.Code.Algebra.Structures.d1728
                                          (coe MAlonzo.Code.Algebra.d720 v17)) in
                             let v19
                                   = coe
                                       MAlonzo.Code.Algebra.C97 (coe MAlonzo.Code.Algebra.d616 v18)
                                       (coe MAlonzo.Code.Algebra.d620 v18)
                                       (coe
                                          MAlonzo.Code.Algebra.Structures.d1542
                                          (coe MAlonzo.Code.Algebra.d624 v18)) in
                             coe
                               MAlonzo.Code.Relation.Binary.C143
                               (coe
                                  MAlonzo.Code.Algebra.Structures.d140
                                  (coe
                                     MAlonzo.Code.Algebra.Structures.d294
                                     (coe
                                        MAlonzo.Code.Algebra.d100
                                        (coe MAlonzo.Code.Algebra.du186 v19)))) in
                     MAlonzo.Code.Relation.Binary.PreorderReasoning.du72
                       (MAlonzo.Code.Relation.Binary.du150 v16)
                       (d372
                          v0 v1 v2 v3 v4 v5 v6 v7
                          (d596
                             v0 v1 v2 v3 v4 v5 v6 v7 (d620 v0 v1 v2 v3 v4 v5 v6 v7 v8 v14) v15)
                          (MAlonzo.Code.Data.Vec.C22 v7 v10 v11))
                       (d372
                          v0 v1 v2 v3 v4 v5 v6 v7
                          (C362 v7 (d620 v0 v1 v2 v3 v4 v5 v6 v7 v8 v14) v15)
                          (MAlonzo.Code.Data.Vec.C22 v7 v10 v11))
                       (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d164
                          v4
                          (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                             v4
                             (d372
                                v0 v1 v2 v3 v4 v5 v6 v7 v8 (MAlonzo.Code.Data.Vec.C22 v7 v10 v11))
                             v10)
                          (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d164
                             v4
                             (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                                v4
                                (d372
                                   v0 v1 v2 v3 v4 v5 v6 v7 v14
                                   (MAlonzo.Code.Data.Vec.C22 v7 v10 v11))
                                v10)
                             (du376 v0 v1 v2 v3 v4 v5 v6 v15 v11)))
                       (d860
                          v0 v1 v2 v3 v4 v5 v6 v7 (d620 v0 v1 v2 v3 v4 v5 v6 v7 v8 v14) v15
                          (MAlonzo.Code.Data.Vec.C22 v7 v10 v11))
                       (let v17
                              = let v17
                                      = coe
                                          MAlonzo.Code.Algebra.C463
                                          (coe
                                             MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d164
                                             v4)
                                          (coe
                                             MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                                             v4)
                                          (coe
                                             MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d170
                                             v4)
                                          (coe
                                             MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d172
                                             v4)
                                          (coe
                                             MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d60
                                             (coe
                                                MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d174
                                                v4)) in
                                let v18 = coe MAlonzo.Code.Algebra.du984 v17 in
                                let v19
                                      = coe
                                          MAlonzo.Code.Algebra.C333
                                          (coe MAlonzo.Code.Algebra.d712 v18)
                                          (coe MAlonzo.Code.Algebra.d714 v18)
                                          (coe MAlonzo.Code.Algebra.d716 v18)
                                          (coe MAlonzo.Code.Algebra.d718 v18)
                                          (coe
                                             MAlonzo.Code.Algebra.Structures.d1728
                                             (coe MAlonzo.Code.Algebra.d720 v18)) in
                                let v20
                                      = coe
                                          MAlonzo.Code.Algebra.C97
                                          (coe MAlonzo.Code.Algebra.d616 v19)
                                          (coe MAlonzo.Code.Algebra.d620 v19)
                                          (coe
                                             MAlonzo.Code.Algebra.Structures.d1542
                                             (coe MAlonzo.Code.Algebra.d624 v19)) in
                                coe
                                  MAlonzo.Code.Relation.Binary.C143
                                  (coe
                                     MAlonzo.Code.Algebra.Structures.d140
                                     (coe
                                        MAlonzo.Code.Algebra.Structures.d294
                                        (coe
                                           MAlonzo.Code.Algebra.d100
                                           (coe MAlonzo.Code.Algebra.du186 v20)))) in
                        MAlonzo.Code.Relation.Binary.PreorderReasoning.du72
                          (MAlonzo.Code.Relation.Binary.du150 v17)
                          (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d164
                             v4
                             (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                                v4
                                (d372
                                   v0 v1 v2 v3 v4 v5 v6 v7 (d620 v0 v1 v2 v3 v4 v5 v6 v7 v8 v14)
                                   (MAlonzo.Code.Data.Vec.C22 v7 v10 v11))
                                v10)
                             (du376 v0 v1 v2 v3 v4 v5 v6 v15 v11))
                          (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d164
                             v4
                             (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                                v4
                                (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d164
                                   v4
                                   (d372
                                      v0 v1 v2 v3 v4 v5 v6 v7 v8
                                      (MAlonzo.Code.Data.Vec.C22 v7 v10 v11))
                                   (d372
                                      v0 v1 v2 v3 v4 v5 v6 v7 v14
                                      (MAlonzo.Code.Data.Vec.C22 v7 v10 v11)))
                                v10)
                             (du376 v0 v1 v2 v3 v4 v5 v6 v15 v11))
                          (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d164
                             v4
                             (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                                v4
                                (d372
                                   v0 v1 v2 v3 v4 v5 v6 v7 v8
                                   (MAlonzo.Code.Data.Vec.C22 v7 v10 v11))
                                v10)
                             (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d164
                                v4
                                (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                                   v4
                                   (d372
                                      v0 v1 v2 v3 v4 v5 v6 v7 v14
                                      (MAlonzo.Code.Data.Vec.C22 v7 v10 v11))
                                   v10)
                                (du376 v0 v1 v2 v3 v4 v5 v6 v15 v11)))
                          (MAlonzo.Code.Function.du176
                             (MAlonzo.Code.Function.du176
                                (d940
                                   v0 v1 v2 v3 v4 v5 v6 v7 v8 v14
                                   (MAlonzo.Code.Data.Vec.C22 v7 v10 v11))
                                (let v18
                                       = coe
                                           MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d164
                                           v4 in
                                 let v19
                                       = coe
                                           MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                                           v4 in
                                 let v20
                                       = coe
                                           MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d170
                                           v4 in
                                 let v21
                                       = coe
                                           MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d172
                                           v4 in
                                 let v22
                                       = coe
                                           MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d174
                                           v4 in
                                 let v23
                                       = coe
                                           MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d60
                                           v22 in
                                 MAlonzo.Code.Algebra.Structures.d144
                                   (MAlonzo.Code.Algebra.Structures.d294
                                      (MAlonzo.Code.Algebra.Structures.d1544
                                         (MAlonzo.Code.Algebra.Structures.d1728
                                            (MAlonzo.Code.Algebra.Structures.du2214
                                               v18 v19 v20 v21 v23))))
                                   (d372
                                      v0 v1 v2 v3 v4 v5 v6 v7 (d620 v0 v1 v2 v3 v4 v5 v6 v7 v8 v14)
                                      (MAlonzo.Code.Data.Vec.C22 v7 v10 v11))
                                   (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d164
                                      v4
                                      (d372
                                         v0 v1 v2 v3 v4 v5 v6 v7 v8
                                         (MAlonzo.Code.Data.Vec.C22 v7 v10 v11))
                                      (d372
                                         v0 v1 v2 v3 v4 v5 v6 v7 v14
                                         (MAlonzo.Code.Data.Vec.C22 v7 v10 v11)))
                                   v10 v10)
                                (let v18
                                       = coe
                                           MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d164
                                           v4 in
                                 let v19
                                       = coe
                                           MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                                           v4 in
                                 let v20
                                       = coe
                                           MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d170
                                           v4 in
                                 let v21
                                       = coe
                                           MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d172
                                           v4 in
                                 let v22
                                       = coe
                                           MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d174
                                           v4 in
                                 let v23
                                       = coe
                                           MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d60
                                           v22 in
                                 MAlonzo.Code.Relation.Binary.Core.d516
                                   (MAlonzo.Code.Algebra.Structures.d140
                                      (MAlonzo.Code.Algebra.Structures.d454
                                         (MAlonzo.Code.Algebra.Structures.d1542
                                            (MAlonzo.Code.Algebra.Structures.d1728
                                               (MAlonzo.Code.Algebra.Structures.du2214
                                                  v18 v19 v20 v21 v23)))))
                                   v10))
                             (let v18
                                    = coe
                                        MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d164
                                        v4 in
                              let v19
                                    = coe
                                        MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                                        v4 in
                              let v20
                                    = coe
                                        MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d170
                                        v4 in
                              let v21
                                    = coe
                                        MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d172
                                        v4 in
                              let v22
                                    = coe
                                        MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d174
                                        v4 in
                              let v23
                                    = coe
                                        MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d60
                                        v22 in
                              MAlonzo.Code.Algebra.Structures.d144
                                (MAlonzo.Code.Algebra.Structures.d454
                                   (MAlonzo.Code.Algebra.Structures.d1542
                                      (MAlonzo.Code.Algebra.Structures.d1728
                                         (MAlonzo.Code.Algebra.Structures.du2214
                                            v18 v19 v20 v21 v23))))
                                (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                                   v4
                                   (d372
                                      v0 v1 v2 v3 v4 v5 v6 v7 (d620 v0 v1 v2 v3 v4 v5 v6 v7 v8 v14)
                                      (MAlonzo.Code.Data.Vec.C22 v7 v10 v11))
                                   v10)
                                (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                                   v4
                                   (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d164
                                      v4
                                      (d372
                                         v0 v1 v2 v3 v4 v5 v6 v7 v8
                                         (MAlonzo.Code.Data.Vec.C22 v7 v10 v11))
                                      (d372
                                         v0 v1 v2 v3 v4 v5 v6 v7 v14
                                         (MAlonzo.Code.Data.Vec.C22 v7 v10 v11)))
                                   v10)
                                (du376 v0 v1 v2 v3 v4 v5 v6 v15 v11)
                                (du376 v0 v1 v2 v3 v4 v5 v6 v15 v11))
                             (let v18
                                    = coe
                                        MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d164
                                        v4 in
                              let v19
                                    = coe
                                        MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                                        v4 in
                              let v20
                                    = coe
                                        MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d170
                                        v4 in
                              let v21
                                    = coe
                                        MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d172
                                        v4 in
                              let v22
                                    = coe
                                        MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d174
                                        v4 in
                              let v23
                                    = coe
                                        MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d60
                                        v22 in
                              MAlonzo.Code.Relation.Binary.Core.d516
                                (MAlonzo.Code.Algebra.Structures.d140
                                   (MAlonzo.Code.Algebra.Structures.d454
                                      (MAlonzo.Code.Algebra.Structures.d1542
                                         (MAlonzo.Code.Algebra.Structures.d1728
                                            (MAlonzo.Code.Algebra.Structures.du2214
                                               v18 v19 v20 v21 v23)))))
                                (du376 v0 v1 v2 v3 v4 v5 v6 v15 v11)))
                          (let v18
                                 = let v18
                                         = coe
                                             MAlonzo.Code.Algebra.C463
                                             (coe
                                                MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d164
                                                v4)
                                             (coe
                                                MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                                                v4)
                                             (coe
                                                MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d170
                                                v4)
                                             (coe
                                                MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d172
                                                v4)
                                             (coe
                                                MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d60
                                                (coe
                                                   MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d174
                                                   v4)) in
                                   let v19 = coe MAlonzo.Code.Algebra.du984 v18 in
                                   let v20
                                         = coe
                                             MAlonzo.Code.Algebra.C333
                                             (coe MAlonzo.Code.Algebra.d712 v19)
                                             (coe MAlonzo.Code.Algebra.d714 v19)
                                             (coe MAlonzo.Code.Algebra.d716 v19)
                                             (coe MAlonzo.Code.Algebra.d718 v19)
                                             (coe
                                                MAlonzo.Code.Algebra.Structures.d1728
                                                (coe MAlonzo.Code.Algebra.d720 v19)) in
                                   let v21
                                         = coe
                                             MAlonzo.Code.Algebra.C97
                                             (coe MAlonzo.Code.Algebra.d616 v20)
                                             (coe MAlonzo.Code.Algebra.d620 v20)
                                             (coe
                                                MAlonzo.Code.Algebra.Structures.d1542
                                                (coe MAlonzo.Code.Algebra.d624 v20)) in
                                   coe
                                     MAlonzo.Code.Relation.Binary.C143
                                     (coe
                                        MAlonzo.Code.Algebra.Structures.d140
                                        (coe
                                           MAlonzo.Code.Algebra.Structures.d294
                                           (coe
                                              MAlonzo.Code.Algebra.d100
                                              (coe MAlonzo.Code.Algebra.du186 v21)))) in
                           MAlonzo.Code.Relation.Binary.PreorderReasoning.du72
                             (MAlonzo.Code.Relation.Binary.du150 v18)
                             (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d164
                                v4
                                (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                                   v4
                                   (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d164
                                      v4
                                      (d372
                                         v0 v1 v2 v3 v4 v5 v6 v7 v8
                                         (MAlonzo.Code.Data.Vec.C22 v7 v10 v11))
                                      (d372
                                         v0 v1 v2 v3 v4 v5 v6 v7 v14
                                         (MAlonzo.Code.Data.Vec.C22 v7 v10 v11)))
                                   v10)
                                (du376 v0 v1 v2 v3 v4 v5 v6 v15 v11))
                             (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d164
                                v4
                                (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                                   v4
                                   (d372
                                      v0 v1 v2 v3 v4 v5 v6 v7 v8
                                      (MAlonzo.Code.Data.Vec.C22 v7 v10 v11))
                                   v10)
                                (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d164
                                   v4
                                   (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                                      v4
                                      (d372
                                         v0 v1 v2 v3 v4 v5 v6 v7 v14
                                         (MAlonzo.Code.Data.Vec.C22 v7 v10 v11))
                                      v10)
                                   (du376 v0 v1 v2 v3 v4 v5 v6 v15 v11)))
                             (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d164
                                v4
                                (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                                   v4
                                   (d372
                                      v0 v1 v2 v3 v4 v5 v6 v7 v8
                                      (MAlonzo.Code.Data.Vec.C22 v7 v10 v11))
                                   v10)
                                (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d164
                                   v4
                                   (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                                      v4
                                      (d372
                                         v0 v1 v2 v3 v4 v5 v6 v7 v14
                                         (MAlonzo.Code.Data.Vec.C22 v7 v10 v11))
                                      v10)
                                   (du376 v0 v1 v2 v3 v4 v5 v6 v15 v11)))
                             (MAlonzo.Code.Algebra.RingSolver.Lemmas.du176
                                v4
                                (d372
                                   v0 v1 v2 v3 v4 v5 v6 v7 v8
                                   (MAlonzo.Code.Data.Vec.C22 v7 v10 v11))
                                (d372
                                   v0 v1 v2 v3 v4 v5 v6 v7 v14
                                   (MAlonzo.Code.Data.Vec.C22 v7 v10 v11))
                                (du376 v0 v1 v2 v3 v4 v5 v6 v15 v11) v10)
                             (let v19
                                    = let v19
                                            = coe
                                                MAlonzo.Code.Algebra.C463
                                                (coe
                                                   MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d164
                                                   v4)
                                                (coe
                                                   MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                                                   v4)
                                                (coe
                                                   MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d170
                                                   v4)
                                                (coe
                                                   MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d172
                                                   v4)
                                                (coe
                                                   MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d60
                                                   (coe
                                                      MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d174
                                                      v4)) in
                                      let v20 = coe MAlonzo.Code.Algebra.du984 v19 in
                                      let v21
                                            = coe
                                                MAlonzo.Code.Algebra.C333
                                                (coe MAlonzo.Code.Algebra.d712 v20)
                                                (coe MAlonzo.Code.Algebra.d714 v20)
                                                (coe MAlonzo.Code.Algebra.d716 v20)
                                                (coe MAlonzo.Code.Algebra.d718 v20)
                                                (coe
                                                   MAlonzo.Code.Algebra.Structures.d1728
                                                   (coe MAlonzo.Code.Algebra.d720 v20)) in
                                      let v22
                                            = coe
                                                MAlonzo.Code.Algebra.C97
                                                (coe MAlonzo.Code.Algebra.d616 v21)
                                                (coe MAlonzo.Code.Algebra.d620 v21)
                                                (coe
                                                   MAlonzo.Code.Algebra.Structures.d1542
                                                   (coe MAlonzo.Code.Algebra.d624 v21)) in
                                      coe
                                        MAlonzo.Code.Relation.Binary.C143
                                        (coe
                                           MAlonzo.Code.Algebra.Structures.d140
                                           (coe
                                              MAlonzo.Code.Algebra.Structures.d294
                                              (coe
                                                 MAlonzo.Code.Algebra.d100
                                                 (coe MAlonzo.Code.Algebra.du186 v22)))) in
                              let v20
                                    = coe
                                        MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d164
                                        v4
                                        (coe
                                           MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                                           v4
                                           (coe
                                              d372 v0 v1 v2 v3 v4 v5 v6 v7 v8
                                              (coe MAlonzo.Code.Data.Vec.C22 v7 v10 v11))
                                           v10)
                                        (coe
                                           MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d164
                                           v4
                                           (coe
                                              MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                                              v4
                                              (coe
                                                 d372 v0 v1 v2 v3 v4 v5 v6 v7 v14
                                                 (coe MAlonzo.Code.Data.Vec.C22 v7 v10 v11))
                                              v10)
                                           (coe du376 v0 v1 v2 v3 v4 v5 v6 v15 v11)) in
                              MAlonzo.Code.Relation.Binary.PreorderReasoning.C56
                                (MAlonzo.Code.Relation.Binary.d38
                                   (MAlonzo.Code.Relation.Binary.d92
                                      (MAlonzo.Code.Relation.Binary.du150 v19))
                                   v20 v20
                                   (MAlonzo.Code.Relation.Binary.Core.d516
                                      (MAlonzo.Code.Relation.Binary.d36
                                         (MAlonzo.Code.Relation.Binary.d92
                                            (MAlonzo.Code.Relation.Binary.du150 v19)))
                                      v20))))))
             _ -> coe MAlonzo.RTE.mazUnreachableError
      C362 v12 v13 v14
        -> case coe v9 of
             C358 v15
               -> coe
                    MAlonzo.Code.Relation.Binary.PreorderReasoning.d62
                    (let v16
                           = let v16
                                   = coe
                                       MAlonzo.Code.Algebra.C463
                                       (coe
                                          MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d164
                                          v4)
                                       (coe
                                          MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                                          v4)
                                       (coe
                                          MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d170
                                          v4)
                                       (coe
                                          MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d172
                                          v4)
                                       (coe
                                          MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d60
                                          (coe
                                             MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d174
                                             v4)) in
                             let v17 = coe MAlonzo.Code.Algebra.du984 v16 in
                             let v18
                                   = coe
                                       MAlonzo.Code.Algebra.C333 (coe MAlonzo.Code.Algebra.d712 v17)
                                       (coe MAlonzo.Code.Algebra.d714 v17)
                                       (coe MAlonzo.Code.Algebra.d716 v17)
                                       (coe MAlonzo.Code.Algebra.d718 v17)
                                       (coe
                                          MAlonzo.Code.Algebra.Structures.d1728
                                          (coe MAlonzo.Code.Algebra.d720 v17)) in
                             let v19
                                   = coe
                                       MAlonzo.Code.Algebra.C97 (coe MAlonzo.Code.Algebra.d616 v18)
                                       (coe MAlonzo.Code.Algebra.d620 v18)
                                       (coe
                                          MAlonzo.Code.Algebra.Structures.d1542
                                          (coe MAlonzo.Code.Algebra.d624 v18)) in
                             coe
                               MAlonzo.Code.Relation.Binary.C143
                               (coe
                                  MAlonzo.Code.Algebra.Structures.d140
                                  (coe
                                     MAlonzo.Code.Algebra.Structures.d294
                                     (coe
                                        MAlonzo.Code.Algebra.d100
                                        (coe MAlonzo.Code.Algebra.du186 v19)))) in
                     MAlonzo.Code.Relation.Binary.PreorderReasoning.du72
                       (MAlonzo.Code.Relation.Binary.du150 v16)
                       (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d164
                          v4
                          (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                             v4
                             (d372
                                v0 v1 v2 v3 v4 v5 v6 v7 (C362 v7 v13 v14)
                                (MAlonzo.Code.Data.Vec.C22 v7 v10 v11))
                             v10)
                          (du376 v0 v1 v2 v3 v4 v5 v6 (du578 v3 v7) v11))
                       (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d164
                          v4
                          (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                             v4
                             (d372
                                v0 v1 v2 v3 v4 v5 v6 v7 (C362 v7 v13 v14)
                                (MAlonzo.Code.Data.Vec.C22 v7 v10 v11))
                             v10)
                          (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d170 v4))
                       (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d164
                          v4
                          (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                             v4
                             (d372
                                v0 v1 v2 v3 v4 v5 v6 v7 (C362 v7 v13 v14)
                                (MAlonzo.Code.Data.Vec.C22 v7 v10 v11))
                             v10)
                          (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d170 v4))
                       (MAlonzo.Code.Function.du176
                          (let v17
                                 = coe
                                     MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d164
                                     v4 in
                           let v18
                                 = coe
                                     MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                                     v4 in
                           let v19
                                 = coe
                                     MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d170
                                     v4 in
                           let v20
                                 = coe
                                     MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d172
                                     v4 in
                           let v21
                                 = coe
                                     MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d174
                                     v4 in
                           let v22
                                 = coe
                                     MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d60
                                     v21 in
                           MAlonzo.Code.Relation.Binary.Core.d516
                             (MAlonzo.Code.Algebra.Structures.d140
                                (MAlonzo.Code.Algebra.Structures.d454
                                   (MAlonzo.Code.Algebra.Structures.d1542
                                      (MAlonzo.Code.Algebra.Structures.d1728
                                         (MAlonzo.Code.Algebra.Structures.du2214
                                            v17 v18 v19 v20 v22)))))
                             (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                                v4
                                (d372
                                   v0 v1 v2 v3 v4 v5 v6 v7 (C362 v7 v13 v14)
                                   (MAlonzo.Code.Data.Vec.C22 v7 v10 v11))
                                v10))
                          (let v17
                                 = coe
                                     MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d164
                                     v4 in
                           let v18
                                 = coe
                                     MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                                     v4 in
                           let v19
                                 = coe
                                     MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d170
                                     v4 in
                           let v20
                                 = coe
                                     MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d172
                                     v4 in
                           let v21
                                 = coe
                                     MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d174
                                     v4 in
                           let v22
                                 = coe
                                     MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d60
                                     v21 in
                           MAlonzo.Code.Algebra.Structures.d144
                             (MAlonzo.Code.Algebra.Structures.d454
                                (MAlonzo.Code.Algebra.Structures.d1542
                                   (MAlonzo.Code.Algebra.Structures.d1728
                                      (MAlonzo.Code.Algebra.Structures.du2214
                                         v17 v18 v19 v20 v22))))
                             (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                                v4
                                (d372
                                   v0 v1 v2 v3 v4 v5 v6 v7 (C362 v7 v13 v14)
                                   (MAlonzo.Code.Data.Vec.C22 v7 v10 v11))
                                v10)
                             (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                                v4
                                (d372
                                   v0 v1 v2 v3 v4 v5 v6 v7 (C362 v7 v13 v14)
                                   (MAlonzo.Code.Data.Vec.C22 v7 v10 v11))
                                v10)
                             (du376 v0 v1 v2 v3 v4 v5 v6 (du578 v3 v7) v11)
                             (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d170 v4))
                          (du822 v0 v1 v2 v3 v4 v5 v6 v11))
                       (let v17
                              = let v17
                                      = coe
                                          MAlonzo.Code.Algebra.C463
                                          (coe
                                             MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d164
                                             v4)
                                          (coe
                                             MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                                             v4)
                                          (coe
                                             MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d170
                                             v4)
                                          (coe
                                             MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d172
                                             v4)
                                          (coe
                                             MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d60
                                             (coe
                                                MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d174
                                                v4)) in
                                let v18 = coe MAlonzo.Code.Algebra.du984 v17 in
                                let v19
                                      = coe
                                          MAlonzo.Code.Algebra.C333
                                          (coe MAlonzo.Code.Algebra.d712 v18)
                                          (coe MAlonzo.Code.Algebra.d714 v18)
                                          (coe MAlonzo.Code.Algebra.d716 v18)
                                          (coe MAlonzo.Code.Algebra.d718 v18)
                                          (coe
                                             MAlonzo.Code.Algebra.Structures.d1728
                                             (coe MAlonzo.Code.Algebra.d720 v18)) in
                                let v20
                                      = coe
                                          MAlonzo.Code.Algebra.C97
                                          (coe MAlonzo.Code.Algebra.d616 v19)
                                          (coe MAlonzo.Code.Algebra.d620 v19)
                                          (coe
                                             MAlonzo.Code.Algebra.Structures.d1542
                                             (coe MAlonzo.Code.Algebra.d624 v19)) in
                                coe
                                  MAlonzo.Code.Relation.Binary.C143
                                  (coe
                                     MAlonzo.Code.Algebra.Structures.d140
                                     (coe
                                        MAlonzo.Code.Algebra.Structures.d294
                                        (coe
                                           MAlonzo.Code.Algebra.d100
                                           (coe MAlonzo.Code.Algebra.du186 v20)))) in
                        let v18
                              = coe
                                  MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d164 v4
                                  (coe
                                     MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166 v4
                                     (coe
                                        d372 v0 v1 v2 v3 v4 v5 v6 v7 (coe C362 v7 v13 v14)
                                        (coe MAlonzo.Code.Data.Vec.C22 v7 v10 v11))
                                     v10)
                                  (coe
                                     MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d170
                                     v4) in
                        MAlonzo.Code.Relation.Binary.PreorderReasoning.C56
                          (MAlonzo.Code.Relation.Binary.d38
                             (MAlonzo.Code.Relation.Binary.d92
                                (MAlonzo.Code.Relation.Binary.du150 v17))
                             v18 v18
                             (MAlonzo.Code.Relation.Binary.Core.d516
                                (MAlonzo.Code.Relation.Binary.d36
                                   (MAlonzo.Code.Relation.Binary.d92
                                      (MAlonzo.Code.Relation.Binary.du150 v17)))
                                v18))))
             C362 v15 v16 v17
               -> coe
                    MAlonzo.Code.Relation.Binary.PreorderReasoning.d62
                    (let v18
                           = let v18
                                   = coe
                                       MAlonzo.Code.Algebra.C463
                                       (coe
                                          MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d164
                                          v4)
                                       (coe
                                          MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                                          v4)
                                       (coe
                                          MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d170
                                          v4)
                                       (coe
                                          MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d172
                                          v4)
                                       (coe
                                          MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d60
                                          (coe
                                             MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d174
                                             v4)) in
                             let v19 = coe MAlonzo.Code.Algebra.du984 v18 in
                             let v20
                                   = coe
                                       MAlonzo.Code.Algebra.C333 (coe MAlonzo.Code.Algebra.d712 v19)
                                       (coe MAlonzo.Code.Algebra.d714 v19)
                                       (coe MAlonzo.Code.Algebra.d716 v19)
                                       (coe MAlonzo.Code.Algebra.d718 v19)
                                       (coe
                                          MAlonzo.Code.Algebra.Structures.d1728
                                          (coe MAlonzo.Code.Algebra.d720 v19)) in
                             let v21
                                   = coe
                                       MAlonzo.Code.Algebra.C97 (coe MAlonzo.Code.Algebra.d616 v20)
                                       (coe MAlonzo.Code.Algebra.d620 v20)
                                       (coe
                                          MAlonzo.Code.Algebra.Structures.d1542
                                          (coe MAlonzo.Code.Algebra.d624 v20)) in
                             coe
                               MAlonzo.Code.Relation.Binary.C143
                               (coe
                                  MAlonzo.Code.Algebra.Structures.d140
                                  (coe
                                     MAlonzo.Code.Algebra.Structures.d294
                                     (coe
                                        MAlonzo.Code.Algebra.d100
                                        (coe MAlonzo.Code.Algebra.du186 v21)))) in
                     MAlonzo.Code.Relation.Binary.PreorderReasoning.du72
                       (MAlonzo.Code.Relation.Binary.du150 v18)
                       (d372
                          v0 v1 v2 v3 v4 v5 v6 v7
                          (d596
                             v0 v1 v2 v3 v4 v5 v6 v7 (d620 v0 v1 v2 v3 v4 v5 v6 v7 v8 v16) v17)
                          (MAlonzo.Code.Data.Vec.C22 v7 v10 v11))
                       (d372
                          v0 v1 v2 v3 v4 v5 v6 v7
                          (C362 v7 (d620 v0 v1 v2 v3 v4 v5 v6 v7 v8 v16) v17)
                          (MAlonzo.Code.Data.Vec.C22 v7 v10 v11))
                       (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d164
                          v4
                          (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                             v4
                             (d372
                                v0 v1 v2 v3 v4 v5 v6 v7 v8 (MAlonzo.Code.Data.Vec.C22 v7 v10 v11))
                             v10)
                          (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d164
                             v4
                             (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                                v4
                                (d372
                                   v0 v1 v2 v3 v4 v5 v6 v7 v16
                                   (MAlonzo.Code.Data.Vec.C22 v7 v10 v11))
                                v10)
                             (du376 v0 v1 v2 v3 v4 v5 v6 v17 v11)))
                       (d860
                          v0 v1 v2 v3 v4 v5 v6 v7 (d620 v0 v1 v2 v3 v4 v5 v6 v7 v8 v16) v17
                          (MAlonzo.Code.Data.Vec.C22 v7 v10 v11))
                       (let v19
                              = let v19
                                      = coe
                                          MAlonzo.Code.Algebra.C463
                                          (coe
                                             MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d164
                                             v4)
                                          (coe
                                             MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                                             v4)
                                          (coe
                                             MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d170
                                             v4)
                                          (coe
                                             MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d172
                                             v4)
                                          (coe
                                             MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d60
                                             (coe
                                                MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d174
                                                v4)) in
                                let v20 = coe MAlonzo.Code.Algebra.du984 v19 in
                                let v21
                                      = coe
                                          MAlonzo.Code.Algebra.C333
                                          (coe MAlonzo.Code.Algebra.d712 v20)
                                          (coe MAlonzo.Code.Algebra.d714 v20)
                                          (coe MAlonzo.Code.Algebra.d716 v20)
                                          (coe MAlonzo.Code.Algebra.d718 v20)
                                          (coe
                                             MAlonzo.Code.Algebra.Structures.d1728
                                             (coe MAlonzo.Code.Algebra.d720 v20)) in
                                let v22
                                      = coe
                                          MAlonzo.Code.Algebra.C97
                                          (coe MAlonzo.Code.Algebra.d616 v21)
                                          (coe MAlonzo.Code.Algebra.d620 v21)
                                          (coe
                                             MAlonzo.Code.Algebra.Structures.d1542
                                             (coe MAlonzo.Code.Algebra.d624 v21)) in
                                coe
                                  MAlonzo.Code.Relation.Binary.C143
                                  (coe
                                     MAlonzo.Code.Algebra.Structures.d140
                                     (coe
                                        MAlonzo.Code.Algebra.Structures.d294
                                        (coe
                                           MAlonzo.Code.Algebra.d100
                                           (coe MAlonzo.Code.Algebra.du186 v22)))) in
                        MAlonzo.Code.Relation.Binary.PreorderReasoning.du72
                          (MAlonzo.Code.Relation.Binary.du150 v19)
                          (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d164
                             v4
                             (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                                v4
                                (d372
                                   v0 v1 v2 v3 v4 v5 v6 v7 (d620 v0 v1 v2 v3 v4 v5 v6 v7 v8 v16)
                                   (MAlonzo.Code.Data.Vec.C22 v7 v10 v11))
                                v10)
                             (du376 v0 v1 v2 v3 v4 v5 v6 v17 v11))
                          (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d164
                             v4
                             (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                                v4
                                (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d164
                                   v4
                                   (d372
                                      v0 v1 v2 v3 v4 v5 v6 v7 v8
                                      (MAlonzo.Code.Data.Vec.C22 v7 v10 v11))
                                   (d372
                                      v0 v1 v2 v3 v4 v5 v6 v7 v16
                                      (MAlonzo.Code.Data.Vec.C22 v7 v10 v11)))
                                v10)
                             (du376 v0 v1 v2 v3 v4 v5 v6 v17 v11))
                          (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d164
                             v4
                             (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                                v4
                                (d372
                                   v0 v1 v2 v3 v4 v5 v6 v7 v8
                                   (MAlonzo.Code.Data.Vec.C22 v7 v10 v11))
                                v10)
                             (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d164
                                v4
                                (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                                   v4
                                   (d372
                                      v0 v1 v2 v3 v4 v5 v6 v7 v16
                                      (MAlonzo.Code.Data.Vec.C22 v7 v10 v11))
                                   v10)
                                (du376 v0 v1 v2 v3 v4 v5 v6 v17 v11)))
                          (MAlonzo.Code.Function.du176
                             (MAlonzo.Code.Function.du176
                                (d940
                                   v0 v1 v2 v3 v4 v5 v6 v7 v8 v16
                                   (MAlonzo.Code.Data.Vec.C22 v7 v10 v11))
                                (let v20
                                       = coe
                                           MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d164
                                           v4 in
                                 let v21
                                       = coe
                                           MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                                           v4 in
                                 let v22
                                       = coe
                                           MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d170
                                           v4 in
                                 let v23
                                       = coe
                                           MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d172
                                           v4 in
                                 let v24
                                       = coe
                                           MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d174
                                           v4 in
                                 let v25
                                       = coe
                                           MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d60
                                           v24 in
                                 MAlonzo.Code.Algebra.Structures.d144
                                   (MAlonzo.Code.Algebra.Structures.d294
                                      (MAlonzo.Code.Algebra.Structures.d1544
                                         (MAlonzo.Code.Algebra.Structures.d1728
                                            (MAlonzo.Code.Algebra.Structures.du2214
                                               v20 v21 v22 v23 v25))))
                                   (d372
                                      v0 v1 v2 v3 v4 v5 v6 v7 (d620 v0 v1 v2 v3 v4 v5 v6 v7 v8 v16)
                                      (MAlonzo.Code.Data.Vec.C22 v7 v10 v11))
                                   (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d164
                                      v4
                                      (d372
                                         v0 v1 v2 v3 v4 v5 v6 v7 v8
                                         (MAlonzo.Code.Data.Vec.C22 v7 v10 v11))
                                      (d372
                                         v0 v1 v2 v3 v4 v5 v6 v7 v16
                                         (MAlonzo.Code.Data.Vec.C22 v7 v10 v11)))
                                   v10 v10)
                                (let v20
                                       = coe
                                           MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d164
                                           v4 in
                                 let v21
                                       = coe
                                           MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                                           v4 in
                                 let v22
                                       = coe
                                           MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d170
                                           v4 in
                                 let v23
                                       = coe
                                           MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d172
                                           v4 in
                                 let v24
                                       = coe
                                           MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d174
                                           v4 in
                                 let v25
                                       = coe
                                           MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d60
                                           v24 in
                                 MAlonzo.Code.Relation.Binary.Core.d516
                                   (MAlonzo.Code.Algebra.Structures.d140
                                      (MAlonzo.Code.Algebra.Structures.d454
                                         (MAlonzo.Code.Algebra.Structures.d1542
                                            (MAlonzo.Code.Algebra.Structures.d1728
                                               (MAlonzo.Code.Algebra.Structures.du2214
                                                  v20 v21 v22 v23 v25)))))
                                   v10))
                             (let v20
                                    = coe
                                        MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d164
                                        v4 in
                              let v21
                                    = coe
                                        MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                                        v4 in
                              let v22
                                    = coe
                                        MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d170
                                        v4 in
                              let v23
                                    = coe
                                        MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d172
                                        v4 in
                              let v24
                                    = coe
                                        MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d174
                                        v4 in
                              let v25
                                    = coe
                                        MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d60
                                        v24 in
                              MAlonzo.Code.Algebra.Structures.d144
                                (MAlonzo.Code.Algebra.Structures.d454
                                   (MAlonzo.Code.Algebra.Structures.d1542
                                      (MAlonzo.Code.Algebra.Structures.d1728
                                         (MAlonzo.Code.Algebra.Structures.du2214
                                            v20 v21 v22 v23 v25))))
                                (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                                   v4
                                   (d372
                                      v0 v1 v2 v3 v4 v5 v6 v7 (d620 v0 v1 v2 v3 v4 v5 v6 v7 v8 v16)
                                      (MAlonzo.Code.Data.Vec.C22 v7 v10 v11))
                                   v10)
                                (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                                   v4
                                   (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d164
                                      v4
                                      (d372
                                         v0 v1 v2 v3 v4 v5 v6 v7 v8
                                         (MAlonzo.Code.Data.Vec.C22 v7 v10 v11))
                                      (d372
                                         v0 v1 v2 v3 v4 v5 v6 v7 v16
                                         (MAlonzo.Code.Data.Vec.C22 v7 v10 v11)))
                                   v10)
                                (du376 v0 v1 v2 v3 v4 v5 v6 v17 v11)
                                (du376 v0 v1 v2 v3 v4 v5 v6 v17 v11))
                             (let v20
                                    = coe
                                        MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d164
                                        v4 in
                              let v21
                                    = coe
                                        MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                                        v4 in
                              let v22
                                    = coe
                                        MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d170
                                        v4 in
                              let v23
                                    = coe
                                        MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d172
                                        v4 in
                              let v24
                                    = coe
                                        MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d174
                                        v4 in
                              let v25
                                    = coe
                                        MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d60
                                        v24 in
                              MAlonzo.Code.Relation.Binary.Core.d516
                                (MAlonzo.Code.Algebra.Structures.d140
                                   (MAlonzo.Code.Algebra.Structures.d454
                                      (MAlonzo.Code.Algebra.Structures.d1542
                                         (MAlonzo.Code.Algebra.Structures.d1728
                                            (MAlonzo.Code.Algebra.Structures.du2214
                                               v20 v21 v22 v23 v25)))))
                                (du376 v0 v1 v2 v3 v4 v5 v6 v17 v11)))
                          (let v20
                                 = let v20
                                         = coe
                                             MAlonzo.Code.Algebra.C463
                                             (coe
                                                MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d164
                                                v4)
                                             (coe
                                                MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                                                v4)
                                             (coe
                                                MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d170
                                                v4)
                                             (coe
                                                MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d172
                                                v4)
                                             (coe
                                                MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d60
                                                (coe
                                                   MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d174
                                                   v4)) in
                                   let v21 = coe MAlonzo.Code.Algebra.du984 v20 in
                                   let v22
                                         = coe
                                             MAlonzo.Code.Algebra.C333
                                             (coe MAlonzo.Code.Algebra.d712 v21)
                                             (coe MAlonzo.Code.Algebra.d714 v21)
                                             (coe MAlonzo.Code.Algebra.d716 v21)
                                             (coe MAlonzo.Code.Algebra.d718 v21)
                                             (coe
                                                MAlonzo.Code.Algebra.Structures.d1728
                                                (coe MAlonzo.Code.Algebra.d720 v21)) in
                                   let v23
                                         = coe
                                             MAlonzo.Code.Algebra.C97
                                             (coe MAlonzo.Code.Algebra.d616 v22)
                                             (coe MAlonzo.Code.Algebra.d620 v22)
                                             (coe
                                                MAlonzo.Code.Algebra.Structures.d1542
                                                (coe MAlonzo.Code.Algebra.d624 v22)) in
                                   coe
                                     MAlonzo.Code.Relation.Binary.C143
                                     (coe
                                        MAlonzo.Code.Algebra.Structures.d140
                                        (coe
                                           MAlonzo.Code.Algebra.Structures.d294
                                           (coe
                                              MAlonzo.Code.Algebra.d100
                                              (coe MAlonzo.Code.Algebra.du186 v23)))) in
                           MAlonzo.Code.Relation.Binary.PreorderReasoning.du72
                             (MAlonzo.Code.Relation.Binary.du150 v20)
                             (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d164
                                v4
                                (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                                   v4
                                   (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d164
                                      v4
                                      (d372
                                         v0 v1 v2 v3 v4 v5 v6 v7 v8
                                         (MAlonzo.Code.Data.Vec.C22 v7 v10 v11))
                                      (d372
                                         v0 v1 v2 v3 v4 v5 v6 v7 v16
                                         (MAlonzo.Code.Data.Vec.C22 v7 v10 v11)))
                                   v10)
                                (du376 v0 v1 v2 v3 v4 v5 v6 v17 v11))
                             (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d164
                                v4
                                (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                                   v4
                                   (d372
                                      v0 v1 v2 v3 v4 v5 v6 v7 v8
                                      (MAlonzo.Code.Data.Vec.C22 v7 v10 v11))
                                   v10)
                                (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d164
                                   v4
                                   (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                                      v4
                                      (d372
                                         v0 v1 v2 v3 v4 v5 v6 v7 v16
                                         (MAlonzo.Code.Data.Vec.C22 v7 v10 v11))
                                      v10)
                                   (du376 v0 v1 v2 v3 v4 v5 v6 v17 v11)))
                             (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d164
                                v4
                                (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                                   v4
                                   (d372
                                      v0 v1 v2 v3 v4 v5 v6 v7 v8
                                      (MAlonzo.Code.Data.Vec.C22 v7 v10 v11))
                                   v10)
                                (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d164
                                   v4
                                   (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                                      v4
                                      (d372
                                         v0 v1 v2 v3 v4 v5 v6 v7 v16
                                         (MAlonzo.Code.Data.Vec.C22 v7 v10 v11))
                                      v10)
                                   (du376 v0 v1 v2 v3 v4 v5 v6 v17 v11)))
                             (MAlonzo.Code.Algebra.RingSolver.Lemmas.du176
                                v4
                                (d372
                                   v0 v1 v2 v3 v4 v5 v6 v7 v8
                                   (MAlonzo.Code.Data.Vec.C22 v7 v10 v11))
                                (d372
                                   v0 v1 v2 v3 v4 v5 v6 v7 v16
                                   (MAlonzo.Code.Data.Vec.C22 v7 v10 v11))
                                (du376 v0 v1 v2 v3 v4 v5 v6 v17 v11) v10)
                             (let v21
                                    = let v21
                                            = coe
                                                MAlonzo.Code.Algebra.C463
                                                (coe
                                                   MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d164
                                                   v4)
                                                (coe
                                                   MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                                                   v4)
                                                (coe
                                                   MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d170
                                                   v4)
                                                (coe
                                                   MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d172
                                                   v4)
                                                (coe
                                                   MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d60
                                                   (coe
                                                      MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d174
                                                      v4)) in
                                      let v22 = coe MAlonzo.Code.Algebra.du984 v21 in
                                      let v23
                                            = coe
                                                MAlonzo.Code.Algebra.C333
                                                (coe MAlonzo.Code.Algebra.d712 v22)
                                                (coe MAlonzo.Code.Algebra.d714 v22)
                                                (coe MAlonzo.Code.Algebra.d716 v22)
                                                (coe MAlonzo.Code.Algebra.d718 v22)
                                                (coe
                                                   MAlonzo.Code.Algebra.Structures.d1728
                                                   (coe MAlonzo.Code.Algebra.d720 v22)) in
                                      let v24
                                            = coe
                                                MAlonzo.Code.Algebra.C97
                                                (coe MAlonzo.Code.Algebra.d616 v23)
                                                (coe MAlonzo.Code.Algebra.d620 v23)
                                                (coe
                                                   MAlonzo.Code.Algebra.Structures.d1542
                                                   (coe MAlonzo.Code.Algebra.d624 v23)) in
                                      coe
                                        MAlonzo.Code.Relation.Binary.C143
                                        (coe
                                           MAlonzo.Code.Algebra.Structures.d140
                                           (coe
                                              MAlonzo.Code.Algebra.Structures.d294
                                              (coe
                                                 MAlonzo.Code.Algebra.d100
                                                 (coe MAlonzo.Code.Algebra.du186 v24)))) in
                              let v22
                                    = coe
                                        MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d164
                                        v4
                                        (coe
                                           MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                                           v4
                                           (coe
                                              d372 v0 v1 v2 v3 v4 v5 v6 v7 v8
                                              (coe MAlonzo.Code.Data.Vec.C22 v7 v10 v11))
                                           v10)
                                        (coe
                                           MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d164
                                           v4
                                           (coe
                                              MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                                              v4
                                              (coe
                                                 d372 v0 v1 v2 v3 v4 v5 v6 v7 v16
                                                 (coe MAlonzo.Code.Data.Vec.C22 v7 v10 v11))
                                              v10)
                                           (coe du376 v0 v1 v2 v3 v4 v5 v6 v17 v11)) in
                              MAlonzo.Code.Relation.Binary.PreorderReasoning.C56
                                (MAlonzo.Code.Relation.Binary.d38
                                   (MAlonzo.Code.Relation.Binary.d92
                                      (MAlonzo.Code.Relation.Binary.du150 v21))
                                   v22 v22
                                   (MAlonzo.Code.Relation.Binary.Core.d516
                                      (MAlonzo.Code.Relation.Binary.d36
                                         (MAlonzo.Code.Relation.Binary.d92
                                            (MAlonzo.Code.Relation.Binary.du150 v21)))
                                      v22))))))
             _ -> coe MAlonzo.RTE.mazUnreachableError
      _ -> coe MAlonzo.RTE.mazUnreachableError
name1024 = "Algebra.RingSolver.*NH-homo"
d1024 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11
  = case coe v9 of
      C358 v12
        -> let v13
                 = coe
                     MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d164 v4 in
           let v14
                 = coe
                     MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166 v4 in
           let v15
                 = coe
                     MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d170 v4 in
           let v16
                 = coe
                     MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d172 v4 in
           let v17
                 = coe
                     MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d174 v4 in
           let v18
                 = coe
                     MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d60 v17 in
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
                         (coe
                            MAlonzo.Code.Algebra.Structures.du2214 v13 v14 v15 v16 v18)))))
             (coe
                MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166 v4
                (coe du376 v0 v1 v2 v3 v4 v5 v6 v8 v11)
                (coe
                   MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d170 v4))
             (coe MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d170 v4)
             (coe
                MAlonzo.Code.Data.Product.d28
                (let v19
                       = coe
                           MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166 v4 in
                 let v20
                       = coe
                           MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d170 v4 in
                 let v21
                       = coe
                           MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d174 v4 in
                 MAlonzo.Code.Algebra.Structures.du2204
                   v19 v20
                   (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d60 v21))
                (coe du376 v0 v1 v2 v3 v4 v5 v6 v8 v11))
      C362 v12 v13 v14
        -> let v15 = coe du436 v0 v1 v2 v3 v4 v5 v6 v8 (coe du578 v3 v7) in
           case coe v15 of
             MAlonzo.Code.Relation.Nullary.C22 v16
               -> coe
                    MAlonzo.Code.Relation.Binary.PreorderReasoning.d62
                    (let v17
                           = let v17
                                   = coe
                                       MAlonzo.Code.Algebra.C463
                                       (coe
                                          MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d164
                                          v4)
                                       (coe
                                          MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                                          v4)
                                       (coe
                                          MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d170
                                          v4)
                                       (coe
                                          MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d172
                                          v4)
                                       (coe
                                          MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d60
                                          (coe
                                             MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d174
                                             v4)) in
                             let v18 = coe MAlonzo.Code.Algebra.du984 v17 in
                             let v19
                                   = coe
                                       MAlonzo.Code.Algebra.C333 (coe MAlonzo.Code.Algebra.d712 v18)
                                       (coe MAlonzo.Code.Algebra.d714 v18)
                                       (coe MAlonzo.Code.Algebra.d716 v18)
                                       (coe MAlonzo.Code.Algebra.d718 v18)
                                       (coe
                                          MAlonzo.Code.Algebra.Structures.d1728
                                          (coe MAlonzo.Code.Algebra.d720 v18)) in
                             let v20
                                   = coe
                                       MAlonzo.Code.Algebra.C97 (coe MAlonzo.Code.Algebra.d616 v19)
                                       (coe MAlonzo.Code.Algebra.d620 v19)
                                       (coe
                                          MAlonzo.Code.Algebra.Structures.d1542
                                          (coe MAlonzo.Code.Algebra.d624 v19)) in
                             coe
                               MAlonzo.Code.Relation.Binary.C143
                               (coe
                                  MAlonzo.Code.Algebra.Structures.d140
                                  (coe
                                     MAlonzo.Code.Algebra.Structures.d294
                                     (coe
                                        MAlonzo.Code.Algebra.d100
                                        (coe MAlonzo.Code.Algebra.du186 v20)))) in
                     MAlonzo.Code.Relation.Binary.PreorderReasoning.du72
                       (MAlonzo.Code.Relation.Binary.du150 v17)
                       (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d170 v4)
                       (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                          v4 (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d170 v4)
                          (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d164
                             v4
                             (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                                v4
                                (d372
                                   v0 v1 v2 v3 v4 v5 v6 v7 v13
                                   (MAlonzo.Code.Data.Vec.C22 v7 v10 v11))
                                v10)
                             (du376 v0 v1 v2 v3 v4 v5 v6 v14 v11)))
                       (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                          v4 (du376 v0 v1 v2 v3 v4 v5 v6 v8 v11)
                          (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d164
                             v4
                             (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                                v4
                                (d372
                                   v0 v1 v2 v3 v4 v5 v6 v7 v13
                                   (MAlonzo.Code.Data.Vec.C22 v7 v10 v11))
                                v10)
                             (du376 v0 v1 v2 v3 v4 v5 v6 v14 v11)))
                       (let v18
                              = coe
                                  MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d164 v4 in
                        let v19
                              = coe
                                  MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166 v4 in
                        let v20
                              = coe
                                  MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d170 v4 in
                        let v21
                              = coe
                                  MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d172 v4 in
                        let v22
                              = coe
                                  MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d174 v4 in
                        let v23
                              = coe
                                  MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d60 v22 in
                        MAlonzo.Code.Relation.Binary.Core.d518
                          (MAlonzo.Code.Algebra.Structures.d140
                             (MAlonzo.Code.Algebra.Structures.d454
                                (MAlonzo.Code.Algebra.Structures.d1542
                                   (MAlonzo.Code.Algebra.Structures.d1728
                                      (MAlonzo.Code.Algebra.Structures.du2214
                                         v18 v19 v20 v21 v23)))))
                          (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                             v4 (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d170 v4)
                             (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d164
                                v4
                                (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                                   v4
                                   (d372
                                      v0 v1 v2 v3 v4 v5 v6 v7 v13
                                      (MAlonzo.Code.Data.Vec.C22 v7 v10 v11))
                                   v10)
                                (du376 v0 v1 v2 v3 v4 v5 v6 v14 v11)))
                          (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d170 v4)
                          (MAlonzo.Code.Data.Product.d26
                             (let v24
                                    = coe
                                        MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                                        v4 in
                              let v25
                                    = coe
                                        MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d170
                                        v4 in
                              let v26
                                    = coe
                                        MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d174
                                        v4 in
                              MAlonzo.Code.Algebra.Structures.du2204
                                v24 v25
                                (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d60 v26))
                             (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d164
                                v4
                                (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                                   v4
                                   (d372
                                      v0 v1 v2 v3 v4 v5 v6 v7 v13
                                      (MAlonzo.Code.Data.Vec.C22 v7 v10 v11))
                                   v10)
                                (du376 v0 v1 v2 v3 v4 v5 v6 v14 v11))))
                       (let v18
                              = let v18
                                      = coe
                                          MAlonzo.Code.Algebra.C463
                                          (coe
                                             MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d164
                                             v4)
                                          (coe
                                             MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                                             v4)
                                          (coe
                                             MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d170
                                             v4)
                                          (coe
                                             MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d172
                                             v4)
                                          (coe
                                             MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d60
                                             (coe
                                                MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d174
                                                v4)) in
                                let v19 = coe MAlonzo.Code.Algebra.du984 v18 in
                                let v20
                                      = coe
                                          MAlonzo.Code.Algebra.C333
                                          (coe MAlonzo.Code.Algebra.d712 v19)
                                          (coe MAlonzo.Code.Algebra.d714 v19)
                                          (coe MAlonzo.Code.Algebra.d716 v19)
                                          (coe MAlonzo.Code.Algebra.d718 v19)
                                          (coe
                                             MAlonzo.Code.Algebra.Structures.d1728
                                             (coe MAlonzo.Code.Algebra.d720 v19)) in
                                let v21
                                      = coe
                                          MAlonzo.Code.Algebra.C97
                                          (coe MAlonzo.Code.Algebra.d616 v20)
                                          (coe MAlonzo.Code.Algebra.d620 v20)
                                          (coe
                                             MAlonzo.Code.Algebra.Structures.d1542
                                             (coe MAlonzo.Code.Algebra.d624 v20)) in
                                coe
                                  MAlonzo.Code.Relation.Binary.C143
                                  (coe
                                     MAlonzo.Code.Algebra.Structures.d140
                                     (coe
                                        MAlonzo.Code.Algebra.Structures.d294
                                        (coe
                                           MAlonzo.Code.Algebra.d100
                                           (coe MAlonzo.Code.Algebra.du186 v21)))) in
                        MAlonzo.Code.Relation.Binary.PreorderReasoning.du72
                          (MAlonzo.Code.Relation.Binary.du150 v18)
                          (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                             v4 (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d170 v4)
                             (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d164
                                v4
                                (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                                   v4
                                   (d372
                                      v0 v1 v2 v3 v4 v5 v6 v7 v13
                                      (MAlonzo.Code.Data.Vec.C22 v7 v10 v11))
                                   v10)
                                (du376 v0 v1 v2 v3 v4 v5 v6 v14 v11)))
                          (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                             v4 (du376 v0 v1 v2 v3 v4 v5 v6 v8 v11)
                             (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d164
                                v4
                                (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                                   v4
                                   (d372
                                      v0 v1 v2 v3 v4 v5 v6 v7 v13
                                      (MAlonzo.Code.Data.Vec.C22 v7 v10 v11))
                                   v10)
                                (du376 v0 v1 v2 v3 v4 v5 v6 v14 v11)))
                          (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                             v4 (du376 v0 v1 v2 v3 v4 v5 v6 v8 v11)
                             (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d164
                                v4
                                (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                                   v4
                                   (d372
                                      v0 v1 v2 v3 v4 v5 v6 v7 v13
                                      (MAlonzo.Code.Data.Vec.C22 v7 v10 v11))
                                   v10)
                                (du376 v0 v1 v2 v3 v4 v5 v6 v14 v11)))
                          (MAlonzo.Code.Function.du176
                             (d834 v0 v1 v2 v3 v4 v5 v6 v7 v8 v16 v11)
                             (let v19
                                    = coe
                                        MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d164
                                        v4 in
                              let v20
                                    = coe
                                        MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                                        v4 in
                              let v21
                                    = coe
                                        MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d170
                                        v4 in
                              let v22
                                    = coe
                                        MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d172
                                        v4 in
                              let v23
                                    = coe
                                        MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d174
                                        v4 in
                              let v24
                                    = coe
                                        MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d60
                                        v23 in
                              MAlonzo.Code.Algebra.Structures.d144
                                (MAlonzo.Code.Algebra.Structures.d294
                                   (MAlonzo.Code.Algebra.Structures.d1544
                                      (MAlonzo.Code.Algebra.Structures.d1728
                                         (MAlonzo.Code.Algebra.Structures.du2214
                                            v19 v20 v21 v22 v24))))
                                (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d170 v4)
                                (du376 v0 v1 v2 v3 v4 v5 v6 v8 v11)
                                (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d164
                                   v4
                                   (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                                      v4
                                      (d372
                                         v0 v1 v2 v3 v4 v5 v6 v7 v13
                                         (MAlonzo.Code.Data.Vec.C22 v7 v10 v11))
                                      v10)
                                   (du376 v0 v1 v2 v3 v4 v5 v6 v14 v11))
                                (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d164
                                   v4
                                   (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                                      v4
                                      (d372
                                         v0 v1 v2 v3 v4 v5 v6 v7 v13
                                         (MAlonzo.Code.Data.Vec.C22 v7 v10 v11))
                                      v10)
                                   (du376 v0 v1 v2 v3 v4 v5 v6 v14 v11)))
                             (let v19
                                    = coe
                                        MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d164
                                        v4 in
                              let v20
                                    = coe
                                        MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                                        v4 in
                              let v21
                                    = coe
                                        MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d170
                                        v4 in
                              let v22
                                    = coe
                                        MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d172
                                        v4 in
                              let v23
                                    = coe
                                        MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d174
                                        v4 in
                              let v24
                                    = coe
                                        MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d60
                                        v23 in
                              MAlonzo.Code.Relation.Binary.Core.d516
                                (MAlonzo.Code.Algebra.Structures.d140
                                   (MAlonzo.Code.Algebra.Structures.d454
                                      (MAlonzo.Code.Algebra.Structures.d1542
                                         (MAlonzo.Code.Algebra.Structures.d1728
                                            (MAlonzo.Code.Algebra.Structures.du2214
                                               v19 v20 v21 v22 v24)))))
                                (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d164
                                   v4
                                   (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                                      v4
                                      (d372
                                         v0 v1 v2 v3 v4 v5 v6 v7 v13
                                         (MAlonzo.Code.Data.Vec.C22 v7 v10 v11))
                                      v10)
                                   (du376 v0 v1 v2 v3 v4 v5 v6 v14 v11))))
                          (let v19
                                 = let v19
                                         = coe
                                             MAlonzo.Code.Algebra.C463
                                             (coe
                                                MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d164
                                                v4)
                                             (coe
                                                MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                                                v4)
                                             (coe
                                                MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d170
                                                v4)
                                             (coe
                                                MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d172
                                                v4)
                                             (coe
                                                MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d60
                                                (coe
                                                   MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d174
                                                   v4)) in
                                   let v20 = coe MAlonzo.Code.Algebra.du984 v19 in
                                   let v21
                                         = coe
                                             MAlonzo.Code.Algebra.C333
                                             (coe MAlonzo.Code.Algebra.d712 v20)
                                             (coe MAlonzo.Code.Algebra.d714 v20)
                                             (coe MAlonzo.Code.Algebra.d716 v20)
                                             (coe MAlonzo.Code.Algebra.d718 v20)
                                             (coe
                                                MAlonzo.Code.Algebra.Structures.d1728
                                                (coe MAlonzo.Code.Algebra.d720 v20)) in
                                   let v22
                                         = coe
                                             MAlonzo.Code.Algebra.C97
                                             (coe MAlonzo.Code.Algebra.d616 v21)
                                             (coe MAlonzo.Code.Algebra.d620 v21)
                                             (coe
                                                MAlonzo.Code.Algebra.Structures.d1542
                                                (coe MAlonzo.Code.Algebra.d624 v21)) in
                                   coe
                                     MAlonzo.Code.Relation.Binary.C143
                                     (coe
                                        MAlonzo.Code.Algebra.Structures.d140
                                        (coe
                                           MAlonzo.Code.Algebra.Structures.d294
                                           (coe
                                              MAlonzo.Code.Algebra.d100
                                              (coe MAlonzo.Code.Algebra.du186 v22)))) in
                           let v20
                                 = coe
                                     MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166 v4
                                     (coe du376 v0 v1 v2 v3 v4 v5 v6 v8 v11)
                                     (coe
                                        MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d164
                                        v4
                                        (coe
                                           MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                                           v4
                                           (coe
                                              d372 v0 v1 v2 v3 v4 v5 v6 v7 v13
                                              (coe MAlonzo.Code.Data.Vec.C22 v7 v10 v11))
                                           v10)
                                        (coe du376 v0 v1 v2 v3 v4 v5 v6 v14 v11)) in
                           MAlonzo.Code.Relation.Binary.PreorderReasoning.C56
                             (MAlonzo.Code.Relation.Binary.d38
                                (MAlonzo.Code.Relation.Binary.d92
                                   (MAlonzo.Code.Relation.Binary.du150 v19))
                                v20 v20
                                (MAlonzo.Code.Relation.Binary.Core.d516
                                   (MAlonzo.Code.Relation.Binary.d36
                                      (MAlonzo.Code.Relation.Binary.d92
                                         (MAlonzo.Code.Relation.Binary.du150 v19)))
                                   v20)))))
             MAlonzo.Code.Relation.Nullary.C26
               -> coe
                    MAlonzo.Code.Relation.Binary.PreorderReasoning.d62
                    (let v17
                           = let v17
                                   = coe
                                       MAlonzo.Code.Algebra.C463
                                       (coe
                                          MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d164
                                          v4)
                                       (coe
                                          MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                                          v4)
                                       (coe
                                          MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d170
                                          v4)
                                       (coe
                                          MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d172
                                          v4)
                                       (coe
                                          MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d60
                                          (coe
                                             MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d174
                                             v4)) in
                             let v18 = coe MAlonzo.Code.Algebra.du984 v17 in
                             let v19
                                   = coe
                                       MAlonzo.Code.Algebra.C333 (coe MAlonzo.Code.Algebra.d712 v18)
                                       (coe MAlonzo.Code.Algebra.d714 v18)
                                       (coe MAlonzo.Code.Algebra.d716 v18)
                                       (coe MAlonzo.Code.Algebra.d718 v18)
                                       (coe
                                          MAlonzo.Code.Algebra.Structures.d1728
                                          (coe MAlonzo.Code.Algebra.d720 v18)) in
                             let v20
                                   = coe
                                       MAlonzo.Code.Algebra.C97 (coe MAlonzo.Code.Algebra.d616 v19)
                                       (coe MAlonzo.Code.Algebra.d620 v19)
                                       (coe
                                          MAlonzo.Code.Algebra.Structures.d1542
                                          (coe MAlonzo.Code.Algebra.d624 v19)) in
                             coe
                               MAlonzo.Code.Relation.Binary.C143
                               (coe
                                  MAlonzo.Code.Algebra.Structures.d140
                                  (coe
                                     MAlonzo.Code.Algebra.Structures.d294
                                     (coe
                                        MAlonzo.Code.Algebra.d100
                                        (coe MAlonzo.Code.Algebra.du186 v20)))) in
                     MAlonzo.Code.Relation.Binary.PreorderReasoning.du72
                       (MAlonzo.Code.Relation.Binary.du150 v17)
                       (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d164
                          v4
                          (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                             v4
                             (d372
                                v0 v1 v2 v3 v4 v5 v6 v7 (d662 v0 v1 v2 v3 v4 v5 v6 v7 v8 v13)
                                (MAlonzo.Code.Data.Vec.C22 v7 v10 v11))
                             v10)
                          (du376
                             v0 v1 v2 v3 v4 v5 v6 (du674 v0 v1 v2 v3 v4 v5 v6 v8 v14) v11))
                       (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d164
                          v4
                          (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                             v4
                             (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                                v4 (du376 v0 v1 v2 v3 v4 v5 v6 v8 v11)
                                (d372
                                   v0 v1 v2 v3 v4 v5 v6 v7 v13
                                   (MAlonzo.Code.Data.Vec.C22 v7 v10 v11)))
                             v10)
                          (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                             v4 (du376 v0 v1 v2 v3 v4 v5 v6 v8 v11)
                             (du376 v0 v1 v2 v3 v4 v5 v6 v14 v11)))
                       (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                          v4 (du376 v0 v1 v2 v3 v4 v5 v6 v8 v11)
                          (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d164
                             v4
                             (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                                v4
                                (d372
                                   v0 v1 v2 v3 v4 v5 v6 v7 v13
                                   (MAlonzo.Code.Data.Vec.C22 v7 v10 v11))
                                v10)
                             (du376 v0 v1 v2 v3 v4 v5 v6 v14 v11)))
                       (MAlonzo.Code.Function.du176
                          (MAlonzo.Code.Function.du176
                             (d1024 v0 v1 v2 v3 v4 v5 v6 v7 v8 v13 v10 v11)
                             (let v18
                                    = coe
                                        MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d164
                                        v4 in
                              let v19
                                    = coe
                                        MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                                        v4 in
                              let v20
                                    = coe
                                        MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d170
                                        v4 in
                              let v21
                                    = coe
                                        MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d172
                                        v4 in
                              let v22
                                    = coe
                                        MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d174
                                        v4 in
                              let v23
                                    = coe
                                        MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d60
                                        v22 in
                              MAlonzo.Code.Algebra.Structures.d144
                                (MAlonzo.Code.Algebra.Structures.d294
                                   (MAlonzo.Code.Algebra.Structures.d1544
                                      (MAlonzo.Code.Algebra.Structures.d1728
                                         (MAlonzo.Code.Algebra.Structures.du2214
                                            v18 v19 v20 v21 v23))))
                                (d372
                                   v0 v1 v2 v3 v4 v5 v6 v7 (d662 v0 v1 v2 v3 v4 v5 v6 v7 v8 v13)
                                   (MAlonzo.Code.Data.Vec.C22 v7 v10 v11))
                                (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                                   v4 (du376 v0 v1 v2 v3 v4 v5 v6 v8 v11)
                                   (d372
                                      v0 v1 v2 v3 v4 v5 v6 v7 v13
                                      (MAlonzo.Code.Data.Vec.C22 v7 v10 v11)))
                                v10 v10)
                             (let v18
                                    = coe
                                        MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d164
                                        v4 in
                              let v19
                                    = coe
                                        MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                                        v4 in
                              let v20
                                    = coe
                                        MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d170
                                        v4 in
                              let v21
                                    = coe
                                        MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d172
                                        v4 in
                              let v22
                                    = coe
                                        MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d174
                                        v4 in
                              let v23
                                    = coe
                                        MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d60
                                        v22 in
                              MAlonzo.Code.Relation.Binary.Core.d516
                                (MAlonzo.Code.Algebra.Structures.d140
                                   (MAlonzo.Code.Algebra.Structures.d454
                                      (MAlonzo.Code.Algebra.Structures.d1542
                                         (MAlonzo.Code.Algebra.Structures.d1728
                                            (MAlonzo.Code.Algebra.Structures.du2214
                                               v18 v19 v20 v21 v23)))))
                                v10))
                          (let v18
                                 = coe
                                     MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d164
                                     v4 in
                           let v19
                                 = coe
                                     MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                                     v4 in
                           let v20
                                 = coe
                                     MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d170
                                     v4 in
                           let v21
                                 = coe
                                     MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d172
                                     v4 in
                           let v22
                                 = coe
                                     MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d174
                                     v4 in
                           let v23
                                 = coe
                                     MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d60
                                     v22 in
                           MAlonzo.Code.Algebra.Structures.d144
                             (MAlonzo.Code.Algebra.Structures.d454
                                (MAlonzo.Code.Algebra.Structures.d1542
                                   (MAlonzo.Code.Algebra.Structures.d1728
                                      (MAlonzo.Code.Algebra.Structures.du2214
                                         v18 v19 v20 v21 v23))))
                             (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                                v4
                                (d372
                                   v0 v1 v2 v3 v4 v5 v6 v7 (d662 v0 v1 v2 v3 v4 v5 v6 v7 v8 v13)
                                   (MAlonzo.Code.Data.Vec.C22 v7 v10 v11))
                                v10)
                             (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                                v4
                                (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                                   v4 (du376 v0 v1 v2 v3 v4 v5 v6 v8 v11)
                                   (d372
                                      v0 v1 v2 v3 v4 v5 v6 v7 v13
                                      (MAlonzo.Code.Data.Vec.C22 v7 v10 v11)))
                                v10)
                             (du376
                                v0 v1 v2 v3 v4 v5 v6 (du674 v0 v1 v2 v3 v4 v5 v6 v8 v14) v11)
                             (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                                v4 (du376 v0 v1 v2 v3 v4 v5 v6 v8 v11)
                                (du376 v0 v1 v2 v3 v4 v5 v6 v14 v11)))
                          (du1056 v0 v1 v2 v3 v4 v5 v6 v8 v14 v11))
                       (let v18
                              = let v18
                                      = coe
                                          MAlonzo.Code.Algebra.C463
                                          (coe
                                             MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d164
                                             v4)
                                          (coe
                                             MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                                             v4)
                                          (coe
                                             MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d170
                                             v4)
                                          (coe
                                             MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d172
                                             v4)
                                          (coe
                                             MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d60
                                             (coe
                                                MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d174
                                                v4)) in
                                let v19 = coe MAlonzo.Code.Algebra.du984 v18 in
                                let v20
                                      = coe
                                          MAlonzo.Code.Algebra.C333
                                          (coe MAlonzo.Code.Algebra.d712 v19)
                                          (coe MAlonzo.Code.Algebra.d714 v19)
                                          (coe MAlonzo.Code.Algebra.d716 v19)
                                          (coe MAlonzo.Code.Algebra.d718 v19)
                                          (coe
                                             MAlonzo.Code.Algebra.Structures.d1728
                                             (coe MAlonzo.Code.Algebra.d720 v19)) in
                                let v21
                                      = coe
                                          MAlonzo.Code.Algebra.C97
                                          (coe MAlonzo.Code.Algebra.d616 v20)
                                          (coe MAlonzo.Code.Algebra.d620 v20)
                                          (coe
                                             MAlonzo.Code.Algebra.Structures.d1542
                                             (coe MAlonzo.Code.Algebra.d624 v20)) in
                                coe
                                  MAlonzo.Code.Relation.Binary.C143
                                  (coe
                                     MAlonzo.Code.Algebra.Structures.d140
                                     (coe
                                        MAlonzo.Code.Algebra.Structures.d294
                                        (coe
                                           MAlonzo.Code.Algebra.d100
                                           (coe MAlonzo.Code.Algebra.du186 v21)))) in
                        MAlonzo.Code.Relation.Binary.PreorderReasoning.du72
                          (MAlonzo.Code.Relation.Binary.du150 v18)
                          (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d164
                             v4
                             (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                                v4
                                (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                                   v4 (du376 v0 v1 v2 v3 v4 v5 v6 v8 v11)
                                   (d372
                                      v0 v1 v2 v3 v4 v5 v6 v7 v13
                                      (MAlonzo.Code.Data.Vec.C22 v7 v10 v11)))
                                v10)
                             (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                                v4 (du376 v0 v1 v2 v3 v4 v5 v6 v8 v11)
                                (du376 v0 v1 v2 v3 v4 v5 v6 v14 v11)))
                          (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                             v4 (du376 v0 v1 v2 v3 v4 v5 v6 v8 v11)
                             (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d164
                                v4
                                (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                                   v4
                                   (d372
                                      v0 v1 v2 v3 v4 v5 v6 v7 v13
                                      (MAlonzo.Code.Data.Vec.C22 v7 v10 v11))
                                   v10)
                                (du376 v0 v1 v2 v3 v4 v5 v6 v14 v11)))
                          (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                             v4 (du376 v0 v1 v2 v3 v4 v5 v6 v8 v11)
                             (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d164
                                v4
                                (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                                   v4
                                   (d372
                                      v0 v1 v2 v3 v4 v5 v6 v7 v13
                                      (MAlonzo.Code.Data.Vec.C22 v7 v10 v11))
                                   v10)
                                (du376 v0 v1 v2 v3 v4 v5 v6 v14 v11)))
                          (MAlonzo.Code.Algebra.RingSolver.Lemmas.du240
                             v4 (du376 v0 v1 v2 v3 v4 v5 v6 v8 v11)
                             (d372
                                v0 v1 v2 v3 v4 v5 v6 v7 v13 (MAlonzo.Code.Data.Vec.C22 v7 v10 v11))
                             (du376 v0 v1 v2 v3 v4 v5 v6 v14 v11) v10)
                          (let v19
                                 = let v19
                                         = coe
                                             MAlonzo.Code.Algebra.C463
                                             (coe
                                                MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d164
                                                v4)
                                             (coe
                                                MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                                                v4)
                                             (coe
                                                MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d170
                                                v4)
                                             (coe
                                                MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d172
                                                v4)
                                             (coe
                                                MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d60
                                                (coe
                                                   MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d174
                                                   v4)) in
                                   let v20 = coe MAlonzo.Code.Algebra.du984 v19 in
                                   let v21
                                         = coe
                                             MAlonzo.Code.Algebra.C333
                                             (coe MAlonzo.Code.Algebra.d712 v20)
                                             (coe MAlonzo.Code.Algebra.d714 v20)
                                             (coe MAlonzo.Code.Algebra.d716 v20)
                                             (coe MAlonzo.Code.Algebra.d718 v20)
                                             (coe
                                                MAlonzo.Code.Algebra.Structures.d1728
                                                (coe MAlonzo.Code.Algebra.d720 v20)) in
                                   let v22
                                         = coe
                                             MAlonzo.Code.Algebra.C97
                                             (coe MAlonzo.Code.Algebra.d616 v21)
                                             (coe MAlonzo.Code.Algebra.d620 v21)
                                             (coe
                                                MAlonzo.Code.Algebra.Structures.d1542
                                                (coe MAlonzo.Code.Algebra.d624 v21)) in
                                   coe
                                     MAlonzo.Code.Relation.Binary.C143
                                     (coe
                                        MAlonzo.Code.Algebra.Structures.d140
                                        (coe
                                           MAlonzo.Code.Algebra.Structures.d294
                                           (coe
                                              MAlonzo.Code.Algebra.d100
                                              (coe MAlonzo.Code.Algebra.du186 v22)))) in
                           let v20
                                 = coe
                                     MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166 v4
                                     (coe du376 v0 v1 v2 v3 v4 v5 v6 v8 v11)
                                     (coe
                                        MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d164
                                        v4
                                        (coe
                                           MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                                           v4
                                           (coe
                                              d372 v0 v1 v2 v3 v4 v5 v6 v7 v13
                                              (coe MAlonzo.Code.Data.Vec.C22 v7 v10 v11))
                                           v10)
                                        (coe du376 v0 v1 v2 v3 v4 v5 v6 v14 v11)) in
                           MAlonzo.Code.Relation.Binary.PreorderReasoning.C56
                             (MAlonzo.Code.Relation.Binary.d38
                                (MAlonzo.Code.Relation.Binary.d92
                                   (MAlonzo.Code.Relation.Binary.du150 v19))
                                v20 v20
                                (MAlonzo.Code.Relation.Binary.Core.d516
                                   (MAlonzo.Code.Relation.Binary.d36
                                      (MAlonzo.Code.Relation.Binary.d92
                                         (MAlonzo.Code.Relation.Binary.du150 v19)))
                                   v20)))))
             _ -> coe MAlonzo.RTE.mazUnreachableError
      _ -> coe MAlonzo.RTE.mazUnreachableError
name1036 = "Algebra.RingSolver.*HN-homo"
d1036 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11
  = case coe v8 of
      C358 v12
        -> let v13
                 = coe
                     MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d164 v4 in
           let v14
                 = coe
                     MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166 v4 in
           let v15
                 = coe
                     MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d170 v4 in
           let v16
                 = coe
                     MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d172 v4 in
           let v17
                 = coe
                     MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d174 v4 in
           let v18
                 = coe
                     MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d60 v17 in
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
                         (coe
                            MAlonzo.Code.Algebra.Structures.du2214 v13 v14 v15 v16 v18)))))
             (coe
                MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166 v4
                (coe MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d170 v4)
                (coe du376 v0 v1 v2 v3 v4 v5 v6 v9 v11))
             (coe MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d170 v4)
             (coe
                MAlonzo.Code.Data.Product.d26
                (let v19
                       = coe
                           MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166 v4 in
                 let v20
                       = coe
                           MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d170 v4 in
                 let v21
                       = coe
                           MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d174 v4 in
                 MAlonzo.Code.Algebra.Structures.du2204
                   v19 v20
                   (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d60 v21))
                (coe du376 v0 v1 v2 v3 v4 v5 v6 v9 v11))
      C362 v12 v13 v14
        -> let v15 = coe du436 v0 v1 v2 v3 v4 v5 v6 v9 (coe du578 v3 v7) in
           case coe v15 of
             MAlonzo.Code.Relation.Nullary.C22 v16
               -> coe
                    MAlonzo.Code.Relation.Binary.PreorderReasoning.d62
                    (let v17
                           = let v17
                                   = coe
                                       MAlonzo.Code.Algebra.C463
                                       (coe
                                          MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d164
                                          v4)
                                       (coe
                                          MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                                          v4)
                                       (coe
                                          MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d170
                                          v4)
                                       (coe
                                          MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d172
                                          v4)
                                       (coe
                                          MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d60
                                          (coe
                                             MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d174
                                             v4)) in
                             let v18 = coe MAlonzo.Code.Algebra.du984 v17 in
                             let v19
                                   = coe
                                       MAlonzo.Code.Algebra.C333 (coe MAlonzo.Code.Algebra.d712 v18)
                                       (coe MAlonzo.Code.Algebra.d714 v18)
                                       (coe MAlonzo.Code.Algebra.d716 v18)
                                       (coe MAlonzo.Code.Algebra.d718 v18)
                                       (coe
                                          MAlonzo.Code.Algebra.Structures.d1728
                                          (coe MAlonzo.Code.Algebra.d720 v18)) in
                             let v20
                                   = coe
                                       MAlonzo.Code.Algebra.C97 (coe MAlonzo.Code.Algebra.d616 v19)
                                       (coe MAlonzo.Code.Algebra.d620 v19)
                                       (coe
                                          MAlonzo.Code.Algebra.Structures.d1542
                                          (coe MAlonzo.Code.Algebra.d624 v19)) in
                             coe
                               MAlonzo.Code.Relation.Binary.C143
                               (coe
                                  MAlonzo.Code.Algebra.Structures.d140
                                  (coe
                                     MAlonzo.Code.Algebra.Structures.d294
                                     (coe
                                        MAlonzo.Code.Algebra.d100
                                        (coe MAlonzo.Code.Algebra.du186 v20)))) in
                     MAlonzo.Code.Relation.Binary.PreorderReasoning.du72
                       (MAlonzo.Code.Relation.Binary.du150 v17)
                       (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d170 v4)
                       (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                          v4
                          (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d164
                             v4
                             (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                                v4
                                (d372
                                   v0 v1 v2 v3 v4 v5 v6 v7 v13
                                   (MAlonzo.Code.Data.Vec.C22 v7 v10 v11))
                                v10)
                             (du376 v0 v1 v2 v3 v4 v5 v6 v14 v11))
                          (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d170 v4))
                       (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                          v4
                          (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d164
                             v4
                             (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                                v4
                                (d372
                                   v0 v1 v2 v3 v4 v5 v6 v7 v13
                                   (MAlonzo.Code.Data.Vec.C22 v7 v10 v11))
                                v10)
                             (du376 v0 v1 v2 v3 v4 v5 v6 v14 v11))
                          (du376 v0 v1 v2 v3 v4 v5 v6 v9 v11))
                       (let v18
                              = coe
                                  MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d164 v4 in
                        let v19
                              = coe
                                  MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166 v4 in
                        let v20
                              = coe
                                  MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d170 v4 in
                        let v21
                              = coe
                                  MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d172 v4 in
                        let v22
                              = coe
                                  MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d174 v4 in
                        let v23
                              = coe
                                  MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d60 v22 in
                        MAlonzo.Code.Relation.Binary.Core.d518
                          (MAlonzo.Code.Algebra.Structures.d140
                             (MAlonzo.Code.Algebra.Structures.d454
                                (MAlonzo.Code.Algebra.Structures.d1542
                                   (MAlonzo.Code.Algebra.Structures.d1728
                                      (MAlonzo.Code.Algebra.Structures.du2214
                                         v18 v19 v20 v21 v23)))))
                          (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                             v4
                             (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d164
                                v4
                                (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                                   v4
                                   (d372
                                      v0 v1 v2 v3 v4 v5 v6 v7 v13
                                      (MAlonzo.Code.Data.Vec.C22 v7 v10 v11))
                                   v10)
                                (du376 v0 v1 v2 v3 v4 v5 v6 v14 v11))
                             (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d170 v4))
                          (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d170 v4)
                          (MAlonzo.Code.Data.Product.d28
                             (let v24
                                    = coe
                                        MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                                        v4 in
                              let v25
                                    = coe
                                        MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d170
                                        v4 in
                              let v26
                                    = coe
                                        MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d174
                                        v4 in
                              MAlonzo.Code.Algebra.Structures.du2204
                                v24 v25
                                (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d60 v26))
                             (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d164
                                v4
                                (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                                   v4
                                   (d372
                                      v0 v1 v2 v3 v4 v5 v6 v7 v13
                                      (MAlonzo.Code.Data.Vec.C22 v7 v10 v11))
                                   v10)
                                (du376 v0 v1 v2 v3 v4 v5 v6 v14 v11))))
                       (let v18
                              = let v18
                                      = coe
                                          MAlonzo.Code.Algebra.C463
                                          (coe
                                             MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d164
                                             v4)
                                          (coe
                                             MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                                             v4)
                                          (coe
                                             MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d170
                                             v4)
                                          (coe
                                             MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d172
                                             v4)
                                          (coe
                                             MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d60
                                             (coe
                                                MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d174
                                                v4)) in
                                let v19 = coe MAlonzo.Code.Algebra.du984 v18 in
                                let v20
                                      = coe
                                          MAlonzo.Code.Algebra.C333
                                          (coe MAlonzo.Code.Algebra.d712 v19)
                                          (coe MAlonzo.Code.Algebra.d714 v19)
                                          (coe MAlonzo.Code.Algebra.d716 v19)
                                          (coe MAlonzo.Code.Algebra.d718 v19)
                                          (coe
                                             MAlonzo.Code.Algebra.Structures.d1728
                                             (coe MAlonzo.Code.Algebra.d720 v19)) in
                                let v21
                                      = coe
                                          MAlonzo.Code.Algebra.C97
                                          (coe MAlonzo.Code.Algebra.d616 v20)
                                          (coe MAlonzo.Code.Algebra.d620 v20)
                                          (coe
                                             MAlonzo.Code.Algebra.Structures.d1542
                                             (coe MAlonzo.Code.Algebra.d624 v20)) in
                                coe
                                  MAlonzo.Code.Relation.Binary.C143
                                  (coe
                                     MAlonzo.Code.Algebra.Structures.d140
                                     (coe
                                        MAlonzo.Code.Algebra.Structures.d294
                                        (coe
                                           MAlonzo.Code.Algebra.d100
                                           (coe MAlonzo.Code.Algebra.du186 v21)))) in
                        MAlonzo.Code.Relation.Binary.PreorderReasoning.du72
                          (MAlonzo.Code.Relation.Binary.du150 v18)
                          (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                             v4
                             (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d164
                                v4
                                (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                                   v4
                                   (d372
                                      v0 v1 v2 v3 v4 v5 v6 v7 v13
                                      (MAlonzo.Code.Data.Vec.C22 v7 v10 v11))
                                   v10)
                                (du376 v0 v1 v2 v3 v4 v5 v6 v14 v11))
                             (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d170 v4))
                          (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                             v4
                             (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d164
                                v4
                                (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                                   v4
                                   (d372
                                      v0 v1 v2 v3 v4 v5 v6 v7 v13
                                      (MAlonzo.Code.Data.Vec.C22 v7 v10 v11))
                                   v10)
                                (du376 v0 v1 v2 v3 v4 v5 v6 v14 v11))
                             (du376 v0 v1 v2 v3 v4 v5 v6 v9 v11))
                          (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                             v4
                             (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d164
                                v4
                                (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                                   v4
                                   (d372
                                      v0 v1 v2 v3 v4 v5 v6 v7 v13
                                      (MAlonzo.Code.Data.Vec.C22 v7 v10 v11))
                                   v10)
                                (du376 v0 v1 v2 v3 v4 v5 v6 v14 v11))
                             (du376 v0 v1 v2 v3 v4 v5 v6 v9 v11))
                          (MAlonzo.Code.Function.du176
                             (let v19
                                    = coe
                                        MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d164
                                        v4 in
                              let v20
                                    = coe
                                        MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                                        v4 in
                              let v21
                                    = coe
                                        MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d170
                                        v4 in
                              let v22
                                    = coe
                                        MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d172
                                        v4 in
                              let v23
                                    = coe
                                        MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d174
                                        v4 in
                              let v24
                                    = coe
                                        MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d60
                                        v23 in
                              MAlonzo.Code.Relation.Binary.Core.d516
                                (MAlonzo.Code.Algebra.Structures.d140
                                   (MAlonzo.Code.Algebra.Structures.d454
                                      (MAlonzo.Code.Algebra.Structures.d1542
                                         (MAlonzo.Code.Algebra.Structures.d1728
                                            (MAlonzo.Code.Algebra.Structures.du2214
                                               v19 v20 v21 v22 v24)))))
                                (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d164
                                   v4
                                   (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                                      v4
                                      (d372
                                         v0 v1 v2 v3 v4 v5 v6 v7 v13
                                         (MAlonzo.Code.Data.Vec.C22 v7 v10 v11))
                                      v10)
                                   (du376 v0 v1 v2 v3 v4 v5 v6 v14 v11)))
                             (let v19
                                    = coe
                                        MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d164
                                        v4 in
                              let v20
                                    = coe
                                        MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                                        v4 in
                              let v21
                                    = coe
                                        MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d170
                                        v4 in
                              let v22
                                    = coe
                                        MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d172
                                        v4 in
                              let v23
                                    = coe
                                        MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d174
                                        v4 in
                              let v24
                                    = coe
                                        MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d60
                                        v23 in
                              MAlonzo.Code.Algebra.Structures.d144
                                (MAlonzo.Code.Algebra.Structures.d294
                                   (MAlonzo.Code.Algebra.Structures.d1544
                                      (MAlonzo.Code.Algebra.Structures.d1728
                                         (MAlonzo.Code.Algebra.Structures.du2214
                                            v19 v20 v21 v22 v24))))
                                (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d164
                                   v4
                                   (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                                      v4
                                      (d372
                                         v0 v1 v2 v3 v4 v5 v6 v7 v13
                                         (MAlonzo.Code.Data.Vec.C22 v7 v10 v11))
                                      v10)
                                   (du376 v0 v1 v2 v3 v4 v5 v6 v14 v11))
                                (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d164
                                   v4
                                   (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                                      v4
                                      (d372
                                         v0 v1 v2 v3 v4 v5 v6 v7 v13
                                         (MAlonzo.Code.Data.Vec.C22 v7 v10 v11))
                                      v10)
                                   (du376 v0 v1 v2 v3 v4 v5 v6 v14 v11))
                                (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d170 v4)
                                (du376 v0 v1 v2 v3 v4 v5 v6 v9 v11))
                             (d834 v0 v1 v2 v3 v4 v5 v6 v7 v9 v16 v11))
                          (let v19
                                 = let v19
                                         = coe
                                             MAlonzo.Code.Algebra.C463
                                             (coe
                                                MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d164
                                                v4)
                                             (coe
                                                MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                                                v4)
                                             (coe
                                                MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d170
                                                v4)
                                             (coe
                                                MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d172
                                                v4)
                                             (coe
                                                MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d60
                                                (coe
                                                   MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d174
                                                   v4)) in
                                   let v20 = coe MAlonzo.Code.Algebra.du984 v19 in
                                   let v21
                                         = coe
                                             MAlonzo.Code.Algebra.C333
                                             (coe MAlonzo.Code.Algebra.d712 v20)
                                             (coe MAlonzo.Code.Algebra.d714 v20)
                                             (coe MAlonzo.Code.Algebra.d716 v20)
                                             (coe MAlonzo.Code.Algebra.d718 v20)
                                             (coe
                                                MAlonzo.Code.Algebra.Structures.d1728
                                                (coe MAlonzo.Code.Algebra.d720 v20)) in
                                   let v22
                                         = coe
                                             MAlonzo.Code.Algebra.C97
                                             (coe MAlonzo.Code.Algebra.d616 v21)
                                             (coe MAlonzo.Code.Algebra.d620 v21)
                                             (coe
                                                MAlonzo.Code.Algebra.Structures.d1542
                                                (coe MAlonzo.Code.Algebra.d624 v21)) in
                                   coe
                                     MAlonzo.Code.Relation.Binary.C143
                                     (coe
                                        MAlonzo.Code.Algebra.Structures.d140
                                        (coe
                                           MAlonzo.Code.Algebra.Structures.d294
                                           (coe
                                              MAlonzo.Code.Algebra.d100
                                              (coe MAlonzo.Code.Algebra.du186 v22)))) in
                           let v20
                                 = coe
                                     MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166 v4
                                     (coe
                                        MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d164
                                        v4
                                        (coe
                                           MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                                           v4
                                           (coe
                                              d372 v0 v1 v2 v3 v4 v5 v6 v7 v13
                                              (coe MAlonzo.Code.Data.Vec.C22 v7 v10 v11))
                                           v10)
                                        (coe du376 v0 v1 v2 v3 v4 v5 v6 v14 v11))
                                     (coe du376 v0 v1 v2 v3 v4 v5 v6 v9 v11) in
                           MAlonzo.Code.Relation.Binary.PreorderReasoning.C56
                             (MAlonzo.Code.Relation.Binary.d38
                                (MAlonzo.Code.Relation.Binary.d92
                                   (MAlonzo.Code.Relation.Binary.du150 v19))
                                v20 v20
                                (MAlonzo.Code.Relation.Binary.Core.d516
                                   (MAlonzo.Code.Relation.Binary.d36
                                      (MAlonzo.Code.Relation.Binary.d92
                                         (MAlonzo.Code.Relation.Binary.du150 v19)))
                                   v20)))))
             MAlonzo.Code.Relation.Nullary.C26
               -> coe
                    MAlonzo.Code.Relation.Binary.PreorderReasoning.d62
                    (let v17
                           = let v17
                                   = coe
                                       MAlonzo.Code.Algebra.C463
                                       (coe
                                          MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d164
                                          v4)
                                       (coe
                                          MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                                          v4)
                                       (coe
                                          MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d170
                                          v4)
                                       (coe
                                          MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d172
                                          v4)
                                       (coe
                                          MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d60
                                          (coe
                                             MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d174
                                             v4)) in
                             let v18 = coe MAlonzo.Code.Algebra.du984 v17 in
                             let v19
                                   = coe
                                       MAlonzo.Code.Algebra.C333 (coe MAlonzo.Code.Algebra.d712 v18)
                                       (coe MAlonzo.Code.Algebra.d714 v18)
                                       (coe MAlonzo.Code.Algebra.d716 v18)
                                       (coe MAlonzo.Code.Algebra.d718 v18)
                                       (coe
                                          MAlonzo.Code.Algebra.Structures.d1728
                                          (coe MAlonzo.Code.Algebra.d720 v18)) in
                             let v20
                                   = coe
                                       MAlonzo.Code.Algebra.C97 (coe MAlonzo.Code.Algebra.d616 v19)
                                       (coe MAlonzo.Code.Algebra.d620 v19)
                                       (coe
                                          MAlonzo.Code.Algebra.Structures.d1542
                                          (coe MAlonzo.Code.Algebra.d624 v19)) in
                             coe
                               MAlonzo.Code.Relation.Binary.C143
                               (coe
                                  MAlonzo.Code.Algebra.Structures.d140
                                  (coe
                                     MAlonzo.Code.Algebra.Structures.d294
                                     (coe
                                        MAlonzo.Code.Algebra.d100
                                        (coe MAlonzo.Code.Algebra.du186 v20)))) in
                     MAlonzo.Code.Relation.Binary.PreorderReasoning.du72
                       (MAlonzo.Code.Relation.Binary.du150 v17)
                       (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d164
                          v4
                          (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                             v4
                             (d372
                                v0 v1 v2 v3 v4 v5 v6 v7 (d666 v0 v1 v2 v3 v4 v5 v6 v7 v13 v9)
                                (MAlonzo.Code.Data.Vec.C22 v7 v10 v11))
                             v10)
                          (du376
                             v0 v1 v2 v3 v4 v5 v6 (du674 v0 v1 v2 v3 v4 v5 v6 v14 v9) v11))
                       (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d164
                          v4
                          (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                             v4
                             (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                                v4
                                (d372
                                   v0 v1 v2 v3 v4 v5 v6 v7 v13
                                   (MAlonzo.Code.Data.Vec.C22 v7 v10 v11))
                                (du376 v0 v1 v2 v3 v4 v5 v6 v9 v11))
                             v10)
                          (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                             v4 (du376 v0 v1 v2 v3 v4 v5 v6 v14 v11)
                             (du376 v0 v1 v2 v3 v4 v5 v6 v9 v11)))
                       (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                          v4
                          (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d164
                             v4
                             (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                                v4
                                (d372
                                   v0 v1 v2 v3 v4 v5 v6 v7 v13
                                   (MAlonzo.Code.Data.Vec.C22 v7 v10 v11))
                                v10)
                             (du376 v0 v1 v2 v3 v4 v5 v6 v14 v11))
                          (du376 v0 v1 v2 v3 v4 v5 v6 v9 v11))
                       (MAlonzo.Code.Function.du176
                          (MAlonzo.Code.Function.du176
                             (d1036 v0 v1 v2 v3 v4 v5 v6 v7 v13 v9 v10 v11)
                             (let v18
                                    = coe
                                        MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d164
                                        v4 in
                              let v19
                                    = coe
                                        MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                                        v4 in
                              let v20
                                    = coe
                                        MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d170
                                        v4 in
                              let v21
                                    = coe
                                        MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d172
                                        v4 in
                              let v22
                                    = coe
                                        MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d174
                                        v4 in
                              let v23
                                    = coe
                                        MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d60
                                        v22 in
                              MAlonzo.Code.Algebra.Structures.d144
                                (MAlonzo.Code.Algebra.Structures.d294
                                   (MAlonzo.Code.Algebra.Structures.d1544
                                      (MAlonzo.Code.Algebra.Structures.d1728
                                         (MAlonzo.Code.Algebra.Structures.du2214
                                            v18 v19 v20 v21 v23))))
                                (d372
                                   v0 v1 v2 v3 v4 v5 v6 v7 (d666 v0 v1 v2 v3 v4 v5 v6 v7 v13 v9)
                                   (MAlonzo.Code.Data.Vec.C22 v7 v10 v11))
                                (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                                   v4
                                   (d372
                                      v0 v1 v2 v3 v4 v5 v6 v7 v13
                                      (MAlonzo.Code.Data.Vec.C22 v7 v10 v11))
                                   (du376 v0 v1 v2 v3 v4 v5 v6 v9 v11))
                                v10 v10)
                             (let v18
                                    = coe
                                        MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d164
                                        v4 in
                              let v19
                                    = coe
                                        MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                                        v4 in
                              let v20
                                    = coe
                                        MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d170
                                        v4 in
                              let v21
                                    = coe
                                        MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d172
                                        v4 in
                              let v22
                                    = coe
                                        MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d174
                                        v4 in
                              let v23
                                    = coe
                                        MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d60
                                        v22 in
                              MAlonzo.Code.Relation.Binary.Core.d516
                                (MAlonzo.Code.Algebra.Structures.d140
                                   (MAlonzo.Code.Algebra.Structures.d454
                                      (MAlonzo.Code.Algebra.Structures.d1542
                                         (MAlonzo.Code.Algebra.Structures.d1728
                                            (MAlonzo.Code.Algebra.Structures.du2214
                                               v18 v19 v20 v21 v23)))))
                                v10))
                          (let v18
                                 = coe
                                     MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d164
                                     v4 in
                           let v19
                                 = coe
                                     MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                                     v4 in
                           let v20
                                 = coe
                                     MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d170
                                     v4 in
                           let v21
                                 = coe
                                     MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d172
                                     v4 in
                           let v22
                                 = coe
                                     MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d174
                                     v4 in
                           let v23
                                 = coe
                                     MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d60
                                     v22 in
                           MAlonzo.Code.Algebra.Structures.d144
                             (MAlonzo.Code.Algebra.Structures.d454
                                (MAlonzo.Code.Algebra.Structures.d1542
                                   (MAlonzo.Code.Algebra.Structures.d1728
                                      (MAlonzo.Code.Algebra.Structures.du2214
                                         v18 v19 v20 v21 v23))))
                             (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                                v4
                                (d372
                                   v0 v1 v2 v3 v4 v5 v6 v7 (d666 v0 v1 v2 v3 v4 v5 v6 v7 v13 v9)
                                   (MAlonzo.Code.Data.Vec.C22 v7 v10 v11))
                                v10)
                             (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                                v4
                                (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                                   v4
                                   (d372
                                      v0 v1 v2 v3 v4 v5 v6 v7 v13
                                      (MAlonzo.Code.Data.Vec.C22 v7 v10 v11))
                                   (du376 v0 v1 v2 v3 v4 v5 v6 v9 v11))
                                v10)
                             (du376
                                v0 v1 v2 v3 v4 v5 v6 (du674 v0 v1 v2 v3 v4 v5 v6 v14 v9) v11)
                             (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                                v4 (du376 v0 v1 v2 v3 v4 v5 v6 v14 v11)
                                (du376 v0 v1 v2 v3 v4 v5 v6 v9 v11)))
                          (du1056 v0 v1 v2 v3 v4 v5 v6 v14 v9 v11))
                       (let v18
                              = let v18
                                      = coe
                                          MAlonzo.Code.Algebra.C463
                                          (coe
                                             MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d164
                                             v4)
                                          (coe
                                             MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                                             v4)
                                          (coe
                                             MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d170
                                             v4)
                                          (coe
                                             MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d172
                                             v4)
                                          (coe
                                             MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d60
                                             (coe
                                                MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d174
                                                v4)) in
                                let v19 = coe MAlonzo.Code.Algebra.du984 v18 in
                                let v20
                                      = coe
                                          MAlonzo.Code.Algebra.C333
                                          (coe MAlonzo.Code.Algebra.d712 v19)
                                          (coe MAlonzo.Code.Algebra.d714 v19)
                                          (coe MAlonzo.Code.Algebra.d716 v19)
                                          (coe MAlonzo.Code.Algebra.d718 v19)
                                          (coe
                                             MAlonzo.Code.Algebra.Structures.d1728
                                             (coe MAlonzo.Code.Algebra.d720 v19)) in
                                let v21
                                      = coe
                                          MAlonzo.Code.Algebra.C97
                                          (coe MAlonzo.Code.Algebra.d616 v20)
                                          (coe MAlonzo.Code.Algebra.d620 v20)
                                          (coe
                                             MAlonzo.Code.Algebra.Structures.d1542
                                             (coe MAlonzo.Code.Algebra.d624 v20)) in
                                coe
                                  MAlonzo.Code.Relation.Binary.C143
                                  (coe
                                     MAlonzo.Code.Algebra.Structures.d140
                                     (coe
                                        MAlonzo.Code.Algebra.Structures.d294
                                        (coe
                                           MAlonzo.Code.Algebra.d100
                                           (coe MAlonzo.Code.Algebra.du186 v21)))) in
                        MAlonzo.Code.Relation.Binary.PreorderReasoning.du72
                          (MAlonzo.Code.Relation.Binary.du150 v18)
                          (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d164
                             v4
                             (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                                v4
                                (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                                   v4
                                   (d372
                                      v0 v1 v2 v3 v4 v5 v6 v7 v13
                                      (MAlonzo.Code.Data.Vec.C22 v7 v10 v11))
                                   (du376 v0 v1 v2 v3 v4 v5 v6 v9 v11))
                                v10)
                             (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                                v4 (du376 v0 v1 v2 v3 v4 v5 v6 v14 v11)
                                (du376 v0 v1 v2 v3 v4 v5 v6 v9 v11)))
                          (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                             v4
                             (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d164
                                v4
                                (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                                   v4
                                   (d372
                                      v0 v1 v2 v3 v4 v5 v6 v7 v13
                                      (MAlonzo.Code.Data.Vec.C22 v7 v10 v11))
                                   v10)
                                (du376 v0 v1 v2 v3 v4 v5 v6 v14 v11))
                             (du376 v0 v1 v2 v3 v4 v5 v6 v9 v11))
                          (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                             v4
                             (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d164
                                v4
                                (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                                   v4
                                   (d372
                                      v0 v1 v2 v3 v4 v5 v6 v7 v13
                                      (MAlonzo.Code.Data.Vec.C22 v7 v10 v11))
                                   v10)
                                (du376 v0 v1 v2 v3 v4 v5 v6 v14 v11))
                             (du376 v0 v1 v2 v3 v4 v5 v6 v9 v11))
                          (MAlonzo.Code.Algebra.RingSolver.Lemmas.du216
                             v4
                             (d372
                                v0 v1 v2 v3 v4 v5 v6 v7 v13 (MAlonzo.Code.Data.Vec.C22 v7 v10 v11))
                             (du376 v0 v1 v2 v3 v4 v5 v6 v14 v11)
                             (du376 v0 v1 v2 v3 v4 v5 v6 v9 v11) v10)
                          (let v19
                                 = let v19
                                         = coe
                                             MAlonzo.Code.Algebra.C463
                                             (coe
                                                MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d164
                                                v4)
                                             (coe
                                                MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                                                v4)
                                             (coe
                                                MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d170
                                                v4)
                                             (coe
                                                MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d172
                                                v4)
                                             (coe
                                                MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d60
                                                (coe
                                                   MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d174
                                                   v4)) in
                                   let v20 = coe MAlonzo.Code.Algebra.du984 v19 in
                                   let v21
                                         = coe
                                             MAlonzo.Code.Algebra.C333
                                             (coe MAlonzo.Code.Algebra.d712 v20)
                                             (coe MAlonzo.Code.Algebra.d714 v20)
                                             (coe MAlonzo.Code.Algebra.d716 v20)
                                             (coe MAlonzo.Code.Algebra.d718 v20)
                                             (coe
                                                MAlonzo.Code.Algebra.Structures.d1728
                                                (coe MAlonzo.Code.Algebra.d720 v20)) in
                                   let v22
                                         = coe
                                             MAlonzo.Code.Algebra.C97
                                             (coe MAlonzo.Code.Algebra.d616 v21)
                                             (coe MAlonzo.Code.Algebra.d620 v21)
                                             (coe
                                                MAlonzo.Code.Algebra.Structures.d1542
                                                (coe MAlonzo.Code.Algebra.d624 v21)) in
                                   coe
                                     MAlonzo.Code.Relation.Binary.C143
                                     (coe
                                        MAlonzo.Code.Algebra.Structures.d140
                                        (coe
                                           MAlonzo.Code.Algebra.Structures.d294
                                           (coe
                                              MAlonzo.Code.Algebra.d100
                                              (coe MAlonzo.Code.Algebra.du186 v22)))) in
                           let v20
                                 = coe
                                     MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166 v4
                                     (coe
                                        MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d164
                                        v4
                                        (coe
                                           MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                                           v4
                                           (coe
                                              d372 v0 v1 v2 v3 v4 v5 v6 v7 v13
                                              (coe MAlonzo.Code.Data.Vec.C22 v7 v10 v11))
                                           v10)
                                        (coe du376 v0 v1 v2 v3 v4 v5 v6 v14 v11))
                                     (coe du376 v0 v1 v2 v3 v4 v5 v6 v9 v11) in
                           MAlonzo.Code.Relation.Binary.PreorderReasoning.C56
                             (MAlonzo.Code.Relation.Binary.d38
                                (MAlonzo.Code.Relation.Binary.d92
                                   (MAlonzo.Code.Relation.Binary.du150 v19))
                                v20 v20
                                (MAlonzo.Code.Relation.Binary.Core.d516
                                   (MAlonzo.Code.Relation.Binary.d36
                                      (MAlonzo.Code.Relation.Binary.d92
                                         (MAlonzo.Code.Relation.Binary.du150 v19)))
                                   v20)))))
             _ -> coe MAlonzo.RTE.mazUnreachableError
      _ -> coe MAlonzo.RTE.mazUnreachableError
name1046 = "Algebra.RingSolver.*H-homo"
d1046 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10
  = case coe v8 of
      C358 v11
        -> coe
             MAlonzo.Code.Function.du158
             (let v12
                    = coe
                        MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d164 v4 in
              let v13
                    = coe
                        MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166 v4 in
              let v14
                    = coe
                        MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d170 v4 in
              let v15
                    = coe
                        MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d172 v4 in
              let v16
                    = coe
                        MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d174 v4 in
              let v17
                    = coe
                        MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d60 v16 in
              MAlonzo.Code.Relation.Binary.Core.d518
                (MAlonzo.Code.Algebra.Structures.d140
                   (MAlonzo.Code.Algebra.Structures.d454
                      (MAlonzo.Code.Algebra.Structures.d1542
                         (MAlonzo.Code.Algebra.Structures.d1728
                            (MAlonzo.Code.Algebra.Structures.du2214 v12 v13 v14 v15 v17)))))
                (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                   v4 (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d170 v4)
                   (d372 v0 v1 v2 v3 v4 v5 v6 v7 v9 v10))
                (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d170 v4))
             (coe
                MAlonzo.Code.Data.Product.d26
                (let v12
                       = coe
                           MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166 v4 in
                 let v13
                       = coe
                           MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d170 v4 in
                 let v14
                       = coe
                           MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d174 v4 in
                 MAlonzo.Code.Algebra.Structures.du2204
                   v12 v13
                   (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d60 v14))
                (coe d372 v0 v1 v2 v3 v4 v5 v6 v7 v9 v10))
      C362 v11 v12 v13
        -> case coe v9 of
             C358 v14
               -> coe
                    MAlonzo.Code.Function.du158
                    (let v15
                           = coe
                               MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d164 v4 in
                     let v16
                           = coe
                               MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166 v4 in
                     let v17
                           = coe
                               MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d170 v4 in
                     let v18
                           = coe
                               MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d172 v4 in
                     let v19
                           = coe
                               MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d174 v4 in
                     let v20
                           = coe
                               MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d60 v19 in
                     MAlonzo.Code.Relation.Binary.Core.d518
                       (MAlonzo.Code.Algebra.Structures.d140
                          (MAlonzo.Code.Algebra.Structures.d454
                             (MAlonzo.Code.Algebra.Structures.d1542
                                (MAlonzo.Code.Algebra.Structures.d1728
                                   (MAlonzo.Code.Algebra.Structures.du2214 v15 v16 v17 v18 v20)))))
                       (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                          v4 (d372 v0 v1 v2 v3 v4 v5 v6 v7 (C362 v7 v12 v13) v10)
                          (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d170 v4))
                       (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d170 v4))
                    (coe
                       MAlonzo.Code.Data.Product.d28
                       (let v15
                              = coe
                                  MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166 v4 in
                        let v16
                              = coe
                                  MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d170 v4 in
                        let v17
                              = coe
                                  MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d174 v4 in
                        MAlonzo.Code.Algebra.Structures.du2204
                          v15 v16
                          (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d60 v17))
                       (coe d372 v0 v1 v2 v3 v4 v5 v6 v7 (coe C362 v7 v12 v13) v10))
             C362 v14 v15 v16
               -> case coe v10 of
                    MAlonzo.Code.Data.Vec.C22 v17 v18 v19
                      -> coe
                           MAlonzo.Code.Relation.Binary.PreorderReasoning.d62
                           (let v20
                                  = let v20
                                          = coe
                                              MAlonzo.Code.Algebra.C463
                                              (coe
                                                 MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d164
                                                 v4)
                                              (coe
                                                 MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                                                 v4)
                                              (coe
                                                 MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d170
                                                 v4)
                                              (coe
                                                 MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d172
                                                 v4)
                                              (coe
                                                 MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d60
                                                 (coe
                                                    MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d174
                                                    v4)) in
                                    let v21 = coe MAlonzo.Code.Algebra.du984 v20 in
                                    let v22
                                          = coe
                                              MAlonzo.Code.Algebra.C333
                                              (coe MAlonzo.Code.Algebra.d712 v21)
                                              (coe MAlonzo.Code.Algebra.d714 v21)
                                              (coe MAlonzo.Code.Algebra.d716 v21)
                                              (coe MAlonzo.Code.Algebra.d718 v21)
                                              (coe
                                                 MAlonzo.Code.Algebra.Structures.d1728
                                                 (coe MAlonzo.Code.Algebra.d720 v21)) in
                                    let v23
                                          = coe
                                              MAlonzo.Code.Algebra.C97
                                              (coe MAlonzo.Code.Algebra.d616 v22)
                                              (coe MAlonzo.Code.Algebra.d620 v22)
                                              (coe
                                                 MAlonzo.Code.Algebra.Structures.d1542
                                                 (coe MAlonzo.Code.Algebra.d624 v22)) in
                                    coe
                                      MAlonzo.Code.Relation.Binary.C143
                                      (coe
                                         MAlonzo.Code.Algebra.Structures.d140
                                         (coe
                                            MAlonzo.Code.Algebra.Structures.d294
                                            (coe
                                               MAlonzo.Code.Algebra.d100
                                               (coe MAlonzo.Code.Algebra.du186 v23)))) in
                            MAlonzo.Code.Relation.Binary.PreorderReasoning.du72
                              (MAlonzo.Code.Relation.Binary.du150 v20)
                              (d372
                                 v0 v1 v2 v3 v4 v5 v6 v7
                                 (d596
                                    v0 v1 v2 v3 v4 v5 v6 v7
                                    (d648
                                       v0 v1 v2 v3 v4 v5 v6 v7
                                       (d670 v0 v1 v2 v3 v4 v5 v6 v7 v12 v15)
                                       (d620
                                          v0 v1 v2 v3 v4 v5 v6 v7
                                          (d666 v0 v1 v2 v3 v4 v5 v6 v7 v12 v16)
                                          (d662 v0 v1 v2 v3 v4 v5 v6 v7 v13 v15)))
                                    (du674 v0 v1 v2 v3 v4 v5 v6 v13 v16))
                                 (MAlonzo.Code.Data.Vec.C22 v7 v18 v19))
                              (d372
                                 v0 v1 v2 v3 v4 v5 v6 v7
                                 (C362
                                    v7
                                    (d648
                                       v0 v1 v2 v3 v4 v5 v6 v7
                                       (d670 v0 v1 v2 v3 v4 v5 v6 v7 v12 v15)
                                       (d620
                                          v0 v1 v2 v3 v4 v5 v6 v7
                                          (d666 v0 v1 v2 v3 v4 v5 v6 v7 v12 v16)
                                          (d662 v0 v1 v2 v3 v4 v5 v6 v7 v13 v15)))
                                    (du674 v0 v1 v2 v3 v4 v5 v6 v13 v16))
                                 (MAlonzo.Code.Data.Vec.C22 v7 v18 v19))
                              (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                                 v4
                                 (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d164
                                    v4
                                    (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                                       v4
                                       (d372
                                          v0 v1 v2 v3 v4 v5 v6 v7 v12
                                          (MAlonzo.Code.Data.Vec.C22 v7 v18 v19))
                                       v18)
                                    (du376 v0 v1 v2 v3 v4 v5 v6 v13 v19))
                                 (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d164
                                    v4
                                    (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                                       v4
                                       (d372
                                          v0 v1 v2 v3 v4 v5 v6 v7 v15
                                          (MAlonzo.Code.Data.Vec.C22 v7 v18 v19))
                                       v18)
                                    (du376 v0 v1 v2 v3 v4 v5 v6 v16 v19)))
                              (d860
                                 v0 v1 v2 v3 v4 v5 v6 v7
                                 (d648
                                    v0 v1 v2 v3 v4 v5 v6 v7 (d670 v0 v1 v2 v3 v4 v5 v6 v7 v12 v15)
                                    (d620
                                       v0 v1 v2 v3 v4 v5 v6 v7
                                       (d666 v0 v1 v2 v3 v4 v5 v6 v7 v12 v16)
                                       (d662 v0 v1 v2 v3 v4 v5 v6 v7 v13 v15)))
                                 (du674 v0 v1 v2 v3 v4 v5 v6 v13 v16)
                                 (MAlonzo.Code.Data.Vec.C22 v7 v18 v19))
                              (let v21
                                     = let v21
                                             = coe
                                                 MAlonzo.Code.Algebra.C463
                                                 (coe
                                                    MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d164
                                                    v4)
                                                 (coe
                                                    MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                                                    v4)
                                                 (coe
                                                    MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d170
                                                    v4)
                                                 (coe
                                                    MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d172
                                                    v4)
                                                 (coe
                                                    MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d60
                                                    (coe
                                                       MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d174
                                                       v4)) in
                                       let v22 = coe MAlonzo.Code.Algebra.du984 v21 in
                                       let v23
                                             = coe
                                                 MAlonzo.Code.Algebra.C333
                                                 (coe MAlonzo.Code.Algebra.d712 v22)
                                                 (coe MAlonzo.Code.Algebra.d714 v22)
                                                 (coe MAlonzo.Code.Algebra.d716 v22)
                                                 (coe MAlonzo.Code.Algebra.d718 v22)
                                                 (coe
                                                    MAlonzo.Code.Algebra.Structures.d1728
                                                    (coe MAlonzo.Code.Algebra.d720 v22)) in
                                       let v24
                                             = coe
                                                 MAlonzo.Code.Algebra.C97
                                                 (coe MAlonzo.Code.Algebra.d616 v23)
                                                 (coe MAlonzo.Code.Algebra.d620 v23)
                                                 (coe
                                                    MAlonzo.Code.Algebra.Structures.d1542
                                                    (coe MAlonzo.Code.Algebra.d624 v23)) in
                                       coe
                                         MAlonzo.Code.Relation.Binary.C143
                                         (coe
                                            MAlonzo.Code.Algebra.Structures.d140
                                            (coe
                                               MAlonzo.Code.Algebra.Structures.d294
                                               (coe
                                                  MAlonzo.Code.Algebra.d100
                                                  (coe MAlonzo.Code.Algebra.du186 v24)))) in
                               MAlonzo.Code.Relation.Binary.PreorderReasoning.du72
                                 (MAlonzo.Code.Relation.Binary.du150 v21)
                                 (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d164
                                    v4
                                    (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                                       v4
                                       (d372
                                          v0 v1 v2 v3 v4 v5 v6 v7
                                          (d648
                                             v0 v1 v2 v3 v4 v5 v6 v7
                                             (d670 v0 v1 v2 v3 v4 v5 v6 v7 v12 v15)
                                             (d620
                                                v0 v1 v2 v3 v4 v5 v6 v7
                                                (d666 v0 v1 v2 v3 v4 v5 v6 v7 v12 v16)
                                                (d662 v0 v1 v2 v3 v4 v5 v6 v7 v13 v15)))
                                          (MAlonzo.Code.Data.Vec.C22 v7 v18 v19))
                                       v18)
                                    (du376
                                       v0 v1 v2 v3 v4 v5 v6 (du674 v0 v1 v2 v3 v4 v5 v6 v13 v16)
                                       v19))
                                 (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d164
                                    v4
                                    (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                                       v4
                                       (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d164
                                          v4
                                          (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                                             v4
                                             (d372
                                                v0 v1 v2 v3 v4 v5 v6 v7
                                                (d670 v0 v1 v2 v3 v4 v5 v6 v7 v12 v15)
                                                (MAlonzo.Code.Data.Vec.C22 v7 v18 v19))
                                             v18)
                                          (d372
                                             v0 v1 v2 v3 v4 v5 v6 v7
                                             (d620
                                                v0 v1 v2 v3 v4 v5 v6 v7
                                                (d666 v0 v1 v2 v3 v4 v5 v6 v7 v12 v16)
                                                (d662 v0 v1 v2 v3 v4 v5 v6 v7 v13 v15))
                                             (MAlonzo.Code.Data.Vec.C22 v7 v18 v19)))
                                       v18)
                                    (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                                       v4 (du376 v0 v1 v2 v3 v4 v5 v6 v13 v19)
                                       (du376 v0 v1 v2 v3 v4 v5 v6 v16 v19)))
                                 (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                                    v4
                                    (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d164
                                       v4
                                       (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                                          v4
                                          (d372
                                             v0 v1 v2 v3 v4 v5 v6 v7 v12
                                             (MAlonzo.Code.Data.Vec.C22 v7 v18 v19))
                                          v18)
                                       (du376 v0 v1 v2 v3 v4 v5 v6 v13 v19))
                                    (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d164
                                       v4
                                       (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                                          v4
                                          (d372
                                             v0 v1 v2 v3 v4 v5 v6 v7 v15
                                             (MAlonzo.Code.Data.Vec.C22 v7 v18 v19))
                                          v18)
                                       (du376 v0 v1 v2 v3 v4 v5 v6 v16 v19)))
                                 (MAlonzo.Code.Function.du176
                                    (MAlonzo.Code.Function.du176
                                       (d994
                                          v0 v1 v2 v3 v4 v5 v6 v7
                                          (d670 v0 v1 v2 v3 v4 v5 v6 v7 v12 v15)
                                          (d620
                                             v0 v1 v2 v3 v4 v5 v6 v7
                                             (d666 v0 v1 v2 v3 v4 v5 v6 v7 v12 v16)
                                             (d662 v0 v1 v2 v3 v4 v5 v6 v7 v13 v15))
                                          v18 v19)
                                       (let v22
                                              = coe
                                                  MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d164
                                                  v4 in
                                        let v23
                                              = coe
                                                  MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                                                  v4 in
                                        let v24
                                              = coe
                                                  MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d170
                                                  v4 in
                                        let v25
                                              = coe
                                                  MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d172
                                                  v4 in
                                        let v26
                                              = coe
                                                  MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d174
                                                  v4 in
                                        let v27
                                              = coe
                                                  MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d60
                                                  v26 in
                                        MAlonzo.Code.Algebra.Structures.d144
                                          (MAlonzo.Code.Algebra.Structures.d294
                                             (MAlonzo.Code.Algebra.Structures.d1544
                                                (MAlonzo.Code.Algebra.Structures.d1728
                                                   (MAlonzo.Code.Algebra.Structures.du2214
                                                      v22 v23 v24 v25 v27))))
                                          (d372
                                             v0 v1 v2 v3 v4 v5 v6 v7
                                             (d648
                                                v0 v1 v2 v3 v4 v5 v6 v7
                                                (d670 v0 v1 v2 v3 v4 v5 v6 v7 v12 v15)
                                                (d620
                                                   v0 v1 v2 v3 v4 v5 v6 v7
                                                   (d666 v0 v1 v2 v3 v4 v5 v6 v7 v12 v16)
                                                   (d662 v0 v1 v2 v3 v4 v5 v6 v7 v13 v15)))
                                             (MAlonzo.Code.Data.Vec.C22 v7 v18 v19))
                                          (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d164
                                             v4
                                             (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                                                v4
                                                (d372
                                                   v0 v1 v2 v3 v4 v5 v6 v7
                                                   (d670 v0 v1 v2 v3 v4 v5 v6 v7 v12 v15)
                                                   (MAlonzo.Code.Data.Vec.C22 v7 v18 v19))
                                                v18)
                                             (d372
                                                v0 v1 v2 v3 v4 v5 v6 v7
                                                (d620
                                                   v0 v1 v2 v3 v4 v5 v6 v7
                                                   (d666 v0 v1 v2 v3 v4 v5 v6 v7 v12 v16)
                                                   (d662 v0 v1 v2 v3 v4 v5 v6 v7 v13 v15))
                                                (MAlonzo.Code.Data.Vec.C22 v7 v18 v19)))
                                          v18 v18)
                                       (let v22
                                              = coe
                                                  MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d164
                                                  v4 in
                                        let v23
                                              = coe
                                                  MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                                                  v4 in
                                        let v24
                                              = coe
                                                  MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d170
                                                  v4 in
                                        let v25
                                              = coe
                                                  MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d172
                                                  v4 in
                                        let v26
                                              = coe
                                                  MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d174
                                                  v4 in
                                        let v27
                                              = coe
                                                  MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d60
                                                  v26 in
                                        MAlonzo.Code.Relation.Binary.Core.d516
                                          (MAlonzo.Code.Algebra.Structures.d140
                                             (MAlonzo.Code.Algebra.Structures.d454
                                                (MAlonzo.Code.Algebra.Structures.d1542
                                                   (MAlonzo.Code.Algebra.Structures.d1728
                                                      (MAlonzo.Code.Algebra.Structures.du2214
                                                         v22 v23 v24 v25 v27)))))
                                          v18))
                                    (let v22
                                           = coe
                                               MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d164
                                               v4 in
                                     let v23
                                           = coe
                                               MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                                               v4 in
                                     let v24
                                           = coe
                                               MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d170
                                               v4 in
                                     let v25
                                           = coe
                                               MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d172
                                               v4 in
                                     let v26
                                           = coe
                                               MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d174
                                               v4 in
                                     let v27
                                           = coe
                                               MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d60
                                               v26 in
                                     MAlonzo.Code.Algebra.Structures.d144
                                       (MAlonzo.Code.Algebra.Structures.d454
                                          (MAlonzo.Code.Algebra.Structures.d1542
                                             (MAlonzo.Code.Algebra.Structures.d1728
                                                (MAlonzo.Code.Algebra.Structures.du2214
                                                   v22 v23 v24 v25 v27))))
                                       (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                                          v4
                                          (d372
                                             v0 v1 v2 v3 v4 v5 v6 v7
                                             (d648
                                                v0 v1 v2 v3 v4 v5 v6 v7
                                                (d670 v0 v1 v2 v3 v4 v5 v6 v7 v12 v15)
                                                (d620
                                                   v0 v1 v2 v3 v4 v5 v6 v7
                                                   (d666 v0 v1 v2 v3 v4 v5 v6 v7 v12 v16)
                                                   (d662 v0 v1 v2 v3 v4 v5 v6 v7 v13 v15)))
                                             (MAlonzo.Code.Data.Vec.C22 v7 v18 v19))
                                          v18)
                                       (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                                          v4
                                          (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d164
                                             v4
                                             (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                                                v4
                                                (d372
                                                   v0 v1 v2 v3 v4 v5 v6 v7
                                                   (d670 v0 v1 v2 v3 v4 v5 v6 v7 v12 v15)
                                                   (MAlonzo.Code.Data.Vec.C22 v7 v18 v19))
                                                v18)
                                             (d372
                                                v0 v1 v2 v3 v4 v5 v6 v7
                                                (d620
                                                   v0 v1 v2 v3 v4 v5 v6 v7
                                                   (d666 v0 v1 v2 v3 v4 v5 v6 v7 v12 v16)
                                                   (d662 v0 v1 v2 v3 v4 v5 v6 v7 v13 v15))
                                                (MAlonzo.Code.Data.Vec.C22 v7 v18 v19)))
                                          v18)
                                       (du376
                                          v0 v1 v2 v3 v4 v5 v6 (du674 v0 v1 v2 v3 v4 v5 v6 v13 v16)
                                          v19)
                                       (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                                          v4 (du376 v0 v1 v2 v3 v4 v5 v6 v13 v19)
                                          (du376 v0 v1 v2 v3 v4 v5 v6 v16 v19)))
                                    (du1056 v0 v1 v2 v3 v4 v5 v6 v13 v16 v19))
                                 (let v22
                                        = let v22
                                                = coe
                                                    MAlonzo.Code.Algebra.C463
                                                    (coe
                                                       MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d164
                                                       v4)
                                                    (coe
                                                       MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                                                       v4)
                                                    (coe
                                                       MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d170
                                                       v4)
                                                    (coe
                                                       MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d172
                                                       v4)
                                                    (coe
                                                       MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d60
                                                       (coe
                                                          MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d174
                                                          v4)) in
                                          let v23 = coe MAlonzo.Code.Algebra.du984 v22 in
                                          let v24
                                                = coe
                                                    MAlonzo.Code.Algebra.C333
                                                    (coe MAlonzo.Code.Algebra.d712 v23)
                                                    (coe MAlonzo.Code.Algebra.d714 v23)
                                                    (coe MAlonzo.Code.Algebra.d716 v23)
                                                    (coe MAlonzo.Code.Algebra.d718 v23)
                                                    (coe
                                                       MAlonzo.Code.Algebra.Structures.d1728
                                                       (coe MAlonzo.Code.Algebra.d720 v23)) in
                                          let v25
                                                = coe
                                                    MAlonzo.Code.Algebra.C97
                                                    (coe MAlonzo.Code.Algebra.d616 v24)
                                                    (coe MAlonzo.Code.Algebra.d620 v24)
                                                    (coe
                                                       MAlonzo.Code.Algebra.Structures.d1542
                                                       (coe MAlonzo.Code.Algebra.d624 v24)) in
                                          coe
                                            MAlonzo.Code.Relation.Binary.C143
                                            (coe
                                               MAlonzo.Code.Algebra.Structures.d140
                                               (coe
                                                  MAlonzo.Code.Algebra.Structures.d294
                                                  (coe
                                                     MAlonzo.Code.Algebra.d100
                                                     (coe MAlonzo.Code.Algebra.du186 v25)))) in
                                  MAlonzo.Code.Relation.Binary.PreorderReasoning.du72
                                    (MAlonzo.Code.Relation.Binary.du150 v22)
                                    (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d164
                                       v4
                                       (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                                          v4
                                          (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d164
                                             v4
                                             (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                                                v4
                                                (d372
                                                   v0 v1 v2 v3 v4 v5 v6 v7
                                                   (d670 v0 v1 v2 v3 v4 v5 v6 v7 v12 v15)
                                                   (MAlonzo.Code.Data.Vec.C22 v7 v18 v19))
                                                v18)
                                             (d372
                                                v0 v1 v2 v3 v4 v5 v6 v7
                                                (d620
                                                   v0 v1 v2 v3 v4 v5 v6 v7
                                                   (d666 v0 v1 v2 v3 v4 v5 v6 v7 v12 v16)
                                                   (d662 v0 v1 v2 v3 v4 v5 v6 v7 v13 v15))
                                                (MAlonzo.Code.Data.Vec.C22 v7 v18 v19)))
                                          v18)
                                       (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                                          v4 (du376 v0 v1 v2 v3 v4 v5 v6 v13 v19)
                                          (du376 v0 v1 v2 v3 v4 v5 v6 v16 v19)))
                                    (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d164
                                       v4
                                       (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                                          v4
                                          (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d164
                                             v4
                                             (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                                                v4
                                                (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                                                   v4
                                                   (d372
                                                      v0 v1 v2 v3 v4 v5 v6 v7 v12
                                                      (MAlonzo.Code.Data.Vec.C22 v7 v18 v19))
                                                   (d372
                                                      v0 v1 v2 v3 v4 v5 v6 v7 v15
                                                      (MAlonzo.Code.Data.Vec.C22 v7 v18 v19)))
                                                v18)
                                             (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d164
                                                v4
                                                (d372
                                                   v0 v1 v2 v3 v4 v5 v6 v7
                                                   (d666 v0 v1 v2 v3 v4 v5 v6 v7 v12 v16)
                                                   (MAlonzo.Code.Data.Vec.C22 v7 v18 v19))
                                                (d372
                                                   v0 v1 v2 v3 v4 v5 v6 v7
                                                   (d662 v0 v1 v2 v3 v4 v5 v6 v7 v13 v15)
                                                   (MAlonzo.Code.Data.Vec.C22 v7 v18 v19))))
                                          v18)
                                       (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                                          v4 (du376 v0 v1 v2 v3 v4 v5 v6 v13 v19)
                                          (du376 v0 v1 v2 v3 v4 v5 v6 v16 v19)))
                                    (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                                       v4
                                       (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d164
                                          v4
                                          (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                                             v4
                                             (d372
                                                v0 v1 v2 v3 v4 v5 v6 v7 v12
                                                (MAlonzo.Code.Data.Vec.C22 v7 v18 v19))
                                             v18)
                                          (du376 v0 v1 v2 v3 v4 v5 v6 v13 v19))
                                       (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d164
                                          v4
                                          (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                                             v4
                                             (d372
                                                v0 v1 v2 v3 v4 v5 v6 v7 v15
                                                (MAlonzo.Code.Data.Vec.C22 v7 v18 v19))
                                             v18)
                                          (du376 v0 v1 v2 v3 v4 v5 v6 v16 v19)))
                                    (MAlonzo.Code.Function.du176
                                       (MAlonzo.Code.Function.du176
                                          (MAlonzo.Code.Function.du176
                                             (MAlonzo.Code.Function.du176
                                                (d1046
                                                   v0 v1 v2 v3 v4 v5 v6 v7 v12 v15
                                                   (MAlonzo.Code.Data.Vec.C22 v7 v18 v19))
                                                (let v23
                                                       = coe
                                                           MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d164
                                                           v4 in
                                                 let v24
                                                       = coe
                                                           MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                                                           v4 in
                                                 let v25
                                                       = coe
                                                           MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d170
                                                           v4 in
                                                 let v26
                                                       = coe
                                                           MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d172
                                                           v4 in
                                                 let v27
                                                       = coe
                                                           MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d174
                                                           v4 in
                                                 let v28
                                                       = coe
                                                           MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d60
                                                           v27 in
                                                 MAlonzo.Code.Algebra.Structures.d144
                                                   (MAlonzo.Code.Algebra.Structures.d294
                                                      (MAlonzo.Code.Algebra.Structures.d1544
                                                         (MAlonzo.Code.Algebra.Structures.d1728
                                                            (MAlonzo.Code.Algebra.Structures.du2214
                                                               v23 v24 v25 v26 v28))))
                                                   (d372
                                                      v0 v1 v2 v3 v4 v5 v6 v7
                                                      (d670 v0 v1 v2 v3 v4 v5 v6 v7 v12 v15)
                                                      (MAlonzo.Code.Data.Vec.C22 v7 v18 v19))
                                                   (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                                                      v4
                                                      (d372
                                                         v0 v1 v2 v3 v4 v5 v6 v7 v12
                                                         (MAlonzo.Code.Data.Vec.C22 v7 v18 v19))
                                                      (d372
                                                         v0 v1 v2 v3 v4 v5 v6 v7 v15
                                                         (MAlonzo.Code.Data.Vec.C22 v7 v18 v19)))
                                                   v18 v18)
                                                (let v23
                                                       = coe
                                                           MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d164
                                                           v4 in
                                                 let v24
                                                       = coe
                                                           MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                                                           v4 in
                                                 let v25
                                                       = coe
                                                           MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d170
                                                           v4 in
                                                 let v26
                                                       = coe
                                                           MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d172
                                                           v4 in
                                                 let v27
                                                       = coe
                                                           MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d174
                                                           v4 in
                                                 let v28
                                                       = coe
                                                           MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d60
                                                           v27 in
                                                 MAlonzo.Code.Relation.Binary.Core.d516
                                                   (MAlonzo.Code.Algebra.Structures.d140
                                                      (MAlonzo.Code.Algebra.Structures.d454
                                                         (MAlonzo.Code.Algebra.Structures.d1542
                                                            (MAlonzo.Code.Algebra.Structures.d1728
                                                               (MAlonzo.Code.Algebra.Structures.du2214
                                                                  v23 v24 v25 v26 v28)))))
                                                   v18))
                                             (let v23
                                                    = coe
                                                        MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d164
                                                        v4 in
                                              let v24
                                                    = coe
                                                        MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                                                        v4 in
                                              let v25
                                                    = coe
                                                        MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d170
                                                        v4 in
                                              let v26
                                                    = coe
                                                        MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d172
                                                        v4 in
                                              let v27
                                                    = coe
                                                        MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d174
                                                        v4 in
                                              let v28
                                                    = coe
                                                        MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d60
                                                        v27 in
                                              MAlonzo.Code.Algebra.Structures.d144
                                                (MAlonzo.Code.Algebra.Structures.d454
                                                   (MAlonzo.Code.Algebra.Structures.d1542
                                                      (MAlonzo.Code.Algebra.Structures.d1728
                                                         (MAlonzo.Code.Algebra.Structures.du2214
                                                            v23 v24 v25 v26 v28))))
                                                (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                                                   v4
                                                   (d372
                                                      v0 v1 v2 v3 v4 v5 v6 v7
                                                      (d670 v0 v1 v2 v3 v4 v5 v6 v7 v12 v15)
                                                      (MAlonzo.Code.Data.Vec.C22 v7 v18 v19))
                                                   v18)
                                                (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                                                   v4
                                                   (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                                                      v4
                                                      (d372
                                                         v0 v1 v2 v3 v4 v5 v6 v7 v12
                                                         (MAlonzo.Code.Data.Vec.C22 v7 v18 v19))
                                                      (d372
                                                         v0 v1 v2 v3 v4 v5 v6 v7 v15
                                                         (MAlonzo.Code.Data.Vec.C22 v7 v18 v19)))
                                                   v18)
                                                (d372
                                                   v0 v1 v2 v3 v4 v5 v6 v7
                                                   (d620
                                                      v0 v1 v2 v3 v4 v5 v6 v7
                                                      (d666 v0 v1 v2 v3 v4 v5 v6 v7 v12 v16)
                                                      (d662 v0 v1 v2 v3 v4 v5 v6 v7 v13 v15))
                                                   (MAlonzo.Code.Data.Vec.C22 v7 v18 v19))
                                                (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d164
                                                   v4
                                                   (d372
                                                      v0 v1 v2 v3 v4 v5 v6 v7
                                                      (d666 v0 v1 v2 v3 v4 v5 v6 v7 v12 v16)
                                                      (MAlonzo.Code.Data.Vec.C22 v7 v18 v19))
                                                   (d372
                                                      v0 v1 v2 v3 v4 v5 v6 v7
                                                      (d662 v0 v1 v2 v3 v4 v5 v6 v7 v13 v15)
                                                      (MAlonzo.Code.Data.Vec.C22 v7 v18 v19))))
                                             (d940
                                                v0 v1 v2 v3 v4 v5 v6 v7
                                                (d666 v0 v1 v2 v3 v4 v5 v6 v7 v12 v16)
                                                (d662 v0 v1 v2 v3 v4 v5 v6 v7 v13 v15)
                                                (MAlonzo.Code.Data.Vec.C22 v7 v18 v19)))
                                          (let v23
                                                 = coe
                                                     MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d164
                                                     v4 in
                                           let v24
                                                 = coe
                                                     MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                                                     v4 in
                                           let v25
                                                 = coe
                                                     MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d170
                                                     v4 in
                                           let v26
                                                 = coe
                                                     MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d172
                                                     v4 in
                                           let v27
                                                 = coe
                                                     MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d174
                                                     v4 in
                                           let v28
                                                 = coe
                                                     MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d60
                                                     v27 in
                                           MAlonzo.Code.Algebra.Structures.d144
                                             (MAlonzo.Code.Algebra.Structures.d294
                                                (MAlonzo.Code.Algebra.Structures.d1544
                                                   (MAlonzo.Code.Algebra.Structures.d1728
                                                      (MAlonzo.Code.Algebra.Structures.du2214
                                                         v23 v24 v25 v26 v28))))
                                             (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d164
                                                v4
                                                (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                                                   v4
                                                   (d372
                                                      v0 v1 v2 v3 v4 v5 v6 v7
                                                      (d670 v0 v1 v2 v3 v4 v5 v6 v7 v12 v15)
                                                      (MAlonzo.Code.Data.Vec.C22 v7 v18 v19))
                                                   v18)
                                                (d372
                                                   v0 v1 v2 v3 v4 v5 v6 v7
                                                   (d620
                                                      v0 v1 v2 v3 v4 v5 v6 v7
                                                      (d666 v0 v1 v2 v3 v4 v5 v6 v7 v12 v16)
                                                      (d662 v0 v1 v2 v3 v4 v5 v6 v7 v13 v15))
                                                   (MAlonzo.Code.Data.Vec.C22 v7 v18 v19)))
                                             (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d164
                                                v4
                                                (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                                                   v4
                                                   (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                                                      v4
                                                      (d372
                                                         v0 v1 v2 v3 v4 v5 v6 v7 v12
                                                         (MAlonzo.Code.Data.Vec.C22 v7 v18 v19))
                                                      (d372
                                                         v0 v1 v2 v3 v4 v5 v6 v7 v15
                                                         (MAlonzo.Code.Data.Vec.C22 v7 v18 v19)))
                                                   v18)
                                                (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d164
                                                   v4
                                                   (d372
                                                      v0 v1 v2 v3 v4 v5 v6 v7
                                                      (d666 v0 v1 v2 v3 v4 v5 v6 v7 v12 v16)
                                                      (MAlonzo.Code.Data.Vec.C22 v7 v18 v19))
                                                   (d372
                                                      v0 v1 v2 v3 v4 v5 v6 v7
                                                      (d662 v0 v1 v2 v3 v4 v5 v6 v7 v13 v15)
                                                      (MAlonzo.Code.Data.Vec.C22 v7 v18 v19))))
                                             v18 v18)
                                          (let v23
                                                 = coe
                                                     MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d164
                                                     v4 in
                                           let v24
                                                 = coe
                                                     MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                                                     v4 in
                                           let v25
                                                 = coe
                                                     MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d170
                                                     v4 in
                                           let v26
                                                 = coe
                                                     MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d172
                                                     v4 in
                                           let v27
                                                 = coe
                                                     MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d174
                                                     v4 in
                                           let v28
                                                 = coe
                                                     MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d60
                                                     v27 in
                                           MAlonzo.Code.Relation.Binary.Core.d516
                                             (MAlonzo.Code.Algebra.Structures.d140
                                                (MAlonzo.Code.Algebra.Structures.d454
                                                   (MAlonzo.Code.Algebra.Structures.d1542
                                                      (MAlonzo.Code.Algebra.Structures.d1728
                                                         (MAlonzo.Code.Algebra.Structures.du2214
                                                            v23 v24 v25 v26 v28)))))
                                             v18))
                                       (let v23
                                              = coe
                                                  MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d164
                                                  v4 in
                                        let v24
                                              = coe
                                                  MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                                                  v4 in
                                        let v25
                                              = coe
                                                  MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d170
                                                  v4 in
                                        let v26
                                              = coe
                                                  MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d172
                                                  v4 in
                                        let v27
                                              = coe
                                                  MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d174
                                                  v4 in
                                        let v28
                                              = coe
                                                  MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d60
                                                  v27 in
                                        MAlonzo.Code.Algebra.Structures.d144
                                          (MAlonzo.Code.Algebra.Structures.d454
                                             (MAlonzo.Code.Algebra.Structures.d1542
                                                (MAlonzo.Code.Algebra.Structures.d1728
                                                   (MAlonzo.Code.Algebra.Structures.du2214
                                                      v23 v24 v25 v26 v28))))
                                          (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                                             v4
                                             (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d164
                                                v4
                                                (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                                                   v4
                                                   (d372
                                                      v0 v1 v2 v3 v4 v5 v6 v7
                                                      (d670 v0 v1 v2 v3 v4 v5 v6 v7 v12 v15)
                                                      (MAlonzo.Code.Data.Vec.C22 v7 v18 v19))
                                                   v18)
                                                (d372
                                                   v0 v1 v2 v3 v4 v5 v6 v7
                                                   (d620
                                                      v0 v1 v2 v3 v4 v5 v6 v7
                                                      (d666 v0 v1 v2 v3 v4 v5 v6 v7 v12 v16)
                                                      (d662 v0 v1 v2 v3 v4 v5 v6 v7 v13 v15))
                                                   (MAlonzo.Code.Data.Vec.C22 v7 v18 v19)))
                                             v18)
                                          (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                                             v4
                                             (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d164
                                                v4
                                                (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                                                   v4
                                                   (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                                                      v4
                                                      (d372
                                                         v0 v1 v2 v3 v4 v5 v6 v7 v12
                                                         (MAlonzo.Code.Data.Vec.C22 v7 v18 v19))
                                                      (d372
                                                         v0 v1 v2 v3 v4 v5 v6 v7 v15
                                                         (MAlonzo.Code.Data.Vec.C22 v7 v18 v19)))
                                                   v18)
                                                (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d164
                                                   v4
                                                   (d372
                                                      v0 v1 v2 v3 v4 v5 v6 v7
                                                      (d666 v0 v1 v2 v3 v4 v5 v6 v7 v12 v16)
                                                      (MAlonzo.Code.Data.Vec.C22 v7 v18 v19))
                                                   (d372
                                                      v0 v1 v2 v3 v4 v5 v6 v7
                                                      (d662 v0 v1 v2 v3 v4 v5 v6 v7 v13 v15)
                                                      (MAlonzo.Code.Data.Vec.C22 v7 v18 v19))))
                                             v18)
                                          (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                                             v4 (du376 v0 v1 v2 v3 v4 v5 v6 v13 v19)
                                             (du376 v0 v1 v2 v3 v4 v5 v6 v16 v19))
                                          (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                                             v4 (du376 v0 v1 v2 v3 v4 v5 v6 v13 v19)
                                             (du376 v0 v1 v2 v3 v4 v5 v6 v16 v19)))
                                       (let v23
                                              = coe
                                                  MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d164
                                                  v4 in
                                        let v24
                                              = coe
                                                  MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                                                  v4 in
                                        let v25
                                              = coe
                                                  MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d170
                                                  v4 in
                                        let v26
                                              = coe
                                                  MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d172
                                                  v4 in
                                        let v27
                                              = coe
                                                  MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d174
                                                  v4 in
                                        let v28
                                              = coe
                                                  MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d60
                                                  v27 in
                                        MAlonzo.Code.Relation.Binary.Core.d516
                                          (MAlonzo.Code.Algebra.Structures.d140
                                             (MAlonzo.Code.Algebra.Structures.d454
                                                (MAlonzo.Code.Algebra.Structures.d1542
                                                   (MAlonzo.Code.Algebra.Structures.d1728
                                                      (MAlonzo.Code.Algebra.Structures.du2214
                                                         v23 v24 v25 v26 v28)))))
                                          (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                                             v4 (du376 v0 v1 v2 v3 v4 v5 v6 v13 v19)
                                             (du376 v0 v1 v2 v3 v4 v5 v6 v16 v19))))
                                    (let v23
                                           = let v23
                                                   = coe
                                                       MAlonzo.Code.Algebra.C463
                                                       (coe
                                                          MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d164
                                                          v4)
                                                       (coe
                                                          MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                                                          v4)
                                                       (coe
                                                          MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d170
                                                          v4)
                                                       (coe
                                                          MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d172
                                                          v4)
                                                       (coe
                                                          MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d60
                                                          (coe
                                                             MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d174
                                                             v4)) in
                                             let v24 = coe MAlonzo.Code.Algebra.du984 v23 in
                                             let v25
                                                   = coe
                                                       MAlonzo.Code.Algebra.C333
                                                       (coe MAlonzo.Code.Algebra.d712 v24)
                                                       (coe MAlonzo.Code.Algebra.d714 v24)
                                                       (coe MAlonzo.Code.Algebra.d716 v24)
                                                       (coe MAlonzo.Code.Algebra.d718 v24)
                                                       (coe
                                                          MAlonzo.Code.Algebra.Structures.d1728
                                                          (coe MAlonzo.Code.Algebra.d720 v24)) in
                                             let v26
                                                   = coe
                                                       MAlonzo.Code.Algebra.C97
                                                       (coe MAlonzo.Code.Algebra.d616 v25)
                                                       (coe MAlonzo.Code.Algebra.d620 v25)
                                                       (coe
                                                          MAlonzo.Code.Algebra.Structures.d1542
                                                          (coe MAlonzo.Code.Algebra.d624 v25)) in
                                             coe
                                               MAlonzo.Code.Relation.Binary.C143
                                               (coe
                                                  MAlonzo.Code.Algebra.Structures.d140
                                                  (coe
                                                     MAlonzo.Code.Algebra.Structures.d294
                                                     (coe
                                                        MAlonzo.Code.Algebra.d100
                                                        (coe MAlonzo.Code.Algebra.du186 v26)))) in
                                     MAlonzo.Code.Relation.Binary.PreorderReasoning.du72
                                       (MAlonzo.Code.Relation.Binary.du150 v23)
                                       (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d164
                                          v4
                                          (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                                             v4
                                             (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d164
                                                v4
                                                (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                                                   v4
                                                   (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                                                      v4
                                                      (d372
                                                         v0 v1 v2 v3 v4 v5 v6 v7 v12
                                                         (MAlonzo.Code.Data.Vec.C22 v7 v18 v19))
                                                      (d372
                                                         v0 v1 v2 v3 v4 v5 v6 v7 v15
                                                         (MAlonzo.Code.Data.Vec.C22 v7 v18 v19)))
                                                   v18)
                                                (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d164
                                                   v4
                                                   (d372
                                                      v0 v1 v2 v3 v4 v5 v6 v7
                                                      (d666 v0 v1 v2 v3 v4 v5 v6 v7 v12 v16)
                                                      (MAlonzo.Code.Data.Vec.C22 v7 v18 v19))
                                                   (d372
                                                      v0 v1 v2 v3 v4 v5 v6 v7
                                                      (d662 v0 v1 v2 v3 v4 v5 v6 v7 v13 v15)
                                                      (MAlonzo.Code.Data.Vec.C22 v7 v18 v19))))
                                             v18)
                                          (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                                             v4 (du376 v0 v1 v2 v3 v4 v5 v6 v13 v19)
                                             (du376 v0 v1 v2 v3 v4 v5 v6 v16 v19)))
                                       (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d164
                                          v4
                                          (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                                             v4
                                             (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d164
                                                v4
                                                (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                                                   v4
                                                   (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                                                      v4
                                                      (d372
                                                         v0 v1 v2 v3 v4 v5 v6 v7 v12
                                                         (MAlonzo.Code.Data.Vec.C22 v7 v18 v19))
                                                      (d372
                                                         v0 v1 v2 v3 v4 v5 v6 v7 v15
                                                         (MAlonzo.Code.Data.Vec.C22 v7 v18 v19)))
                                                   v18)
                                                (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d164
                                                   v4
                                                   (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                                                      v4
                                                      (d372
                                                         v0 v1 v2 v3 v4 v5 v6 v7 v12
                                                         (MAlonzo.Code.Data.Vec.C22 v7 v18 v19))
                                                      (du376 v0 v1 v2 v3 v4 v5 v6 v16 v19))
                                                   (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                                                      v4 (du376 v0 v1 v2 v3 v4 v5 v6 v13 v19)
                                                      (d372
                                                         v0 v1 v2 v3 v4 v5 v6 v7 v15
                                                         (MAlonzo.Code.Data.Vec.C22 v7 v18 v19)))))
                                             v18)
                                          (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                                             v4 (du376 v0 v1 v2 v3 v4 v5 v6 v13 v19)
                                             (du376 v0 v1 v2 v3 v4 v5 v6 v16 v19)))
                                       (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                                          v4
                                          (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d164
                                             v4
                                             (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                                                v4
                                                (d372
                                                   v0 v1 v2 v3 v4 v5 v6 v7 v12
                                                   (MAlonzo.Code.Data.Vec.C22 v7 v18 v19))
                                                v18)
                                             (du376 v0 v1 v2 v3 v4 v5 v6 v13 v19))
                                          (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d164
                                             v4
                                             (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                                                v4
                                                (d372
                                                   v0 v1 v2 v3 v4 v5 v6 v7 v15
                                                   (MAlonzo.Code.Data.Vec.C22 v7 v18 v19))
                                                v18)
                                             (du376 v0 v1 v2 v3 v4 v5 v6 v16 v19)))
                                       (MAlonzo.Code.Function.du176
                                          (MAlonzo.Code.Function.du176
                                             (MAlonzo.Code.Function.du176
                                                (let v24
                                                       = coe
                                                           MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d164
                                                           v4 in
                                                 let v25
                                                       = coe
                                                           MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                                                           v4 in
                                                 let v26
                                                       = coe
                                                           MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d170
                                                           v4 in
                                                 let v27
                                                       = coe
                                                           MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d172
                                                           v4 in
                                                 let v28
                                                       = coe
                                                           MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d174
                                                           v4 in
                                                 let v29
                                                       = coe
                                                           MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d60
                                                           v28 in
                                                 MAlonzo.Code.Relation.Binary.Core.d516
                                                   (MAlonzo.Code.Algebra.Structures.d140
                                                      (MAlonzo.Code.Algebra.Structures.d454
                                                         (MAlonzo.Code.Algebra.Structures.d1542
                                                            (MAlonzo.Code.Algebra.Structures.d1728
                                                               (MAlonzo.Code.Algebra.Structures.du2214
                                                                  v24 v25 v26 v27 v29)))))
                                                   (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                                                      v4
                                                      (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                                                         v4
                                                         (d372
                                                            v0 v1 v2 v3 v4 v5 v6 v7 v12
                                                            (MAlonzo.Code.Data.Vec.C22 v7 v18 v19))
                                                         (d372
                                                            v0 v1 v2 v3 v4 v5 v6 v7 v15
                                                            (MAlonzo.Code.Data.Vec.C22 v7 v18 v19)))
                                                      v18))
                                                (let v24
                                                       = coe
                                                           MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d164
                                                           v4 in
                                                 let v25
                                                       = coe
                                                           MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                                                           v4 in
                                                 let v26
                                                       = coe
                                                           MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d170
                                                           v4 in
                                                 let v27
                                                       = coe
                                                           MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d172
                                                           v4 in
                                                 let v28
                                                       = coe
                                                           MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d174
                                                           v4 in
                                                 let v29
                                                       = coe
                                                           MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d60
                                                           v28 in
                                                 MAlonzo.Code.Algebra.Structures.d144
                                                   (MAlonzo.Code.Algebra.Structures.d454
                                                      (MAlonzo.Code.Algebra.Structures.d1542
                                                         (MAlonzo.Code.Algebra.Structures.d1728
                                                            (MAlonzo.Code.Algebra.Structures.du2214
                                                               v24 v25 v26 v27 v29))))
                                                   (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                                                      v4
                                                      (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                                                         v4
                                                         (d372
                                                            v0 v1 v2 v3 v4 v5 v6 v7 v12
                                                            (MAlonzo.Code.Data.Vec.C22 v7 v18 v19))
                                                         (d372
                                                            v0 v1 v2 v3 v4 v5 v6 v7 v15
                                                            (MAlonzo.Code.Data.Vec.C22 v7 v18 v19)))
                                                      v18)
                                                   (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                                                      v4
                                                      (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                                                         v4
                                                         (d372
                                                            v0 v1 v2 v3 v4 v5 v6 v7 v12
                                                            (MAlonzo.Code.Data.Vec.C22 v7 v18 v19))
                                                         (d372
                                                            v0 v1 v2 v3 v4 v5 v6 v7 v15
                                                            (MAlonzo.Code.Data.Vec.C22 v7 v18 v19)))
                                                      v18)
                                                   (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d164
                                                      v4
                                                      (d372
                                                         v0 v1 v2 v3 v4 v5 v6 v7
                                                         (d666 v0 v1 v2 v3 v4 v5 v6 v7 v12 v16)
                                                         (MAlonzo.Code.Data.Vec.C22 v7 v18 v19))
                                                      (d372
                                                         v0 v1 v2 v3 v4 v5 v6 v7
                                                         (d662 v0 v1 v2 v3 v4 v5 v6 v7 v13 v15)
                                                         (MAlonzo.Code.Data.Vec.C22 v7 v18 v19)))
                                                   (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d164
                                                      v4
                                                      (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                                                         v4
                                                         (d372
                                                            v0 v1 v2 v3 v4 v5 v6 v7 v12
                                                            (MAlonzo.Code.Data.Vec.C22 v7 v18 v19))
                                                         (du376 v0 v1 v2 v3 v4 v5 v6 v16 v19))
                                                      (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                                                         v4 (du376 v0 v1 v2 v3 v4 v5 v6 v13 v19)
                                                         (d372
                                                            v0 v1 v2 v3 v4 v5 v6 v7 v15
                                                            (MAlonzo.Code.Data.Vec.C22
                                                               v7 v18 v19)))))
                                                (MAlonzo.Code.Function.du176
                                                   (d1036 v0 v1 v2 v3 v4 v5 v6 v7 v12 v16 v18 v19)
                                                   (let v24
                                                          = coe
                                                              MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d164
                                                              v4 in
                                                    let v25
                                                          = coe
                                                              MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                                                              v4 in
                                                    let v26
                                                          = coe
                                                              MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d170
                                                              v4 in
                                                    let v27
                                                          = coe
                                                              MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d172
                                                              v4 in
                                                    let v28
                                                          = coe
                                                              MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d174
                                                              v4 in
                                                    let v29
                                                          = coe
                                                              MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d60
                                                              v28 in
                                                    MAlonzo.Code.Algebra.Structures.d144
                                                      (MAlonzo.Code.Algebra.Structures.d454
                                                         (MAlonzo.Code.Algebra.Structures.d1542
                                                            (MAlonzo.Code.Algebra.Structures.d1728
                                                               (MAlonzo.Code.Algebra.Structures.du2214
                                                                  v24 v25 v26 v27 v29))))
                                                      (d372
                                                         v0 v1 v2 v3 v4 v5 v6 v7
                                                         (d666 v0 v1 v2 v3 v4 v5 v6 v7 v12 v16)
                                                         (MAlonzo.Code.Data.Vec.C22 v7 v18 v19))
                                                      (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                                                         v4
                                                         (d372
                                                            v0 v1 v2 v3 v4 v5 v6 v7 v12
                                                            (MAlonzo.Code.Data.Vec.C22 v7 v18 v19))
                                                         (du376 v0 v1 v2 v3 v4 v5 v6 v16 v19))
                                                      (d372
                                                         v0 v1 v2 v3 v4 v5 v6 v7
                                                         (d662 v0 v1 v2 v3 v4 v5 v6 v7 v13 v15)
                                                         (MAlonzo.Code.Data.Vec.C22 v7 v18 v19))
                                                      (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                                                         v4 (du376 v0 v1 v2 v3 v4 v5 v6 v13 v19)
                                                         (d372
                                                            v0 v1 v2 v3 v4 v5 v6 v7 v15
                                                            (MAlonzo.Code.Data.Vec.C22
                                                               v7 v18 v19))))
                                                   (d1024 v0 v1 v2 v3 v4 v5 v6 v7 v13 v15 v18 v19)))
                                             (let v24
                                                    = coe
                                                        MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d164
                                                        v4 in
                                              let v25
                                                    = coe
                                                        MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                                                        v4 in
                                              let v26
                                                    = coe
                                                        MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d170
                                                        v4 in
                                              let v27
                                                    = coe
                                                        MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d172
                                                        v4 in
                                              let v28
                                                    = coe
                                                        MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d174
                                                        v4 in
                                              let v29
                                                    = coe
                                                        MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d60
                                                        v28 in
                                              MAlonzo.Code.Algebra.Structures.d144
                                                (MAlonzo.Code.Algebra.Structures.d294
                                                   (MAlonzo.Code.Algebra.Structures.d1544
                                                      (MAlonzo.Code.Algebra.Structures.d1728
                                                         (MAlonzo.Code.Algebra.Structures.du2214
                                                            v24 v25 v26 v27 v29))))
                                                (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d164
                                                   v4
                                                   (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                                                      v4
                                                      (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                                                         v4
                                                         (d372
                                                            v0 v1 v2 v3 v4 v5 v6 v7 v12
                                                            (MAlonzo.Code.Data.Vec.C22 v7 v18 v19))
                                                         (d372
                                                            v0 v1 v2 v3 v4 v5 v6 v7 v15
                                                            (MAlonzo.Code.Data.Vec.C22 v7 v18 v19)))
                                                      v18)
                                                   (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d164
                                                      v4
                                                      (d372
                                                         v0 v1 v2 v3 v4 v5 v6 v7
                                                         (d666 v0 v1 v2 v3 v4 v5 v6 v7 v12 v16)
                                                         (MAlonzo.Code.Data.Vec.C22 v7 v18 v19))
                                                      (d372
                                                         v0 v1 v2 v3 v4 v5 v6 v7
                                                         (d662 v0 v1 v2 v3 v4 v5 v6 v7 v13 v15)
                                                         (MAlonzo.Code.Data.Vec.C22 v7 v18 v19))))
                                                (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d164
                                                   v4
                                                   (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                                                      v4
                                                      (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                                                         v4
                                                         (d372
                                                            v0 v1 v2 v3 v4 v5 v6 v7 v12
                                                            (MAlonzo.Code.Data.Vec.C22 v7 v18 v19))
                                                         (d372
                                                            v0 v1 v2 v3 v4 v5 v6 v7 v15
                                                            (MAlonzo.Code.Data.Vec.C22 v7 v18 v19)))
                                                      v18)
                                                   (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d164
                                                      v4
                                                      (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                                                         v4
                                                         (d372
                                                            v0 v1 v2 v3 v4 v5 v6 v7 v12
                                                            (MAlonzo.Code.Data.Vec.C22 v7 v18 v19))
                                                         (du376 v0 v1 v2 v3 v4 v5 v6 v16 v19))
                                                      (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                                                         v4 (du376 v0 v1 v2 v3 v4 v5 v6 v13 v19)
                                                         (d372
                                                            v0 v1 v2 v3 v4 v5 v6 v7 v15
                                                            (MAlonzo.Code.Data.Vec.C22
                                                               v7 v18 v19)))))
                                                v18 v18)
                                             (let v24
                                                    = coe
                                                        MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d164
                                                        v4 in
                                              let v25
                                                    = coe
                                                        MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                                                        v4 in
                                              let v26
                                                    = coe
                                                        MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d170
                                                        v4 in
                                              let v27
                                                    = coe
                                                        MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d172
                                                        v4 in
                                              let v28
                                                    = coe
                                                        MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d174
                                                        v4 in
                                              let v29
                                                    = coe
                                                        MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d60
                                                        v28 in
                                              MAlonzo.Code.Relation.Binary.Core.d516
                                                (MAlonzo.Code.Algebra.Structures.d140
                                                   (MAlonzo.Code.Algebra.Structures.d454
                                                      (MAlonzo.Code.Algebra.Structures.d1542
                                                         (MAlonzo.Code.Algebra.Structures.d1728
                                                            (MAlonzo.Code.Algebra.Structures.du2214
                                                               v24 v25 v26 v27 v29)))))
                                                v18))
                                          (let v24
                                                 = coe
                                                     MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d164
                                                     v4 in
                                           let v25
                                                 = coe
                                                     MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                                                     v4 in
                                           let v26
                                                 = coe
                                                     MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d170
                                                     v4 in
                                           let v27
                                                 = coe
                                                     MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d172
                                                     v4 in
                                           let v28
                                                 = coe
                                                     MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d174
                                                     v4 in
                                           let v29
                                                 = coe
                                                     MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d60
                                                     v28 in
                                           MAlonzo.Code.Algebra.Structures.d144
                                             (MAlonzo.Code.Algebra.Structures.d454
                                                (MAlonzo.Code.Algebra.Structures.d1542
                                                   (MAlonzo.Code.Algebra.Structures.d1728
                                                      (MAlonzo.Code.Algebra.Structures.du2214
                                                         v24 v25 v26 v27 v29))))
                                             (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                                                v4
                                                (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d164
                                                   v4
                                                   (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                                                      v4
                                                      (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                                                         v4
                                                         (d372
                                                            v0 v1 v2 v3 v4 v5 v6 v7 v12
                                                            (MAlonzo.Code.Data.Vec.C22 v7 v18 v19))
                                                         (d372
                                                            v0 v1 v2 v3 v4 v5 v6 v7 v15
                                                            (MAlonzo.Code.Data.Vec.C22 v7 v18 v19)))
                                                      v18)
                                                   (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d164
                                                      v4
                                                      (d372
                                                         v0 v1 v2 v3 v4 v5 v6 v7
                                                         (d666 v0 v1 v2 v3 v4 v5 v6 v7 v12 v16)
                                                         (MAlonzo.Code.Data.Vec.C22 v7 v18 v19))
                                                      (d372
                                                         v0 v1 v2 v3 v4 v5 v6 v7
                                                         (d662 v0 v1 v2 v3 v4 v5 v6 v7 v13 v15)
                                                         (MAlonzo.Code.Data.Vec.C22 v7 v18 v19))))
                                                v18)
                                             (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                                                v4
                                                (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d164
                                                   v4
                                                   (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                                                      v4
                                                      (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                                                         v4
                                                         (d372
                                                            v0 v1 v2 v3 v4 v5 v6 v7 v12
                                                            (MAlonzo.Code.Data.Vec.C22 v7 v18 v19))
                                                         (d372
                                                            v0 v1 v2 v3 v4 v5 v6 v7 v15
                                                            (MAlonzo.Code.Data.Vec.C22 v7 v18 v19)))
                                                      v18)
                                                   (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d164
                                                      v4
                                                      (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                                                         v4
                                                         (d372
                                                            v0 v1 v2 v3 v4 v5 v6 v7 v12
                                                            (MAlonzo.Code.Data.Vec.C22 v7 v18 v19))
                                                         (du376 v0 v1 v2 v3 v4 v5 v6 v16 v19))
                                                      (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                                                         v4 (du376 v0 v1 v2 v3 v4 v5 v6 v13 v19)
                                                         (d372
                                                            v0 v1 v2 v3 v4 v5 v6 v7 v15
                                                            (MAlonzo.Code.Data.Vec.C22
                                                               v7 v18 v19)))))
                                                v18)
                                             (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                                                v4 (du376 v0 v1 v2 v3 v4 v5 v6 v13 v19)
                                                (du376 v0 v1 v2 v3 v4 v5 v6 v16 v19))
                                             (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                                                v4 (du376 v0 v1 v2 v3 v4 v5 v6 v13 v19)
                                                (du376 v0 v1 v2 v3 v4 v5 v6 v16 v19)))
                                          (let v24
                                                 = coe
                                                     MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d164
                                                     v4 in
                                           let v25
                                                 = coe
                                                     MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                                                     v4 in
                                           let v26
                                                 = coe
                                                     MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d170
                                                     v4 in
                                           let v27
                                                 = coe
                                                     MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d172
                                                     v4 in
                                           let v28
                                                 = coe
                                                     MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d174
                                                     v4 in
                                           let v29
                                                 = coe
                                                     MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d60
                                                     v28 in
                                           MAlonzo.Code.Relation.Binary.Core.d516
                                             (MAlonzo.Code.Algebra.Structures.d140
                                                (MAlonzo.Code.Algebra.Structures.d454
                                                   (MAlonzo.Code.Algebra.Structures.d1542
                                                      (MAlonzo.Code.Algebra.Structures.d1728
                                                         (MAlonzo.Code.Algebra.Structures.du2214
                                                            v24 v25 v26 v27 v29)))))
                                             (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                                                v4 (du376 v0 v1 v2 v3 v4 v5 v6 v13 v19)
                                                (du376 v0 v1 v2 v3 v4 v5 v6 v16 v19))))
                                       (let v24
                                              = let v24
                                                      = coe
                                                          MAlonzo.Code.Algebra.C463
                                                          (coe
                                                             MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d164
                                                             v4)
                                                          (coe
                                                             MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                                                             v4)
                                                          (coe
                                                             MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d170
                                                             v4)
                                                          (coe
                                                             MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d172
                                                             v4)
                                                          (coe
                                                             MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d60
                                                             (coe
                                                                MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d174
                                                                v4)) in
                                                let v25 = coe MAlonzo.Code.Algebra.du984 v24 in
                                                let v26
                                                      = coe
                                                          MAlonzo.Code.Algebra.C333
                                                          (coe MAlonzo.Code.Algebra.d712 v25)
                                                          (coe MAlonzo.Code.Algebra.d714 v25)
                                                          (coe MAlonzo.Code.Algebra.d716 v25)
                                                          (coe MAlonzo.Code.Algebra.d718 v25)
                                                          (coe
                                                             MAlonzo.Code.Algebra.Structures.d1728
                                                             (coe MAlonzo.Code.Algebra.d720 v25)) in
                                                let v27
                                                      = coe
                                                          MAlonzo.Code.Algebra.C97
                                                          (coe MAlonzo.Code.Algebra.d616 v26)
                                                          (coe MAlonzo.Code.Algebra.d620 v26)
                                                          (coe
                                                             MAlonzo.Code.Algebra.Structures.d1542
                                                             (coe MAlonzo.Code.Algebra.d624 v26)) in
                                                coe
                                                  MAlonzo.Code.Relation.Binary.C143
                                                  (coe
                                                     MAlonzo.Code.Algebra.Structures.d140
                                                     (coe
                                                        MAlonzo.Code.Algebra.Structures.d294
                                                        (coe
                                                           MAlonzo.Code.Algebra.d100
                                                           (coe
                                                              MAlonzo.Code.Algebra.du186 v27)))) in
                                        MAlonzo.Code.Relation.Binary.PreorderReasoning.du72
                                          (MAlonzo.Code.Relation.Binary.du150 v24)
                                          (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d164
                                             v4
                                             (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                                                v4
                                                (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d164
                                                   v4
                                                   (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                                                      v4
                                                      (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                                                         v4
                                                         (d372
                                                            v0 v1 v2 v3 v4 v5 v6 v7 v12
                                                            (MAlonzo.Code.Data.Vec.C22 v7 v18 v19))
                                                         (d372
                                                            v0 v1 v2 v3 v4 v5 v6 v7 v15
                                                            (MAlonzo.Code.Data.Vec.C22 v7 v18 v19)))
                                                      v18)
                                                   (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d164
                                                      v4
                                                      (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                                                         v4
                                                         (d372
                                                            v0 v1 v2 v3 v4 v5 v6 v7 v12
                                                            (MAlonzo.Code.Data.Vec.C22 v7 v18 v19))
                                                         (du376 v0 v1 v2 v3 v4 v5 v6 v16 v19))
                                                      (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                                                         v4 (du376 v0 v1 v2 v3 v4 v5 v6 v13 v19)
                                                         (d372
                                                            v0 v1 v2 v3 v4 v5 v6 v7 v15
                                                            (MAlonzo.Code.Data.Vec.C22
                                                               v7 v18 v19)))))
                                                v18)
                                             (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                                                v4 (du376 v0 v1 v2 v3 v4 v5 v6 v13 v19)
                                                (du376 v0 v1 v2 v3 v4 v5 v6 v16 v19)))
                                          (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                                             v4
                                             (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d164
                                                v4
                                                (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                                                   v4
                                                   (d372
                                                      v0 v1 v2 v3 v4 v5 v6 v7 v12
                                                      (MAlonzo.Code.Data.Vec.C22 v7 v18 v19))
                                                   v18)
                                                (du376 v0 v1 v2 v3 v4 v5 v6 v13 v19))
                                             (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d164
                                                v4
                                                (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                                                   v4
                                                   (d372
                                                      v0 v1 v2 v3 v4 v5 v6 v7 v15
                                                      (MAlonzo.Code.Data.Vec.C22 v7 v18 v19))
                                                   v18)
                                                (du376 v0 v1 v2 v3 v4 v5 v6 v16 v19)))
                                          (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                                             v4
                                             (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d164
                                                v4
                                                (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                                                   v4
                                                   (d372
                                                      v0 v1 v2 v3 v4 v5 v6 v7 v12
                                                      (MAlonzo.Code.Data.Vec.C22 v7 v18 v19))
                                                   v18)
                                                (du376 v0 v1 v2 v3 v4 v5 v6 v13 v19))
                                             (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d164
                                                v4
                                                (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                                                   v4
                                                   (d372
                                                      v0 v1 v2 v3 v4 v5 v6 v7 v15
                                                      (MAlonzo.Code.Data.Vec.C22 v7 v18 v19))
                                                   v18)
                                                (du376 v0 v1 v2 v3 v4 v5 v6 v16 v19)))
                                          (MAlonzo.Code.Algebra.RingSolver.Lemmas.du260
                                             v4
                                             (d372
                                                v0 v1 v2 v3 v4 v5 v6 v7 v12
                                                (MAlonzo.Code.Data.Vec.C22 v7 v18 v19))
                                             (du376 v0 v1 v2 v3 v4 v5 v6 v13 v19)
                                             (d372
                                                v0 v1 v2 v3 v4 v5 v6 v7 v15
                                                (MAlonzo.Code.Data.Vec.C22 v7 v18 v19))
                                             (du376 v0 v1 v2 v3 v4 v5 v6 v16 v19) v18)
                                          (let v25
                                                 = let v25
                                                         = coe
                                                             MAlonzo.Code.Algebra.C463
                                                             (coe
                                                                MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d164
                                                                v4)
                                                             (coe
                                                                MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                                                                v4)
                                                             (coe
                                                                MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d170
                                                                v4)
                                                             (coe
                                                                MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d172
                                                                v4)
                                                             (coe
                                                                MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d60
                                                                (coe
                                                                   MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d174
                                                                   v4)) in
                                                   let v26 = coe MAlonzo.Code.Algebra.du984 v25 in
                                                   let v27
                                                         = coe
                                                             MAlonzo.Code.Algebra.C333
                                                             (coe MAlonzo.Code.Algebra.d712 v26)
                                                             (coe MAlonzo.Code.Algebra.d714 v26)
                                                             (coe MAlonzo.Code.Algebra.d716 v26)
                                                             (coe MAlonzo.Code.Algebra.d718 v26)
                                                             (coe
                                                                MAlonzo.Code.Algebra.Structures.d1728
                                                                (coe
                                                                   MAlonzo.Code.Algebra.d720
                                                                   v26)) in
                                                   let v28
                                                         = coe
                                                             MAlonzo.Code.Algebra.C97
                                                             (coe MAlonzo.Code.Algebra.d616 v27)
                                                             (coe MAlonzo.Code.Algebra.d620 v27)
                                                             (coe
                                                                MAlonzo.Code.Algebra.Structures.d1542
                                                                (coe
                                                                   MAlonzo.Code.Algebra.d624
                                                                   v27)) in
                                                   coe
                                                     MAlonzo.Code.Relation.Binary.C143
                                                     (coe
                                                        MAlonzo.Code.Algebra.Structures.d140
                                                        (coe
                                                           MAlonzo.Code.Algebra.Structures.d294
                                                           (coe
                                                              MAlonzo.Code.Algebra.d100
                                                              (coe
                                                                 MAlonzo.Code.Algebra.du186
                                                                 v28)))) in
                                           let v26
                                                 = coe
                                                     MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                                                     v4
                                                     (coe
                                                        MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d164
                                                        v4
                                                        (coe
                                                           MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                                                           v4
                                                           (coe
                                                              d372 v0 v1 v2 v3 v4 v5 v6 v7 v12
                                                              (coe
                                                                 MAlonzo.Code.Data.Vec.C22 v7 v18
                                                                 v19))
                                                           v18)
                                                        (coe du376 v0 v1 v2 v3 v4 v5 v6 v13 v19))
                                                     (coe
                                                        MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d164
                                                        v4
                                                        (coe
                                                           MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                                                           v4
                                                           (coe
                                                              d372 v0 v1 v2 v3 v4 v5 v6 v7 v15
                                                              (coe
                                                                 MAlonzo.Code.Data.Vec.C22 v7 v18
                                                                 v19))
                                                           v18)
                                                        (coe du376 v0 v1 v2 v3 v4 v5 v6 v16 v19)) in
                                           MAlonzo.Code.Relation.Binary.PreorderReasoning.C56
                                             (MAlonzo.Code.Relation.Binary.d38
                                                (MAlonzo.Code.Relation.Binary.d92
                                                   (MAlonzo.Code.Relation.Binary.du150 v25))
                                                v26 v26
                                                (MAlonzo.Code.Relation.Binary.Core.d516
                                                   (MAlonzo.Code.Relation.Binary.d36
                                                      (MAlonzo.Code.Relation.Binary.d92
                                                         (MAlonzo.Code.Relation.Binary.du150 v25)))
                                                   v26))))))))
                    _ -> coe MAlonzo.RTE.mazUnreachableError
             _ -> coe MAlonzo.RTE.mazUnreachableError
      _ -> coe MAlonzo.RTE.mazUnreachableError
name1056 = "Algebra.RingSolver.*N-homo"
d1056 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10
  = du1056 v0 v1 v2 v3 v4 v5 v6 v8 v9 v10
du1056 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9
  = case coe v7 of
      C364 v10
        -> case coe v8 of
             C364 v11
               -> coe
                    MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d554 v5 v10
                    v11
             _ -> coe MAlonzo.RTE.mazUnreachableError
      C368 v10 v11
        -> case coe v8 of
             C368 v12 v13 -> coe d1046 v0 v1 v2 v3 v4 v5 v6 v10 v11 v13 v9
             _ -> coe MAlonzo.RTE.mazUnreachableError
      _ -> coe MAlonzo.RTE.mazUnreachableError
name1186 = "Algebra.RingSolver.^N-homo"
d1186 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10
  = case coe v9 of
      0 -> coe du846 v0 v1 v2 v3 v4 v5 v6 v10
      _ -> let v11 = coe subInt v9 (1 :: Integer) in
           coe
             MAlonzo.Code.Relation.Binary.PreorderReasoning.d62
             (let v12
                    = let v12
                            = coe
                                MAlonzo.Code.Algebra.C463
                                (coe MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d164 v4)
                                (coe MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166 v4)
                                (coe MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d170 v4)
                                (coe MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d172 v4)
                                (coe
                                   MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d60
                                   (coe
                                      MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d174
                                      v4)) in
                      let v13 = coe MAlonzo.Code.Algebra.du984 v12 in
                      let v14
                            = coe
                                MAlonzo.Code.Algebra.C333 (coe MAlonzo.Code.Algebra.d712 v13)
                                (coe MAlonzo.Code.Algebra.d714 v13)
                                (coe MAlonzo.Code.Algebra.d716 v13)
                                (coe MAlonzo.Code.Algebra.d718 v13)
                                (coe
                                   MAlonzo.Code.Algebra.Structures.d1728
                                   (coe MAlonzo.Code.Algebra.d720 v13)) in
                      let v15
                            = coe
                                MAlonzo.Code.Algebra.C97 (coe MAlonzo.Code.Algebra.d616 v14)
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
                (MAlonzo.Code.Relation.Binary.du150 v12)
                (du376
                   v0 v1 v2 v3 v4 v5 v6
                   (du674
                      v0 v1 v2 v3 v4 v5 v6 v8 (d750 v0 v1 v2 v3 v4 v5 v6 v7 v8 v11))
                   v10)
                (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                   v4 (du376 v0 v1 v2 v3 v4 v5 v6 v8 v10)
                   (du376
                      v0 v1 v2 v3 v4 v5 v6 (d750 v0 v1 v2 v3 v4 v5 v6 v7 v8 v11) v10))
                (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                   v4 (du376 v0 v1 v2 v3 v4 v5 v6 v8 v10)
                   (MAlonzo.Code.Algebra.Operations.du130
                      (MAlonzo.Code.Algebra.du984
                         (MAlonzo.Code.Algebra.C463
                            (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d164 v4)
                            (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166 v4)
                            (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d170 v4)
                            (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d172 v4)
                            (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d60
                               (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d174 v4))))
                      (du376 v0 v1 v2 v3 v4 v5 v6 v8 v10) v11))
                (du1056
                   v0 v1 v2 v3 v4 v5 v6 v8 (d750 v0 v1 v2 v3 v4 v5 v6 v7 v8 v11) v10)
                (let v13
                       = let v13
                               = coe
                                   MAlonzo.Code.Algebra.C463
                                   (coe
                                      MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d164 v4)
                                   (coe
                                      MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166 v4)
                                   (coe
                                      MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d170 v4)
                                   (coe
                                      MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d172 v4)
                                   (coe
                                      MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d60
                                      (coe
                                         MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d174
                                         v4)) in
                         let v14 = coe MAlonzo.Code.Algebra.du984 v13 in
                         let v15
                               = coe
                                   MAlonzo.Code.Algebra.C333 (coe MAlonzo.Code.Algebra.d712 v14)
                                   (coe MAlonzo.Code.Algebra.d714 v14)
                                   (coe MAlonzo.Code.Algebra.d716 v14)
                                   (coe MAlonzo.Code.Algebra.d718 v14)
                                   (coe
                                      MAlonzo.Code.Algebra.Structures.d1728
                                      (coe MAlonzo.Code.Algebra.d720 v14)) in
                         let v16
                               = coe
                                   MAlonzo.Code.Algebra.C97 (coe MAlonzo.Code.Algebra.d616 v15)
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
                 MAlonzo.Code.Relation.Binary.PreorderReasoning.du72
                   (MAlonzo.Code.Relation.Binary.du150 v13)
                   (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                      v4 (du376 v0 v1 v2 v3 v4 v5 v6 v8 v10)
                      (du376
                         v0 v1 v2 v3 v4 v5 v6 (d750 v0 v1 v2 v3 v4 v5 v6 v7 v8 v11) v10))
                   (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                      v4 (du376 v0 v1 v2 v3 v4 v5 v6 v8 v10)
                      (MAlonzo.Code.Algebra.Operations.du130
                         (MAlonzo.Code.Algebra.du984
                            (MAlonzo.Code.Algebra.C463
                               (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d164 v4)
                               (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166 v4)
                               (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d170 v4)
                               (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d172 v4)
                               (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d60
                                  (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d174 v4))))
                         (du376 v0 v1 v2 v3 v4 v5 v6 v8 v10) v11))
                   (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                      v4 (du376 v0 v1 v2 v3 v4 v5 v6 v8 v10)
                      (MAlonzo.Code.Algebra.Operations.du130
                         (MAlonzo.Code.Algebra.du984
                            (MAlonzo.Code.Algebra.C463
                               (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d164 v4)
                               (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166 v4)
                               (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d170 v4)
                               (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d172 v4)
                               (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d60
                                  (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d174 v4))))
                         (du376 v0 v1 v2 v3 v4 v5 v6 v8 v10) v11))
                   (MAlonzo.Code.Function.du176
                      (let v14
                             = coe
                                 MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d164 v4 in
                       let v15
                             = coe
                                 MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166 v4 in
                       let v16
                             = coe
                                 MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d170 v4 in
                       let v17
                             = coe
                                 MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d172 v4 in
                       let v18
                             = coe
                                 MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d174 v4 in
                       let v19
                             = coe
                                 MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d60 v18 in
                       MAlonzo.Code.Relation.Binary.Core.d516
                         (MAlonzo.Code.Algebra.Structures.d140
                            (MAlonzo.Code.Algebra.Structures.d454
                               (MAlonzo.Code.Algebra.Structures.d1542
                                  (MAlonzo.Code.Algebra.Structures.d1728
                                     (MAlonzo.Code.Algebra.Structures.du2214
                                        v14 v15 v16 v17 v19)))))
                         (du376 v0 v1 v2 v3 v4 v5 v6 v8 v10))
                      (let v14
                             = coe
                                 MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d164 v4 in
                       let v15
                             = coe
                                 MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166 v4 in
                       let v16
                             = coe
                                 MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d170 v4 in
                       let v17
                             = coe
                                 MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d172 v4 in
                       let v18
                             = coe
                                 MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d174 v4 in
                       let v19
                             = coe
                                 MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d60 v18 in
                       MAlonzo.Code.Algebra.Structures.d144
                         (MAlonzo.Code.Algebra.Structures.d294
                            (MAlonzo.Code.Algebra.Structures.d1544
                               (MAlonzo.Code.Algebra.Structures.d1728
                                  (MAlonzo.Code.Algebra.Structures.du2214 v14 v15 v16 v17 v19))))
                         (du376 v0 v1 v2 v3 v4 v5 v6 v8 v10)
                         (du376 v0 v1 v2 v3 v4 v5 v6 v8 v10)
                         (du376
                            v0 v1 v2 v3 v4 v5 v6 (d750 v0 v1 v2 v3 v4 v5 v6 v7 v8 v11) v10)
                         (MAlonzo.Code.Algebra.Operations.du130
                            (MAlonzo.Code.Algebra.du984
                               (MAlonzo.Code.Algebra.C463
                                  (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d164 v4)
                                  (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166 v4)
                                  (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d170 v4)
                                  (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d172 v4)
                                  (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d60
                                     (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d174
                                        v4))))
                            (du376 v0 v1 v2 v3 v4 v5 v6 v8 v10) v11))
                      (d1186 v0 v1 v2 v3 v4 v5 v6 v7 v8 v11 v10))
                   (let v14
                          = let v14
                                  = coe
                                      MAlonzo.Code.Algebra.C463
                                      (coe
                                         MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d164
                                         v4)
                                      (coe
                                         MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                                         v4)
                                      (coe
                                         MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d170
                                         v4)
                                      (coe
                                         MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d172
                                         v4)
                                      (coe
                                         MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d60
                                         (coe
                                            MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d174
                                            v4)) in
                            let v15 = coe MAlonzo.Code.Algebra.du984 v14 in
                            let v16
                                  = coe
                                      MAlonzo.Code.Algebra.C333 (coe MAlonzo.Code.Algebra.d712 v15)
                                      (coe MAlonzo.Code.Algebra.d714 v15)
                                      (coe MAlonzo.Code.Algebra.d716 v15)
                                      (coe MAlonzo.Code.Algebra.d718 v15)
                                      (coe
                                         MAlonzo.Code.Algebra.Structures.d1728
                                         (coe MAlonzo.Code.Algebra.d720 v15)) in
                            let v17
                                  = coe
                                      MAlonzo.Code.Algebra.C97 (coe MAlonzo.Code.Algebra.d616 v16)
                                      (coe MAlonzo.Code.Algebra.d620 v16)
                                      (coe
                                         MAlonzo.Code.Algebra.Structures.d1542
                                         (coe MAlonzo.Code.Algebra.d624 v16)) in
                            coe
                              MAlonzo.Code.Relation.Binary.C143
                              (coe
                                 MAlonzo.Code.Algebra.Structures.d140
                                 (coe
                                    MAlonzo.Code.Algebra.Structures.d294
                                    (coe
                                       MAlonzo.Code.Algebra.d100
                                       (coe MAlonzo.Code.Algebra.du186 v17)))) in
                    let v15
                          = coe
                              MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166 v4
                              (coe du376 v0 v1 v2 v3 v4 v5 v6 v8 v10)
                              (coe
                                 MAlonzo.Code.Algebra.Operations.du130
                                 (coe
                                    MAlonzo.Code.Algebra.du984
                                    (coe
                                       MAlonzo.Code.Algebra.C463
                                       (coe
                                          MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d164
                                          v4)
                                       (coe
                                          MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                                          v4)
                                       (coe
                                          MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d170
                                          v4)
                                       (coe
                                          MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d172
                                          v4)
                                       (coe
                                          MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d60
                                          (coe
                                             MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d174
                                             v4))))
                                 (coe du376 v0 v1 v2 v3 v4 v5 v6 v8 v10) v11) in
                    MAlonzo.Code.Relation.Binary.PreorderReasoning.C56
                      (MAlonzo.Code.Relation.Binary.d38
                         (MAlonzo.Code.Relation.Binary.d92
                            (MAlonzo.Code.Relation.Binary.du150 v14))
                         v15 v15
                         (MAlonzo.Code.Relation.Binary.Core.d516
                            (MAlonzo.Code.Relation.Binary.d36
                               (MAlonzo.Code.Relation.Binary.d92
                                  (MAlonzo.Code.Relation.Binary.du150 v14)))
                            v15)))))
name1204 = "Algebra.RingSolver.-H\8255-homo"
d1204 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9
  = case coe v9 of
      MAlonzo.Code.Data.Vec.C22 v10 v11 v12
        -> coe
             MAlonzo.Code.Relation.Binary.PreorderReasoning.d62
             (let v13
                    = let v13
                            = coe
                                MAlonzo.Code.Algebra.C463
                                (coe MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d164 v4)
                                (coe MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166 v4)
                                (coe MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d170 v4)
                                (coe MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d172 v4)
                                (coe
                                   MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d60
                                   (coe
                                      MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d174
                                      v4)) in
                      let v14 = coe MAlonzo.Code.Algebra.du984 v13 in
                      let v15
                            = coe
                                MAlonzo.Code.Algebra.C333 (coe MAlonzo.Code.Algebra.d712 v14)
                                (coe MAlonzo.Code.Algebra.d714 v14)
                                (coe MAlonzo.Code.Algebra.d716 v14)
                                (coe MAlonzo.Code.Algebra.d718 v14)
                                (coe
                                   MAlonzo.Code.Algebra.Structures.d1728
                                   (coe MAlonzo.Code.Algebra.d720 v14)) in
                      let v16
                            = coe
                                MAlonzo.Code.Algebra.C97 (coe MAlonzo.Code.Algebra.d616 v15)
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
              MAlonzo.Code.Relation.Binary.PreorderReasoning.du72
                (MAlonzo.Code.Relation.Binary.du150 v13)
                (d372
                   v0 v1 v2 v3 v4 v5 v6 v7
                   (d662
                      v0 v1 v2 v3 v4 v5 v6 v7
                      (du764 v0 v1 v2 v3 v4 v5 v6 (d588 v0 v1 v2 v3 v4 v5 v6 v7)) v8)
                   (MAlonzo.Code.Data.Vec.C22 v7 v11 v12))
                (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                   v4
                   (du376
                      v0 v1 v2 v3 v4 v5 v6
                      (du764 v0 v1 v2 v3 v4 v5 v6 (d588 v0 v1 v2 v3 v4 v5 v6 v7)) v12)
                   (d372
                      v0 v1 v2 v3 v4 v5 v6 v7 v8 (MAlonzo.Code.Data.Vec.C22 v7 v11 v12)))
                (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d168
                   v4
                   (d372
                      v0 v1 v2 v3 v4 v5 v6 v7 v8 (MAlonzo.Code.Data.Vec.C22 v7 v11 v12)))
                (d1024
                   v0 v1 v2 v3 v4 v5 v6 v7
                   (du764 v0 v1 v2 v3 v4 v5 v6 (d588 v0 v1 v2 v3 v4 v5 v6 v7)) v8 v11
                   v12)
                (let v14
                       = let v14
                               = coe
                                   MAlonzo.Code.Algebra.C463
                                   (coe
                                      MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d164 v4)
                                   (coe
                                      MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166 v4)
                                   (coe
                                      MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d170 v4)
                                   (coe
                                      MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d172 v4)
                                   (coe
                                      MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d60
                                      (coe
                                         MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d174
                                         v4)) in
                         let v15 = coe MAlonzo.Code.Algebra.du984 v14 in
                         let v16
                               = coe
                                   MAlonzo.Code.Algebra.C333 (coe MAlonzo.Code.Algebra.d712 v15)
                                   (coe MAlonzo.Code.Algebra.d714 v15)
                                   (coe MAlonzo.Code.Algebra.d716 v15)
                                   (coe MAlonzo.Code.Algebra.d718 v15)
                                   (coe
                                      MAlonzo.Code.Algebra.Structures.d1728
                                      (coe MAlonzo.Code.Algebra.d720 v15)) in
                         let v17
                               = coe
                                   MAlonzo.Code.Algebra.C97 (coe MAlonzo.Code.Algebra.d616 v16)
                                   (coe MAlonzo.Code.Algebra.d620 v16)
                                   (coe
                                      MAlonzo.Code.Algebra.Structures.d1542
                                      (coe MAlonzo.Code.Algebra.d624 v16)) in
                         coe
                           MAlonzo.Code.Relation.Binary.C143
                           (coe
                              MAlonzo.Code.Algebra.Structures.d140
                              (coe
                                 MAlonzo.Code.Algebra.Structures.d294
                                 (coe
                                    MAlonzo.Code.Algebra.d100
                                    (coe MAlonzo.Code.Algebra.du186 v17)))) in
                 MAlonzo.Code.Relation.Binary.PreorderReasoning.du72
                   (MAlonzo.Code.Relation.Binary.du150 v14)
                   (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                      v4
                      (du376
                         v0 v1 v2 v3 v4 v5 v6
                         (du764 v0 v1 v2 v3 v4 v5 v6 (d588 v0 v1 v2 v3 v4 v5 v6 v7)) v12)
                      (d372
                         v0 v1 v2 v3 v4 v5 v6 v7 v8 (MAlonzo.Code.Data.Vec.C22 v7 v11 v12)))
                   (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                      v4
                      (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d168
                         v4 (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d172 v4))
                      (d372
                         v0 v1 v2 v3 v4 v5 v6 v7 v8 (MAlonzo.Code.Data.Vec.C22 v7 v11 v12)))
                   (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d168
                      v4
                      (d372
                         v0 v1 v2 v3 v4 v5 v6 v7 v8 (MAlonzo.Code.Data.Vec.C22 v7 v11 v12)))
                   (MAlonzo.Code.Function.du176
                      (let v15
                             = coe
                                 MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d164 v4 in
                       let v16
                             = coe
                                 MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166 v4 in
                       let v17
                             = coe
                                 MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d170 v4 in
                       let v18
                             = coe
                                 MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d172 v4 in
                       let v19
                             = coe
                                 MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d174 v4 in
                       let v20
                             = coe
                                 MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d60 v19 in
                       MAlonzo.Code.Relation.Binary.Core.d520
                         (MAlonzo.Code.Algebra.Structures.d140
                            (MAlonzo.Code.Algebra.Structures.d454
                               (MAlonzo.Code.Algebra.Structures.d1542
                                  (MAlonzo.Code.Algebra.Structures.d1728
                                     (MAlonzo.Code.Algebra.Structures.du2214
                                        v15 v16 v17 v18 v20)))))
                         (du376
                            v0 v1 v2 v3 v4 v5 v6
                            (du764 v0 v1 v2 v3 v4 v5 v6 (d588 v0 v1 v2 v3 v4 v5 v6 v7)) v12)
                         (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d168
                            v4 (du376 v0 v1 v2 v3 v4 v5 v6 (d588 v0 v1 v2 v3 v4 v5 v6 v7) v12))
                         (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d168
                            v4 (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d172 v4))
                         (du1212 v0 v1 v2 v3 v4 v5 v6 (d588 v0 v1 v2 v3 v4 v5 v6 v7) v12)
                         (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d62
                            (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d174 v4)
                            (du376 v0 v1 v2 v3 v4 v5 v6 (d588 v0 v1 v2 v3 v4 v5 v6 v7) v12)
                            (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d172 v4)
                            (du846 v0 v1 v2 v3 v4 v5 v6 v12)))
                      (let v15
                             = coe
                                 MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d164 v4 in
                       let v16
                             = coe
                                 MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166 v4 in
                       let v17
                             = coe
                                 MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d170 v4 in
                       let v18
                             = coe
                                 MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d172 v4 in
                       let v19
                             = coe
                                 MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d174 v4 in
                       let v20
                             = coe
                                 MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d60 v19 in
                       MAlonzo.Code.Algebra.Structures.d144
                         (MAlonzo.Code.Algebra.Structures.d294
                            (MAlonzo.Code.Algebra.Structures.d1544
                               (MAlonzo.Code.Algebra.Structures.d1728
                                  (MAlonzo.Code.Algebra.Structures.du2214 v15 v16 v17 v18 v20))))
                         (du376
                            v0 v1 v2 v3 v4 v5 v6
                            (du764 v0 v1 v2 v3 v4 v5 v6 (d588 v0 v1 v2 v3 v4 v5 v6 v7)) v12)
                         (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d168
                            v4 (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d172 v4))
                         (d372
                            v0 v1 v2 v3 v4 v5 v6 v7 v8 (MAlonzo.Code.Data.Vec.C22 v7 v11 v12))
                         (d372
                            v0 v1 v2 v3 v4 v5 v6 v7 v8 (MAlonzo.Code.Data.Vec.C22 v7 v11 v12)))
                      (let v15
                             = coe
                                 MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d164 v4 in
                       let v16
                             = coe
                                 MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166 v4 in
                       let v17
                             = coe
                                 MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d170 v4 in
                       let v18
                             = coe
                                 MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d172 v4 in
                       let v19
                             = coe
                                 MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d174 v4 in
                       let v20
                             = coe
                                 MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d60 v19 in
                       MAlonzo.Code.Relation.Binary.Core.d516
                         (MAlonzo.Code.Algebra.Structures.d140
                            (MAlonzo.Code.Algebra.Structures.d454
                               (MAlonzo.Code.Algebra.Structures.d1542
                                  (MAlonzo.Code.Algebra.Structures.d1728
                                     (MAlonzo.Code.Algebra.Structures.du2214
                                        v15 v16 v17 v18 v20)))))
                         (d372
                            v0 v1 v2 v3 v4 v5 v6 v7 v8
                            (MAlonzo.Code.Data.Vec.C22 v7 v11 v12))))
                   (let v15
                          = let v15
                                  = coe
                                      MAlonzo.Code.Algebra.C463
                                      (coe
                                         MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d164
                                         v4)
                                      (coe
                                         MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                                         v4)
                                      (coe
                                         MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d170
                                         v4)
                                      (coe
                                         MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d172
                                         v4)
                                      (coe
                                         MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d60
                                         (coe
                                            MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d174
                                            v4)) in
                            let v16 = coe MAlonzo.Code.Algebra.du984 v15 in
                            let v17
                                  = coe
                                      MAlonzo.Code.Algebra.C333 (coe MAlonzo.Code.Algebra.d712 v16)
                                      (coe MAlonzo.Code.Algebra.d714 v16)
                                      (coe MAlonzo.Code.Algebra.d716 v16)
                                      (coe MAlonzo.Code.Algebra.d718 v16)
                                      (coe
                                         MAlonzo.Code.Algebra.Structures.d1728
                                         (coe MAlonzo.Code.Algebra.d720 v16)) in
                            let v18
                                  = coe
                                      MAlonzo.Code.Algebra.C97 (coe MAlonzo.Code.Algebra.d616 v17)
                                      (coe MAlonzo.Code.Algebra.d620 v17)
                                      (coe
                                         MAlonzo.Code.Algebra.Structures.d1542
                                         (coe MAlonzo.Code.Algebra.d624 v17)) in
                            coe
                              MAlonzo.Code.Relation.Binary.C143
                              (coe
                                 MAlonzo.Code.Algebra.Structures.d140
                                 (coe
                                    MAlonzo.Code.Algebra.Structures.d294
                                    (coe
                                       MAlonzo.Code.Algebra.d100
                                       (coe MAlonzo.Code.Algebra.du186 v18)))) in
                    MAlonzo.Code.Relation.Binary.PreorderReasoning.du72
                      (MAlonzo.Code.Relation.Binary.du150 v15)
                      (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                         v4
                         (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d168
                            v4 (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d172 v4))
                         (d372
                            v0 v1 v2 v3 v4 v5 v6 v7 v8 (MAlonzo.Code.Data.Vec.C22 v7 v11 v12)))
                      (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d168
                         v4
                         (d372
                            v0 v1 v2 v3 v4 v5 v6 v7 v8 (MAlonzo.Code.Data.Vec.C22 v7 v11 v12)))
                      (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d168
                         v4
                         (d372
                            v0 v1 v2 v3 v4 v5 v6 v7 v8 (MAlonzo.Code.Data.Vec.C22 v7 v11 v12)))
                      (MAlonzo.Code.Algebra.RingSolver.Lemmas.du300
                         v4
                         (d372
                            v0 v1 v2 v3 v4 v5 v6 v7 v8 (MAlonzo.Code.Data.Vec.C22 v7 v11 v12)))
                      (let v16
                             = let v16
                                     = coe
                                         MAlonzo.Code.Algebra.C463
                                         (coe
                                            MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d164
                                            v4)
                                         (coe
                                            MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                                            v4)
                                         (coe
                                            MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d170
                                            v4)
                                         (coe
                                            MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d172
                                            v4)
                                         (coe
                                            MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d60
                                            (coe
                                               MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d174
                                               v4)) in
                               let v17 = coe MAlonzo.Code.Algebra.du984 v16 in
                               let v18
                                     = coe
                                         MAlonzo.Code.Algebra.C333
                                         (coe MAlonzo.Code.Algebra.d712 v17)
                                         (coe MAlonzo.Code.Algebra.d714 v17)
                                         (coe MAlonzo.Code.Algebra.d716 v17)
                                         (coe MAlonzo.Code.Algebra.d718 v17)
                                         (coe
                                            MAlonzo.Code.Algebra.Structures.d1728
                                            (coe MAlonzo.Code.Algebra.d720 v17)) in
                               let v19
                                     = coe
                                         MAlonzo.Code.Algebra.C97
                                         (coe MAlonzo.Code.Algebra.d616 v18)
                                         (coe MAlonzo.Code.Algebra.d620 v18)
                                         (coe
                                            MAlonzo.Code.Algebra.Structures.d1542
                                            (coe MAlonzo.Code.Algebra.d624 v18)) in
                               coe
                                 MAlonzo.Code.Relation.Binary.C143
                                 (coe
                                    MAlonzo.Code.Algebra.Structures.d140
                                    (coe
                                       MAlonzo.Code.Algebra.Structures.d294
                                       (coe
                                          MAlonzo.Code.Algebra.d100
                                          (coe MAlonzo.Code.Algebra.du186 v19)))) in
                       let v17
                             = coe
                                 MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d168 v4
                                 (coe
                                    d372 v0 v1 v2 v3 v4 v5 v6 v7 v8
                                    (coe MAlonzo.Code.Data.Vec.C22 v7 v11 v12)) in
                       MAlonzo.Code.Relation.Binary.PreorderReasoning.C56
                         (MAlonzo.Code.Relation.Binary.d38
                            (MAlonzo.Code.Relation.Binary.d92
                               (MAlonzo.Code.Relation.Binary.du150 v16))
                            v17 v17
                            (MAlonzo.Code.Relation.Binary.Core.d516
                               (MAlonzo.Code.Relation.Binary.d36
                                  (MAlonzo.Code.Relation.Binary.d92
                                     (MAlonzo.Code.Relation.Binary.du150 v16)))
                               v17))))))
      _ -> coe MAlonzo.RTE.mazUnreachableError
name1212 = "Algebra.RingSolver.-N\8255-homo"
d1212 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9
  = du1212 v0 v1 v2 v3 v4 v5 v6 v8 v9
du1212 v0 v1 v2 v3 v4 v5 v6 v7 v8
  = case coe v7 of
      C364 v9
        -> coe
             MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d556 v5 v9
      C368 v9 v10 -> coe d1204 v0 v1 v2 v3 v4 v5 v6 v9 v10 v8
      _ -> coe MAlonzo.RTE.mazUnreachableError
name1232 = "Algebra.RingSolver.correct-con"
d1232 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9
  = du1232 v0 v1 v2 v3 v4 v5 v6 v8 v9
du1232 v0 v1 v2 v3 v4 v5 v6 v7 v8
  = case coe v8 of
      MAlonzo.Code.Data.Vec.C14
        -> let v9
                 = coe
                     MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d164 v4 in
           let v10
                 = coe
                     MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166 v4 in
           let v11
                 = coe
                     MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d170 v4 in
           let v12
                 = coe
                     MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d172 v4 in
           let v13
                 = coe
                     MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d174 v4 in
           let v14
                 = coe
                     MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d60 v13 in
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
                         (coe MAlonzo.Code.Algebra.Structures.du2214 v9 v10 v11 v12 v14)))))
             (coe
                du376 v0 v1 v2 v3 v4 v5 v6
                (coe d774 v0 v1 v2 v3 v4 v5 v6 (0 :: Integer) v7) v8)
      MAlonzo.Code.Data.Vec.C22 v9 v10 v11
        -> coe
             MAlonzo.Code.Relation.Binary.PreorderReasoning.d62
             (let v12
                    = let v12
                            = coe
                                MAlonzo.Code.Algebra.C463
                                (coe MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d164 v4)
                                (coe MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166 v4)
                                (coe MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d170 v4)
                                (coe MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d172 v4)
                                (coe
                                   MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d60
                                   (coe
                                      MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d174
                                      v4)) in
                      let v13 = coe MAlonzo.Code.Algebra.du984 v12 in
                      let v14
                            = coe
                                MAlonzo.Code.Algebra.C333 (coe MAlonzo.Code.Algebra.d712 v13)
                                (coe MAlonzo.Code.Algebra.d714 v13)
                                (coe MAlonzo.Code.Algebra.d716 v13)
                                (coe MAlonzo.Code.Algebra.d718 v13)
                                (coe
                                   MAlonzo.Code.Algebra.Structures.d1728
                                   (coe MAlonzo.Code.Algebra.d720 v13)) in
                      let v15
                            = coe
                                MAlonzo.Code.Algebra.C97 (coe MAlonzo.Code.Algebra.d616 v14)
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
                (MAlonzo.Code.Relation.Binary.du150 v12)
                (d372
                   v0 v1 v2 v3 v4 v5 v6 v9
                   (d596
                      v0 v1 v2 v3 v4 v5 v6 v9 (C358 v9)
                      (d774 v0 v1 v2 v3 v4 v5 v6 v9 v7))
                   v8)
                (du376 v0 v1 v2 v3 v4 v5 v6 (d774 v0 v1 v2 v3 v4 v5 v6 v9 v7) v11)
                (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d550 v5 v7)
                (d904
                   v0 v1 v2 v3 v4 v5 v6 v9 (d774 v0 v1 v2 v3 v4 v5 v6 v9 v7) v10 v11)
                (let v13
                       = let v13
                               = coe
                                   MAlonzo.Code.Algebra.C463
                                   (coe
                                      MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d164 v4)
                                   (coe
                                      MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166 v4)
                                   (coe
                                      MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d170 v4)
                                   (coe
                                      MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d172 v4)
                                   (coe
                                      MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d60
                                      (coe
                                         MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d174
                                         v4)) in
                         let v14 = coe MAlonzo.Code.Algebra.du984 v13 in
                         let v15
                               = coe
                                   MAlonzo.Code.Algebra.C333 (coe MAlonzo.Code.Algebra.d712 v14)
                                   (coe MAlonzo.Code.Algebra.d714 v14)
                                   (coe MAlonzo.Code.Algebra.d716 v14)
                                   (coe MAlonzo.Code.Algebra.d718 v14)
                                   (coe
                                      MAlonzo.Code.Algebra.Structures.d1728
                                      (coe MAlonzo.Code.Algebra.d720 v14)) in
                         let v16
                               = coe
                                   MAlonzo.Code.Algebra.C97 (coe MAlonzo.Code.Algebra.d616 v15)
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
                 MAlonzo.Code.Relation.Binary.PreorderReasoning.du72
                   (MAlonzo.Code.Relation.Binary.du150 v13)
                   (du376 v0 v1 v2 v3 v4 v5 v6 (d774 v0 v1 v2 v3 v4 v5 v6 v9 v7) v11)
                   (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d550 v5 v7)
                   (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d550 v5 v7)
                   (du1232 v0 v1 v2 v3 v4 v5 v6 v7 v11)
                   (let v14
                          = let v14
                                  = coe
                                      MAlonzo.Code.Algebra.C463
                                      (coe
                                         MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d164
                                         v4)
                                      (coe
                                         MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                                         v4)
                                      (coe
                                         MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d170
                                         v4)
                                      (coe
                                         MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d172
                                         v4)
                                      (coe
                                         MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d60
                                         (coe
                                            MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d174
                                            v4)) in
                            let v15 = coe MAlonzo.Code.Algebra.du984 v14 in
                            let v16
                                  = coe
                                      MAlonzo.Code.Algebra.C333 (coe MAlonzo.Code.Algebra.d712 v15)
                                      (coe MAlonzo.Code.Algebra.d714 v15)
                                      (coe MAlonzo.Code.Algebra.d716 v15)
                                      (coe MAlonzo.Code.Algebra.d718 v15)
                                      (coe
                                         MAlonzo.Code.Algebra.Structures.d1728
                                         (coe MAlonzo.Code.Algebra.d720 v15)) in
                            let v17
                                  = coe
                                      MAlonzo.Code.Algebra.C97 (coe MAlonzo.Code.Algebra.d616 v16)
                                      (coe MAlonzo.Code.Algebra.d620 v16)
                                      (coe
                                         MAlonzo.Code.Algebra.Structures.d1542
                                         (coe MAlonzo.Code.Algebra.d624 v16)) in
                            coe
                              MAlonzo.Code.Relation.Binary.C143
                              (coe
                                 MAlonzo.Code.Algebra.Structures.d140
                                 (coe
                                    MAlonzo.Code.Algebra.Structures.d294
                                    (coe
                                       MAlonzo.Code.Algebra.d100
                                       (coe MAlonzo.Code.Algebra.du186 v17)))) in
                    let v15
                          = coe
                              MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d550 v5 v7 in
                    MAlonzo.Code.Relation.Binary.PreorderReasoning.C56
                      (MAlonzo.Code.Relation.Binary.d38
                         (MAlonzo.Code.Relation.Binary.d92
                            (MAlonzo.Code.Relation.Binary.du150 v14))
                         v15 v15
                         (MAlonzo.Code.Relation.Binary.Core.d516
                            (MAlonzo.Code.Relation.Binary.d36
                               (MAlonzo.Code.Relation.Binary.d92
                                  (MAlonzo.Code.Relation.Binary.du150 v14)))
                            v15)))))
      _ -> coe MAlonzo.RTE.mazUnreachableError
name1248 = "Algebra.RingSolver.correct-var"
d1248 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9
  = du1248 v0 v1 v2 v3 v4 v5 v6 v8 v9
du1248 v0 v1 v2 v3 v4 v5 v6 v7 v8
  = case coe v8 of
      MAlonzo.Code.Data.Vec.C22 v9 v10 v11
        -> case coe v7 of
             MAlonzo.Code.Data.Fin.C8 v12
               -> coe
                    MAlonzo.Code.Relation.Binary.PreorderReasoning.d62
                    (let v13
                           = let v13
                                   = coe
                                       MAlonzo.Code.Algebra.C463
                                       (coe
                                          MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d164
                                          v4)
                                       (coe
                                          MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                                          v4)
                                       (coe
                                          MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d170
                                          v4)
                                       (coe
                                          MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d172
                                          v4)
                                       (coe
                                          MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d60
                                          (coe
                                             MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d174
                                             v4)) in
                             let v14 = coe MAlonzo.Code.Algebra.du984 v13 in
                             let v15
                                   = coe
                                       MAlonzo.Code.Algebra.C333 (coe MAlonzo.Code.Algebra.d712 v14)
                                       (coe MAlonzo.Code.Algebra.d714 v14)
                                       (coe MAlonzo.Code.Algebra.d716 v14)
                                       (coe MAlonzo.Code.Algebra.d718 v14)
                                       (coe
                                          MAlonzo.Code.Algebra.Structures.d1728
                                          (coe MAlonzo.Code.Algebra.d720 v14)) in
                             let v16
                                   = coe
                                       MAlonzo.Code.Algebra.C97 (coe MAlonzo.Code.Algebra.d616 v15)
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
                     MAlonzo.Code.Relation.Binary.PreorderReasoning.du72
                       (MAlonzo.Code.Relation.Binary.du150 v13)
                       (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d164
                          v4
                          (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                             v4
                             (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d164
                                v4
                                (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                                   v4
                                   (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d170 v4)
                                   v10)
                                (du376 v0 v1 v2 v3 v4 v5 v6 (d588 v0 v1 v2 v3 v4 v5 v6 v12) v11))
                             v10)
                          (du376 v0 v1 v2 v3 v4 v5 v6 (du578 v3 v12) v11))
                       (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d164
                          v4
                          (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                             v4
                             (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d164
                                v4
                                (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                                   v4
                                   (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d170 v4)
                                   v10)
                                (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d172 v4))
                             v10)
                          (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d170 v4))
                       v10
                       (MAlonzo.Code.Function.du176
                          (MAlonzo.Code.Function.du176
                             (MAlonzo.Code.Function.du176
                                (let v14
                                       = coe
                                           MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d164
                                           v4 in
                                 let v15
                                       = coe
                                           MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                                           v4 in
                                 let v16
                                       = coe
                                           MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d170
                                           v4 in
                                 let v17
                                       = coe
                                           MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d172
                                           v4 in
                                 let v18
                                       = coe
                                           MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d174
                                           v4 in
                                 let v19
                                       = coe
                                           MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d60
                                           v18 in
                                 MAlonzo.Code.Relation.Binary.Core.d516
                                   (MAlonzo.Code.Algebra.Structures.d140
                                      (MAlonzo.Code.Algebra.Structures.d454
                                         (MAlonzo.Code.Algebra.Structures.d1542
                                            (MAlonzo.Code.Algebra.Structures.d1728
                                               (MAlonzo.Code.Algebra.Structures.du2214
                                                  v14 v15 v16 v17 v19)))))
                                   (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                                      v4
                                      (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d170
                                         v4)
                                      v10))
                                (let v14
                                       = coe
                                           MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d164
                                           v4 in
                                 let v15
                                       = coe
                                           MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                                           v4 in
                                 let v16
                                       = coe
                                           MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d170
                                           v4 in
                                 let v17
                                       = coe
                                           MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d172
                                           v4 in
                                 let v18
                                       = coe
                                           MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d174
                                           v4 in
                                 let v19
                                       = coe
                                           MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d60
                                           v18 in
                                 MAlonzo.Code.Algebra.Structures.d144
                                   (MAlonzo.Code.Algebra.Structures.d454
                                      (MAlonzo.Code.Algebra.Structures.d1542
                                         (MAlonzo.Code.Algebra.Structures.d1728
                                            (MAlonzo.Code.Algebra.Structures.du2214
                                               v14 v15 v16 v17 v19))))
                                   (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                                      v4
                                      (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d170
                                         v4)
                                      v10)
                                   (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                                      v4
                                      (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d170
                                         v4)
                                      v10)
                                   (du376 v0 v1 v2 v3 v4 v5 v6 (d588 v0 v1 v2 v3 v4 v5 v6 v12) v11)
                                   (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d172 v4))
                                (du846 v0 v1 v2 v3 v4 v5 v6 v11))
                             (let v14
                                    = coe
                                        MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d164
                                        v4 in
                              let v15
                                    = coe
                                        MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                                        v4 in
                              let v16
                                    = coe
                                        MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d170
                                        v4 in
                              let v17
                                    = coe
                                        MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d172
                                        v4 in
                              let v18
                                    = coe
                                        MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d174
                                        v4 in
                              let v19
                                    = coe
                                        MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d60
                                        v18 in
                              MAlonzo.Code.Algebra.Structures.d144
                                (MAlonzo.Code.Algebra.Structures.d294
                                   (MAlonzo.Code.Algebra.Structures.d1544
                                      (MAlonzo.Code.Algebra.Structures.d1728
                                         (MAlonzo.Code.Algebra.Structures.du2214
                                            v14 v15 v16 v17 v19))))
                                (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d164
                                   v4
                                   (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                                      v4
                                      (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d170
                                         v4)
                                      v10)
                                   (du376 v0 v1 v2 v3 v4 v5 v6 (d588 v0 v1 v2 v3 v4 v5 v6 v12) v11))
                                (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d164
                                   v4
                                   (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                                      v4
                                      (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d170
                                         v4)
                                      v10)
                                   (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d172 v4))
                                v10 v10)
                             (let v14
                                    = coe
                                        MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d164
                                        v4 in
                              let v15
                                    = coe
                                        MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                                        v4 in
                              let v16
                                    = coe
                                        MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d170
                                        v4 in
                              let v17
                                    = coe
                                        MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d172
                                        v4 in
                              let v18
                                    = coe
                                        MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d174
                                        v4 in
                              let v19
                                    = coe
                                        MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d60
                                        v18 in
                              MAlonzo.Code.Relation.Binary.Core.d516
                                (MAlonzo.Code.Algebra.Structures.d140
                                   (MAlonzo.Code.Algebra.Structures.d454
                                      (MAlonzo.Code.Algebra.Structures.d1542
                                         (MAlonzo.Code.Algebra.Structures.d1728
                                            (MAlonzo.Code.Algebra.Structures.du2214
                                               v14 v15 v16 v17 v19)))))
                                v10))
                          (let v14
                                 = coe
                                     MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d164
                                     v4 in
                           let v15
                                 = coe
                                     MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                                     v4 in
                           let v16
                                 = coe
                                     MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d170
                                     v4 in
                           let v17
                                 = coe
                                     MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d172
                                     v4 in
                           let v18
                                 = coe
                                     MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d174
                                     v4 in
                           let v19
                                 = coe
                                     MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d60
                                     v18 in
                           MAlonzo.Code.Algebra.Structures.d144
                             (MAlonzo.Code.Algebra.Structures.d454
                                (MAlonzo.Code.Algebra.Structures.d1542
                                   (MAlonzo.Code.Algebra.Structures.d1728
                                      (MAlonzo.Code.Algebra.Structures.du2214
                                         v14 v15 v16 v17 v19))))
                             (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                                v4
                                (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d164
                                   v4
                                   (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                                      v4
                                      (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d170
                                         v4)
                                      v10)
                                   (du376 v0 v1 v2 v3 v4 v5 v6 (d588 v0 v1 v2 v3 v4 v5 v6 v12) v11))
                                v10)
                             (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                                v4
                                (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d164
                                   v4
                                   (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                                      v4
                                      (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d170
                                         v4)
                                      v10)
                                   (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d172 v4))
                                v10)
                             (du376 v0 v1 v2 v3 v4 v5 v6 (du578 v3 v12) v11)
                             (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d170 v4))
                          (du822 v0 v1 v2 v3 v4 v5 v6 v11))
                       (let v14
                              = let v14
                                      = coe
                                          MAlonzo.Code.Algebra.C463
                                          (coe
                                             MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d164
                                             v4)
                                          (coe
                                             MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                                             v4)
                                          (coe
                                             MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d170
                                             v4)
                                          (coe
                                             MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d172
                                             v4)
                                          (coe
                                             MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d60
                                             (coe
                                                MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d174
                                                v4)) in
                                let v15 = coe MAlonzo.Code.Algebra.du984 v14 in
                                let v16
                                      = coe
                                          MAlonzo.Code.Algebra.C333
                                          (coe MAlonzo.Code.Algebra.d712 v15)
                                          (coe MAlonzo.Code.Algebra.d714 v15)
                                          (coe MAlonzo.Code.Algebra.d716 v15)
                                          (coe MAlonzo.Code.Algebra.d718 v15)
                                          (coe
                                             MAlonzo.Code.Algebra.Structures.d1728
                                             (coe MAlonzo.Code.Algebra.d720 v15)) in
                                let v17
                                      = coe
                                          MAlonzo.Code.Algebra.C97
                                          (coe MAlonzo.Code.Algebra.d616 v16)
                                          (coe MAlonzo.Code.Algebra.d620 v16)
                                          (coe
                                             MAlonzo.Code.Algebra.Structures.d1542
                                             (coe MAlonzo.Code.Algebra.d624 v16)) in
                                coe
                                  MAlonzo.Code.Relation.Binary.C143
                                  (coe
                                     MAlonzo.Code.Algebra.Structures.d140
                                     (coe
                                        MAlonzo.Code.Algebra.Structures.d294
                                        (coe
                                           MAlonzo.Code.Algebra.d100
                                           (coe MAlonzo.Code.Algebra.du186 v17)))) in
                        MAlonzo.Code.Relation.Binary.PreorderReasoning.du72
                          (MAlonzo.Code.Relation.Binary.du150 v14)
                          (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d164
                             v4
                             (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                                v4
                                (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d164
                                   v4
                                   (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                                      v4
                                      (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d170
                                         v4)
                                      v10)
                                   (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d172 v4))
                                v10)
                             (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d170 v4))
                          v10 v10 (MAlonzo.Code.Algebra.RingSolver.Lemmas.du284 v4 v10)
                          (let v15
                                 = let v15
                                         = coe
                                             MAlonzo.Code.Algebra.C463
                                             (coe
                                                MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d164
                                                v4)
                                             (coe
                                                MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                                                v4)
                                             (coe
                                                MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d170
                                                v4)
                                             (coe
                                                MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d172
                                                v4)
                                             (coe
                                                MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d60
                                                (coe
                                                   MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d174
                                                   v4)) in
                                   let v16 = coe MAlonzo.Code.Algebra.du984 v15 in
                                   let v17
                                         = coe
                                             MAlonzo.Code.Algebra.C333
                                             (coe MAlonzo.Code.Algebra.d712 v16)
                                             (coe MAlonzo.Code.Algebra.d714 v16)
                                             (coe MAlonzo.Code.Algebra.d716 v16)
                                             (coe MAlonzo.Code.Algebra.d718 v16)
                                             (coe
                                                MAlonzo.Code.Algebra.Structures.d1728
                                                (coe MAlonzo.Code.Algebra.d720 v16)) in
                                   let v18
                                         = coe
                                             MAlonzo.Code.Algebra.C97
                                             (coe MAlonzo.Code.Algebra.d616 v17)
                                             (coe MAlonzo.Code.Algebra.d620 v17)
                                             (coe
                                                MAlonzo.Code.Algebra.Structures.d1542
                                                (coe MAlonzo.Code.Algebra.d624 v17)) in
                                   coe
                                     MAlonzo.Code.Relation.Binary.C143
                                     (coe
                                        MAlonzo.Code.Algebra.Structures.d140
                                        (coe
                                           MAlonzo.Code.Algebra.Structures.d294
                                           (coe
                                              MAlonzo.Code.Algebra.d100
                                              (coe MAlonzo.Code.Algebra.du186 v18)))) in
                           MAlonzo.Code.Relation.Binary.PreorderReasoning.C56
                             (MAlonzo.Code.Relation.Binary.d38
                                (MAlonzo.Code.Relation.Binary.d92
                                   (MAlonzo.Code.Relation.Binary.du150 v15))
                                v10 v10
                                (MAlonzo.Code.Relation.Binary.Core.d516
                                   (MAlonzo.Code.Relation.Binary.d36
                                      (MAlonzo.Code.Relation.Binary.d92
                                         (MAlonzo.Code.Relation.Binary.du150 v15)))
                                   v10)))))
             MAlonzo.Code.Data.Fin.C14 v12 v13
               -> coe
                    MAlonzo.Code.Relation.Binary.PreorderReasoning.d62
                    (let v14
                           = let v14
                                   = coe
                                       MAlonzo.Code.Algebra.C463
                                       (coe
                                          MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d164
                                          v4)
                                       (coe
                                          MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                                          v4)
                                       (coe
                                          MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d170
                                          v4)
                                       (coe
                                          MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d172
                                          v4)
                                       (coe
                                          MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d60
                                          (coe
                                             MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d174
                                             v4)) in
                             let v15 = coe MAlonzo.Code.Algebra.du984 v14 in
                             let v16
                                   = coe
                                       MAlonzo.Code.Algebra.C333 (coe MAlonzo.Code.Algebra.d712 v15)
                                       (coe MAlonzo.Code.Algebra.d714 v15)
                                       (coe MAlonzo.Code.Algebra.d716 v15)
                                       (coe MAlonzo.Code.Algebra.d718 v15)
                                       (coe
                                          MAlonzo.Code.Algebra.Structures.d1728
                                          (coe MAlonzo.Code.Algebra.d720 v15)) in
                             let v17
                                   = coe
                                       MAlonzo.Code.Algebra.C97 (coe MAlonzo.Code.Algebra.d616 v16)
                                       (coe MAlonzo.Code.Algebra.d620 v16)
                                       (coe
                                          MAlonzo.Code.Algebra.Structures.d1542
                                          (coe MAlonzo.Code.Algebra.d624 v16)) in
                             coe
                               MAlonzo.Code.Relation.Binary.C143
                               (coe
                                  MAlonzo.Code.Algebra.Structures.d140
                                  (coe
                                     MAlonzo.Code.Algebra.Structures.d294
                                     (coe
                                        MAlonzo.Code.Algebra.d100
                                        (coe MAlonzo.Code.Algebra.du186 v17)))) in
                     MAlonzo.Code.Relation.Binary.PreorderReasoning.du72
                       (MAlonzo.Code.Relation.Binary.du150 v14)
                       (d372
                          v0 v1 v2 v3 v4 v5 v6 v12
                          (d596
                             v0 v1 v2 v3 v4 v5 v6 v12 (C358 v12)
                             (du784 v0 v1 v2 v3 v4 v5 v6 v13))
                          (MAlonzo.Code.Data.Vec.C22 v12 v10 v11))
                       (du376 v0 v1 v2 v3 v4 v5 v6 (du784 v0 v1 v2 v3 v4 v5 v6 v13) v11)
                       (MAlonzo.Code.Data.Vec.du714 v13 v11)
                       (d904
                          v0 v1 v2 v3 v4 v5 v6 v12 (du784 v0 v1 v2 v3 v4 v5 v6 v13) v10 v11)
                       (let v15
                              = let v15
                                      = coe
                                          MAlonzo.Code.Algebra.C463
                                          (coe
                                             MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d164
                                             v4)
                                          (coe
                                             MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                                             v4)
                                          (coe
                                             MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d170
                                             v4)
                                          (coe
                                             MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d172
                                             v4)
                                          (coe
                                             MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d60
                                             (coe
                                                MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d174
                                                v4)) in
                                let v16 = coe MAlonzo.Code.Algebra.du984 v15 in
                                let v17
                                      = coe
                                          MAlonzo.Code.Algebra.C333
                                          (coe MAlonzo.Code.Algebra.d712 v16)
                                          (coe MAlonzo.Code.Algebra.d714 v16)
                                          (coe MAlonzo.Code.Algebra.d716 v16)
                                          (coe MAlonzo.Code.Algebra.d718 v16)
                                          (coe
                                             MAlonzo.Code.Algebra.Structures.d1728
                                             (coe MAlonzo.Code.Algebra.d720 v16)) in
                                let v18
                                      = coe
                                          MAlonzo.Code.Algebra.C97
                                          (coe MAlonzo.Code.Algebra.d616 v17)
                                          (coe MAlonzo.Code.Algebra.d620 v17)
                                          (coe
                                             MAlonzo.Code.Algebra.Structures.d1542
                                             (coe MAlonzo.Code.Algebra.d624 v17)) in
                                coe
                                  MAlonzo.Code.Relation.Binary.C143
                                  (coe
                                     MAlonzo.Code.Algebra.Structures.d140
                                     (coe
                                        MAlonzo.Code.Algebra.Structures.d294
                                        (coe
                                           MAlonzo.Code.Algebra.d100
                                           (coe MAlonzo.Code.Algebra.du186 v18)))) in
                        MAlonzo.Code.Relation.Binary.PreorderReasoning.du72
                          (MAlonzo.Code.Relation.Binary.du150 v15)
                          (du376 v0 v1 v2 v3 v4 v5 v6 (du784 v0 v1 v2 v3 v4 v5 v6 v13) v11)
                          (MAlonzo.Code.Data.Vec.du714 v13 v11)
                          (MAlonzo.Code.Data.Vec.du714 v13 v11)
                          (du1248 v0 v1 v2 v3 v4 v5 v6 v13 v11)
                          (let v16
                                 = let v16
                                         = coe
                                             MAlonzo.Code.Algebra.C463
                                             (coe
                                                MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d164
                                                v4)
                                             (coe
                                                MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                                                v4)
                                             (coe
                                                MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d170
                                                v4)
                                             (coe
                                                MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d172
                                                v4)
                                             (coe
                                                MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d60
                                                (coe
                                                   MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d174
                                                   v4)) in
                                   let v17 = coe MAlonzo.Code.Algebra.du984 v16 in
                                   let v18
                                         = coe
                                             MAlonzo.Code.Algebra.C333
                                             (coe MAlonzo.Code.Algebra.d712 v17)
                                             (coe MAlonzo.Code.Algebra.d714 v17)
                                             (coe MAlonzo.Code.Algebra.d716 v17)
                                             (coe MAlonzo.Code.Algebra.d718 v17)
                                             (coe
                                                MAlonzo.Code.Algebra.Structures.d1728
                                                (coe MAlonzo.Code.Algebra.d720 v17)) in
                                   let v19
                                         = coe
                                             MAlonzo.Code.Algebra.C97
                                             (coe MAlonzo.Code.Algebra.d616 v18)
                                             (coe MAlonzo.Code.Algebra.d620 v18)
                                             (coe
                                                MAlonzo.Code.Algebra.Structures.d1542
                                                (coe MAlonzo.Code.Algebra.d624 v18)) in
                                   coe
                                     MAlonzo.Code.Relation.Binary.C143
                                     (coe
                                        MAlonzo.Code.Algebra.Structures.d140
                                        (coe
                                           MAlonzo.Code.Algebra.Structures.d294
                                           (coe
                                              MAlonzo.Code.Algebra.d100
                                              (coe MAlonzo.Code.Algebra.du186 v19)))) in
                           let v17 = coe MAlonzo.Code.Data.Vec.du714 v13 v11 in
                           MAlonzo.Code.Relation.Binary.PreorderReasoning.C56
                             (MAlonzo.Code.Relation.Binary.d38
                                (MAlonzo.Code.Relation.Binary.d92
                                   (MAlonzo.Code.Relation.Binary.du150 v16))
                                v17 v17
                                (MAlonzo.Code.Relation.Binary.Core.d516
                                   (MAlonzo.Code.Relation.Binary.d36
                                      (MAlonzo.Code.Relation.Binary.d92
                                         (MAlonzo.Code.Relation.Binary.du150 v16)))
                                   v17)))))
             _ -> coe MAlonzo.RTE.mazUnreachableError
      _ -> coe MAlonzo.RTE.mazUnreachableError
name1266 = "Algebra.RingSolver.correct"
d1266 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9
  = case coe v8 of
      C284 v10 v11 v12
        -> case coe v10 of
             C268
               -> coe
                    MAlonzo.Code.Relation.Binary.PreorderReasoning.d62
                    (let v13
                           = let v13
                                   = coe
                                       MAlonzo.Code.Algebra.C463
                                       (coe
                                          MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d164
                                          v4)
                                       (coe
                                          MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                                          v4)
                                       (coe
                                          MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d170
                                          v4)
                                       (coe
                                          MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d172
                                          v4)
                                       (coe
                                          MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d60
                                          (coe
                                             MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d174
                                             v4)) in
                             let v14 = coe MAlonzo.Code.Algebra.du984 v13 in
                             let v15
                                   = coe
                                       MAlonzo.Code.Algebra.C333 (coe MAlonzo.Code.Algebra.d712 v14)
                                       (coe MAlonzo.Code.Algebra.d714 v14)
                                       (coe MAlonzo.Code.Algebra.d716 v14)
                                       (coe MAlonzo.Code.Algebra.d718 v14)
                                       (coe
                                          MAlonzo.Code.Algebra.Structures.d1728
                                          (coe MAlonzo.Code.Algebra.d720 v14)) in
                             let v16
                                   = coe
                                       MAlonzo.Code.Algebra.C97 (coe MAlonzo.Code.Algebra.d616 v15)
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
                     MAlonzo.Code.Relation.Binary.PreorderReasoning.du72
                       (MAlonzo.Code.Relation.Binary.du150 v13)
                       (du376
                          v0 v1 v2 v3 v4 v5 v6
                          (du624
                             v0 v1 v2 v3 v4 v5 v6 (d790 v0 v1 v2 v3 v4 v5 v6 v7 v11)
                             (d790 v0 v1 v2 v3 v4 v5 v6 v7 v12))
                          v9)
                       (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d164
                          v4
                          (du376 v0 v1 v2 v3 v4 v5 v6 (d790 v0 v1 v2 v3 v4 v5 v6 v7 v11) v9)
                          (du376 v0 v1 v2 v3 v4 v5 v6 (d790 v0 v1 v2 v3 v4 v5 v6 v7 v12) v9))
                       (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d164
                          v4 (du324 v4 v5 v11 v9) (du324 v4 v5 v12 v9))
                       (du950
                          v0 v1 v2 v3 v4 v5 v6 (d790 v0 v1 v2 v3 v4 v5 v6 v7 v11)
                          (d790 v0 v1 v2 v3 v4 v5 v6 v7 v12) v9)
                       (let v14
                              = let v14
                                      = coe
                                          MAlonzo.Code.Algebra.C463
                                          (coe
                                             MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d164
                                             v4)
                                          (coe
                                             MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                                             v4)
                                          (coe
                                             MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d170
                                             v4)
                                          (coe
                                             MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d172
                                             v4)
                                          (coe
                                             MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d60
                                             (coe
                                                MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d174
                                                v4)) in
                                let v15 = coe MAlonzo.Code.Algebra.du984 v14 in
                                let v16
                                      = coe
                                          MAlonzo.Code.Algebra.C333
                                          (coe MAlonzo.Code.Algebra.d712 v15)
                                          (coe MAlonzo.Code.Algebra.d714 v15)
                                          (coe MAlonzo.Code.Algebra.d716 v15)
                                          (coe MAlonzo.Code.Algebra.d718 v15)
                                          (coe
                                             MAlonzo.Code.Algebra.Structures.d1728
                                             (coe MAlonzo.Code.Algebra.d720 v15)) in
                                let v17
                                      = coe
                                          MAlonzo.Code.Algebra.C97
                                          (coe MAlonzo.Code.Algebra.d616 v16)
                                          (coe MAlonzo.Code.Algebra.d620 v16)
                                          (coe
                                             MAlonzo.Code.Algebra.Structures.d1542
                                             (coe MAlonzo.Code.Algebra.d624 v16)) in
                                coe
                                  MAlonzo.Code.Relation.Binary.C143
                                  (coe
                                     MAlonzo.Code.Algebra.Structures.d140
                                     (coe
                                        MAlonzo.Code.Algebra.Structures.d294
                                        (coe
                                           MAlonzo.Code.Algebra.d100
                                           (coe MAlonzo.Code.Algebra.du186 v17)))) in
                        MAlonzo.Code.Relation.Binary.PreorderReasoning.du72
                          (MAlonzo.Code.Relation.Binary.du150 v14)
                          (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d164
                             v4 (d812 v0 v1 v2 v3 v4 v5 v6 v7 v11 v9)
                             (d812 v0 v1 v2 v3 v4 v5 v6 v7 v12 v9))
                          (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d164
                             v4 (du324 v4 v5 v11 v9) (du324 v4 v5 v12 v9))
                          (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d164
                             v4 (du324 v4 v5 v11 v9) (du324 v4 v5 v12 v9))
                          (MAlonzo.Code.Function.du176
                             (d1266 v0 v1 v2 v3 v4 v5 v6 v7 v11 v9)
                             (let v15
                                    = coe
                                        MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d164
                                        v4 in
                              let v16
                                    = coe
                                        MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                                        v4 in
                              let v17
                                    = coe
                                        MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d170
                                        v4 in
                              let v18
                                    = coe
                                        MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d172
                                        v4 in
                              let v19
                                    = coe
                                        MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d174
                                        v4 in
                              let v20
                                    = coe
                                        MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d60
                                        v19 in
                              MAlonzo.Code.Algebra.Structures.d144
                                (MAlonzo.Code.Algebra.Structures.d454
                                   (MAlonzo.Code.Algebra.Structures.d1542
                                      (MAlonzo.Code.Algebra.Structures.d1728
                                         (MAlonzo.Code.Algebra.Structures.du2214
                                            v15 v16 v17 v18 v20))))
                                (d812 v0 v1 v2 v3 v4 v5 v6 v7 v11 v9) (du324 v4 v5 v11 v9)
                                (d812 v0 v1 v2 v3 v4 v5 v6 v7 v12 v9) (du324 v4 v5 v12 v9))
                             (d1266 v0 v1 v2 v3 v4 v5 v6 v7 v12 v9))
                          (let v15
                                 = let v15
                                         = coe
                                             MAlonzo.Code.Algebra.C463
                                             (coe
                                                MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d164
                                                v4)
                                             (coe
                                                MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                                                v4)
                                             (coe
                                                MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d170
                                                v4)
                                             (coe
                                                MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d172
                                                v4)
                                             (coe
                                                MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d60
                                                (coe
                                                   MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d174
                                                   v4)) in
                                   let v16 = coe MAlonzo.Code.Algebra.du984 v15 in
                                   let v17
                                         = coe
                                             MAlonzo.Code.Algebra.C333
                                             (coe MAlonzo.Code.Algebra.d712 v16)
                                             (coe MAlonzo.Code.Algebra.d714 v16)
                                             (coe MAlonzo.Code.Algebra.d716 v16)
                                             (coe MAlonzo.Code.Algebra.d718 v16)
                                             (coe
                                                MAlonzo.Code.Algebra.Structures.d1728
                                                (coe MAlonzo.Code.Algebra.d720 v16)) in
                                   let v18
                                         = coe
                                             MAlonzo.Code.Algebra.C97
                                             (coe MAlonzo.Code.Algebra.d616 v17)
                                             (coe MAlonzo.Code.Algebra.d620 v17)
                                             (coe
                                                MAlonzo.Code.Algebra.Structures.d1542
                                                (coe MAlonzo.Code.Algebra.d624 v17)) in
                                   coe
                                     MAlonzo.Code.Relation.Binary.C143
                                     (coe
                                        MAlonzo.Code.Algebra.Structures.d140
                                        (coe
                                           MAlonzo.Code.Algebra.Structures.d294
                                           (coe
                                              MAlonzo.Code.Algebra.d100
                                              (coe MAlonzo.Code.Algebra.du186 v18)))) in
                           let v16
                                 = coe
                                     MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d164 v4
                                     (coe du324 v4 v5 v11 v9) (coe du324 v4 v5 v12 v9) in
                           MAlonzo.Code.Relation.Binary.PreorderReasoning.C56
                             (MAlonzo.Code.Relation.Binary.d38
                                (MAlonzo.Code.Relation.Binary.d92
                                   (MAlonzo.Code.Relation.Binary.du150 v15))
                                v16 v16
                                (MAlonzo.Code.Relation.Binary.Core.d516
                                   (MAlonzo.Code.Relation.Binary.d36
                                      (MAlonzo.Code.Relation.Binary.d92
                                         (MAlonzo.Code.Relation.Binary.du150 v15)))
                                   v16)))))
             C270
               -> coe
                    MAlonzo.Code.Relation.Binary.PreorderReasoning.d62
                    (let v13
                           = let v13
                                   = coe
                                       MAlonzo.Code.Algebra.C463
                                       (coe
                                          MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d164
                                          v4)
                                       (coe
                                          MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                                          v4)
                                       (coe
                                          MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d170
                                          v4)
                                       (coe
                                          MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d172
                                          v4)
                                       (coe
                                          MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d60
                                          (coe
                                             MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d174
                                             v4)) in
                             let v14 = coe MAlonzo.Code.Algebra.du984 v13 in
                             let v15
                                   = coe
                                       MAlonzo.Code.Algebra.C333 (coe MAlonzo.Code.Algebra.d712 v14)
                                       (coe MAlonzo.Code.Algebra.d714 v14)
                                       (coe MAlonzo.Code.Algebra.d716 v14)
                                       (coe MAlonzo.Code.Algebra.d718 v14)
                                       (coe
                                          MAlonzo.Code.Algebra.Structures.d1728
                                          (coe MAlonzo.Code.Algebra.d720 v14)) in
                             let v16
                                   = coe
                                       MAlonzo.Code.Algebra.C97 (coe MAlonzo.Code.Algebra.d616 v15)
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
                     MAlonzo.Code.Relation.Binary.PreorderReasoning.du72
                       (MAlonzo.Code.Relation.Binary.du150 v13)
                       (du376
                          v0 v1 v2 v3 v4 v5 v6
                          (du674
                             v0 v1 v2 v3 v4 v5 v6 (d790 v0 v1 v2 v3 v4 v5 v6 v7 v11)
                             (d790 v0 v1 v2 v3 v4 v5 v6 v7 v12))
                          v9)
                       (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                          v4
                          (du376 v0 v1 v2 v3 v4 v5 v6 (d790 v0 v1 v2 v3 v4 v5 v6 v7 v11) v9)
                          (du376 v0 v1 v2 v3 v4 v5 v6 (d790 v0 v1 v2 v3 v4 v5 v6 v7 v12) v9))
                       (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                          v4 (du324 v4 v5 v11 v9) (du324 v4 v5 v12 v9))
                       (du1056
                          v0 v1 v2 v3 v4 v5 v6 (d790 v0 v1 v2 v3 v4 v5 v6 v7 v11)
                          (d790 v0 v1 v2 v3 v4 v5 v6 v7 v12) v9)
                       (let v14
                              = let v14
                                      = coe
                                          MAlonzo.Code.Algebra.C463
                                          (coe
                                             MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d164
                                             v4)
                                          (coe
                                             MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                                             v4)
                                          (coe
                                             MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d170
                                             v4)
                                          (coe
                                             MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d172
                                             v4)
                                          (coe
                                             MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d60
                                             (coe
                                                MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d174
                                                v4)) in
                                let v15 = coe MAlonzo.Code.Algebra.du984 v14 in
                                let v16
                                      = coe
                                          MAlonzo.Code.Algebra.C333
                                          (coe MAlonzo.Code.Algebra.d712 v15)
                                          (coe MAlonzo.Code.Algebra.d714 v15)
                                          (coe MAlonzo.Code.Algebra.d716 v15)
                                          (coe MAlonzo.Code.Algebra.d718 v15)
                                          (coe
                                             MAlonzo.Code.Algebra.Structures.d1728
                                             (coe MAlonzo.Code.Algebra.d720 v15)) in
                                let v17
                                      = coe
                                          MAlonzo.Code.Algebra.C97
                                          (coe MAlonzo.Code.Algebra.d616 v16)
                                          (coe MAlonzo.Code.Algebra.d620 v16)
                                          (coe
                                             MAlonzo.Code.Algebra.Structures.d1542
                                             (coe MAlonzo.Code.Algebra.d624 v16)) in
                                coe
                                  MAlonzo.Code.Relation.Binary.C143
                                  (coe
                                     MAlonzo.Code.Algebra.Structures.d140
                                     (coe
                                        MAlonzo.Code.Algebra.Structures.d294
                                        (coe
                                           MAlonzo.Code.Algebra.d100
                                           (coe MAlonzo.Code.Algebra.du186 v17)))) in
                        MAlonzo.Code.Relation.Binary.PreorderReasoning.du72
                          (MAlonzo.Code.Relation.Binary.du150 v14)
                          (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                             v4 (d812 v0 v1 v2 v3 v4 v5 v6 v7 v11 v9)
                             (d812 v0 v1 v2 v3 v4 v5 v6 v7 v12 v9))
                          (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                             v4 (du324 v4 v5 v11 v9) (du324 v4 v5 v12 v9))
                          (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                             v4 (du324 v4 v5 v11 v9) (du324 v4 v5 v12 v9))
                          (MAlonzo.Code.Function.du176
                             (d1266 v0 v1 v2 v3 v4 v5 v6 v7 v11 v9)
                             (let v15
                                    = coe
                                        MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d164
                                        v4 in
                              let v16
                                    = coe
                                        MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                                        v4 in
                              let v17
                                    = coe
                                        MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d170
                                        v4 in
                              let v18
                                    = coe
                                        MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d172
                                        v4 in
                              let v19
                                    = coe
                                        MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d174
                                        v4 in
                              let v20
                                    = coe
                                        MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d60
                                        v19 in
                              MAlonzo.Code.Algebra.Structures.d144
                                (MAlonzo.Code.Algebra.Structures.d294
                                   (MAlonzo.Code.Algebra.Structures.d1544
                                      (MAlonzo.Code.Algebra.Structures.d1728
                                         (MAlonzo.Code.Algebra.Structures.du2214
                                            v15 v16 v17 v18 v20))))
                                (d812 v0 v1 v2 v3 v4 v5 v6 v7 v11 v9) (du324 v4 v5 v11 v9)
                                (d812 v0 v1 v2 v3 v4 v5 v6 v7 v12 v9) (du324 v4 v5 v12 v9))
                             (d1266 v0 v1 v2 v3 v4 v5 v6 v7 v12 v9))
                          (let v15
                                 = let v15
                                         = coe
                                             MAlonzo.Code.Algebra.C463
                                             (coe
                                                MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d164
                                                v4)
                                             (coe
                                                MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                                                v4)
                                             (coe
                                                MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d170
                                                v4)
                                             (coe
                                                MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d172
                                                v4)
                                             (coe
                                                MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d60
                                                (coe
                                                   MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d174
                                                   v4)) in
                                   let v16 = coe MAlonzo.Code.Algebra.du984 v15 in
                                   let v17
                                         = coe
                                             MAlonzo.Code.Algebra.C333
                                             (coe MAlonzo.Code.Algebra.d712 v16)
                                             (coe MAlonzo.Code.Algebra.d714 v16)
                                             (coe MAlonzo.Code.Algebra.d716 v16)
                                             (coe MAlonzo.Code.Algebra.d718 v16)
                                             (coe
                                                MAlonzo.Code.Algebra.Structures.d1728
                                                (coe MAlonzo.Code.Algebra.d720 v16)) in
                                   let v18
                                         = coe
                                             MAlonzo.Code.Algebra.C97
                                             (coe MAlonzo.Code.Algebra.d616 v17)
                                             (coe MAlonzo.Code.Algebra.d620 v17)
                                             (coe
                                                MAlonzo.Code.Algebra.Structures.d1542
                                                (coe MAlonzo.Code.Algebra.d624 v17)) in
                                   coe
                                     MAlonzo.Code.Relation.Binary.C143
                                     (coe
                                        MAlonzo.Code.Algebra.Structures.d140
                                        (coe
                                           MAlonzo.Code.Algebra.Structures.d294
                                           (coe
                                              MAlonzo.Code.Algebra.d100
                                              (coe MAlonzo.Code.Algebra.du186 v18)))) in
                           let v16
                                 = coe
                                     MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166 v4
                                     (coe du324 v4 v5 v11 v9) (coe du324 v4 v5 v12 v9) in
                           MAlonzo.Code.Relation.Binary.PreorderReasoning.C56
                             (MAlonzo.Code.Relation.Binary.d38
                                (MAlonzo.Code.Relation.Binary.d92
                                   (MAlonzo.Code.Relation.Binary.du150 v15))
                                v16 v16
                                (MAlonzo.Code.Relation.Binary.Core.d516
                                   (MAlonzo.Code.Relation.Binary.d36
                                      (MAlonzo.Code.Relation.Binary.d92
                                         (MAlonzo.Code.Relation.Binary.du150 v15)))
                                   v16)))))
             _ -> coe MAlonzo.RTE.mazUnreachableError
      C288 v10 -> coe du1232 v0 v1 v2 v3 v4 v5 v6 v10 v9
      C292 v10 -> coe du1248 v0 v1 v2 v3 v4 v5 v6 v10 v9
      C298 v10 v11
        -> coe
             MAlonzo.Code.Relation.Binary.PreorderReasoning.d62
             (let v12
                    = let v12
                            = coe
                                MAlonzo.Code.Algebra.C463
                                (coe MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d164 v4)
                                (coe MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166 v4)
                                (coe MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d170 v4)
                                (coe MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d172 v4)
                                (coe
                                   MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d60
                                   (coe
                                      MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d174
                                      v4)) in
                      let v13 = coe MAlonzo.Code.Algebra.du984 v12 in
                      let v14
                            = coe
                                MAlonzo.Code.Algebra.C333 (coe MAlonzo.Code.Algebra.d712 v13)
                                (coe MAlonzo.Code.Algebra.d714 v13)
                                (coe MAlonzo.Code.Algebra.d716 v13)
                                (coe MAlonzo.Code.Algebra.d718 v13)
                                (coe
                                   MAlonzo.Code.Algebra.Structures.d1728
                                   (coe MAlonzo.Code.Algebra.d720 v13)) in
                      let v15
                            = coe
                                MAlonzo.Code.Algebra.C97 (coe MAlonzo.Code.Algebra.d616 v14)
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
                (MAlonzo.Code.Relation.Binary.du150 v12)
                (du376
                   v0 v1 v2 v3 v4 v5 v6
                   (d750
                      v0 v1 v2 v3 v4 v5 v6 v7 (d790 v0 v1 v2 v3 v4 v5 v6 v7 v10) v11)
                   v9)
                (MAlonzo.Code.Algebra.Operations.du130
                   (MAlonzo.Code.Algebra.du984
                      (MAlonzo.Code.Algebra.C463
                         (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d164 v4)
                         (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166 v4)
                         (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d170 v4)
                         (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d172 v4)
                         (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d60
                            (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d174 v4))))
                   (du376 v0 v1 v2 v3 v4 v5 v6 (d790 v0 v1 v2 v3 v4 v5 v6 v7 v10) v9)
                   v11)
                (MAlonzo.Code.Algebra.Operations.du130
                   (MAlonzo.Code.Algebra.du984
                      (MAlonzo.Code.Algebra.C463
                         (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d164 v4)
                         (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166 v4)
                         (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d170 v4)
                         (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d172 v4)
                         (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d60
                            (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d174 v4))))
                   (du324 v4 v5 v10 v9) v11)
                (d1186
                   v0 v1 v2 v3 v4 v5 v6 v7 (d790 v0 v1 v2 v3 v4 v5 v6 v7 v10) v11 v9)
                (let v13
                       = let v13
                               = coe
                                   MAlonzo.Code.Algebra.C463
                                   (coe
                                      MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d164 v4)
                                   (coe
                                      MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166 v4)
                                   (coe
                                      MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d170 v4)
                                   (coe
                                      MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d172 v4)
                                   (coe
                                      MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d60
                                      (coe
                                         MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d174
                                         v4)) in
                         let v14 = coe MAlonzo.Code.Algebra.du984 v13 in
                         let v15
                               = coe
                                   MAlonzo.Code.Algebra.C333 (coe MAlonzo.Code.Algebra.d712 v14)
                                   (coe MAlonzo.Code.Algebra.d714 v14)
                                   (coe MAlonzo.Code.Algebra.d716 v14)
                                   (coe MAlonzo.Code.Algebra.d718 v14)
                                   (coe
                                      MAlonzo.Code.Algebra.Structures.d1728
                                      (coe MAlonzo.Code.Algebra.d720 v14)) in
                         let v16
                               = coe
                                   MAlonzo.Code.Algebra.C97 (coe MAlonzo.Code.Algebra.d616 v15)
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
                 MAlonzo.Code.Relation.Binary.PreorderReasoning.du72
                   (MAlonzo.Code.Relation.Binary.du150 v13)
                   (MAlonzo.Code.Algebra.Operations.du130
                      (MAlonzo.Code.Algebra.du984
                         (MAlonzo.Code.Algebra.C463
                            (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d164 v4)
                            (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166 v4)
                            (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d170 v4)
                            (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d172 v4)
                            (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d60
                               (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d174 v4))))
                      (d812 v0 v1 v2 v3 v4 v5 v6 v7 v10 v9) v11)
                   (MAlonzo.Code.Algebra.Operations.du130
                      (MAlonzo.Code.Algebra.du984
                         (MAlonzo.Code.Algebra.C463
                            (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d164 v4)
                            (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166 v4)
                            (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d170 v4)
                            (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d172 v4)
                            (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d60
                               (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d174 v4))))
                      (du324 v4 v5 v10 v9) v11)
                   (MAlonzo.Code.Algebra.Operations.du130
                      (MAlonzo.Code.Algebra.du984
                         (MAlonzo.Code.Algebra.C463
                            (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d164 v4)
                            (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166 v4)
                            (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d170 v4)
                            (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d172 v4)
                            (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d60
                               (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d174 v4))))
                      (du324 v4 v5 v10 v9) v11)
                   (MAlonzo.Code.Function.du176
                      (d1266 v0 v1 v2 v3 v4 v5 v6 v7 v10 v9)
                      (\ v14 v15 ->
                         MAlonzo.Code.Algebra.Operations.du260
                           (MAlonzo.Code.Algebra.du984
                              (MAlonzo.Code.Algebra.C463
                                 (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d164 v4)
                                 (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166 v4)
                                 (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d170 v4)
                                 (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d172 v4)
                                 (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d60
                                    (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d174
                                       v4))))
                           (d812 v0 v1 v2 v3 v4 v5 v6 v7 v10 v9) (du324 v4 v5 v10 v9) v11 v11
                           v14)
                      erased)
                   (let v14
                          = let v14
                                  = coe
                                      MAlonzo.Code.Algebra.C463
                                      (coe
                                         MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d164
                                         v4)
                                      (coe
                                         MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                                         v4)
                                      (coe
                                         MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d170
                                         v4)
                                      (coe
                                         MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d172
                                         v4)
                                      (coe
                                         MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d60
                                         (coe
                                            MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d174
                                            v4)) in
                            let v15 = coe MAlonzo.Code.Algebra.du984 v14 in
                            let v16
                                  = coe
                                      MAlonzo.Code.Algebra.C333 (coe MAlonzo.Code.Algebra.d712 v15)
                                      (coe MAlonzo.Code.Algebra.d714 v15)
                                      (coe MAlonzo.Code.Algebra.d716 v15)
                                      (coe MAlonzo.Code.Algebra.d718 v15)
                                      (coe
                                         MAlonzo.Code.Algebra.Structures.d1728
                                         (coe MAlonzo.Code.Algebra.d720 v15)) in
                            let v17
                                  = coe
                                      MAlonzo.Code.Algebra.C97 (coe MAlonzo.Code.Algebra.d616 v16)
                                      (coe MAlonzo.Code.Algebra.d620 v16)
                                      (coe
                                         MAlonzo.Code.Algebra.Structures.d1542
                                         (coe MAlonzo.Code.Algebra.d624 v16)) in
                            coe
                              MAlonzo.Code.Relation.Binary.C143
                              (coe
                                 MAlonzo.Code.Algebra.Structures.d140
                                 (coe
                                    MAlonzo.Code.Algebra.Structures.d294
                                    (coe
                                       MAlonzo.Code.Algebra.d100
                                       (coe MAlonzo.Code.Algebra.du186 v17)))) in
                    let v15
                          = coe
                              MAlonzo.Code.Algebra.Operations.du130
                              (coe
                                 MAlonzo.Code.Algebra.du984
                                 (coe
                                    MAlonzo.Code.Algebra.C463
                                    (coe
                                       MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d164
                                       v4)
                                    (coe
                                       MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                                       v4)
                                    (coe
                                       MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d170
                                       v4)
                                    (coe
                                       MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d172
                                       v4)
                                    (coe
                                       MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d60
                                       (coe
                                          MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d174
                                          v4))))
                              (coe du324 v4 v5 v10 v9) v11 in
                    MAlonzo.Code.Relation.Binary.PreorderReasoning.C56
                      (MAlonzo.Code.Relation.Binary.d38
                         (MAlonzo.Code.Relation.Binary.d92
                            (MAlonzo.Code.Relation.Binary.du150 v14))
                         v15 v15
                         (MAlonzo.Code.Relation.Binary.Core.d516
                            (MAlonzo.Code.Relation.Binary.d36
                               (MAlonzo.Code.Relation.Binary.d92
                                  (MAlonzo.Code.Relation.Binary.du150 v14)))
                            v15)))))
      C302 v10
        -> coe
             MAlonzo.Code.Relation.Binary.PreorderReasoning.d62
             (let v11
                    = let v11
                            = coe
                                MAlonzo.Code.Algebra.C463
                                (coe MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d164 v4)
                                (coe MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166 v4)
                                (coe MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d170 v4)
                                (coe MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d172 v4)
                                (coe
                                   MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d60
                                   (coe
                                      MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d174
                                      v4)) in
                      let v12 = coe MAlonzo.Code.Algebra.du984 v11 in
                      let v13
                            = coe
                                MAlonzo.Code.Algebra.C333 (coe MAlonzo.Code.Algebra.d712 v12)
                                (coe MAlonzo.Code.Algebra.d714 v12)
                                (coe MAlonzo.Code.Algebra.d716 v12)
                                (coe MAlonzo.Code.Algebra.d718 v12)
                                (coe
                                   MAlonzo.Code.Algebra.Structures.d1728
                                   (coe MAlonzo.Code.Algebra.d720 v12)) in
                      let v14
                            = coe
                                MAlonzo.Code.Algebra.C97 (coe MAlonzo.Code.Algebra.d616 v13)
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
                (MAlonzo.Code.Relation.Binary.du150 v11)
                (du376
                   v0 v1 v2 v3 v4 v5 v6
                   (du764 v0 v1 v2 v3 v4 v5 v6 (d790 v0 v1 v2 v3 v4 v5 v6 v7 v10)) v9)
                (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d168
                   v4
                   (du376 v0 v1 v2 v3 v4 v5 v6 (d790 v0 v1 v2 v3 v4 v5 v6 v7 v10) v9))
                (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d168
                   v4 (du324 v4 v5 v10 v9))
                (du1212 v0 v1 v2 v3 v4 v5 v6 (d790 v0 v1 v2 v3 v4 v5 v6 v7 v10) v9)
                (let v12
                       = let v12
                               = coe
                                   MAlonzo.Code.Algebra.C463
                                   (coe
                                      MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d164 v4)
                                   (coe
                                      MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166 v4)
                                   (coe
                                      MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d170 v4)
                                   (coe
                                      MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d172 v4)
                                   (coe
                                      MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d60
                                      (coe
                                         MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d174
                                         v4)) in
                         let v13 = coe MAlonzo.Code.Algebra.du984 v12 in
                         let v14
                               = coe
                                   MAlonzo.Code.Algebra.C333 (coe MAlonzo.Code.Algebra.d712 v13)
                                   (coe MAlonzo.Code.Algebra.d714 v13)
                                   (coe MAlonzo.Code.Algebra.d716 v13)
                                   (coe MAlonzo.Code.Algebra.d718 v13)
                                   (coe
                                      MAlonzo.Code.Algebra.Structures.d1728
                                      (coe MAlonzo.Code.Algebra.d720 v13)) in
                         let v15
                               = coe
                                   MAlonzo.Code.Algebra.C97 (coe MAlonzo.Code.Algebra.d616 v14)
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
                   (MAlonzo.Code.Relation.Binary.du150 v12)
                   (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d168
                      v4 (d812 v0 v1 v2 v3 v4 v5 v6 v7 v10 v9))
                   (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d168
                      v4 (du324 v4 v5 v10 v9))
                   (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d168
                      v4 (du324 v4 v5 v10 v9))
                   (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d62
                      (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d174 v4)
                      (d812 v0 v1 v2 v3 v4 v5 v6 v7 v10 v9) (du324 v4 v5 v10 v9)
                      (d1266 v0 v1 v2 v3 v4 v5 v6 v7 v10 v9))
                   (let v13
                          = let v13
                                  = coe
                                      MAlonzo.Code.Algebra.C463
                                      (coe
                                         MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d164
                                         v4)
                                      (coe
                                         MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                                         v4)
                                      (coe
                                         MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d170
                                         v4)
                                      (coe
                                         MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d172
                                         v4)
                                      (coe
                                         MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d60
                                         (coe
                                            MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d174
                                            v4)) in
                            let v14 = coe MAlonzo.Code.Algebra.du984 v13 in
                            let v15
                                  = coe
                                      MAlonzo.Code.Algebra.C333 (coe MAlonzo.Code.Algebra.d712 v14)
                                      (coe MAlonzo.Code.Algebra.d714 v14)
                                      (coe MAlonzo.Code.Algebra.d716 v14)
                                      (coe MAlonzo.Code.Algebra.d718 v14)
                                      (coe
                                         MAlonzo.Code.Algebra.Structures.d1728
                                         (coe MAlonzo.Code.Algebra.d720 v14)) in
                            let v16
                                  = coe
                                      MAlonzo.Code.Algebra.C97 (coe MAlonzo.Code.Algebra.d616 v15)
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
                    let v14
                          = coe
                              MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d168 v4
                              (coe du324 v4 v5 v10 v9) in
                    MAlonzo.Code.Relation.Binary.PreorderReasoning.C56
                      (MAlonzo.Code.Relation.Binary.d38
                         (MAlonzo.Code.Relation.Binary.d92
                            (MAlonzo.Code.Relation.Binary.du150 v13))
                         v14 v14
                         (MAlonzo.Code.Relation.Binary.Core.d516
                            (MAlonzo.Code.Relation.Binary.d36
                               (MAlonzo.Code.Relation.Binary.d92
                                  (MAlonzo.Code.Relation.Binary.du150 v13)))
                            v14)))))
      _ -> coe MAlonzo.RTE.mazUnreachableError
name1300 = "Algebra.RingSolver._._\8860_"
d1300 v0 v1 v2 v3 v4 v5 v6 = du1300
du1300 v0 = coe MAlonzo.Code.Relation.Binary.Reflection.du138
name1302 = "Algebra.RingSolver._.prove"
d1302 v0 v1 v2 v3 v4 v5 v6
  = coe
      MAlonzo.Code.Relation.Binary.Reflection.du86
      (let v7
             = coe
                 MAlonzo.Code.Algebra.C463
                 (coe MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d164 v4)
                 (coe MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166 v4)
                 (coe MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d170 v4)
                 (coe MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d172 v4)
                 (coe
                    MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d60
                    (coe
                       MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d174 v4)) in
       let v8 = coe MAlonzo.Code.Algebra.du984 v7 in
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
       MAlonzo.Code.Relation.Binary.C143
         (MAlonzo.Code.Algebra.Structures.d140
            (MAlonzo.Code.Algebra.Structures.d294
               (MAlonzo.Code.Algebra.d100 (MAlonzo.Code.Algebra.du186 v10)))))
      (\ v7 v8 v9 -> coe du324 v4 v5 v8 v9)
      (coe d812 v0 v1 v2 v3 v4 v5 v6) (coe d1266 v0 v1 v2 v3 v4 v5 v6)
name1304 = "Algebra.RingSolver._.solve"
d1304 v0 v1 v2 v3 v4 v5 v6
  = coe
      MAlonzo.Code.Relation.Binary.Reflection.du110
      (let v7
             = coe
                 MAlonzo.Code.Algebra.C463
                 (coe MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d164 v4)
                 (coe MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166 v4)
                 (coe MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d170 v4)
                 (coe MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d172 v4)
                 (coe
                    MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d60
                    (coe
                       MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d174 v4)) in
       let v8 = coe MAlonzo.Code.Algebra.du984 v7 in
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
       MAlonzo.Code.Relation.Binary.C143
         (MAlonzo.Code.Algebra.Structures.d140
            (MAlonzo.Code.Algebra.Structures.d294
               (MAlonzo.Code.Algebra.d100 (MAlonzo.Code.Algebra.du186 v10)))))
      (\ v7 -> C292) (\ v7 v8 v9 -> coe du324 v4 v5 v8 v9)
      (coe d812 v0 v1 v2 v3 v4 v5 v6) (coe d1266 v0 v1 v2 v3 v4 v5 v6)
name2971 = "Algebra.RingSolver..absurdlambda"
d2971 = erased
name3289 = "Algebra.RingSolver..absurdlambda"
d3289 = erased