{-# LANGUAGE EmptyDataDecls, ExistentialQuantification,
             ScopedTypeVariables, NoMonomorphismRestriction, Rank2Types #-}
module MAlonzo.Code.Algebra.RingSolver.Lemmas where

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
import qualified MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing
import qualified MAlonzo.Code.Algebra.Structures
import qualified MAlonzo.Code.Data.Product
import qualified MAlonzo.Code.Function
import qualified MAlonzo.Code.Relation.Binary
import qualified MAlonzo.Code.Relation.Binary.Core
import qualified MAlonzo.Code.Relation.Binary.PreorderReasoning

name34 = "Algebra.RingSolver.Lemmas._._*_"
d34 v0 v1 v2 v3 v4 v5 = du34 v4
du34 v0
  = coe MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166 v0
name36 = "Algebra.RingSolver.Lemmas._._+_"
d36 v0 v1 v2 v3 v4 v5 = du36 v4
du36 v0
  = coe MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d164 v0
name38 = "Algebra.RingSolver.Lemmas._._\8776_"
d38 = erased
name40 = "Algebra.RingSolver.Lemmas._.assoc"
d40 v0 v1 v2 v3 v4 v5 = du40 v4
du40 v0
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
      MAlonzo.Code.Algebra.Structures.d142
      (coe
         MAlonzo.Code.Algebra.Structures.d294
         (coe
            MAlonzo.Code.Algebra.Structures.d1544
            (coe
               MAlonzo.Code.Algebra.Structures.d1728
               (coe MAlonzo.Code.Algebra.Structures.du2214 v1 v2 v3 v4 v6))))
name42 = "Algebra.RingSolver.Lemmas._.comm"
d42 v0 v1 v2 v3 v4 v5 = du42 v4
du42 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d458
      (coe
         MAlonzo.Code.Algebra.Structures.d2112
         (coe
            MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d60
            (coe
               MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d174 v0)))
name46 = "Algebra.RingSolver.Lemmas._.\8729-cong"
d46 v0 v1 v2 v3 v4 v5 = du46 v4
du46 v0
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
name48 = "Algebra.RingSolver.Lemmas._.identity"
d48 v0 v1 v2 v3 v4 v5 = du48 v4
du48 v0
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
      MAlonzo.Code.Algebra.Structures.d296
      (coe
         MAlonzo.Code.Algebra.Structures.d1544
         (coe
            MAlonzo.Code.Algebra.Structures.d1728
            (coe MAlonzo.Code.Algebra.Structures.du2214 v1 v2 v3 v4 v6)))
name60 = "Algebra.RingSolver.Lemmas._.assoc"
d60 v0 v1 v2 v3 v4 v5 = du60 v4
du60 v0
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
      MAlonzo.Code.Algebra.Structures.d142
      (coe
         MAlonzo.Code.Algebra.Structures.d454
         (coe
            MAlonzo.Code.Algebra.Structures.d1542
            (coe
               MAlonzo.Code.Algebra.Structures.d1728
               (coe MAlonzo.Code.Algebra.Structures.du2214 v1 v2 v3 v4 v6))))
name62 = "Algebra.RingSolver.Lemmas._.comm"
d62 v0 v1 v2 v3 v4 v5 = du62 v4
du62 v0
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
      MAlonzo.Code.Algebra.Structures.d458
      (coe
         MAlonzo.Code.Algebra.Structures.d1542
         (coe
            MAlonzo.Code.Algebra.Structures.d1728
            (coe MAlonzo.Code.Algebra.Structures.du2214 v1 v2 v3 v4 v6)))
name66 = "Algebra.RingSolver.Lemmas._.\8729-cong"
d66 v0 v1 v2 v3 v4 v5 = du66 v4
du66 v0
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
name68 = "Algebra.RingSolver.Lemmas._.identity"
d68 v0 v1 v2 v3 v4 v5 = du68 v4
du68 v0
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
name80 = "Algebra.RingSolver.Lemmas._.-_"
d80 v0 v1 v2 v3 v4 v5 = du80 v4
du80 v0
  = coe MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d168 v0
name82 = "Algebra.RingSolver.Lemmas._.-\8255*-distrib\737"
d82 v0 v1 v2 v3 v4 v5 = du82 v4
du82 v0
  = coe
      MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d68
      (coe MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d174 v0)
name86 = "Algebra.RingSolver.Lemmas._.-\8255cong"
d86 v0 v1 v2 v3 v4 v5 = du86 v4
du86 v0
  = coe
      MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d62
      (coe MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d174 v0)
name88 = "Algebra.RingSolver.Lemmas._.0#"
d88 v0 v1 v2 v3 v4 v5 = du88 v4
du88 v0
  = coe MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d170 v0
name90 = "Algebra.RingSolver.Lemmas._.1#"
d90 v0 v1 v2 v3 v4 v5 = du90 v4
du90 v0
  = coe MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d172 v0
name96 = "Algebra.RingSolver.Lemmas._.distrib"
d96 v0 v1 v2 v3 v4 v5 = du96 v4
du96 v0
  = let v1
          = coe
              MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d164 v0 in
    let v2
          = coe
              MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166 v0 in
    let v3
          = coe
              MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d174 v0 in
    coe
      MAlonzo.Code.Algebra.Structures.du2190 v1 v2
      (coe MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d60 v3)
name118 = "Algebra.RingSolver.Lemmas._.refl"
d118 v0 v1 v2 v3 v4 v5 = du118 v4
du118 v0
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
name124 = "Algebra.RingSolver.Lemmas._.setoid"
d124 v0 v1 v2 v3 v4 v5 = du124 v4
du124 v0
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
name126 = "Algebra.RingSolver.Lemmas._.sym"
d126 v0 v1 v2 v3 v4 v5 = du126 v4
du126 v0
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
name132 = "Algebra.RingSolver.Lemmas._.zero\737"
d132 v0 v1 v2 v3 v4 v5 = du132 v4
du132 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d2116
      (coe
         MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d60
         (coe
            MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d174 v0))
name152 = "Algebra.RingSolver.Lemmas._._\8718"
d152 v0 v1 v2 v3 v4 v5 = du152 v4
du152 v0
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
name154 = "Algebra.RingSolver.Lemmas._._\8764\10216_\10217_"
d154 v0 v1 v2 v3 v4 v5 = du154 v4
du154 v0
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
name176 = "Algebra.RingSolver.Lemmas.lemma\8320"
d176 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 = du176 v4 v6 v7 v8 v9
du176 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Relation.Binary.PreorderReasoning.d62
      (let v5
             = let v5
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
               coe
                 MAlonzo.Code.Relation.Binary.C143
                 (coe
                    MAlonzo.Code.Algebra.Structures.d140
                    (coe
                       MAlonzo.Code.Algebra.Structures.d294
                       (coe
                          MAlonzo.Code.Algebra.d100 (coe MAlonzo.Code.Algebra.du186 v8)))) in
       MAlonzo.Code.Relation.Binary.PreorderReasoning.du72
         (MAlonzo.Code.Relation.Binary.du150 v5)
         (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d164
            v0
            (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
               v0
               (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d164
                  v0 v1 v2)
               v4)
            v3)
         (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d164
            v0
            (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d164
               v0
               (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                  v0 v1 v4)
               (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                  v0 v2 v4))
            v3)
         (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d164
            v0
            (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
               v0 v1 v4)
            (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d164
               v0
               (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                  v0 v2 v4)
               v3))
         (MAlonzo.Code.Function.du176
            (MAlonzo.Code.Data.Product.d28
               (let v6
                      = coe
                          MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d164 v0 in
                let v7
                      = coe
                          MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166 v0 in
                let v8
                      = coe
                          MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d174 v0 in
                MAlonzo.Code.Algebra.Structures.du2190
                  v6 v7
                  (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d60 v8))
               v4 v1 v2)
            (let v6
                   = coe
                       MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d164 v0 in
             let v7
                   = coe
                       MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166 v0 in
             let v8
                   = coe
                       MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d170 v0 in
             let v9
                   = coe
                       MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d172 v0 in
             let v10
                   = coe
                       MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d174 v0 in
             let v11
                   = coe
                       MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d60 v10 in
             MAlonzo.Code.Algebra.Structures.d144
               (MAlonzo.Code.Algebra.Structures.d454
                  (MAlonzo.Code.Algebra.Structures.d1542
                     (MAlonzo.Code.Algebra.Structures.d1728
                        (MAlonzo.Code.Algebra.Structures.du2214 v6 v7 v8 v9 v11))))
               (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                  v0
                  (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d164
                     v0 v1 v2)
                  v4)
               (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d164
                  v0
                  (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                     v0 v1 v4)
                  (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                     v0 v2 v4))
               v3 v3)
            (let v6
                   = coe
                       MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d164 v0 in
             let v7
                   = coe
                       MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166 v0 in
             let v8
                   = coe
                       MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d170 v0 in
             let v9
                   = coe
                       MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d172 v0 in
             let v10
                   = coe
                       MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d174 v0 in
             let v11
                   = coe
                       MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d60 v10 in
             MAlonzo.Code.Relation.Binary.Core.d516
               (MAlonzo.Code.Algebra.Structures.d140
                  (MAlonzo.Code.Algebra.Structures.d454
                     (MAlonzo.Code.Algebra.Structures.d1542
                        (MAlonzo.Code.Algebra.Structures.d1728
                           (MAlonzo.Code.Algebra.Structures.du2214 v6 v7 v8 v9 v11)))))
               v3))
         (let v6
                = let v6
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
                  coe
                    MAlonzo.Code.Relation.Binary.C143
                    (coe
                       MAlonzo.Code.Algebra.Structures.d140
                       (coe
                          MAlonzo.Code.Algebra.Structures.d294
                          (coe
                             MAlonzo.Code.Algebra.d100 (coe MAlonzo.Code.Algebra.du186 v9)))) in
          MAlonzo.Code.Relation.Binary.PreorderReasoning.du72
            (MAlonzo.Code.Relation.Binary.du150 v6)
            (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d164
               v0
               (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d164
                  v0
                  (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                     v0 v1 v4)
                  (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                     v0 v2 v4))
               v3)
            (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d164
               v0
               (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                  v0 v1 v4)
               (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d164
                  v0
                  (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                     v0 v2 v4)
                  v3))
            (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d164
               v0
               (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                  v0 v1 v4)
               (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d164
                  v0
                  (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                     v0 v2 v4)
                  v3))
            (let v7
                   = coe
                       MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d164 v0 in
             let v8
                   = coe
                       MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166 v0 in
             let v9
                   = coe
                       MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d170 v0 in
             let v10
                   = coe
                       MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d172 v0 in
             let v11
                   = coe
                       MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d174 v0 in
             let v12
                   = coe
                       MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d60 v11 in
             MAlonzo.Code.Algebra.Structures.d142
               (MAlonzo.Code.Algebra.Structures.d454
                  (MAlonzo.Code.Algebra.Structures.d1542
                     (MAlonzo.Code.Algebra.Structures.d1728
                        (MAlonzo.Code.Algebra.Structures.du2214 v7 v8 v9 v10 v12))))
               (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                  v0 v1 v4)
               (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                  v0 v2 v4)
               v3)
            (let v7
                   = let v7
                           = coe
                               MAlonzo.Code.Algebra.C463
                               (coe MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d164 v0)
                               (coe MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166 v0)
                               (coe MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d170 v0)
                               (coe MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d172 v0)
                               (coe
                                  MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d60
                                  (coe
                                     MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d174
                                     v0)) in
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
                     coe
                       MAlonzo.Code.Relation.Binary.C143
                       (coe
                          MAlonzo.Code.Algebra.Structures.d140
                          (coe
                             MAlonzo.Code.Algebra.Structures.d294
                             (coe
                                MAlonzo.Code.Algebra.d100
                                (coe MAlonzo.Code.Algebra.du186 v10)))) in
             let v8
                   = coe
                       MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d164 v0
                       (coe
                          MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166 v0 v1
                          v4)
                       (coe
                          MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d164 v0
                          (coe
                             MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166 v0 v2
                             v4)
                          v3) in
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
name196 = "Algebra.RingSolver.Lemmas.lemma\8321"
d196 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 = du196 v4 v6 v7 v8 v9 v10
du196 v0 v1 v2 v3 v4 v5
  = coe
      MAlonzo.Code.Relation.Binary.PreorderReasoning.d62
      (let v6
             = let v6
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
               coe
                 MAlonzo.Code.Relation.Binary.C143
                 (coe
                    MAlonzo.Code.Algebra.Structures.d140
                    (coe
                       MAlonzo.Code.Algebra.Structures.d294
                       (coe
                          MAlonzo.Code.Algebra.d100 (coe MAlonzo.Code.Algebra.du186 v9)))) in
       MAlonzo.Code.Relation.Binary.PreorderReasoning.du72
         (MAlonzo.Code.Relation.Binary.du150 v6)
         (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d164
            v0
            (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
               v0
               (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d164
                  v0 v1 v2)
               v5)
            (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d164
               v0 v3 v4))
         (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d164
            v0
            (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
               v0 v1 v5)
            (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d164
               v0
               (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                  v0 v2 v5)
               (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d164
                  v0 v3 v4)))
         (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d164
            v0
            (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d164
               v0
               (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                  v0 v1 v5)
               v3)
            (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d164
               v0
               (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                  v0 v2 v5)
               v4))
         (du176
            v0 v1 v2
            (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d164
               v0 v3 v4)
            v5)
         (let v7
                = let v7
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
            (MAlonzo.Code.Relation.Binary.du150 v7)
            (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d164
               v0
               (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                  v0 v1 v5)
               (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d164
                  v0
                  (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                     v0 v2 v5)
                  (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d164
                     v0 v3 v4)))
            (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d164
               v0
               (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                  v0 v1 v5)
               (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d164
                  v0
                  (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d164
                     v0
                     (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                        v0 v2 v5)
                     v3)
                  v4))
            (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d164
               v0
               (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d164
                  v0
                  (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                     v0 v1 v5)
                  v3)
               (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d164
                  v0
                  (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                     v0 v2 v5)
                  v4))
            (MAlonzo.Code.Function.du176
               (let v8
                      = coe
                          MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d164 v0 in
                let v9
                      = coe
                          MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166 v0 in
                let v10
                      = coe
                          MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d170 v0 in
                let v11
                      = coe
                          MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d172 v0 in
                let v12
                      = coe
                          MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d174 v0 in
                let v13
                      = coe
                          MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d60 v12 in
                MAlonzo.Code.Relation.Binary.Core.d516
                  (MAlonzo.Code.Algebra.Structures.d140
                     (MAlonzo.Code.Algebra.Structures.d454
                        (MAlonzo.Code.Algebra.Structures.d1542
                           (MAlonzo.Code.Algebra.Structures.d1728
                              (MAlonzo.Code.Algebra.Structures.du2214 v8 v9 v10 v11 v13)))))
                  (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                     v0 v1 v5))
               (let v8
                      = coe
                          MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d164 v0 in
                let v9
                      = coe
                          MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166 v0 in
                let v10
                      = coe
                          MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d170 v0 in
                let v11
                      = coe
                          MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d172 v0 in
                let v12
                      = coe
                          MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d174 v0 in
                let v13
                      = coe
                          MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d60 v12 in
                MAlonzo.Code.Algebra.Structures.d144
                  (MAlonzo.Code.Algebra.Structures.d454
                     (MAlonzo.Code.Algebra.Structures.d1542
                        (MAlonzo.Code.Algebra.Structures.d1728
                           (MAlonzo.Code.Algebra.Structures.du2214 v8 v9 v10 v11 v13))))
                  (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                     v0 v1 v5)
                  (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                     v0 v1 v5)
                  (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d164
                     v0
                     (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                        v0 v2 v5)
                     (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d164
                        v0 v3 v4))
                  (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d164
                     v0
                     (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d164
                        v0
                        (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                           v0 v2 v5)
                        v3)
                     v4))
               (let v8
                      = coe
                          MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d164 v0 in
                let v9
                      = coe
                          MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166 v0 in
                let v10
                      = coe
                          MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d170 v0 in
                let v11
                      = coe
                          MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d172 v0 in
                let v12
                      = coe
                          MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d174 v0 in
                let v13
                      = coe
                          MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d60 v12 in
                MAlonzo.Code.Relation.Binary.Core.d518
                  (MAlonzo.Code.Algebra.Structures.d140
                     (MAlonzo.Code.Algebra.Structures.d454
                        (MAlonzo.Code.Algebra.Structures.d1542
                           (MAlonzo.Code.Algebra.Structures.d1728
                              (MAlonzo.Code.Algebra.Structures.du2214 v8 v9 v10 v11 v13)))))
                  (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d164
                     v0
                     (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d164
                        v0
                        (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                           v0 v2 v5)
                        v3)
                     v4)
                  (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d164
                     v0
                     (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                        v0 v2 v5)
                     (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d164
                        v0 v3 v4))
                  (let v14
                         = coe
                             MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d164 v0 in
                   let v15
                         = coe
                             MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166 v0 in
                   let v16
                         = coe
                             MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d170 v0 in
                   let v17
                         = coe
                             MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d172 v0 in
                   let v18
                         = coe
                             MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d174 v0 in
                   let v19
                         = coe
                             MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d60 v18 in
                   MAlonzo.Code.Algebra.Structures.d142
                     (MAlonzo.Code.Algebra.Structures.d454
                        (MAlonzo.Code.Algebra.Structures.d1542
                           (MAlonzo.Code.Algebra.Structures.d1728
                              (MAlonzo.Code.Algebra.Structures.du2214 v14 v15 v16 v17 v19))))
                     (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                        v0 v2 v5)
                     v3 v4)))
            (let v8
                   = let v8
                           = coe
                               MAlonzo.Code.Algebra.C463
                               (coe MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d164 v0)
                               (coe MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166 v0)
                               (coe MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d170 v0)
                               (coe MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d172 v0)
                               (coe
                                  MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d60
                                  (coe
                                     MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d174
                                     v0)) in
                     let v9 = coe MAlonzo.Code.Algebra.du984 v8 in
                     let v10
                           = coe
                               MAlonzo.Code.Algebra.C333 (coe MAlonzo.Code.Algebra.d712 v9)
                               (coe MAlonzo.Code.Algebra.d714 v9)
                               (coe MAlonzo.Code.Algebra.d716 v9)
                               (coe MAlonzo.Code.Algebra.d718 v9)
                               (coe
                                  MAlonzo.Code.Algebra.Structures.d1728
                                  (coe MAlonzo.Code.Algebra.d720 v9)) in
                     let v11
                           = coe
                               MAlonzo.Code.Algebra.C97 (coe MAlonzo.Code.Algebra.d616 v10)
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
               (MAlonzo.Code.Relation.Binary.du150 v8)
               (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d164
                  v0
                  (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                     v0 v1 v5)
                  (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d164
                     v0
                     (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d164
                        v0
                        (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                           v0 v2 v5)
                        v3)
                     v4))
               (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d164
                  v0
                  (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                     v0 v1 v5)
                  (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d164
                     v0
                     (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d164
                        v0 v3
                        (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                           v0 v2 v5))
                     v4))
               (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d164
                  v0
                  (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d164
                     v0
                     (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                        v0 v1 v5)
                     v3)
                  (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d164
                     v0
                     (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                        v0 v2 v5)
                     v4))
               (MAlonzo.Code.Function.du176
                  (let v9
                         = coe
                             MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d164 v0 in
                   let v10
                         = coe
                             MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166 v0 in
                   let v11
                         = coe
                             MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d170 v0 in
                   let v12
                         = coe
                             MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d172 v0 in
                   let v13
                         = coe
                             MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d174 v0 in
                   let v14
                         = coe
                             MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d60 v13 in
                   MAlonzo.Code.Relation.Binary.Core.d516
                     (MAlonzo.Code.Algebra.Structures.d140
                        (MAlonzo.Code.Algebra.Structures.d454
                           (MAlonzo.Code.Algebra.Structures.d1542
                              (MAlonzo.Code.Algebra.Structures.d1728
                                 (MAlonzo.Code.Algebra.Structures.du2214 v9 v10 v11 v12 v14)))))
                     (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                        v0 v1 v5))
                  (let v9
                         = coe
                             MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d164 v0 in
                   let v10
                         = coe
                             MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166 v0 in
                   let v11
                         = coe
                             MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d170 v0 in
                   let v12
                         = coe
                             MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d172 v0 in
                   let v13
                         = coe
                             MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d174 v0 in
                   let v14
                         = coe
                             MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d60 v13 in
                   MAlonzo.Code.Algebra.Structures.d144
                     (MAlonzo.Code.Algebra.Structures.d454
                        (MAlonzo.Code.Algebra.Structures.d1542
                           (MAlonzo.Code.Algebra.Structures.d1728
                              (MAlonzo.Code.Algebra.Structures.du2214 v9 v10 v11 v12 v14))))
                     (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                        v0 v1 v5)
                     (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                        v0 v1 v5)
                     (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d164
                        v0
                        (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d164
                           v0
                           (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                              v0 v2 v5)
                           v3)
                        v4)
                     (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d164
                        v0
                        (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d164
                           v0 v3
                           (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                              v0 v2 v5))
                        v4))
                  (MAlonzo.Code.Function.du176
                     (let v9
                            = coe
                                MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d164 v0 in
                      let v10
                            = coe
                                MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166 v0 in
                      let v11
                            = coe
                                MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d170 v0 in
                      let v12
                            = coe
                                MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d172 v0 in
                      let v13
                            = coe
                                MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d174 v0 in
                      let v14
                            = coe
                                MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d60 v13 in
                      MAlonzo.Code.Algebra.Structures.d458
                        (MAlonzo.Code.Algebra.Structures.d1542
                           (MAlonzo.Code.Algebra.Structures.d1728
                              (MAlonzo.Code.Algebra.Structures.du2214 v9 v10 v11 v12 v14)))
                        (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                           v0 v2 v5)
                        v3)
                     (let v9
                            = coe
                                MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d164 v0 in
                      let v10
                            = coe
                                MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166 v0 in
                      let v11
                            = coe
                                MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d170 v0 in
                      let v12
                            = coe
                                MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d172 v0 in
                      let v13
                            = coe
                                MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d174 v0 in
                      let v14
                            = coe
                                MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d60 v13 in
                      MAlonzo.Code.Algebra.Structures.d144
                        (MAlonzo.Code.Algebra.Structures.d454
                           (MAlonzo.Code.Algebra.Structures.d1542
                              (MAlonzo.Code.Algebra.Structures.d1728
                                 (MAlonzo.Code.Algebra.Structures.du2214 v9 v10 v11 v12 v14))))
                        (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d164
                           v0
                           (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                              v0 v2 v5)
                           v3)
                        (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d164
                           v0 v3
                           (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                              v0 v2 v5))
                        v4 v4)
                     (let v9
                            = coe
                                MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d164 v0 in
                      let v10
                            = coe
                                MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166 v0 in
                      let v11
                            = coe
                                MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d170 v0 in
                      let v12
                            = coe
                                MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d172 v0 in
                      let v13
                            = coe
                                MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d174 v0 in
                      let v14
                            = coe
                                MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d60 v13 in
                      MAlonzo.Code.Relation.Binary.Core.d516
                        (MAlonzo.Code.Algebra.Structures.d140
                           (MAlonzo.Code.Algebra.Structures.d454
                              (MAlonzo.Code.Algebra.Structures.d1542
                                 (MAlonzo.Code.Algebra.Structures.d1728
                                    (MAlonzo.Code.Algebra.Structures.du2214 v9 v10 v11 v12 v14)))))
                        v4)))
               (let v9
                      = let v9
                              = coe
                                  MAlonzo.Code.Algebra.C463
                                  (coe
                                     MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d164 v0)
                                  (coe
                                     MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166 v0)
                                  (coe
                                     MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d170 v0)
                                  (coe
                                     MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d172 v0)
                                  (coe
                                     MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d60
                                     (coe
                                        MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d174
                                        v0)) in
                        let v10 = coe MAlonzo.Code.Algebra.du984 v9 in
                        let v11
                              = coe
                                  MAlonzo.Code.Algebra.C333 (coe MAlonzo.Code.Algebra.d712 v10)
                                  (coe MAlonzo.Code.Algebra.d714 v10)
                                  (coe MAlonzo.Code.Algebra.d716 v10)
                                  (coe MAlonzo.Code.Algebra.d718 v10)
                                  (coe
                                     MAlonzo.Code.Algebra.Structures.d1728
                                     (coe MAlonzo.Code.Algebra.d720 v10)) in
                        let v12
                              = coe
                                  MAlonzo.Code.Algebra.C97 (coe MAlonzo.Code.Algebra.d616 v11)
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
                MAlonzo.Code.Relation.Binary.PreorderReasoning.du72
                  (MAlonzo.Code.Relation.Binary.du150 v9)
                  (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d164
                     v0
                     (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                        v0 v1 v5)
                     (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d164
                        v0
                        (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d164
                           v0 v3
                           (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                              v0 v2 v5))
                        v4))
                  (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d164
                     v0
                     (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                        v0 v1 v5)
                     (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d164
                        v0 v3
                        (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d164
                           v0
                           (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                              v0 v2 v5)
                           v4)))
                  (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d164
                     v0
                     (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d164
                        v0
                        (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                           v0 v1 v5)
                        v3)
                     (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d164
                        v0
                        (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                           v0 v2 v5)
                        v4))
                  (MAlonzo.Code.Function.du176
                     (let v10
                            = coe
                                MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d164 v0 in
                      let v11
                            = coe
                                MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166 v0 in
                      let v12
                            = coe
                                MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d170 v0 in
                      let v13
                            = coe
                                MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d172 v0 in
                      let v14
                            = coe
                                MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d174 v0 in
                      let v15
                            = coe
                                MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d60 v14 in
                      MAlonzo.Code.Relation.Binary.Core.d516
                        (MAlonzo.Code.Algebra.Structures.d140
                           (MAlonzo.Code.Algebra.Structures.d454
                              (MAlonzo.Code.Algebra.Structures.d1542
                                 (MAlonzo.Code.Algebra.Structures.d1728
                                    (MAlonzo.Code.Algebra.Structures.du2214 v10 v11 v12 v13 v15)))))
                        (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                           v0 v1 v5))
                     (let v10
                            = coe
                                MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d164 v0 in
                      let v11
                            = coe
                                MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166 v0 in
                      let v12
                            = coe
                                MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d170 v0 in
                      let v13
                            = coe
                                MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d172 v0 in
                      let v14
                            = coe
                                MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d174 v0 in
                      let v15
                            = coe
                                MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d60 v14 in
                      MAlonzo.Code.Algebra.Structures.d144
                        (MAlonzo.Code.Algebra.Structures.d454
                           (MAlonzo.Code.Algebra.Structures.d1542
                              (MAlonzo.Code.Algebra.Structures.d1728
                                 (MAlonzo.Code.Algebra.Structures.du2214 v10 v11 v12 v13 v15))))
                        (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                           v0 v1 v5)
                        (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                           v0 v1 v5)
                        (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d164
                           v0
                           (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d164
                              v0 v3
                              (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                                 v0 v2 v5))
                           v4)
                        (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d164
                           v0 v3
                           (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d164
                              v0
                              (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                                 v0 v2 v5)
                              v4)))
                     (let v10
                            = coe
                                MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d164 v0 in
                      let v11
                            = coe
                                MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166 v0 in
                      let v12
                            = coe
                                MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d170 v0 in
                      let v13
                            = coe
                                MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d172 v0 in
                      let v14
                            = coe
                                MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d174 v0 in
                      let v15
                            = coe
                                MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d60 v14 in
                      MAlonzo.Code.Algebra.Structures.d142
                        (MAlonzo.Code.Algebra.Structures.d454
                           (MAlonzo.Code.Algebra.Structures.d1542
                              (MAlonzo.Code.Algebra.Structures.d1728
                                 (MAlonzo.Code.Algebra.Structures.du2214 v10 v11 v12 v13 v15))))
                        v3
                        (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                           v0 v2 v5)
                        v4))
                  (let v10
                         = let v10
                                 = coe
                                     MAlonzo.Code.Algebra.C463
                                     (coe
                                        MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d164
                                        v0)
                                     (coe
                                        MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                                        v0)
                                     (coe
                                        MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d170
                                        v0)
                                     (coe
                                        MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d172
                                        v0)
                                     (coe
                                        MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d60
                                        (coe
                                           MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d174
                                           v0)) in
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
                           coe
                             MAlonzo.Code.Relation.Binary.C143
                             (coe
                                MAlonzo.Code.Algebra.Structures.d140
                                (coe
                                   MAlonzo.Code.Algebra.Structures.d294
                                   (coe
                                      MAlonzo.Code.Algebra.d100
                                      (coe MAlonzo.Code.Algebra.du186 v13)))) in
                   MAlonzo.Code.Relation.Binary.PreorderReasoning.du72
                     (MAlonzo.Code.Relation.Binary.du150 v10)
                     (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d164
                        v0
                        (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                           v0 v1 v5)
                        (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d164
                           v0 v3
                           (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d164
                              v0
                              (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                                 v0 v2 v5)
                              v4)))
                     (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d164
                        v0
                        (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d164
                           v0
                           (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                              v0 v1 v5)
                           v3)
                        (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d164
                           v0
                           (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                              v0 v2 v5)
                           v4))
                     (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d164
                        v0
                        (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d164
                           v0
                           (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                              v0 v1 v5)
                           v3)
                        (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d164
                           v0
                           (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                              v0 v2 v5)
                           v4))
                     (MAlonzo.Code.Function.du158
                        (let v11
                               = coe
                                   MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d164 v0 in
                         let v12
                               = coe
                                   MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166 v0 in
                         let v13
                               = coe
                                   MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d170 v0 in
                         let v14
                               = coe
                                   MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d172 v0 in
                         let v15
                               = coe
                                   MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d174 v0 in
                         let v16
                               = coe
                                   MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d60 v15 in
                         MAlonzo.Code.Relation.Binary.Core.d518
                           (MAlonzo.Code.Algebra.Structures.d140
                              (MAlonzo.Code.Algebra.Structures.d454
                                 (MAlonzo.Code.Algebra.Structures.d1542
                                    (MAlonzo.Code.Algebra.Structures.d1728
                                       (MAlonzo.Code.Algebra.Structures.du2214
                                          v11 v12 v13 v14 v16)))))
                           (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d164
                              v0
                              (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d164
                                 v0
                                 (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                                    v0 v1 v5)
                                 v3)
                              (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d164
                                 v0
                                 (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                                    v0 v2 v5)
                                 v4))
                           (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d164
                              v0
                              (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                                 v0 v1 v5)
                              (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d164
                                 v0 v3
                                 (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d164
                                    v0
                                    (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                                       v0 v2 v5)
                                    v4))))
                        (let v11
                               = coe
                                   MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d164 v0 in
                         let v12
                               = coe
                                   MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166 v0 in
                         let v13
                               = coe
                                   MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d170 v0 in
                         let v14
                               = coe
                                   MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d172 v0 in
                         let v15
                               = coe
                                   MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d174 v0 in
                         let v16
                               = coe
                                   MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d60 v15 in
                         MAlonzo.Code.Algebra.Structures.d142
                           (MAlonzo.Code.Algebra.Structures.d454
                              (MAlonzo.Code.Algebra.Structures.d1542
                                 (MAlonzo.Code.Algebra.Structures.d1728
                                    (MAlonzo.Code.Algebra.Structures.du2214 v11 v12 v13 v14 v16))))
                           (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                              v0 v1 v5)
                           v3
                           (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d164
                              v0
                              (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                                 v0 v2 v5)
                              v4)))
                     (let v11
                            = let v11
                                    = coe
                                        MAlonzo.Code.Algebra.C463
                                        (coe
                                           MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d164
                                           v0)
                                        (coe
                                           MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                                           v0)
                                        (coe
                                           MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d170
                                           v0)
                                        (coe
                                           MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d172
                                           v0)
                                        (coe
                                           MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d60
                                           (coe
                                              MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d174
                                              v0)) in
                              let v12 = coe MAlonzo.Code.Algebra.du984 v11 in
                              let v13
                                    = coe
                                        MAlonzo.Code.Algebra.C333
                                        (coe MAlonzo.Code.Algebra.d712 v12)
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
                      let v12
                            = coe
                                MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d164 v0
                                (coe
                                   MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d164 v0
                                   (coe
                                      MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166 v0
                                      v1 v5)
                                   v3)
                                (coe
                                   MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d164 v0
                                   (coe
                                      MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166 v0
                                      v2 v5)
                                   v4) in
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
name216 = "Algebra.RingSolver.Lemmas.lemma\8322"
d216 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 = du216 v4 v6 v7 v8 v9
du216 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Relation.Binary.PreorderReasoning.d62
      (let v5
             = let v5
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
               coe
                 MAlonzo.Code.Relation.Binary.C143
                 (coe
                    MAlonzo.Code.Algebra.Structures.d140
                    (coe
                       MAlonzo.Code.Algebra.Structures.d294
                       (coe
                          MAlonzo.Code.Algebra.d100 (coe MAlonzo.Code.Algebra.du186 v8)))) in
       MAlonzo.Code.Relation.Binary.PreorderReasoning.du72
         (MAlonzo.Code.Relation.Binary.du150 v5)
         (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d164
            v0
            (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
               v0
               (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                  v0 v1 v3)
               v4)
            (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
               v0 v2 v3))
         (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d164
            v0
            (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
               v0
               (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                  v0 v1 v4)
               v3)
            (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
               v0 v2 v3))
         (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
            v0
            (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d164
               v0
               (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                  v0 v1 v4)
               v2)
            v3)
         (MAlonzo.Code.Function.du176
            (du230 v0 v1 v3 v4)
            (let v6
                   = coe
                       MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d164 v0 in
             let v7
                   = coe
                       MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166 v0 in
             let v8
                   = coe
                       MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d170 v0 in
             let v9
                   = coe
                       MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d172 v0 in
             let v10
                   = coe
                       MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d174 v0 in
             let v11
                   = coe
                       MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d60 v10 in
             MAlonzo.Code.Algebra.Structures.d144
               (MAlonzo.Code.Algebra.Structures.d454
                  (MAlonzo.Code.Algebra.Structures.d1542
                     (MAlonzo.Code.Algebra.Structures.d1728
                        (MAlonzo.Code.Algebra.Structures.du2214 v6 v7 v8 v9 v11))))
               (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                  v0
                  (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                     v0 v1 v3)
                  v4)
               (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                  v0
                  (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                     v0 v1 v4)
                  v3)
               (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                  v0 v2 v3)
               (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                  v0 v2 v3))
            (let v6
                   = coe
                       MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d164 v0 in
             let v7
                   = coe
                       MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166 v0 in
             let v8
                   = coe
                       MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d170 v0 in
             let v9
                   = coe
                       MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d172 v0 in
             let v10
                   = coe
                       MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d174 v0 in
             let v11
                   = coe
                       MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d60 v10 in
             MAlonzo.Code.Relation.Binary.Core.d516
               (MAlonzo.Code.Algebra.Structures.d140
                  (MAlonzo.Code.Algebra.Structures.d454
                     (MAlonzo.Code.Algebra.Structures.d1542
                        (MAlonzo.Code.Algebra.Structures.d1728
                           (MAlonzo.Code.Algebra.Structures.du2214 v6 v7 v8 v9 v11)))))
               (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                  v0 v2 v3)))
         (let v6
                = let v6
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
                  coe
                    MAlonzo.Code.Relation.Binary.C143
                    (coe
                       MAlonzo.Code.Algebra.Structures.d140
                       (coe
                          MAlonzo.Code.Algebra.Structures.d294
                          (coe
                             MAlonzo.Code.Algebra.d100 (coe MAlonzo.Code.Algebra.du186 v9)))) in
          MAlonzo.Code.Relation.Binary.PreorderReasoning.du72
            (MAlonzo.Code.Relation.Binary.du150 v6)
            (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d164
               v0
               (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                  v0
                  (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                     v0 v1 v4)
                  v3)
               (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                  v0 v2 v3))
            (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
               v0
               (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d164
                  v0
                  (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                     v0 v1 v4)
                  v2)
               v3)
            (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
               v0
               (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d164
                  v0
                  (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                     v0 v1 v4)
                  v2)
               v3)
            (MAlonzo.Code.Function.du158
               (let v7
                      = coe
                          MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d164 v0 in
                let v8
                      = coe
                          MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166 v0 in
                let v9
                      = coe
                          MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d170 v0 in
                let v10
                      = coe
                          MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d172 v0 in
                let v11
                      = coe
                          MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d174 v0 in
                let v12
                      = coe
                          MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d60 v11 in
                MAlonzo.Code.Relation.Binary.Core.d518
                  (MAlonzo.Code.Algebra.Structures.d140
                     (MAlonzo.Code.Algebra.Structures.d454
                        (MAlonzo.Code.Algebra.Structures.d1542
                           (MAlonzo.Code.Algebra.Structures.d1728
                              (MAlonzo.Code.Algebra.Structures.du2214 v7 v8 v9 v10 v12)))))
                  (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                     v0
                     (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d164
                        v0
                        (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                           v0 v1 v4)
                        v2)
                     v3)
                  (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d164
                     v0
                     (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                        v0
                        (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                           v0 v1 v4)
                        v3)
                     (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                        v0 v2 v3)))
               (MAlonzo.Code.Data.Product.d28
                  (let v7
                         = coe
                             MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d164 v0 in
                   let v8
                         = coe
                             MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166 v0 in
                   let v9
                         = coe
                             MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d174 v0 in
                   MAlonzo.Code.Algebra.Structures.du2190
                     v7 v8
                     (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d60 v9))
                  v3
                  (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                     v0 v1 v4)
                  v2))
            (let v7
                   = let v7
                           = coe
                               MAlonzo.Code.Algebra.C463
                               (coe MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d164 v0)
                               (coe MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166 v0)
                               (coe MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d170 v0)
                               (coe MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d172 v0)
                               (coe
                                  MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d60
                                  (coe
                                     MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d174
                                     v0)) in
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
                     coe
                       MAlonzo.Code.Relation.Binary.C143
                       (coe
                          MAlonzo.Code.Algebra.Structures.d140
                          (coe
                             MAlonzo.Code.Algebra.Structures.d294
                             (coe
                                MAlonzo.Code.Algebra.d100
                                (coe MAlonzo.Code.Algebra.du186 v10)))) in
             let v8
                   = coe
                       MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166 v0
                       (coe
                          MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d164 v0
                          (coe
                             MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166 v0 v1
                             v4)
                          v2)
                       v3 in
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
name230 = "Algebra.RingSolver.Lemmas._.lem"
d230 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 = du230 v4 v6 v8 v9
du230 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Relation.Binary.PreorderReasoning.d62
      (let v4
             = let v4
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
               let v5 = coe MAlonzo.Code.Algebra.du984 v4 in
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
         (MAlonzo.Code.Relation.Binary.du150 v4)
         (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
            v0
            (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
               v0 v1 v2)
            v3)
         (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
            v0 v1
            (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
               v0 v2 v3))
         (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
            v0
            (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
               v0 v1 v3)
            v2)
         (let v5
                = coe
                    MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d164 v0 in
          let v6
                = coe
                    MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166 v0 in
          let v7
                = coe
                    MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d170 v0 in
          let v8
                = coe
                    MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d172 v0 in
          let v9
                = coe
                    MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d174 v0 in
          let v10
                = coe
                    MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d60 v9 in
          MAlonzo.Code.Algebra.Structures.d142
            (MAlonzo.Code.Algebra.Structures.d294
               (MAlonzo.Code.Algebra.Structures.d1544
                  (MAlonzo.Code.Algebra.Structures.d1728
                     (MAlonzo.Code.Algebra.Structures.du2214 v5 v6 v7 v8 v10))))
            v1 v2 v3)
         (let v5
                = let v5
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
                  coe
                    MAlonzo.Code.Relation.Binary.C143
                    (coe
                       MAlonzo.Code.Algebra.Structures.d140
                       (coe
                          MAlonzo.Code.Algebra.Structures.d294
                          (coe
                             MAlonzo.Code.Algebra.d100 (coe MAlonzo.Code.Algebra.du186 v8)))) in
          MAlonzo.Code.Relation.Binary.PreorderReasoning.du72
            (MAlonzo.Code.Relation.Binary.du150 v5)
            (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
               v0 v1
               (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                  v0 v2 v3))
            (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
               v0 v1
               (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                  v0 v3 v2))
            (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
               v0
               (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                  v0 v1 v3)
               v2)
            (MAlonzo.Code.Function.du176
               (let v6
                      = coe
                          MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d164 v0 in
                let v7
                      = coe
                          MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166 v0 in
                let v8
                      = coe
                          MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d170 v0 in
                let v9
                      = coe
                          MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d172 v0 in
                let v10
                      = coe
                          MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d174 v0 in
                let v11
                      = coe
                          MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d60 v10 in
                MAlonzo.Code.Relation.Binary.Core.d516
                  (MAlonzo.Code.Algebra.Structures.d140
                     (MAlonzo.Code.Algebra.Structures.d454
                        (MAlonzo.Code.Algebra.Structures.d1542
                           (MAlonzo.Code.Algebra.Structures.d1728
                              (MAlonzo.Code.Algebra.Structures.du2214 v6 v7 v8 v9 v11)))))
                  v1)
               (let v6
                      = coe
                          MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d164 v0 in
                let v7
                      = coe
                          MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166 v0 in
                let v8
                      = coe
                          MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d170 v0 in
                let v9
                      = coe
                          MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d172 v0 in
                let v10
                      = coe
                          MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d174 v0 in
                let v11
                      = coe
                          MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d60 v10 in
                MAlonzo.Code.Algebra.Structures.d144
                  (MAlonzo.Code.Algebra.Structures.d294
                     (MAlonzo.Code.Algebra.Structures.d1544
                        (MAlonzo.Code.Algebra.Structures.d1728
                           (MAlonzo.Code.Algebra.Structures.du2214 v6 v7 v8 v9 v11))))
                  v1 v1
                  (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                     v0 v2 v3)
                  (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                     v0 v3 v2))
               (MAlonzo.Code.Algebra.Structures.d458
                  (MAlonzo.Code.Algebra.Structures.d2112
                     (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d60
                        (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d174 v0)))
                  v2 v3))
            (let v6
                   = let v6
                           = coe
                               MAlonzo.Code.Algebra.C463
                               (coe MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d164 v0)
                               (coe MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166 v0)
                               (coe MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d170 v0)
                               (coe MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d172 v0)
                               (coe
                                  MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d60
                                  (coe
                                     MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d174
                                     v0)) in
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
                     coe
                       MAlonzo.Code.Relation.Binary.C143
                       (coe
                          MAlonzo.Code.Algebra.Structures.d140
                          (coe
                             MAlonzo.Code.Algebra.Structures.d294
                             (coe
                                MAlonzo.Code.Algebra.d100 (coe MAlonzo.Code.Algebra.du186 v9)))) in
             MAlonzo.Code.Relation.Binary.PreorderReasoning.du72
               (MAlonzo.Code.Relation.Binary.du150 v6)
               (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                  v0 v1
                  (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                     v0 v3 v2))
               (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                  v0
                  (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                     v0 v1 v3)
                  v2)
               (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                  v0
                  (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                     v0 v1 v3)
                  v2)
               (MAlonzo.Code.Function.du158
                  (let v7
                         = coe
                             MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d164 v0 in
                   let v8
                         = coe
                             MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166 v0 in
                   let v9
                         = coe
                             MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d170 v0 in
                   let v10
                         = coe
                             MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d172 v0 in
                   let v11
                         = coe
                             MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d174 v0 in
                   let v12
                         = coe
                             MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d60 v11 in
                   MAlonzo.Code.Relation.Binary.Core.d518
                     (MAlonzo.Code.Algebra.Structures.d140
                        (MAlonzo.Code.Algebra.Structures.d454
                           (MAlonzo.Code.Algebra.Structures.d1542
                              (MAlonzo.Code.Algebra.Structures.d1728
                                 (MAlonzo.Code.Algebra.Structures.du2214 v7 v8 v9 v10 v12)))))
                     (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                        v0
                        (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                           v0 v1 v3)
                        v2)
                     (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                        v0 v1
                        (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                           v0 v3 v2)))
                  (let v7
                         = coe
                             MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d164 v0 in
                   let v8
                         = coe
                             MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166 v0 in
                   let v9
                         = coe
                             MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d170 v0 in
                   let v10
                         = coe
                             MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d172 v0 in
                   let v11
                         = coe
                             MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d174 v0 in
                   let v12
                         = coe
                             MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d60 v11 in
                   MAlonzo.Code.Algebra.Structures.d142
                     (MAlonzo.Code.Algebra.Structures.d294
                        (MAlonzo.Code.Algebra.Structures.d1544
                           (MAlonzo.Code.Algebra.Structures.d1728
                              (MAlonzo.Code.Algebra.Structures.du2214 v7 v8 v9 v10 v12))))
                     v1 v3 v2))
               (let v7
                      = let v7
                              = coe
                                  MAlonzo.Code.Algebra.C463
                                  (coe
                                     MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d164 v0)
                                  (coe
                                     MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166 v0)
                                  (coe
                                     MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d170 v0)
                                  (coe
                                     MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d172 v0)
                                  (coe
                                     MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d60
                                     (coe
                                        MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d174
                                        v0)) in
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
                        coe
                          MAlonzo.Code.Relation.Binary.C143
                          (coe
                             MAlonzo.Code.Algebra.Structures.d140
                             (coe
                                MAlonzo.Code.Algebra.Structures.d294
                                (coe
                                   MAlonzo.Code.Algebra.d100
                                   (coe MAlonzo.Code.Algebra.du186 v10)))) in
                let v8
                      = coe
                          MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166 v0
                          (coe
                             MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166 v0 v1
                             v3)
                          v2 in
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
name240 = "Algebra.RingSolver.Lemmas.lemma\8323"
d240 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 = du240 v4 v6 v7 v8 v9
du240 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Relation.Binary.PreorderReasoning.d62
      (let v5
             = let v5
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
               coe
                 MAlonzo.Code.Relation.Binary.C143
                 (coe
                    MAlonzo.Code.Algebra.Structures.d140
                    (coe
                       MAlonzo.Code.Algebra.Structures.d294
                       (coe
                          MAlonzo.Code.Algebra.d100 (coe MAlonzo.Code.Algebra.du186 v8)))) in
       MAlonzo.Code.Relation.Binary.PreorderReasoning.du72
         (MAlonzo.Code.Relation.Binary.du150 v5)
         (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d164
            v0
            (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
               v0
               (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                  v0 v1 v2)
               v4)
            (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
               v0 v1 v3))
         (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d164
            v0
            (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
               v0 v1
               (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                  v0 v2 v4))
            (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
               v0 v1 v3))
         (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
            v0 v1
            (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d164
               v0
               (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                  v0 v2 v4)
               v3))
         (MAlonzo.Code.Function.du176
            (let v6
                   = coe
                       MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d164 v0 in
             let v7
                   = coe
                       MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166 v0 in
             let v8
                   = coe
                       MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d170 v0 in
             let v9
                   = coe
                       MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d172 v0 in
             let v10
                   = coe
                       MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d174 v0 in
             let v11
                   = coe
                       MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d60 v10 in
             MAlonzo.Code.Algebra.Structures.d142
               (MAlonzo.Code.Algebra.Structures.d294
                  (MAlonzo.Code.Algebra.Structures.d1544
                     (MAlonzo.Code.Algebra.Structures.d1728
                        (MAlonzo.Code.Algebra.Structures.du2214 v6 v7 v8 v9 v11))))
               v1 v2 v4)
            (let v6
                   = coe
                       MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d164 v0 in
             let v7
                   = coe
                       MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166 v0 in
             let v8
                   = coe
                       MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d170 v0 in
             let v9
                   = coe
                       MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d172 v0 in
             let v10
                   = coe
                       MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d174 v0 in
             let v11
                   = coe
                       MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d60 v10 in
             MAlonzo.Code.Algebra.Structures.d144
               (MAlonzo.Code.Algebra.Structures.d454
                  (MAlonzo.Code.Algebra.Structures.d1542
                     (MAlonzo.Code.Algebra.Structures.d1728
                        (MAlonzo.Code.Algebra.Structures.du2214 v6 v7 v8 v9 v11))))
               (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                  v0
                  (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                     v0 v1 v2)
                  v4)
               (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                  v0 v1
                  (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                     v0 v2 v4))
               (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                  v0 v1 v3)
               (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                  v0 v1 v3))
            (let v6
                   = coe
                       MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d164 v0 in
             let v7
                   = coe
                       MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166 v0 in
             let v8
                   = coe
                       MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d170 v0 in
             let v9
                   = coe
                       MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d172 v0 in
             let v10
                   = coe
                       MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d174 v0 in
             let v11
                   = coe
                       MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d60 v10 in
             MAlonzo.Code.Relation.Binary.Core.d516
               (MAlonzo.Code.Algebra.Structures.d140
                  (MAlonzo.Code.Algebra.Structures.d454
                     (MAlonzo.Code.Algebra.Structures.d1542
                        (MAlonzo.Code.Algebra.Structures.d1728
                           (MAlonzo.Code.Algebra.Structures.du2214 v6 v7 v8 v9 v11)))))
               (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                  v0 v1 v3)))
         (let v6
                = let v6
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
                  coe
                    MAlonzo.Code.Relation.Binary.C143
                    (coe
                       MAlonzo.Code.Algebra.Structures.d140
                       (coe
                          MAlonzo.Code.Algebra.Structures.d294
                          (coe
                             MAlonzo.Code.Algebra.d100 (coe MAlonzo.Code.Algebra.du186 v9)))) in
          MAlonzo.Code.Relation.Binary.PreorderReasoning.du72
            (MAlonzo.Code.Relation.Binary.du150 v6)
            (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d164
               v0
               (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                  v0 v1
                  (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                     v0 v2 v4))
               (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                  v0 v1 v3))
            (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
               v0 v1
               (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d164
                  v0
                  (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                     v0 v2 v4)
                  v3))
            (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
               v0 v1
               (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d164
                  v0
                  (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                     v0 v2 v4)
                  v3))
            (MAlonzo.Code.Function.du158
               (let v7
                      = coe
                          MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d164 v0 in
                let v8
                      = coe
                          MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166 v0 in
                let v9
                      = coe
                          MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d170 v0 in
                let v10
                      = coe
                          MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d172 v0 in
                let v11
                      = coe
                          MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d174 v0 in
                let v12
                      = coe
                          MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d60 v11 in
                MAlonzo.Code.Relation.Binary.Core.d518
                  (MAlonzo.Code.Algebra.Structures.d140
                     (MAlonzo.Code.Algebra.Structures.d454
                        (MAlonzo.Code.Algebra.Structures.d1542
                           (MAlonzo.Code.Algebra.Structures.d1728
                              (MAlonzo.Code.Algebra.Structures.du2214 v7 v8 v9 v10 v12)))))
                  (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                     v0 v1
                     (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d164
                        v0
                        (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                           v0 v2 v4)
                        v3))
                  (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d164
                     v0
                     (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                        v0 v1
                        (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                           v0 v2 v4))
                     (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                        v0 v1 v3)))
               (MAlonzo.Code.Data.Product.d26
                  (let v7
                         = coe
                             MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d164 v0 in
                   let v8
                         = coe
                             MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166 v0 in
                   let v9
                         = coe
                             MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d174 v0 in
                   MAlonzo.Code.Algebra.Structures.du2190
                     v7 v8
                     (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d60 v9))
                  v1
                  (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                     v0 v2 v4)
                  v3))
            (let v7
                   = let v7
                           = coe
                               MAlonzo.Code.Algebra.C463
                               (coe MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d164 v0)
                               (coe MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166 v0)
                               (coe MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d170 v0)
                               (coe MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d172 v0)
                               (coe
                                  MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d60
                                  (coe
                                     MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d174
                                     v0)) in
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
                     coe
                       MAlonzo.Code.Relation.Binary.C143
                       (coe
                          MAlonzo.Code.Algebra.Structures.d140
                          (coe
                             MAlonzo.Code.Algebra.Structures.d294
                             (coe
                                MAlonzo.Code.Algebra.d100
                                (coe MAlonzo.Code.Algebra.du186 v10)))) in
             let v8
                   = coe
                       MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166 v0 v1
                       (coe
                          MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d164 v0
                          (coe
                             MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166 v0 v2
                             v4)
                          v3) in
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
name260 = "Algebra.RingSolver.Lemmas.lemma\8324"
d260 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 = du260 v4 v6 v7 v8 v9 v10
du260 v0 v1 v2 v3 v4 v5
  = coe
      MAlonzo.Code.Relation.Binary.PreorderReasoning.d62
      (let v6
             = let v6
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
               coe
                 MAlonzo.Code.Relation.Binary.C143
                 (coe
                    MAlonzo.Code.Algebra.Structures.d140
                    (coe
                       MAlonzo.Code.Algebra.Structures.d294
                       (coe
                          MAlonzo.Code.Algebra.d100 (coe MAlonzo.Code.Algebra.du186 v9)))) in
       MAlonzo.Code.Relation.Binary.PreorderReasoning.du72
         (MAlonzo.Code.Relation.Binary.du150 v6)
         (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d164
            v0
            (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
               v0
               (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d164
                  v0
                  (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                     v0
                     (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                        v0 v1 v3)
                     v5)
                  (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d164
                     v0
                     (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                        v0 v1 v4)
                     (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                        v0 v2 v3)))
               v5)
            (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
               v0 v2 v4))
         (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d164
            v0
            (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d164
               v0
               (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                  v0
                  (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                     v0
                     (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                        v0 v1 v3)
                     v5)
                  v5)
               (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                  v0
                  (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d164
                     v0
                     (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                        v0 v1 v4)
                     (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                        v0 v2 v3))
                  v5))
            (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
               v0 v2 v4))
         (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
            v0
            (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d164
               v0
               (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                  v0 v1 v5)
               v2)
            (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d164
               v0
               (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                  v0 v3 v5)
               v4))
         (MAlonzo.Code.Function.du176
            (MAlonzo.Code.Data.Product.d28
               (let v7
                      = coe
                          MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d164 v0 in
                let v8
                      = coe
                          MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166 v0 in
                let v9
                      = coe
                          MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d174 v0 in
                MAlonzo.Code.Algebra.Structures.du2190
                  v7 v8
                  (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d60 v9))
               v5
               (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                  v0
                  (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                     v0 v1 v3)
                  v5)
               (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d164
                  v0
                  (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                     v0 v1 v4)
                  (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                     v0 v2 v3)))
            (let v7
                   = coe
                       MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d164 v0 in
             let v8
                   = coe
                       MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166 v0 in
             let v9
                   = coe
                       MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d170 v0 in
             let v10
                   = coe
                       MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d172 v0 in
             let v11
                   = coe
                       MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d174 v0 in
             let v12
                   = coe
                       MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d60 v11 in
             MAlonzo.Code.Algebra.Structures.d144
               (MAlonzo.Code.Algebra.Structures.d454
                  (MAlonzo.Code.Algebra.Structures.d1542
                     (MAlonzo.Code.Algebra.Structures.d1728
                        (MAlonzo.Code.Algebra.Structures.du2214 v7 v8 v9 v10 v12))))
               (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                  v0
                  (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d164
                     v0
                     (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                        v0
                        (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                           v0 v1 v3)
                        v5)
                     (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d164
                        v0
                        (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                           v0 v1 v4)
                        (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                           v0 v2 v3)))
                  v5)
               (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d164
                  v0
                  (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                     v0
                     (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                        v0
                        (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                           v0 v1 v3)
                        v5)
                     v5)
                  (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                     v0
                     (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d164
                        v0
                        (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                           v0 v1 v4)
                        (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                           v0 v2 v3))
                     v5))
               (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                  v0 v2 v4)
               (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                  v0 v2 v4))
            (let v7
                   = coe
                       MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d164 v0 in
             let v8
                   = coe
                       MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166 v0 in
             let v9
                   = coe
                       MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d170 v0 in
             let v10
                   = coe
                       MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d172 v0 in
             let v11
                   = coe
                       MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d174 v0 in
             let v12
                   = coe
                       MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d60 v11 in
             MAlonzo.Code.Relation.Binary.Core.d516
               (MAlonzo.Code.Algebra.Structures.d140
                  (MAlonzo.Code.Algebra.Structures.d454
                     (MAlonzo.Code.Algebra.Structures.d1542
                        (MAlonzo.Code.Algebra.Structures.d1728
                           (MAlonzo.Code.Algebra.Structures.du2214 v7 v8 v9 v10 v12)))))
               (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                  v0 v2 v4)))
         (let v7
                = let v7
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
            (MAlonzo.Code.Relation.Binary.du150 v7)
            (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d164
               v0
               (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d164
                  v0
                  (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                     v0
                     (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                        v0
                        (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                           v0 v1 v3)
                        v5)
                     v5)
                  (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                     v0
                     (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d164
                        v0
                        (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                           v0 v1 v4)
                        (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                           v0 v2 v3))
                     v5))
               (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                  v0 v2 v4))
            (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d164
               v0
               (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d164
                  v0
                  (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                     v0
                     (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                        v0
                        (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                           v0 v1 v3)
                        v5)
                     v5)
                  (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                     v0
                     (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d164
                        v0
                        (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                           v0 v1 v4)
                        (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                           v0 v2 v3))
                     v5))
               (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                  v0 v2 v4))
            (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
               v0
               (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d164
                  v0
                  (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                     v0 v1 v5)
                  v2)
               (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d164
                  v0
                  (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                     v0 v3 v5)
                  v4))
            (MAlonzo.Code.Function.du176
               (MAlonzo.Code.Function.du176
                  (let v8
                         = coe
                             MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d164 v0 in
                   let v9
                         = coe
                             MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166 v0 in
                   let v10
                         = coe
                             MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d170 v0 in
                   let v11
                         = coe
                             MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d172 v0 in
                   let v12
                         = coe
                             MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d174 v0 in
                   let v13
                         = coe
                             MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d60 v12 in
                   MAlonzo.Code.Relation.Binary.Core.d516
                     (MAlonzo.Code.Algebra.Structures.d140
                        (MAlonzo.Code.Algebra.Structures.d454
                           (MAlonzo.Code.Algebra.Structures.d1542
                              (MAlonzo.Code.Algebra.Structures.d1728
                                 (MAlonzo.Code.Algebra.Structures.du2214 v8 v9 v10 v11 v13)))))
                     (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                        v0
                        (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                           v0
                           (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                              v0 v1 v3)
                           v5)
                        v5))
                  (let v8
                         = coe
                             MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d164 v0 in
                   let v9
                         = coe
                             MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166 v0 in
                   let v10
                         = coe
                             MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d170 v0 in
                   let v11
                         = coe
                             MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d172 v0 in
                   let v12
                         = coe
                             MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d174 v0 in
                   let v13
                         = coe
                             MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d60 v12 in
                   MAlonzo.Code.Algebra.Structures.d144
                     (MAlonzo.Code.Algebra.Structures.d454
                        (MAlonzo.Code.Algebra.Structures.d1542
                           (MAlonzo.Code.Algebra.Structures.d1728
                              (MAlonzo.Code.Algebra.Structures.du2214 v8 v9 v10 v11 v13))))
                     (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                        v0
                        (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                           v0
                           (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                              v0 v1 v3)
                           v5)
                        v5)
                     (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                        v0
                        (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                           v0
                           (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                              v0 v1 v3)
                           v5)
                        v5)
                     (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                        v0
                        (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d164
                           v0
                           (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                              v0 v1 v4)
                           (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                              v0 v2 v3))
                        v5)
                     (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                        v0
                        (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d164
                           v0
                           (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                              v0 v1 v4)
                           (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                              v0 v2 v3))
                        v5))
                  (MAlonzo.Code.Function.du176
                     (MAlonzo.Code.Function.du176
                        (let v8
                               = coe
                                   MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d164 v0 in
                         let v9
                               = coe
                                   MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166 v0 in
                         let v10
                               = coe
                                   MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d170 v0 in
                         let v11
                               = coe
                                   MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d172 v0 in
                         let v12
                               = coe
                                   MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d174 v0 in
                         let v13
                               = coe
                                   MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d60 v12 in
                         MAlonzo.Code.Relation.Binary.Core.d516
                           (MAlonzo.Code.Algebra.Structures.d140
                              (MAlonzo.Code.Algebra.Structures.d454
                                 (MAlonzo.Code.Algebra.Structures.d1542
                                    (MAlonzo.Code.Algebra.Structures.d1728
                                       (MAlonzo.Code.Algebra.Structures.du2214
                                          v8 v9 v10 v11 v13)))))
                           (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                              v0 v1 v4))
                        (let v8
                               = coe
                                   MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d164 v0 in
                         let v9
                               = coe
                                   MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166 v0 in
                         let v10
                               = coe
                                   MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d170 v0 in
                         let v11
                               = coe
                                   MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d172 v0 in
                         let v12
                               = coe
                                   MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d174 v0 in
                         let v13
                               = coe
                                   MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d60 v12 in
                         MAlonzo.Code.Algebra.Structures.d144
                           (MAlonzo.Code.Algebra.Structures.d454
                              (MAlonzo.Code.Algebra.Structures.d1542
                                 (MAlonzo.Code.Algebra.Structures.d1728
                                    (MAlonzo.Code.Algebra.Structures.du2214 v8 v9 v10 v11 v13))))
                           (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                              v0 v1 v4)
                           (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                              v0 v1 v4)
                           (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                              v0 v2 v3)
                           (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                              v0 v2 v3))
                        (let v8
                               = coe
                                   MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d164 v0 in
                         let v9
                               = coe
                                   MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166 v0 in
                         let v10
                               = coe
                                   MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d170 v0 in
                         let v11
                               = coe
                                   MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d172 v0 in
                         let v12
                               = coe
                                   MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d174 v0 in
                         let v13
                               = coe
                                   MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d60 v12 in
                         MAlonzo.Code.Relation.Binary.Core.d516
                           (MAlonzo.Code.Algebra.Structures.d140
                              (MAlonzo.Code.Algebra.Structures.d454
                                 (MAlonzo.Code.Algebra.Structures.d1542
                                    (MAlonzo.Code.Algebra.Structures.d1728
                                       (MAlonzo.Code.Algebra.Structures.du2214
                                          v8 v9 v10 v11 v13)))))
                           (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                              v0 v2 v3)))
                     (let v8
                            = coe
                                MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d164 v0 in
                      let v9
                            = coe
                                MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166 v0 in
                      let v10
                            = coe
                                MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d170 v0 in
                      let v11
                            = coe
                                MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d172 v0 in
                      let v12
                            = coe
                                MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d174 v0 in
                      let v13
                            = coe
                                MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d60 v12 in
                      MAlonzo.Code.Algebra.Structures.d144
                        (MAlonzo.Code.Algebra.Structures.d294
                           (MAlonzo.Code.Algebra.Structures.d1544
                              (MAlonzo.Code.Algebra.Structures.d1728
                                 (MAlonzo.Code.Algebra.Structures.du2214 v8 v9 v10 v11 v13))))
                        (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d164
                           v0
                           (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                              v0 v1 v4)
                           (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                              v0 v2 v3))
                        (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d164
                           v0
                           (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                              v0 v1 v4)
                           (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                              v0 v2 v3))
                        v5 v5)
                     (let v8
                            = coe
                                MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d164 v0 in
                      let v9
                            = coe
                                MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166 v0 in
                      let v10
                            = coe
                                MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d170 v0 in
                      let v11
                            = coe
                                MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d172 v0 in
                      let v12
                            = coe
                                MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d174 v0 in
                      let v13
                            = coe
                                MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d60 v12 in
                      MAlonzo.Code.Relation.Binary.Core.d516
                        (MAlonzo.Code.Algebra.Structures.d140
                           (MAlonzo.Code.Algebra.Structures.d454
                              (MAlonzo.Code.Algebra.Structures.d1542
                                 (MAlonzo.Code.Algebra.Structures.d1728
                                    (MAlonzo.Code.Algebra.Structures.du2214 v8 v9 v10 v11 v13)))))
                        v5)))
               (let v8
                      = coe
                          MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d164 v0 in
                let v9
                      = coe
                          MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166 v0 in
                let v10
                      = coe
                          MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d170 v0 in
                let v11
                      = coe
                          MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d172 v0 in
                let v12
                      = coe
                          MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d174 v0 in
                let v13
                      = coe
                          MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d60 v12 in
                MAlonzo.Code.Algebra.Structures.d144
                  (MAlonzo.Code.Algebra.Structures.d454
                     (MAlonzo.Code.Algebra.Structures.d1542
                        (MAlonzo.Code.Algebra.Structures.d1728
                           (MAlonzo.Code.Algebra.Structures.du2214 v8 v9 v10 v11 v13))))
                  (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d164
                     v0
                     (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                        v0
                        (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                           v0
                           (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                              v0 v1 v3)
                           v5)
                        v5)
                     (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                        v0
                        (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d164
                           v0
                           (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                              v0 v1 v4)
                           (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                              v0 v2 v3))
                        v5))
                  (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d164
                     v0
                     (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                        v0
                        (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                           v0
                           (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                              v0 v1 v3)
                           v5)
                        v5)
                     (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                        v0
                        (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d164
                           v0
                           (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                              v0 v1 v4)
                           (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                              v0 v2 v3))
                        v5))
                  (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                     v0 v2 v4)
                  (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                     v0 v2 v4))
               (let v8
                      = coe
                          MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d164 v0 in
                let v9
                      = coe
                          MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166 v0 in
                let v10
                      = coe
                          MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d170 v0 in
                let v11
                      = coe
                          MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d172 v0 in
                let v12
                      = coe
                          MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d174 v0 in
                let v13
                      = coe
                          MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d60 v12 in
                MAlonzo.Code.Relation.Binary.Core.d516
                  (MAlonzo.Code.Algebra.Structures.d140
                     (MAlonzo.Code.Algebra.Structures.d454
                        (MAlonzo.Code.Algebra.Structures.d1542
                           (MAlonzo.Code.Algebra.Structures.d1728
                              (MAlonzo.Code.Algebra.Structures.du2214 v8 v9 v10 v11 v13)))))
                  (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                     v0 v2 v4)))
            (let v8
                   = let v8
                           = coe
                               MAlonzo.Code.Algebra.C463
                               (coe MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d164 v0)
                               (coe MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166 v0)
                               (coe MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d170 v0)
                               (coe MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d172 v0)
                               (coe
                                  MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d60
                                  (coe
                                     MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d174
                                     v0)) in
                     let v9 = coe MAlonzo.Code.Algebra.du984 v8 in
                     let v10
                           = coe
                               MAlonzo.Code.Algebra.C333 (coe MAlonzo.Code.Algebra.d712 v9)
                               (coe MAlonzo.Code.Algebra.d714 v9)
                               (coe MAlonzo.Code.Algebra.d716 v9)
                               (coe MAlonzo.Code.Algebra.d718 v9)
                               (coe
                                  MAlonzo.Code.Algebra.Structures.d1728
                                  (coe MAlonzo.Code.Algebra.d720 v9)) in
                     let v11
                           = coe
                               MAlonzo.Code.Algebra.C97 (coe MAlonzo.Code.Algebra.d616 v10)
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
               (MAlonzo.Code.Relation.Binary.du150 v8)
               (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d164
                  v0
                  (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d164
                     v0
                     (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                        v0
                        (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                           v0
                           (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                              v0 v1 v3)
                           v5)
                        v5)
                     (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                        v0
                        (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d164
                           v0
                           (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                              v0 v1 v4)
                           (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                              v0 v2 v3))
                        v5))
                  (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                     v0 v2 v4))
               (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d164
                  v0
                  (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                     v0
                     (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                        v0
                        (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                           v0 v1 v3)
                        v5)
                     v5)
                  (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d164
                     v0
                     (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                        v0
                        (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d164
                           v0
                           (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                              v0 v1 v4)
                           (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                              v0 v2 v3))
                        v5)
                     (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                        v0 v2 v4)))
               (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                  v0
                  (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d164
                     v0
                     (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                        v0 v1 v5)
                     v2)
                  (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d164
                     v0
                     (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                        v0 v3 v5)
                     v4))
               (let v9
                      = coe
                          MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d164 v0 in
                let v10
                      = coe
                          MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166 v0 in
                let v11
                      = coe
                          MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d170 v0 in
                let v12
                      = coe
                          MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d172 v0 in
                let v13
                      = coe
                          MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d174 v0 in
                let v14
                      = coe
                          MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d60 v13 in
                MAlonzo.Code.Algebra.Structures.d142
                  (MAlonzo.Code.Algebra.Structures.d454
                     (MAlonzo.Code.Algebra.Structures.d1542
                        (MAlonzo.Code.Algebra.Structures.d1728
                           (MAlonzo.Code.Algebra.Structures.du2214 v9 v10 v11 v12 v14))))
                  (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                     v0
                     (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                        v0
                        (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                           v0 v1 v3)
                        v5)
                     v5)
                  (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                     v0
                     (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d164
                        v0
                        (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                           v0 v1 v4)
                        (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                           v0 v2 v3))
                     v5)
                  (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                     v0 v2 v4))
               (let v9
                      = let v9
                              = coe
                                  MAlonzo.Code.Algebra.C463
                                  (coe
                                     MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d164 v0)
                                  (coe
                                     MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166 v0)
                                  (coe
                                     MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d170 v0)
                                  (coe
                                     MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d172 v0)
                                  (coe
                                     MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d60
                                     (coe
                                        MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d174
                                        v0)) in
                        let v10 = coe MAlonzo.Code.Algebra.du984 v9 in
                        let v11
                              = coe
                                  MAlonzo.Code.Algebra.C333 (coe MAlonzo.Code.Algebra.d712 v10)
                                  (coe MAlonzo.Code.Algebra.d714 v10)
                                  (coe MAlonzo.Code.Algebra.d716 v10)
                                  (coe MAlonzo.Code.Algebra.d718 v10)
                                  (coe
                                     MAlonzo.Code.Algebra.Structures.d1728
                                     (coe MAlonzo.Code.Algebra.d720 v10)) in
                        let v12
                              = coe
                                  MAlonzo.Code.Algebra.C97 (coe MAlonzo.Code.Algebra.d616 v11)
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
                MAlonzo.Code.Relation.Binary.PreorderReasoning.du72
                  (MAlonzo.Code.Relation.Binary.du150 v9)
                  (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d164
                     v0
                     (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                        v0
                        (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                           v0
                           (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                              v0 v1 v3)
                           v5)
                        v5)
                     (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d164
                        v0
                        (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                           v0
                           (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d164
                              v0
                              (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                                 v0 v1 v4)
                              (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                                 v0 v2 v3))
                           v5)
                        (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                           v0 v2 v4)))
                  (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d164
                     v0
                     (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                        v0
                        (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                           v0 v1 v5)
                        (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                           v0 v3 v5))
                     (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d164
                        v0
                        (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d164
                           v0
                           (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                              v0
                              (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                                 v0 v1 v5)
                              v4)
                           (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                              v0 v2
                              (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                                 v0 v3 v5)))
                        (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                           v0 v2 v4)))
                  (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                     v0
                     (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d164
                        v0
                        (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                           v0 v1 v5)
                        v2)
                     (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d164
                        v0
                        (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                           v0 v3 v5)
                        v4))
                  (MAlonzo.Code.Function.du176
                     (du278 v0 v1 v3 v5)
                     (let v10
                            = coe
                                MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d164 v0 in
                      let v11
                            = coe
                                MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166 v0 in
                      let v12
                            = coe
                                MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d170 v0 in
                      let v13
                            = coe
                                MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d172 v0 in
                      let v14
                            = coe
                                MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d174 v0 in
                      let v15
                            = coe
                                MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d60 v14 in
                      MAlonzo.Code.Algebra.Structures.d144
                        (MAlonzo.Code.Algebra.Structures.d454
                           (MAlonzo.Code.Algebra.Structures.d1542
                              (MAlonzo.Code.Algebra.Structures.d1728
                                 (MAlonzo.Code.Algebra.Structures.du2214 v10 v11 v12 v13 v15))))
                        (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                           v0
                           (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                              v0
                              (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                                 v0 v1 v3)
                              v5)
                           v5)
                        (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                           v0
                           (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                              v0 v1 v5)
                           (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                              v0 v3 v5))
                        (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d164
                           v0
                           (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                              v0
                              (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d164
                                 v0
                                 (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                                    v0 v1 v4)
                                 (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                                    v0 v2 v3))
                              v5)
                           (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                              v0 v2 v4))
                        (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d164
                           v0
                           (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d164
                              v0
                              (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                                 v0
                                 (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                                    v0 v1 v5)
                                 v4)
                              (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                                 v0 v2
                                 (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                                    v0 v3 v5)))
                           (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                              v0 v2 v4)))
                     (MAlonzo.Code.Function.du176
                        (du280 v0 v1 v2 v3 v4 v5)
                        (let v10
                               = coe
                                   MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d164 v0 in
                         let v11
                               = coe
                                   MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166 v0 in
                         let v12
                               = coe
                                   MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d170 v0 in
                         let v13
                               = coe
                                   MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d172 v0 in
                         let v14
                               = coe
                                   MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d174 v0 in
                         let v15
                               = coe
                                   MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d60 v14 in
                         MAlonzo.Code.Algebra.Structures.d144
                           (MAlonzo.Code.Algebra.Structures.d454
                              (MAlonzo.Code.Algebra.Structures.d1542
                                 (MAlonzo.Code.Algebra.Structures.d1728
                                    (MAlonzo.Code.Algebra.Structures.du2214 v10 v11 v12 v13 v15))))
                           (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                              v0
                              (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d164
                                 v0
                                 (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                                    v0 v1 v4)
                                 (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                                    v0 v2 v3))
                              v5)
                           (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d164
                              v0
                              (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                                 v0
                                 (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                                    v0 v1 v5)
                                 v4)
                              (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                                 v0 v2
                                 (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                                    v0 v3 v5)))
                           (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                              v0 v2 v4)
                           (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                              v0 v2 v4))
                        (let v10
                               = coe
                                   MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d164 v0 in
                         let v11
                               = coe
                                   MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166 v0 in
                         let v12
                               = coe
                                   MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d170 v0 in
                         let v13
                               = coe
                                   MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d172 v0 in
                         let v14
                               = coe
                                   MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d174 v0 in
                         let v15
                               = coe
                                   MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d60 v14 in
                         MAlonzo.Code.Relation.Binary.Core.d516
                           (MAlonzo.Code.Algebra.Structures.d140
                              (MAlonzo.Code.Algebra.Structures.d454
                                 (MAlonzo.Code.Algebra.Structures.d1542
                                    (MAlonzo.Code.Algebra.Structures.d1728
                                       (MAlonzo.Code.Algebra.Structures.du2214
                                          v10 v11 v12 v13 v15)))))
                           (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                              v0 v2 v4))))
                  (let v10
                         = let v10
                                 = coe
                                     MAlonzo.Code.Algebra.C463
                                     (coe
                                        MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d164
                                        v0)
                                     (coe
                                        MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                                        v0)
                                     (coe
                                        MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d170
                                        v0)
                                     (coe
                                        MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d172
                                        v0)
                                     (coe
                                        MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d60
                                        (coe
                                           MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d174
                                           v0)) in
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
                           coe
                             MAlonzo.Code.Relation.Binary.C143
                             (coe
                                MAlonzo.Code.Algebra.Structures.d140
                                (coe
                                   MAlonzo.Code.Algebra.Structures.d294
                                   (coe
                                      MAlonzo.Code.Algebra.d100
                                      (coe MAlonzo.Code.Algebra.du186 v13)))) in
                   MAlonzo.Code.Relation.Binary.PreorderReasoning.du72
                     (MAlonzo.Code.Relation.Binary.du150 v10)
                     (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d164
                        v0
                        (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                           v0
                           (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                              v0 v1 v5)
                           (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                              v0 v3 v5))
                        (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d164
                           v0
                           (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d164
                              v0
                              (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                                 v0
                                 (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                                    v0 v1 v5)
                                 v4)
                              (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                                 v0 v2
                                 (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                                    v0 v3 v5)))
                           (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                              v0 v2 v4)))
                     (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d164
                        v0
                        (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                           v0
                           (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                              v0 v1 v5)
                           (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                              v0 v3 v5))
                        (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d164
                           v0
                           (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                              v0
                              (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                                 v0 v1 v5)
                              v4)
                           (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d164
                              v0
                              (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                                 v0 v2
                                 (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                                    v0 v3 v5))
                              (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                                 v0 v2 v4))))
                     (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                        v0
                        (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d164
                           v0
                           (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                              v0 v1 v5)
                           v2)
                        (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d164
                           v0
                           (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                              v0 v3 v5)
                           v4))
                     (MAlonzo.Code.Function.du176
                        (let v11
                               = coe
                                   MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d164 v0 in
                         let v12
                               = coe
                                   MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166 v0 in
                         let v13
                               = coe
                                   MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d170 v0 in
                         let v14
                               = coe
                                   MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d172 v0 in
                         let v15
                               = coe
                                   MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d174 v0 in
                         let v16
                               = coe
                                   MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d60 v15 in
                         MAlonzo.Code.Relation.Binary.Core.d516
                           (MAlonzo.Code.Algebra.Structures.d140
                              (MAlonzo.Code.Algebra.Structures.d454
                                 (MAlonzo.Code.Algebra.Structures.d1542
                                    (MAlonzo.Code.Algebra.Structures.d1728
                                       (MAlonzo.Code.Algebra.Structures.du2214
                                          v11 v12 v13 v14 v16)))))
                           (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                              v0
                              (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                                 v0 v1 v5)
                              (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                                 v0 v3 v5)))
                        (let v11
                               = coe
                                   MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d164 v0 in
                         let v12
                               = coe
                                   MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166 v0 in
                         let v13
                               = coe
                                   MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d170 v0 in
                         let v14
                               = coe
                                   MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d172 v0 in
                         let v15
                               = coe
                                   MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d174 v0 in
                         let v16
                               = coe
                                   MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d60 v15 in
                         MAlonzo.Code.Algebra.Structures.d144
                           (MAlonzo.Code.Algebra.Structures.d454
                              (MAlonzo.Code.Algebra.Structures.d1542
                                 (MAlonzo.Code.Algebra.Structures.d1728
                                    (MAlonzo.Code.Algebra.Structures.du2214 v11 v12 v13 v14 v16))))
                           (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                              v0
                              (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                                 v0 v1 v5)
                              (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                                 v0 v3 v5))
                           (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                              v0
                              (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                                 v0 v1 v5)
                              (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                                 v0 v3 v5))
                           (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d164
                              v0
                              (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d164
                                 v0
                                 (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                                    v0
                                    (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                                       v0 v1 v5)
                                    v4)
                                 (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                                    v0 v2
                                    (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                                       v0 v3 v5)))
                              (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                                 v0 v2 v4))
                           (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d164
                              v0
                              (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                                 v0
                                 (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                                    v0 v1 v5)
                                 v4)
                              (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d164
                                 v0
                                 (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                                    v0 v2
                                    (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                                       v0 v3 v5))
                                 (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                                    v0 v2 v4))))
                        (let v11
                               = coe
                                   MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d164 v0 in
                         let v12
                               = coe
                                   MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166 v0 in
                         let v13
                               = coe
                                   MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d170 v0 in
                         let v14
                               = coe
                                   MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d172 v0 in
                         let v15
                               = coe
                                   MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d174 v0 in
                         let v16
                               = coe
                                   MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d60 v15 in
                         MAlonzo.Code.Algebra.Structures.d142
                           (MAlonzo.Code.Algebra.Structures.d454
                              (MAlonzo.Code.Algebra.Structures.d1542
                                 (MAlonzo.Code.Algebra.Structures.d1728
                                    (MAlonzo.Code.Algebra.Structures.du2214 v11 v12 v13 v14 v16))))
                           (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                              v0
                              (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                                 v0 v1 v5)
                              v4)
                           (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                              v0 v2
                              (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                                 v0 v3 v5))
                           (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                              v0 v2 v4)))
                     (let v11
                            = let v11
                                    = coe
                                        MAlonzo.Code.Algebra.C463
                                        (coe
                                           MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d164
                                           v0)
                                        (coe
                                           MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                                           v0)
                                        (coe
                                           MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d170
                                           v0)
                                        (coe
                                           MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d172
                                           v0)
                                        (coe
                                           MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d60
                                           (coe
                                              MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d174
                                              v0)) in
                              let v12 = coe MAlonzo.Code.Algebra.du984 v11 in
                              let v13
                                    = coe
                                        MAlonzo.Code.Algebra.C333
                                        (coe MAlonzo.Code.Algebra.d712 v12)
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
                           v0
                           (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                              v0
                              (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                                 v0 v1 v5)
                              (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                                 v0 v3 v5))
                           (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d164
                              v0
                              (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                                 v0
                                 (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                                    v0 v1 v5)
                                 v4)
                              (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d164
                                 v0
                                 (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                                    v0 v2
                                    (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                                       v0 v3 v5))
                                 (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                                    v0 v2 v4))))
                        (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d164
                           v0
                           (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d164
                              v0
                              (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                                 v0
                                 (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                                    v0 v1 v5)
                                 (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                                    v0 v3 v5))
                              (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                                 v0
                                 (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                                    v0 v1 v5)
                                 v4))
                           (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d164
                              v0
                              (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                                 v0 v2
                                 (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                                    v0 v3 v5))
                              (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                                 v0 v2 v4)))
                        (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                           v0
                           (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d164
                              v0
                              (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                                 v0 v1 v5)
                              v2)
                           (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d164
                              v0
                              (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                                 v0 v3 v5)
                              v4))
                        (MAlonzo.Code.Function.du158
                           (let v12
                                  = coe
                                      MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d164
                                      v0 in
                            let v13
                                  = coe
                                      MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                                      v0 in
                            let v14
                                  = coe
                                      MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d170
                                      v0 in
                            let v15
                                  = coe
                                      MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d172
                                      v0 in
                            let v16
                                  = coe
                                      MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d174
                                      v0 in
                            let v17
                                  = coe
                                      MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d60
                                      v16 in
                            MAlonzo.Code.Relation.Binary.Core.d518
                              (MAlonzo.Code.Algebra.Structures.d140
                                 (MAlonzo.Code.Algebra.Structures.d454
                                    (MAlonzo.Code.Algebra.Structures.d1542
                                       (MAlonzo.Code.Algebra.Structures.d1728
                                          (MAlonzo.Code.Algebra.Structures.du2214
                                             v12 v13 v14 v15 v17)))))
                              (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d164
                                 v0
                                 (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d164
                                    v0
                                    (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                                       v0
                                       (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                                          v0 v1 v5)
                                       (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                                          v0 v3 v5))
                                    (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                                       v0
                                       (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                                          v0 v1 v5)
                                       v4))
                                 (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d164
                                    v0
                                    (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                                       v0 v2
                                       (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                                          v0 v3 v5))
                                    (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                                       v0 v2 v4)))
                              (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d164
                                 v0
                                 (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                                    v0
                                    (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                                       v0 v1 v5)
                                    (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                                       v0 v3 v5))
                                 (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d164
                                    v0
                                    (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                                       v0
                                       (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                                          v0 v1 v5)
                                       v4)
                                    (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d164
                                       v0
                                       (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                                          v0 v2
                                          (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                                             v0 v3 v5))
                                       (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                                          v0 v2 v4)))))
                           (let v12
                                  = coe
                                      MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d164
                                      v0 in
                            let v13
                                  = coe
                                      MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                                      v0 in
                            let v14
                                  = coe
                                      MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d170
                                      v0 in
                            let v15
                                  = coe
                                      MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d172
                                      v0 in
                            let v16
                                  = coe
                                      MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d174
                                      v0 in
                            let v17
                                  = coe
                                      MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d60
                                      v16 in
                            MAlonzo.Code.Algebra.Structures.d142
                              (MAlonzo.Code.Algebra.Structures.d454
                                 (MAlonzo.Code.Algebra.Structures.d1542
                                    (MAlonzo.Code.Algebra.Structures.d1728
                                       (MAlonzo.Code.Algebra.Structures.du2214
                                          v12 v13 v14 v15 v17))))
                              (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                                 v0
                                 (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                                    v0 v1 v5)
                                 (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                                    v0 v3 v5))
                              (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                                 v0
                                 (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                                    v0 v1 v5)
                                 v4)
                              (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d164
                                 v0
                                 (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                                    v0 v2
                                    (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                                       v0 v3 v5))
                                 (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                                    v0 v2 v4))))
                        (let v12
                               = let v12
                                       = coe
                                           MAlonzo.Code.Algebra.C463
                                           (coe
                                              MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d164
                                              v0)
                                           (coe
                                              MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                                              v0)
                                           (coe
                                              MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d170
                                              v0)
                                           (coe
                                              MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d172
                                              v0)
                                           (coe
                                              MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d60
                                              (coe
                                                 MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d174
                                                 v0)) in
                                 let v13 = coe MAlonzo.Code.Algebra.du984 v12 in
                                 let v14
                                       = coe
                                           MAlonzo.Code.Algebra.C333
                                           (coe MAlonzo.Code.Algebra.d712 v13)
                                           (coe MAlonzo.Code.Algebra.d714 v13)
                                           (coe MAlonzo.Code.Algebra.d716 v13)
                                           (coe MAlonzo.Code.Algebra.d718 v13)
                                           (coe
                                              MAlonzo.Code.Algebra.Structures.d1728
                                              (coe MAlonzo.Code.Algebra.d720 v13)) in
                                 let v15
                                       = coe
                                           MAlonzo.Code.Algebra.C97
                                           (coe MAlonzo.Code.Algebra.d616 v14)
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
                              v0
                              (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d164
                                 v0
                                 (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                                    v0
                                    (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                                       v0 v1 v5)
                                    (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                                       v0 v3 v5))
                                 (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                                    v0
                                    (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                                       v0 v1 v5)
                                    v4))
                              (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d164
                                 v0
                                 (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                                    v0 v2
                                    (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                                       v0 v3 v5))
                                 (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                                    v0 v2 v4)))
                           (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d164
                              v0
                              (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                                 v0
                                 (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                                    v0 v1 v5)
                                 (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d164
                                    v0
                                    (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                                       v0 v3 v5)
                                    v4))
                              (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                                 v0 v2
                                 (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d164
                                    v0
                                    (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                                       v0 v3 v5)
                                    v4)))
                           (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                              v0
                              (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d164
                                 v0
                                 (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                                    v0 v1 v5)
                                 v2)
                              (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d164
                                 v0
                                 (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                                    v0 v3 v5)
                                 v4))
                           (MAlonzo.Code.Function.du158
                              (let v13
                                     = coe
                                         MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d164
                                         v0 in
                               let v14
                                     = coe
                                         MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                                         v0 in
                               let v15
                                     = coe
                                         MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d170
                                         v0 in
                               let v16
                                     = coe
                                         MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d172
                                         v0 in
                               let v17
                                     = coe
                                         MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d174
                                         v0 in
                               let v18
                                     = coe
                                         MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d60
                                         v17 in
                               MAlonzo.Code.Relation.Binary.Core.d518
                                 (MAlonzo.Code.Algebra.Structures.d140
                                    (MAlonzo.Code.Algebra.Structures.d454
                                       (MAlonzo.Code.Algebra.Structures.d1542
                                          (MAlonzo.Code.Algebra.Structures.d1728
                                             (MAlonzo.Code.Algebra.Structures.du2214
                                                v13 v14 v15 v16 v18)))))
                                 (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d164
                                    v0
                                    (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                                       v0
                                       (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                                          v0 v1 v5)
                                       (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d164
                                          v0
                                          (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                                             v0 v3 v5)
                                          v4))
                                    (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                                       v0 v2
                                       (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d164
                                          v0
                                          (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                                             v0 v3 v5)
                                          v4)))
                                 (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d164
                                    v0
                                    (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d164
                                       v0
                                       (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                                          v0
                                          (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                                             v0 v1 v5)
                                          (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                                             v0 v3 v5))
                                       (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                                          v0
                                          (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                                             v0 v1 v5)
                                          v4))
                                    (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d164
                                       v0
                                       (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                                          v0 v2
                                          (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                                             v0 v3 v5))
                                       (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                                          v0 v2 v4))))
                              (MAlonzo.Code.Function.du176
                                 (MAlonzo.Code.Data.Product.d26
                                    (let v13
                                           = coe
                                               MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d164
                                               v0 in
                                     let v14
                                           = coe
                                               MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                                               v0 in
                                     let v15
                                           = coe
                                               MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d174
                                               v0 in
                                     MAlonzo.Code.Algebra.Structures.du2190
                                       v13 v14
                                       (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d60
                                          v15))
                                    (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                                       v0 v1 v5)
                                    (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                                       v0 v3 v5)
                                    v4)
                                 (let v13
                                        = coe
                                            MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d164
                                            v0 in
                                  let v14
                                        = coe
                                            MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                                            v0 in
                                  let v15
                                        = coe
                                            MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d170
                                            v0 in
                                  let v16
                                        = coe
                                            MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d172
                                            v0 in
                                  let v17
                                        = coe
                                            MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d174
                                            v0 in
                                  let v18
                                        = coe
                                            MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d60
                                            v17 in
                                  MAlonzo.Code.Algebra.Structures.d144
                                    (MAlonzo.Code.Algebra.Structures.d454
                                       (MAlonzo.Code.Algebra.Structures.d1542
                                          (MAlonzo.Code.Algebra.Structures.d1728
                                             (MAlonzo.Code.Algebra.Structures.du2214
                                                v13 v14 v15 v16 v18))))
                                    (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                                       v0
                                       (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                                          v0 v1 v5)
                                       (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d164
                                          v0
                                          (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                                             v0 v3 v5)
                                          v4))
                                    (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d164
                                       v0
                                       (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                                          v0
                                          (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                                             v0 v1 v5)
                                          (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                                             v0 v3 v5))
                                       (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                                          v0
                                          (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                                             v0 v1 v5)
                                          v4))
                                    (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                                       v0 v2
                                       (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d164
                                          v0
                                          (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                                             v0 v3 v5)
                                          v4))
                                    (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d164
                                       v0
                                       (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                                          v0 v2
                                          (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                                             v0 v3 v5))
                                       (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                                          v0 v2 v4)))
                                 (MAlonzo.Code.Data.Product.d26
                                    (let v13
                                           = coe
                                               MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d164
                                               v0 in
                                     let v14
                                           = coe
                                               MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                                               v0 in
                                     let v15
                                           = coe
                                               MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d174
                                               v0 in
                                     MAlonzo.Code.Algebra.Structures.du2190
                                       v13 v14
                                       (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d60
                                          v15))
                                    v2
                                    (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                                       v0 v3 v5)
                                    v4)))
                           (let v13
                                  = let v13
                                          = coe
                                              MAlonzo.Code.Algebra.C463
                                              (coe
                                                 MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d164
                                                 v0)
                                              (coe
                                                 MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                                                 v0)
                                              (coe
                                                 MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d170
                                                 v0)
                                              (coe
                                                 MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d172
                                                 v0)
                                              (coe
                                                 MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d60
                                                 (coe
                                                    MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d174
                                                    v0)) in
                                    let v14 = coe MAlonzo.Code.Algebra.du984 v13 in
                                    let v15
                                          = coe
                                              MAlonzo.Code.Algebra.C333
                                              (coe MAlonzo.Code.Algebra.d712 v14)
                                              (coe MAlonzo.Code.Algebra.d714 v14)
                                              (coe MAlonzo.Code.Algebra.d716 v14)
                                              (coe MAlonzo.Code.Algebra.d718 v14)
                                              (coe
                                                 MAlonzo.Code.Algebra.Structures.d1728
                                                 (coe MAlonzo.Code.Algebra.d720 v14)) in
                                    let v16
                                          = coe
                                              MAlonzo.Code.Algebra.C97
                                              (coe MAlonzo.Code.Algebra.d616 v15)
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
                                 v0
                                 (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                                    v0
                                    (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                                       v0 v1 v5)
                                    (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d164
                                       v0
                                       (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                                          v0 v3 v5)
                                       v4))
                                 (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                                    v0 v2
                                    (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d164
                                       v0
                                       (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                                          v0 v3 v5)
                                       v4)))
                              (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                                 v0
                                 (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d164
                                    v0
                                    (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                                       v0 v1 v5)
                                    v2)
                                 (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d164
                                    v0
                                    (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                                       v0 v3 v5)
                                    v4))
                              (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                                 v0
                                 (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d164
                                    v0
                                    (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                                       v0 v1 v5)
                                    v2)
                                 (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d164
                                    v0
                                    (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                                       v0 v3 v5)
                                    v4))
                              (MAlonzo.Code.Function.du158
                                 (let v14
                                        = coe
                                            MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d164
                                            v0 in
                                  let v15
                                        = coe
                                            MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                                            v0 in
                                  let v16
                                        = coe
                                            MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d170
                                            v0 in
                                  let v17
                                        = coe
                                            MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d172
                                            v0 in
                                  let v18
                                        = coe
                                            MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d174
                                            v0 in
                                  let v19
                                        = coe
                                            MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d60
                                            v18 in
                                  MAlonzo.Code.Relation.Binary.Core.d518
                                    (MAlonzo.Code.Algebra.Structures.d140
                                       (MAlonzo.Code.Algebra.Structures.d454
                                          (MAlonzo.Code.Algebra.Structures.d1542
                                             (MAlonzo.Code.Algebra.Structures.d1728
                                                (MAlonzo.Code.Algebra.Structures.du2214
                                                   v14 v15 v16 v17 v19)))))
                                    (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                                       v0
                                       (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d164
                                          v0
                                          (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                                             v0 v1 v5)
                                          v2)
                                       (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d164
                                          v0
                                          (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                                             v0 v3 v5)
                                          v4))
                                    (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d164
                                       v0
                                       (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                                          v0
                                          (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                                             v0 v1 v5)
                                          (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d164
                                             v0
                                             (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                                                v0 v3 v5)
                                             v4))
                                       (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                                          v0 v2
                                          (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d164
                                             v0
                                             (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                                                v0 v3 v5)
                                             v4))))
                                 (MAlonzo.Code.Data.Product.d28
                                    (let v14
                                           = coe
                                               MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d164
                                               v0 in
                                     let v15
                                           = coe
                                               MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                                               v0 in
                                     let v16
                                           = coe
                                               MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d174
                                               v0 in
                                     MAlonzo.Code.Algebra.Structures.du2190
                                       v14 v15
                                       (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d60
                                          v16))
                                    (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d164
                                       v0
                                       (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                                          v0 v3 v5)
                                       v4)
                                    (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                                       v0 v1 v5)
                                    v2))
                              (let v14
                                     = let v14
                                             = coe
                                                 MAlonzo.Code.Algebra.C463
                                                 (coe
                                                    MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d164
                                                    v0)
                                                 (coe
                                                    MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                                                    v0)
                                                 (coe
                                                    MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d170
                                                    v0)
                                                 (coe
                                                    MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d172
                                                    v0)
                                                 (coe
                                                    MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d60
                                                    (coe
                                                       MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d174
                                                       v0)) in
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
                               let v15
                                     = coe
                                         MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                                         v0
                                         (coe
                                            MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d164
                                            v0
                                            (coe
                                               MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                                               v0 v1 v5)
                                            v2)
                                         (coe
                                            MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d164
                                            v0
                                            (coe
                                               MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                                               v0 v3 v5)
                                            v4) in
                               MAlonzo.Code.Relation.Binary.PreorderReasoning.C56
                                 (MAlonzo.Code.Relation.Binary.d38
                                    (MAlonzo.Code.Relation.Binary.d92
                                       (MAlonzo.Code.Relation.Binary.du150 v14))
                                    v15 v15
                                    (MAlonzo.Code.Relation.Binary.Core.d516
                                       (MAlonzo.Code.Relation.Binary.d36
                                          (MAlonzo.Code.Relation.Binary.d92
                                             (MAlonzo.Code.Relation.Binary.du150 v14)))
                                       v15)))))))))))
name276 = "Algebra.RingSolver.Lemmas._.lem\8321\8242"
d276 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 = du276 v4 v6 v8 v10
du276 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Relation.Binary.PreorderReasoning.d62
      (let v4
             = let v4
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
               let v5 = coe MAlonzo.Code.Algebra.du984 v4 in
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
         (MAlonzo.Code.Relation.Binary.du150 v4)
         (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
            v0
            (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
               v0 v1 v2)
            v3)
         (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
            v0 v1
            (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
               v0 v2 v3))
         (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
            v0
            (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
               v0 v1 v3)
            v2)
         (let v5
                = coe
                    MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d164 v0 in
          let v6
                = coe
                    MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166 v0 in
          let v7
                = coe
                    MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d170 v0 in
          let v8
                = coe
                    MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d172 v0 in
          let v9
                = coe
                    MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d174 v0 in
          let v10
                = coe
                    MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d60 v9 in
          MAlonzo.Code.Algebra.Structures.d142
            (MAlonzo.Code.Algebra.Structures.d294
               (MAlonzo.Code.Algebra.Structures.d1544
                  (MAlonzo.Code.Algebra.Structures.d1728
                     (MAlonzo.Code.Algebra.Structures.du2214 v5 v6 v7 v8 v10))))
            v1 v2 v3)
         (let v5
                = let v5
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
                  coe
                    MAlonzo.Code.Relation.Binary.C143
                    (coe
                       MAlonzo.Code.Algebra.Structures.d140
                       (coe
                          MAlonzo.Code.Algebra.Structures.d294
                          (coe
                             MAlonzo.Code.Algebra.d100 (coe MAlonzo.Code.Algebra.du186 v8)))) in
          MAlonzo.Code.Relation.Binary.PreorderReasoning.du72
            (MAlonzo.Code.Relation.Binary.du150 v5)
            (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
               v0 v1
               (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                  v0 v2 v3))
            (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
               v0 v1
               (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                  v0 v3 v2))
            (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
               v0
               (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                  v0 v1 v3)
               v2)
            (MAlonzo.Code.Function.du176
               (let v6
                      = coe
                          MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d164 v0 in
                let v7
                      = coe
                          MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166 v0 in
                let v8
                      = coe
                          MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d170 v0 in
                let v9
                      = coe
                          MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d172 v0 in
                let v10
                      = coe
                          MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d174 v0 in
                let v11
                      = coe
                          MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d60 v10 in
                MAlonzo.Code.Relation.Binary.Core.d516
                  (MAlonzo.Code.Algebra.Structures.d140
                     (MAlonzo.Code.Algebra.Structures.d454
                        (MAlonzo.Code.Algebra.Structures.d1542
                           (MAlonzo.Code.Algebra.Structures.d1728
                              (MAlonzo.Code.Algebra.Structures.du2214 v6 v7 v8 v9 v11)))))
                  v1)
               (let v6
                      = coe
                          MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d164 v0 in
                let v7
                      = coe
                          MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166 v0 in
                let v8
                      = coe
                          MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d170 v0 in
                let v9
                      = coe
                          MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d172 v0 in
                let v10
                      = coe
                          MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d174 v0 in
                let v11
                      = coe
                          MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d60 v10 in
                MAlonzo.Code.Algebra.Structures.d144
                  (MAlonzo.Code.Algebra.Structures.d294
                     (MAlonzo.Code.Algebra.Structures.d1544
                        (MAlonzo.Code.Algebra.Structures.d1728
                           (MAlonzo.Code.Algebra.Structures.du2214 v6 v7 v8 v9 v11))))
                  v1 v1
                  (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                     v0 v2 v3)
                  (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                     v0 v3 v2))
               (MAlonzo.Code.Algebra.Structures.d458
                  (MAlonzo.Code.Algebra.Structures.d2112
                     (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d60
                        (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d174 v0)))
                  v2 v3))
            (let v6
                   = let v6
                           = coe
                               MAlonzo.Code.Algebra.C463
                               (coe MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d164 v0)
                               (coe MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166 v0)
                               (coe MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d170 v0)
                               (coe MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d172 v0)
                               (coe
                                  MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d60
                                  (coe
                                     MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d174
                                     v0)) in
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
                     coe
                       MAlonzo.Code.Relation.Binary.C143
                       (coe
                          MAlonzo.Code.Algebra.Structures.d140
                          (coe
                             MAlonzo.Code.Algebra.Structures.d294
                             (coe
                                MAlonzo.Code.Algebra.d100 (coe MAlonzo.Code.Algebra.du186 v9)))) in
             MAlonzo.Code.Relation.Binary.PreorderReasoning.du72
               (MAlonzo.Code.Relation.Binary.du150 v6)
               (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                  v0 v1
                  (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                     v0 v3 v2))
               (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                  v0
                  (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                     v0 v1 v3)
                  v2)
               (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                  v0
                  (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                     v0 v1 v3)
                  v2)
               (MAlonzo.Code.Function.du158
                  (let v7
                         = coe
                             MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d164 v0 in
                   let v8
                         = coe
                             MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166 v0 in
                   let v9
                         = coe
                             MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d170 v0 in
                   let v10
                         = coe
                             MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d172 v0 in
                   let v11
                         = coe
                             MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d174 v0 in
                   let v12
                         = coe
                             MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d60 v11 in
                   MAlonzo.Code.Relation.Binary.Core.d518
                     (MAlonzo.Code.Algebra.Structures.d140
                        (MAlonzo.Code.Algebra.Structures.d454
                           (MAlonzo.Code.Algebra.Structures.d1542
                              (MAlonzo.Code.Algebra.Structures.d1728
                                 (MAlonzo.Code.Algebra.Structures.du2214 v7 v8 v9 v10 v12)))))
                     (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                        v0
                        (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                           v0 v1 v3)
                        v2)
                     (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                        v0 v1
                        (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                           v0 v3 v2)))
                  (let v7
                         = coe
                             MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d164 v0 in
                   let v8
                         = coe
                             MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166 v0 in
                   let v9
                         = coe
                             MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d170 v0 in
                   let v10
                         = coe
                             MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d172 v0 in
                   let v11
                         = coe
                             MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d174 v0 in
                   let v12
                         = coe
                             MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d60 v11 in
                   MAlonzo.Code.Algebra.Structures.d142
                     (MAlonzo.Code.Algebra.Structures.d294
                        (MAlonzo.Code.Algebra.Structures.d1544
                           (MAlonzo.Code.Algebra.Structures.d1728
                              (MAlonzo.Code.Algebra.Structures.du2214 v7 v8 v9 v10 v12))))
                     v1 v3 v2))
               (let v7
                      = let v7
                              = coe
                                  MAlonzo.Code.Algebra.C463
                                  (coe
                                     MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d164 v0)
                                  (coe
                                     MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166 v0)
                                  (coe
                                     MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d170 v0)
                                  (coe
                                     MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d172 v0)
                                  (coe
                                     MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d60
                                     (coe
                                        MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d174
                                        v0)) in
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
                        coe
                          MAlonzo.Code.Relation.Binary.C143
                          (coe
                             MAlonzo.Code.Algebra.Structures.d140
                             (coe
                                MAlonzo.Code.Algebra.Structures.d294
                                (coe
                                   MAlonzo.Code.Algebra.d100
                                   (coe MAlonzo.Code.Algebra.du186 v10)))) in
                let v8
                      = coe
                          MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166 v0
                          (coe
                             MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166 v0 v1
                             v3)
                          v2 in
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
name278 = "Algebra.RingSolver.Lemmas._.lem\8321"
d278 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 = du278 v4 v6 v8 v10
du278 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Relation.Binary.PreorderReasoning.d62
      (let v4
             = let v4
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
               let v5 = coe MAlonzo.Code.Algebra.du984 v4 in
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
         (MAlonzo.Code.Relation.Binary.du150 v4)
         (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
            v0
            (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
               v0
               (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                  v0 v1 v2)
               v3)
            v3)
         (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
            v0
            (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
               v0
               (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                  v0 v1 v3)
               v2)
            v3)
         (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
            v0
            (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
               v0 v1 v3)
            (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
               v0 v2 v3))
         (MAlonzo.Code.Function.du176
            (du276 v0 v1 v2 v3)
            (let v5
                   = coe
                       MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d164 v0 in
             let v6
                   = coe
                       MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166 v0 in
             let v7
                   = coe
                       MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d170 v0 in
             let v8
                   = coe
                       MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d172 v0 in
             let v9
                   = coe
                       MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d174 v0 in
             let v10
                   = coe
                       MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d60 v9 in
             MAlonzo.Code.Algebra.Structures.d144
               (MAlonzo.Code.Algebra.Structures.d294
                  (MAlonzo.Code.Algebra.Structures.d1544
                     (MAlonzo.Code.Algebra.Structures.d1728
                        (MAlonzo.Code.Algebra.Structures.du2214 v5 v6 v7 v8 v10))))
               (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                  v0
                  (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                     v0 v1 v2)
                  v3)
               (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                  v0
                  (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                     v0 v1 v3)
                  v2)
               v3 v3)
            (let v5
                   = coe
                       MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d164 v0 in
             let v6
                   = coe
                       MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166 v0 in
             let v7
                   = coe
                       MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d170 v0 in
             let v8
                   = coe
                       MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d172 v0 in
             let v9
                   = coe
                       MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d174 v0 in
             let v10
                   = coe
                       MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d60 v9 in
             MAlonzo.Code.Relation.Binary.Core.d516
               (MAlonzo.Code.Algebra.Structures.d140
                  (MAlonzo.Code.Algebra.Structures.d454
                     (MAlonzo.Code.Algebra.Structures.d1542
                        (MAlonzo.Code.Algebra.Structures.d1728
                           (MAlonzo.Code.Algebra.Structures.du2214 v5 v6 v7 v8 v10)))))
               v3))
         (let v5
                = let v5
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
                  coe
                    MAlonzo.Code.Relation.Binary.C143
                    (coe
                       MAlonzo.Code.Algebra.Structures.d140
                       (coe
                          MAlonzo.Code.Algebra.Structures.d294
                          (coe
                             MAlonzo.Code.Algebra.d100 (coe MAlonzo.Code.Algebra.du186 v8)))) in
          MAlonzo.Code.Relation.Binary.PreorderReasoning.du72
            (MAlonzo.Code.Relation.Binary.du150 v5)
            (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
               v0
               (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                  v0
                  (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                     v0 v1 v3)
                  v2)
               v3)
            (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
               v0
               (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                  v0 v1 v3)
               (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                  v0 v2 v3))
            (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
               v0
               (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                  v0 v1 v3)
               (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                  v0 v2 v3))
            (let v6
                   = coe
                       MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d164 v0 in
             let v7
                   = coe
                       MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166 v0 in
             let v8
                   = coe
                       MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d170 v0 in
             let v9
                   = coe
                       MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d172 v0 in
             let v10
                   = coe
                       MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d174 v0 in
             let v11
                   = coe
                       MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d60 v10 in
             MAlonzo.Code.Algebra.Structures.d142
               (MAlonzo.Code.Algebra.Structures.d294
                  (MAlonzo.Code.Algebra.Structures.d1544
                     (MAlonzo.Code.Algebra.Structures.d1728
                        (MAlonzo.Code.Algebra.Structures.du2214 v6 v7 v8 v9 v11))))
               (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                  v0 v1 v3)
               v2 v3)
            (let v6
                   = let v6
                           = coe
                               MAlonzo.Code.Algebra.C463
                               (coe MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d164 v0)
                               (coe MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166 v0)
                               (coe MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d170 v0)
                               (coe MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d172 v0)
                               (coe
                                  MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d60
                                  (coe
                                     MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d174
                                     v0)) in
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
                     coe
                       MAlonzo.Code.Relation.Binary.C143
                       (coe
                          MAlonzo.Code.Algebra.Structures.d140
                          (coe
                             MAlonzo.Code.Algebra.Structures.d294
                             (coe
                                MAlonzo.Code.Algebra.d100 (coe MAlonzo.Code.Algebra.du186 v9)))) in
             let v7
                   = coe
                       MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166 v0
                       (coe
                          MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166 v0 v1
                          v3)
                       (coe
                          MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166 v0 v2
                          v3) in
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
name280 = "Algebra.RingSolver.Lemmas._.lem\8322"
d280 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 = du280 v4 v6 v7 v8 v9 v10
du280 v0 v1 v2 v3 v4 v5
  = coe
      MAlonzo.Code.Relation.Binary.PreorderReasoning.d62
      (let v6
             = let v6
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
               coe
                 MAlonzo.Code.Relation.Binary.C143
                 (coe
                    MAlonzo.Code.Algebra.Structures.d140
                    (coe
                       MAlonzo.Code.Algebra.Structures.d294
                       (coe
                          MAlonzo.Code.Algebra.d100 (coe MAlonzo.Code.Algebra.du186 v9)))) in
       MAlonzo.Code.Relation.Binary.PreorderReasoning.du72
         (MAlonzo.Code.Relation.Binary.du150 v6)
         (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
            v0
            (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d164
               v0
               (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                  v0 v1 v4)
               (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                  v0 v2 v3))
            v5)
         (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d164
            v0
            (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
               v0
               (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                  v0 v1 v4)
               v5)
            (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
               v0
               (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                  v0 v2 v3)
               v5))
         (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d164
            v0
            (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
               v0
               (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                  v0 v1 v5)
               v4)
            (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
               v0 v2
               (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                  v0 v3 v5)))
         (MAlonzo.Code.Data.Product.d28
            (let v7
                   = coe
                       MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d164 v0 in
             let v8
                   = coe
                       MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166 v0 in
             let v9
                   = coe
                       MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d174 v0 in
             MAlonzo.Code.Algebra.Structures.du2190
               v7 v8
               (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d60 v9))
            v5
            (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
               v0 v1 v4)
            (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
               v0 v2 v3))
         (let v7
                = let v7
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
            (MAlonzo.Code.Relation.Binary.du150 v7)
            (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d164
               v0
               (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                  v0
                  (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                     v0 v1 v4)
                  v5)
               (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                  v0
                  (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                     v0 v2 v3)
                  v5))
            (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d164
               v0
               (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                  v0 v1
                  (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                     v0 v4 v5))
               (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                  v0 v2
                  (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                     v0 v3 v5)))
            (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d164
               v0
               (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                  v0
                  (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                     v0 v1 v5)
                  v4)
               (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                  v0 v2
                  (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                     v0 v3 v5)))
            (MAlonzo.Code.Function.du176
               (let v8
                      = coe
                          MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d164 v0 in
                let v9
                      = coe
                          MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166 v0 in
                let v10
                      = coe
                          MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d170 v0 in
                let v11
                      = coe
                          MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d172 v0 in
                let v12
                      = coe
                          MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d174 v0 in
                let v13
                      = coe
                          MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d60 v12 in
                MAlonzo.Code.Algebra.Structures.d142
                  (MAlonzo.Code.Algebra.Structures.d294
                     (MAlonzo.Code.Algebra.Structures.d1544
                        (MAlonzo.Code.Algebra.Structures.d1728
                           (MAlonzo.Code.Algebra.Structures.du2214 v8 v9 v10 v11 v13))))
                  v1 v4 v5)
               (let v8
                      = coe
                          MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d164 v0 in
                let v9
                      = coe
                          MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166 v0 in
                let v10
                      = coe
                          MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d170 v0 in
                let v11
                      = coe
                          MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d172 v0 in
                let v12
                      = coe
                          MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d174 v0 in
                let v13
                      = coe
                          MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d60 v12 in
                MAlonzo.Code.Algebra.Structures.d144
                  (MAlonzo.Code.Algebra.Structures.d454
                     (MAlonzo.Code.Algebra.Structures.d1542
                        (MAlonzo.Code.Algebra.Structures.d1728
                           (MAlonzo.Code.Algebra.Structures.du2214 v8 v9 v10 v11 v13))))
                  (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                     v0
                     (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                        v0 v1 v4)
                     v5)
                  (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                     v0 v1
                     (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                        v0 v4 v5))
                  (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                     v0
                     (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                        v0 v2 v3)
                     v5)
                  (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                     v0 v2
                     (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                        v0 v3 v5)))
               (let v8
                      = coe
                          MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d164 v0 in
                let v9
                      = coe
                          MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166 v0 in
                let v10
                      = coe
                          MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d170 v0 in
                let v11
                      = coe
                          MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d172 v0 in
                let v12
                      = coe
                          MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d174 v0 in
                let v13
                      = coe
                          MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d60 v12 in
                MAlonzo.Code.Algebra.Structures.d142
                  (MAlonzo.Code.Algebra.Structures.d294
                     (MAlonzo.Code.Algebra.Structures.d1544
                        (MAlonzo.Code.Algebra.Structures.d1728
                           (MAlonzo.Code.Algebra.Structures.du2214 v8 v9 v10 v11 v13))))
                  v2 v3 v5))
            (let v8
                   = let v8
                           = coe
                               MAlonzo.Code.Algebra.C463
                               (coe MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d164 v0)
                               (coe MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166 v0)
                               (coe MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d170 v0)
                               (coe MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d172 v0)
                               (coe
                                  MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d60
                                  (coe
                                     MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d174
                                     v0)) in
                     let v9 = coe MAlonzo.Code.Algebra.du984 v8 in
                     let v10
                           = coe
                               MAlonzo.Code.Algebra.C333 (coe MAlonzo.Code.Algebra.d712 v9)
                               (coe MAlonzo.Code.Algebra.d714 v9)
                               (coe MAlonzo.Code.Algebra.d716 v9)
                               (coe MAlonzo.Code.Algebra.d718 v9)
                               (coe
                                  MAlonzo.Code.Algebra.Structures.d1728
                                  (coe MAlonzo.Code.Algebra.d720 v9)) in
                     let v11
                           = coe
                               MAlonzo.Code.Algebra.C97 (coe MAlonzo.Code.Algebra.d616 v10)
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
               (MAlonzo.Code.Relation.Binary.du150 v8)
               (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d164
                  v0
                  (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                     v0 v1
                     (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                        v0 v4 v5))
                  (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                     v0 v2
                     (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                        v0 v3 v5)))
               (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d164
                  v0
                  (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                     v0 v1
                     (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                        v0 v5 v4))
                  (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                     v0 v2
                     (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                        v0 v3 v5)))
               (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d164
                  v0
                  (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                     v0
                     (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                        v0 v1 v5)
                     v4)
                  (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                     v0 v2
                     (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                        v0 v3 v5)))
               (MAlonzo.Code.Function.du176
                  (MAlonzo.Code.Function.du176
                     (let v9
                            = coe
                                MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d164 v0 in
                      let v10
                            = coe
                                MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166 v0 in
                      let v11
                            = coe
                                MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d170 v0 in
                      let v12
                            = coe
                                MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d172 v0 in
                      let v13
                            = coe
                                MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d174 v0 in
                      let v14
                            = coe
                                MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d60 v13 in
                      MAlonzo.Code.Relation.Binary.Core.d516
                        (MAlonzo.Code.Algebra.Structures.d140
                           (MAlonzo.Code.Algebra.Structures.d454
                              (MAlonzo.Code.Algebra.Structures.d1542
                                 (MAlonzo.Code.Algebra.Structures.d1728
                                    (MAlonzo.Code.Algebra.Structures.du2214 v9 v10 v11 v12 v14)))))
                        v1)
                     (let v9
                            = coe
                                MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d164 v0 in
                      let v10
                            = coe
                                MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166 v0 in
                      let v11
                            = coe
                                MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d170 v0 in
                      let v12
                            = coe
                                MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d172 v0 in
                      let v13
                            = coe
                                MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d174 v0 in
                      let v14
                            = coe
                                MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d60 v13 in
                      MAlonzo.Code.Algebra.Structures.d144
                        (MAlonzo.Code.Algebra.Structures.d294
                           (MAlonzo.Code.Algebra.Structures.d1544
                              (MAlonzo.Code.Algebra.Structures.d1728
                                 (MAlonzo.Code.Algebra.Structures.du2214 v9 v10 v11 v12 v14))))
                        v1 v1
                        (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                           v0 v4 v5)
                        (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                           v0 v5 v4))
                     (MAlonzo.Code.Algebra.Structures.d458
                        (MAlonzo.Code.Algebra.Structures.d2112
                           (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d60
                              (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d174 v0)))
                        v4 v5))
                  (let v9
                         = coe
                             MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d164 v0 in
                   let v10
                         = coe
                             MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166 v0 in
                   let v11
                         = coe
                             MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d170 v0 in
                   let v12
                         = coe
                             MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d172 v0 in
                   let v13
                         = coe
                             MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d174 v0 in
                   let v14
                         = coe
                             MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d60 v13 in
                   MAlonzo.Code.Algebra.Structures.d144
                     (MAlonzo.Code.Algebra.Structures.d454
                        (MAlonzo.Code.Algebra.Structures.d1542
                           (MAlonzo.Code.Algebra.Structures.d1728
                              (MAlonzo.Code.Algebra.Structures.du2214 v9 v10 v11 v12 v14))))
                     (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                        v0 v1
                        (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                           v0 v4 v5))
                     (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                        v0 v1
                        (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                           v0 v5 v4))
                     (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                        v0 v2
                        (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                           v0 v3 v5))
                     (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                        v0 v2
                        (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                           v0 v3 v5)))
                  (let v9
                         = coe
                             MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d164 v0 in
                   let v10
                         = coe
                             MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166 v0 in
                   let v11
                         = coe
                             MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d170 v0 in
                   let v12
                         = coe
                             MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d172 v0 in
                   let v13
                         = coe
                             MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d174 v0 in
                   let v14
                         = coe
                             MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d60 v13 in
                   MAlonzo.Code.Relation.Binary.Core.d516
                     (MAlonzo.Code.Algebra.Structures.d140
                        (MAlonzo.Code.Algebra.Structures.d454
                           (MAlonzo.Code.Algebra.Structures.d1542
                              (MAlonzo.Code.Algebra.Structures.d1728
                                 (MAlonzo.Code.Algebra.Structures.du2214 v9 v10 v11 v12 v14)))))
                     (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                        v0 v2
                        (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                           v0 v3 v5))))
               (let v9
                      = let v9
                              = coe
                                  MAlonzo.Code.Algebra.C463
                                  (coe
                                     MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d164 v0)
                                  (coe
                                     MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166 v0)
                                  (coe
                                     MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d170 v0)
                                  (coe
                                     MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d172 v0)
                                  (coe
                                     MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d60
                                     (coe
                                        MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d174
                                        v0)) in
                        let v10 = coe MAlonzo.Code.Algebra.du984 v9 in
                        let v11
                              = coe
                                  MAlonzo.Code.Algebra.C333 (coe MAlonzo.Code.Algebra.d712 v10)
                                  (coe MAlonzo.Code.Algebra.d714 v10)
                                  (coe MAlonzo.Code.Algebra.d716 v10)
                                  (coe MAlonzo.Code.Algebra.d718 v10)
                                  (coe
                                     MAlonzo.Code.Algebra.Structures.d1728
                                     (coe MAlonzo.Code.Algebra.d720 v10)) in
                        let v12
                              = coe
                                  MAlonzo.Code.Algebra.C97 (coe MAlonzo.Code.Algebra.d616 v11)
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
                MAlonzo.Code.Relation.Binary.PreorderReasoning.du72
                  (MAlonzo.Code.Relation.Binary.du150 v9)
                  (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d164
                     v0
                     (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                        v0 v1
                        (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                           v0 v5 v4))
                     (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                        v0 v2
                        (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                           v0 v3 v5)))
                  (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d164
                     v0
                     (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                        v0
                        (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                           v0 v1 v5)
                        v4)
                     (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                        v0 v2
                        (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                           v0 v3 v5)))
                  (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d164
                     v0
                     (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                        v0
                        (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                           v0 v1 v5)
                        v4)
                     (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                        v0 v2
                        (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                           v0 v3 v5)))
                  (MAlonzo.Code.Function.du158
                     (let v10
                            = coe
                                MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d164 v0 in
                      let v11
                            = coe
                                MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166 v0 in
                      let v12
                            = coe
                                MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d170 v0 in
                      let v13
                            = coe
                                MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d172 v0 in
                      let v14
                            = coe
                                MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d174 v0 in
                      let v15
                            = coe
                                MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d60 v14 in
                      MAlonzo.Code.Relation.Binary.Core.d518
                        (MAlonzo.Code.Algebra.Structures.d140
                           (MAlonzo.Code.Algebra.Structures.d454
                              (MAlonzo.Code.Algebra.Structures.d1542
                                 (MAlonzo.Code.Algebra.Structures.d1728
                                    (MAlonzo.Code.Algebra.Structures.du2214 v10 v11 v12 v13 v15)))))
                        (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d164
                           v0
                           (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                              v0
                              (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                                 v0 v1 v5)
                              v4)
                           (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                              v0 v2
                              (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                                 v0 v3 v5)))
                        (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d164
                           v0
                           (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                              v0 v1
                              (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                                 v0 v5 v4))
                           (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                              v0 v2
                              (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                                 v0 v3 v5))))
                     (MAlonzo.Code.Function.du176
                        (let v10
                               = coe
                                   MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d164 v0 in
                         let v11
                               = coe
                                   MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166 v0 in
                         let v12
                               = coe
                                   MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d170 v0 in
                         let v13
                               = coe
                                   MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d172 v0 in
                         let v14
                               = coe
                                   MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d174 v0 in
                         let v15
                               = coe
                                   MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d60 v14 in
                         MAlonzo.Code.Algebra.Structures.d142
                           (MAlonzo.Code.Algebra.Structures.d294
                              (MAlonzo.Code.Algebra.Structures.d1544
                                 (MAlonzo.Code.Algebra.Structures.d1728
                                    (MAlonzo.Code.Algebra.Structures.du2214 v10 v11 v12 v13 v15))))
                           v1 v5 v4)
                        (let v10
                               = coe
                                   MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d164 v0 in
                         let v11
                               = coe
                                   MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166 v0 in
                         let v12
                               = coe
                                   MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d170 v0 in
                         let v13
                               = coe
                                   MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d172 v0 in
                         let v14
                               = coe
                                   MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d174 v0 in
                         let v15
                               = coe
                                   MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d60 v14 in
                         MAlonzo.Code.Algebra.Structures.d144
                           (MAlonzo.Code.Algebra.Structures.d454
                              (MAlonzo.Code.Algebra.Structures.d1542
                                 (MAlonzo.Code.Algebra.Structures.d1728
                                    (MAlonzo.Code.Algebra.Structures.du2214 v10 v11 v12 v13 v15))))
                           (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                              v0
                              (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                                 v0 v1 v5)
                              v4)
                           (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                              v0 v1
                              (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                                 v0 v5 v4))
                           (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                              v0 v2
                              (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                                 v0 v3 v5))
                           (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                              v0 v2
                              (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                                 v0 v3 v5)))
                        (let v10
                               = coe
                                   MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d164 v0 in
                         let v11
                               = coe
                                   MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166 v0 in
                         let v12
                               = coe
                                   MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d170 v0 in
                         let v13
                               = coe
                                   MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d172 v0 in
                         let v14
                               = coe
                                   MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d174 v0 in
                         let v15
                               = coe
                                   MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d60 v14 in
                         MAlonzo.Code.Relation.Binary.Core.d516
                           (MAlonzo.Code.Algebra.Structures.d140
                              (MAlonzo.Code.Algebra.Structures.d454
                                 (MAlonzo.Code.Algebra.Structures.d1542
                                    (MAlonzo.Code.Algebra.Structures.d1728
                                       (MAlonzo.Code.Algebra.Structures.du2214
                                          v10 v11 v12 v13 v15)))))
                           (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                              v0 v2
                              (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                                 v0 v3 v5)))))
                  (let v10
                         = let v10
                                 = coe
                                     MAlonzo.Code.Algebra.C463
                                     (coe
                                        MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d164
                                        v0)
                                     (coe
                                        MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                                        v0)
                                     (coe
                                        MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d170
                                        v0)
                                     (coe
                                        MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d172
                                        v0)
                                     (coe
                                        MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d60
                                        (coe
                                           MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d174
                                           v0)) in
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
                           coe
                             MAlonzo.Code.Relation.Binary.C143
                             (coe
                                MAlonzo.Code.Algebra.Structures.d140
                                (coe
                                   MAlonzo.Code.Algebra.Structures.d294
                                   (coe
                                      MAlonzo.Code.Algebra.d100
                                      (coe MAlonzo.Code.Algebra.du186 v13)))) in
                   let v11
                         = coe
                             MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d164 v0
                             (coe
                                MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166 v0
                                (coe
                                   MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166 v0 v1
                                   v5)
                                v4)
                             (coe
                                MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166 v0 v2
                                (coe
                                   MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166 v0 v3
                                   v5)) in
                   MAlonzo.Code.Relation.Binary.PreorderReasoning.C56
                     (MAlonzo.Code.Relation.Binary.d38
                        (MAlonzo.Code.Relation.Binary.d92
                           (MAlonzo.Code.Relation.Binary.du150 v10))
                        v11 v11
                        (MAlonzo.Code.Relation.Binary.Core.d516
                           (MAlonzo.Code.Relation.Binary.d36
                              (MAlonzo.Code.Relation.Binary.d92
                                 (MAlonzo.Code.Relation.Binary.du150 v10)))
                           v11)))))))
name284 = "Algebra.RingSolver.Lemmas.lemma\8325"
d284 v0 v1 v2 v3 v4 v5 v6 = du284 v4 v6
du284 v0 v1
  = coe
      MAlonzo.Code.Relation.Binary.PreorderReasoning.d62
      (let v2
             = let v2
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
               let v3 = coe MAlonzo.Code.Algebra.du984 v2 in
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
         (MAlonzo.Code.Relation.Binary.du150 v2)
         (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d164
            v0
            (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
               v0
               (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d164
                  v0
                  (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                     v0 (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d170 v0)
                     v1)
                  (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d172 v0))
               v1)
            (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d170 v0))
         (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d164
            v0
            (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
               v0
               (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d164
                  v0 (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d170 v0)
                  (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d172 v0))
               v1)
            (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d170 v0))
         v1
         (MAlonzo.Code.Function.du176
            (MAlonzo.Code.Function.du176
               (MAlonzo.Code.Function.du176
                  (MAlonzo.Code.Algebra.Structures.d2116
                     (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d60
                        (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d174 v0))
                     v1)
                  (let v3
                         = coe
                             MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d164 v0 in
                   let v4
                         = coe
                             MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166 v0 in
                   let v5
                         = coe
                             MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d170 v0 in
                   let v6
                         = coe
                             MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d172 v0 in
                   let v7
                         = coe
                             MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d174 v0 in
                   let v8
                         = coe
                             MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d60 v7 in
                   MAlonzo.Code.Algebra.Structures.d144
                     (MAlonzo.Code.Algebra.Structures.d454
                        (MAlonzo.Code.Algebra.Structures.d1542
                           (MAlonzo.Code.Algebra.Structures.d1728
                              (MAlonzo.Code.Algebra.Structures.du2214 v3 v4 v5 v6 v8))))
                     (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                        v0 (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d170 v0)
                        v1)
                     (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d170 v0)
                     (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d172 v0)
                     (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d172 v0))
                  (let v3
                         = coe
                             MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d164 v0 in
                   let v4
                         = coe
                             MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166 v0 in
                   let v5
                         = coe
                             MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d170 v0 in
                   let v6
                         = coe
                             MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d172 v0 in
                   let v7
                         = coe
                             MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d174 v0 in
                   let v8
                         = coe
                             MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d60 v7 in
                   MAlonzo.Code.Relation.Binary.Core.d516
                     (MAlonzo.Code.Algebra.Structures.d140
                        (MAlonzo.Code.Algebra.Structures.d454
                           (MAlonzo.Code.Algebra.Structures.d1542
                              (MAlonzo.Code.Algebra.Structures.d1728
                                 (MAlonzo.Code.Algebra.Structures.du2214 v3 v4 v5 v6 v8)))))
                     (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d172 v0)))
               (let v3
                      = coe
                          MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d164 v0 in
                let v4
                      = coe
                          MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166 v0 in
                let v5
                      = coe
                          MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d170 v0 in
                let v6
                      = coe
                          MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d172 v0 in
                let v7
                      = coe
                          MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d174 v0 in
                let v8
                      = coe
                          MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d60 v7 in
                MAlonzo.Code.Algebra.Structures.d144
                  (MAlonzo.Code.Algebra.Structures.d294
                     (MAlonzo.Code.Algebra.Structures.d1544
                        (MAlonzo.Code.Algebra.Structures.d1728
                           (MAlonzo.Code.Algebra.Structures.du2214 v3 v4 v5 v6 v8))))
                  (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d164
                     v0
                     (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                        v0 (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d170 v0)
                        v1)
                     (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d172 v0))
                  (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d164
                     v0 (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d170 v0)
                     (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d172 v0))
                  v1 v1)
               (let v3
                      = coe
                          MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d164 v0 in
                let v4
                      = coe
                          MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166 v0 in
                let v5
                      = coe
                          MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d170 v0 in
                let v6
                      = coe
                          MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d172 v0 in
                let v7
                      = coe
                          MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d174 v0 in
                let v8
                      = coe
                          MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d60 v7 in
                MAlonzo.Code.Relation.Binary.Core.d516
                  (MAlonzo.Code.Algebra.Structures.d140
                     (MAlonzo.Code.Algebra.Structures.d454
                        (MAlonzo.Code.Algebra.Structures.d1542
                           (MAlonzo.Code.Algebra.Structures.d1728
                              (MAlonzo.Code.Algebra.Structures.du2214 v3 v4 v5 v6 v8)))))
                  v1))
            (let v3
                   = coe
                       MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d164 v0 in
             let v4
                   = coe
                       MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166 v0 in
             let v5
                   = coe
                       MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d170 v0 in
             let v6
                   = coe
                       MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d172 v0 in
             let v7
                   = coe
                       MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d174 v0 in
             let v8
                   = coe
                       MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d60 v7 in
             MAlonzo.Code.Algebra.Structures.d144
               (MAlonzo.Code.Algebra.Structures.d454
                  (MAlonzo.Code.Algebra.Structures.d1542
                     (MAlonzo.Code.Algebra.Structures.d1728
                        (MAlonzo.Code.Algebra.Structures.du2214 v3 v4 v5 v6 v8))))
               (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                  v0
                  (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d164
                     v0
                     (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                        v0 (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d170 v0)
                        v1)
                     (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d172 v0))
                  v1)
               (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                  v0
                  (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d164
                     v0 (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d170 v0)
                     (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d172 v0))
                  v1)
               (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d170 v0)
               (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d170 v0))
            (let v3
                   = coe
                       MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d164 v0 in
             let v4
                   = coe
                       MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166 v0 in
             let v5
                   = coe
                       MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d170 v0 in
             let v6
                   = coe
                       MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d172 v0 in
             let v7
                   = coe
                       MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d174 v0 in
             let v8
                   = coe
                       MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d60 v7 in
             MAlonzo.Code.Relation.Binary.Core.d516
               (MAlonzo.Code.Algebra.Structures.d140
                  (MAlonzo.Code.Algebra.Structures.d454
                     (MAlonzo.Code.Algebra.Structures.d1542
                        (MAlonzo.Code.Algebra.Structures.d1728
                           (MAlonzo.Code.Algebra.Structures.du2214 v3 v4 v5 v6 v8)))))
               (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d170 v0)))
         (let v3
                = let v3
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
                  let v4 = coe MAlonzo.Code.Algebra.du984 v3 in
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
            (MAlonzo.Code.Relation.Binary.du150 v3)
            (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d164
               v0
               (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                  v0
                  (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d164
                     v0 (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d170 v0)
                     (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d172 v0))
                  v1)
               (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d170 v0))
            (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d164
               v0
               (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                  v0 (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d172 v0)
                  v1)
               (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d170 v0))
            v1
            (MAlonzo.Code.Function.du176
               (MAlonzo.Code.Function.du176
                  (MAlonzo.Code.Data.Product.d26
                     (let v4
                            = coe
                                MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d164 v0 in
                      let v5
                            = coe
                                MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166 v0 in
                      let v6
                            = coe
                                MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d170 v0 in
                      let v7
                            = coe
                                MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d172 v0 in
                      let v8
                            = coe
                                MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d174 v0 in
                      let v9
                            = coe
                                MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d60 v8 in
                      let v10
                            = coe MAlonzo.Code.Algebra.Structures.du2214 v4 v5 v6 v7 v9 in
                      let v11 = coe MAlonzo.Code.Algebra.Structures.d1728 v10 in
                      MAlonzo.Code.Algebra.Structures.du476
                        v4 v6 (MAlonzo.Code.Algebra.Structures.d1542 v11))
                     (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d172 v0))
                  (let v4
                         = coe
                             MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d164 v0 in
                   let v5
                         = coe
                             MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166 v0 in
                   let v6
                         = coe
                             MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d170 v0 in
                   let v7
                         = coe
                             MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d172 v0 in
                   let v8
                         = coe
                             MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d174 v0 in
                   let v9
                         = coe
                             MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d60 v8 in
                   MAlonzo.Code.Algebra.Structures.d144
                     (MAlonzo.Code.Algebra.Structures.d294
                        (MAlonzo.Code.Algebra.Structures.d1544
                           (MAlonzo.Code.Algebra.Structures.d1728
                              (MAlonzo.Code.Algebra.Structures.du2214 v4 v5 v6 v7 v9))))
                     (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d164
                        v0 (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d170 v0)
                        (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d172 v0))
                     (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d172 v0) v1
                     v1)
                  (let v4
                         = coe
                             MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d164 v0 in
                   let v5
                         = coe
                             MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166 v0 in
                   let v6
                         = coe
                             MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d170 v0 in
                   let v7
                         = coe
                             MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d172 v0 in
                   let v8
                         = coe
                             MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d174 v0 in
                   let v9
                         = coe
                             MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d60 v8 in
                   MAlonzo.Code.Relation.Binary.Core.d516
                     (MAlonzo.Code.Algebra.Structures.d140
                        (MAlonzo.Code.Algebra.Structures.d454
                           (MAlonzo.Code.Algebra.Structures.d1542
                              (MAlonzo.Code.Algebra.Structures.d1728
                                 (MAlonzo.Code.Algebra.Structures.du2214 v4 v5 v6 v7 v9)))))
                     v1))
               (let v4
                      = coe
                          MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d164 v0 in
                let v5
                      = coe
                          MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166 v0 in
                let v6
                      = coe
                          MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d170 v0 in
                let v7
                      = coe
                          MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d172 v0 in
                let v8
                      = coe
                          MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d174 v0 in
                let v9
                      = coe
                          MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d60 v8 in
                MAlonzo.Code.Algebra.Structures.d144
                  (MAlonzo.Code.Algebra.Structures.d454
                     (MAlonzo.Code.Algebra.Structures.d1542
                        (MAlonzo.Code.Algebra.Structures.d1728
                           (MAlonzo.Code.Algebra.Structures.du2214 v4 v5 v6 v7 v9))))
                  (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                     v0
                     (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d164
                        v0 (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d170 v0)
                        (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d172 v0))
                     v1)
                  (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                     v0 (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d172 v0)
                     v1)
                  (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d170 v0)
                  (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d170 v0))
               (let v4
                      = coe
                          MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d164 v0 in
                let v5
                      = coe
                          MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166 v0 in
                let v6
                      = coe
                          MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d170 v0 in
                let v7
                      = coe
                          MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d172 v0 in
                let v8
                      = coe
                          MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d174 v0 in
                let v9
                      = coe
                          MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d60 v8 in
                MAlonzo.Code.Relation.Binary.Core.d516
                  (MAlonzo.Code.Algebra.Structures.d140
                     (MAlonzo.Code.Algebra.Structures.d454
                        (MAlonzo.Code.Algebra.Structures.d1542
                           (MAlonzo.Code.Algebra.Structures.d1728
                              (MAlonzo.Code.Algebra.Structures.du2214 v4 v5 v6 v7 v9)))))
                  (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d170 v0)))
            (let v4
                   = let v4
                           = coe
                               MAlonzo.Code.Algebra.C463
                               (coe MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d164 v0)
                               (coe MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166 v0)
                               (coe MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d170 v0)
                               (coe MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d172 v0)
                               (coe
                                  MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d60
                                  (coe
                                     MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d174
                                     v0)) in
                     let v5 = coe MAlonzo.Code.Algebra.du984 v4 in
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
               (MAlonzo.Code.Relation.Binary.du150 v4)
               (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d164
                  v0
                  (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                     v0 (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d172 v0)
                     v1)
                  (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d170 v0))
               (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                  v0 (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d172 v0)
                  v1)
               v1
               (MAlonzo.Code.Data.Product.d28
                  (let v5
                         = coe
                             MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d164 v0 in
                   let v6
                         = coe
                             MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166 v0 in
                   let v7
                         = coe
                             MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d170 v0 in
                   let v8
                         = coe
                             MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d172 v0 in
                   let v9
                         = coe
                             MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d174 v0 in
                   let v10
                         = coe
                             MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d60 v9 in
                   let v11
                         = coe MAlonzo.Code.Algebra.Structures.du2214 v5 v6 v7 v8 v10 in
                   let v12 = coe MAlonzo.Code.Algebra.Structures.d1728 v11 in
                   MAlonzo.Code.Algebra.Structures.du476
                     v5 v7 (MAlonzo.Code.Algebra.Structures.d1542 v12))
                  (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                     v0 (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d172 v0)
                     v1))
               (let v5
                      = let v5
                              = coe
                                  MAlonzo.Code.Algebra.C463
                                  (coe
                                     MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d164 v0)
                                  (coe
                                     MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166 v0)
                                  (coe
                                     MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d170 v0)
                                  (coe
                                     MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d172 v0)
                                  (coe
                                     MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d60
                                     (coe
                                        MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d174
                                        v0)) in
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
                  (MAlonzo.Code.Relation.Binary.du150 v5)
                  (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                     v0 (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d172 v0)
                     v1)
                  v1 v1
                  (MAlonzo.Code.Data.Product.d26
                     (let v6
                            = coe
                                MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d164 v0 in
                      let v7
                            = coe
                                MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166 v0 in
                      let v8
                            = coe
                                MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d170 v0 in
                      let v9
                            = coe
                                MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d172 v0 in
                      let v10
                            = coe
                                MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d174 v0 in
                      let v11
                            = coe
                                MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d60 v10 in
                      MAlonzo.Code.Algebra.Structures.d296
                        (MAlonzo.Code.Algebra.Structures.d1544
                           (MAlonzo.Code.Algebra.Structures.d1728
                              (MAlonzo.Code.Algebra.Structures.du2214 v6 v7 v8 v9 v11))))
                     v1)
                  (let v6
                         = let v6
                                 = coe
                                     MAlonzo.Code.Algebra.C463
                                     (coe
                                        MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d164
                                        v0)
                                     (coe
                                        MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                                        v0)
                                     (coe
                                        MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d170
                                        v0)
                                     (coe
                                        MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d172
                                        v0)
                                     (coe
                                        MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d60
                                        (coe
                                           MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d174
                                           v0)) in
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
                           coe
                             MAlonzo.Code.Relation.Binary.C143
                             (coe
                                MAlonzo.Code.Algebra.Structures.d140
                                (coe
                                   MAlonzo.Code.Algebra.Structures.d294
                                   (coe
                                      MAlonzo.Code.Algebra.d100
                                      (coe MAlonzo.Code.Algebra.du186 v9)))) in
                   MAlonzo.Code.Relation.Binary.PreorderReasoning.C56
                     (MAlonzo.Code.Relation.Binary.d38
                        (MAlonzo.Code.Relation.Binary.d92
                           (MAlonzo.Code.Relation.Binary.du150 v6))
                        v1 v1
                        (MAlonzo.Code.Relation.Binary.Core.d516
                           (MAlonzo.Code.Relation.Binary.d36
                              (MAlonzo.Code.Relation.Binary.d92
                                 (MAlonzo.Code.Relation.Binary.du150 v6)))
                           v1)))))))
name292 = "Algebra.RingSolver.Lemmas.lemma\8326"
d292 v0 v1 v2 v3 v4 v5 v6 v7 = du292 v4 v6 v7
du292 v0 v1 v2
  = coe
      MAlonzo.Code.Relation.Binary.PreorderReasoning.d62
      (let v3
             = let v3
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
               let v4 = coe MAlonzo.Code.Algebra.du984 v3 in
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
         (MAlonzo.Code.Relation.Binary.du150 v3)
         (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d164
            v0
            (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
               v0 (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d170 v0)
               v2)
            v1)
         (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d164
            v0 (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d170 v0)
            v1)
         v1
         (MAlonzo.Code.Function.du176
            (MAlonzo.Code.Algebra.Structures.d2116
               (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d60
                  (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d174 v0))
               v2)
            (let v4
                   = coe
                       MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d164 v0 in
             let v5
                   = coe
                       MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166 v0 in
             let v6
                   = coe
                       MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d170 v0 in
             let v7
                   = coe
                       MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d172 v0 in
             let v8
                   = coe
                       MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d174 v0 in
             let v9
                   = coe
                       MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d60 v8 in
             MAlonzo.Code.Algebra.Structures.d144
               (MAlonzo.Code.Algebra.Structures.d454
                  (MAlonzo.Code.Algebra.Structures.d1542
                     (MAlonzo.Code.Algebra.Structures.d1728
                        (MAlonzo.Code.Algebra.Structures.du2214 v4 v5 v6 v7 v9))))
               (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                  v0 (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d170 v0)
                  v2)
               (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d170 v0) v1
               v1)
            (let v4
                   = coe
                       MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d164 v0 in
             let v5
                   = coe
                       MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166 v0 in
             let v6
                   = coe
                       MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d170 v0 in
             let v7
                   = coe
                       MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d172 v0 in
             let v8
                   = coe
                       MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d174 v0 in
             let v9
                   = coe
                       MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d60 v8 in
             MAlonzo.Code.Relation.Binary.Core.d516
               (MAlonzo.Code.Algebra.Structures.d140
                  (MAlonzo.Code.Algebra.Structures.d454
                     (MAlonzo.Code.Algebra.Structures.d1542
                        (MAlonzo.Code.Algebra.Structures.d1728
                           (MAlonzo.Code.Algebra.Structures.du2214 v4 v5 v6 v7 v9)))))
               v1))
         (let v4
                = let v4
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
                  let v5 = coe MAlonzo.Code.Algebra.du984 v4 in
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
            (MAlonzo.Code.Relation.Binary.du150 v4)
            (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d164
               v0 (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d170 v0)
               v1)
            v1 v1
            (MAlonzo.Code.Data.Product.d26
               (let v5
                      = coe
                          MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d164 v0 in
                let v6
                      = coe
                          MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166 v0 in
                let v7
                      = coe
                          MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d170 v0 in
                let v8
                      = coe
                          MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d172 v0 in
                let v9
                      = coe
                          MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d174 v0 in
                let v10
                      = coe
                          MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d60 v9 in
                let v11
                      = coe MAlonzo.Code.Algebra.Structures.du2214 v5 v6 v7 v8 v10 in
                let v12 = coe MAlonzo.Code.Algebra.Structures.d1728 v11 in
                MAlonzo.Code.Algebra.Structures.du476
                  v5 v7 (MAlonzo.Code.Algebra.Structures.d1542 v12))
               v1)
            (let v5
                   = let v5
                           = coe
                               MAlonzo.Code.Algebra.C463
                               (coe MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d164 v0)
                               (coe MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166 v0)
                               (coe MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d170 v0)
                               (coe MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d172 v0)
                               (coe
                                  MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d60
                                  (coe
                                     MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d174
                                     v0)) in
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
                     coe
                       MAlonzo.Code.Relation.Binary.C143
                       (coe
                          MAlonzo.Code.Algebra.Structures.d140
                          (coe
                             MAlonzo.Code.Algebra.Structures.d294
                             (coe
                                MAlonzo.Code.Algebra.d100 (coe MAlonzo.Code.Algebra.du186 v8)))) in
             MAlonzo.Code.Relation.Binary.PreorderReasoning.C56
               (MAlonzo.Code.Relation.Binary.d38
                  (MAlonzo.Code.Relation.Binary.d92
                     (MAlonzo.Code.Relation.Binary.du150 v5))
                  v1 v1
                  (MAlonzo.Code.Relation.Binary.Core.d516
                     (MAlonzo.Code.Relation.Binary.d36
                        (MAlonzo.Code.Relation.Binary.d92
                           (MAlonzo.Code.Relation.Binary.du150 v5)))
                     v1)))))
name300 = "Algebra.RingSolver.Lemmas.lemma\8327"
d300 v0 v1 v2 v3 v4 v5 v6 = du300 v4 v6
du300 v0 v1
  = coe
      MAlonzo.Code.Relation.Binary.PreorderReasoning.d62
      (let v2
             = let v2
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
               let v3 = coe MAlonzo.Code.Algebra.du984 v2 in
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
         (MAlonzo.Code.Relation.Binary.du150 v2)
         (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
            v0
            (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d168
               v0 (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d172 v0))
            v1)
         (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d168
            v0
            (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
               v0 (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d172 v0)
               v1))
         (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d168 v0 v1)
         (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d68
            (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d174 v0)
            (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d172 v0) v1)
         (let v3
                = let v3
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
                  let v4 = coe MAlonzo.Code.Algebra.du984 v3 in
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
            (MAlonzo.Code.Relation.Binary.du150 v3)
            (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d168
               v0
               (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                  v0 (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d172 v0)
                  v1))
            (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d168 v0 v1)
            (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d168 v0 v1)
            (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d62
               (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d174 v0)
               (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166
                  v0 (MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d172 v0)
                  v1)
               v1
               (MAlonzo.Code.Data.Product.d26
                  (let v4
                         = coe
                             MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d164 v0 in
                   let v5
                         = coe
                             MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166 v0 in
                   let v6
                         = coe
                             MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d170 v0 in
                   let v7
                         = coe
                             MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d172 v0 in
                   let v8
                         = coe
                             MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d174 v0 in
                   let v9
                         = coe
                             MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d60 v8 in
                   MAlonzo.Code.Algebra.Structures.d296
                     (MAlonzo.Code.Algebra.Structures.d1544
                        (MAlonzo.Code.Algebra.Structures.d1728
                           (MAlonzo.Code.Algebra.Structures.du2214 v4 v5 v6 v7 v9))))
                  v1))
            (let v4
                   = let v4
                           = coe
                               MAlonzo.Code.Algebra.C463
                               (coe MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d164 v0)
                               (coe MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d166 v0)
                               (coe MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d170 v0)
                               (coe MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d172 v0)
                               (coe
                                  MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d60
                                  (coe
                                     MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d174
                                     v0)) in
                     let v5 = coe MAlonzo.Code.Algebra.du984 v4 in
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
             let v5
                   = coe
                       MAlonzo.Code.Algebra.RingSolver.AlmostCommutativeRing.d168 v0 v1 in
             MAlonzo.Code.Relation.Binary.PreorderReasoning.C56
               (MAlonzo.Code.Relation.Binary.d38
                  (MAlonzo.Code.Relation.Binary.d92
                     (MAlonzo.Code.Relation.Binary.du150 v4))
                  v5 v5
                  (MAlonzo.Code.Relation.Binary.Core.d516
                     (MAlonzo.Code.Relation.Binary.d36
                        (MAlonzo.Code.Relation.Binary.d92
                           (MAlonzo.Code.Relation.Binary.du150 v4)))
                     v5)))))