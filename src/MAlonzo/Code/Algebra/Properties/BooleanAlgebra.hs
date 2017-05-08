{-# LANGUAGE EmptyDataDecls, ExistentialQuantification,
             ScopedTypeVariables, NoMonomorphismRestriction, Rank2Types #-}
module MAlonzo.Code.Algebra.Properties.BooleanAlgebra where

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
import qualified MAlonzo.Code.Algebra.Properties.DistributiveLattice
import qualified MAlonzo.Code.Algebra.Properties.Lattice
import qualified MAlonzo.Code.Algebra.Structures
import qualified MAlonzo.Code.Data.Product
import qualified MAlonzo.Code.Function
import qualified MAlonzo.Code.Function.Equality
import qualified MAlonzo.Code.Function.Equivalence
import qualified MAlonzo.Code.Relation.Binary
import qualified MAlonzo.Code.Relation.Binary.Core
import qualified MAlonzo.Code.Relation.Binary.PreorderReasoning

name74
  = "Algebra.Properties.BooleanAlgebra.DL.isOrderTheoreticLattice"
d74 v0 v1 v2 = du74 v2
du74 v0
  = let v1
          = coe
              MAlonzo.Code.Algebra.C687 (coe MAlonzo.Code.Algebra.d1484 v0)
              (coe MAlonzo.Code.Algebra.d1486 v0)
              (coe
                 MAlonzo.Code.Algebra.Structures.d3222
                 (coe MAlonzo.Code.Algebra.d1494 v0)) in
    coe
      MAlonzo.Code.Algebra.Properties.Lattice.du172
      (coe
         MAlonzo.Code.Algebra.C655 (coe MAlonzo.Code.Algebra.d1412 v1)
         (coe MAlonzo.Code.Algebra.d1414 v1)
         (coe
            MAlonzo.Code.Algebra.Structures.d3038
            (coe MAlonzo.Code.Algebra.d1416 v1)))
name76
  = "Algebra.Properties.BooleanAlgebra.DL.orderTheoreticLattice"
d76 v0 v1 v2 = du76 v2
du76 v0
  = let v1
          = coe
              MAlonzo.Code.Algebra.C687 (coe MAlonzo.Code.Algebra.d1484 v0)
              (coe MAlonzo.Code.Algebra.d1486 v0)
              (coe
                 MAlonzo.Code.Algebra.Structures.d3222
                 (coe MAlonzo.Code.Algebra.d1494 v0)) in
    coe
      MAlonzo.Code.Algebra.Properties.Lattice.du224
      (coe
         MAlonzo.Code.Algebra.C655 (coe MAlonzo.Code.Algebra.d1412 v1)
         (coe MAlonzo.Code.Algebra.d1414 v1)
         (coe
            MAlonzo.Code.Algebra.Structures.d3038
            (coe MAlonzo.Code.Algebra.d1416 v1)))
name78 = "Algebra.Properties.BooleanAlgebra.DL.poset"
d78 v0 v1 v2 = du78 v2
du78 v0
  = let v1
          = coe
              MAlonzo.Code.Algebra.C687 (coe MAlonzo.Code.Algebra.d1484 v0)
              (coe MAlonzo.Code.Algebra.d1486 v0)
              (coe
                 MAlonzo.Code.Algebra.Structures.d3222
                 (coe MAlonzo.Code.Algebra.d1494 v0)) in
    coe
      MAlonzo.Code.Algebra.Properties.Lattice.du136
      (coe
         MAlonzo.Code.Algebra.C655 (coe MAlonzo.Code.Algebra.d1412 v1)
         (coe MAlonzo.Code.Algebra.d1414 v1)
         (coe
            MAlonzo.Code.Algebra.Structures.d3038
            (coe MAlonzo.Code.Algebra.d1416 v1)))
name80 = "Algebra.Properties.BooleanAlgebra.DL.replace-equality"
d80 v0 v1 v2 = du80 v2
du80 v0 v1 v2
  = coe
      MAlonzo.Code.Algebra.Properties.DistributiveLattice.du194
      (coe
         MAlonzo.Code.Algebra.C687 (coe MAlonzo.Code.Algebra.d1484 v0)
         (coe MAlonzo.Code.Algebra.d1486 v0)
         (coe
            MAlonzo.Code.Algebra.Structures.d3222
            (coe MAlonzo.Code.Algebra.d1494 v0)))
      v2
name82 = "Algebra.Properties.BooleanAlgebra.DL.\8743-idempotent"
d82 v0 v1 v2 = du82 v2
du82 v0
  = let v1
          = coe
              MAlonzo.Code.Algebra.C687 (coe MAlonzo.Code.Algebra.d1484 v0)
              (coe MAlonzo.Code.Algebra.d1486 v0)
              (coe
                 MAlonzo.Code.Algebra.Structures.d3222
                 (coe MAlonzo.Code.Algebra.d1494 v0)) in
    coe
      MAlonzo.Code.Algebra.Properties.Lattice.du124
      (coe
         MAlonzo.Code.Algebra.C655 (coe MAlonzo.Code.Algebra.d1412 v1)
         (coe MAlonzo.Code.Algebra.d1414 v1)
         (coe
            MAlonzo.Code.Algebra.Structures.d3038
            (coe MAlonzo.Code.Algebra.d1416 v1)))
name84 = "Algebra.Properties.BooleanAlgebra.DL.\8743-\8744-distrib"
d84 v0 v1 v2 = du84 v2
du84 v0
  = coe
      MAlonzo.Code.Algebra.Properties.DistributiveLattice.du162
      (coe
         MAlonzo.Code.Algebra.C687 (coe MAlonzo.Code.Algebra.d1484 v0)
         (coe MAlonzo.Code.Algebra.d1486 v0)
         (coe
            MAlonzo.Code.Algebra.Structures.d3222
            (coe MAlonzo.Code.Algebra.d1494 v0)))
name86
  = "Algebra.Properties.BooleanAlgebra.DL.\8743-\8744-distributiveLattice"
d86 v0 v1 v2 = du86 v2
du86 v0
  = coe
      MAlonzo.Code.Algebra.Properties.DistributiveLattice.du186
      (coe
         MAlonzo.Code.Algebra.C687 (coe MAlonzo.Code.Algebra.d1484 v0)
         (coe MAlonzo.Code.Algebra.d1486 v0)
         (coe
            MAlonzo.Code.Algebra.Structures.d3222
            (coe MAlonzo.Code.Algebra.d1494 v0)))
name88
  = "Algebra.Properties.BooleanAlgebra.DL.\8743-\8744-isDistributiveLattice"
d88 v0 v1 v2 = du88 v2
du88 v0
  = coe
      MAlonzo.Code.Algebra.Properties.DistributiveLattice.du184
      (coe
         MAlonzo.Code.Algebra.C687 (coe MAlonzo.Code.Algebra.d1484 v0)
         (coe MAlonzo.Code.Algebra.d1486 v0)
         (coe
            MAlonzo.Code.Algebra.Structures.d3222
            (coe MAlonzo.Code.Algebra.d1494 v0)))
name90
  = "Algebra.Properties.BooleanAlgebra.DL.\8743-\8744-isLattice"
d90 v0 v1 v2 = du90 v2
du90 v0
  = let v1
          = coe
              MAlonzo.Code.Algebra.C687 (coe MAlonzo.Code.Algebra.d1484 v0)
              (coe MAlonzo.Code.Algebra.d1486 v0)
              (coe
                 MAlonzo.Code.Algebra.Structures.d3222
                 (coe MAlonzo.Code.Algebra.d1494 v0)) in
    coe
      MAlonzo.Code.Algebra.Properties.Lattice.du132
      (coe
         MAlonzo.Code.Algebra.C655 (coe MAlonzo.Code.Algebra.d1412 v1)
         (coe MAlonzo.Code.Algebra.d1414 v1)
         (coe
            MAlonzo.Code.Algebra.Structures.d3038
            (coe MAlonzo.Code.Algebra.d1416 v1)))
name92 = "Algebra.Properties.BooleanAlgebra.DL.\8743-\8744-lattice"
d92 v0 v1 v2 = du92 v2
du92 v0
  = let v1
          = coe
              MAlonzo.Code.Algebra.C687 (coe MAlonzo.Code.Algebra.d1484 v0)
              (coe MAlonzo.Code.Algebra.d1486 v0)
              (coe
                 MAlonzo.Code.Algebra.Structures.d3222
                 (coe MAlonzo.Code.Algebra.d1494 v0)) in
    coe
      MAlonzo.Code.Algebra.Properties.Lattice.du134
      (coe
         MAlonzo.Code.Algebra.C655 (coe MAlonzo.Code.Algebra.d1412 v1)
         (coe MAlonzo.Code.Algebra.d1414 v1)
         (coe
            MAlonzo.Code.Algebra.Structures.d3038
            (coe MAlonzo.Code.Algebra.d1416 v1)))
name94 = "Algebra.Properties.BooleanAlgebra.DL.\8744-idempotent"
d94 v0 v1 v2 = du94 v2
du94 v0
  = let v1
          = coe
              MAlonzo.Code.Algebra.C687 (coe MAlonzo.Code.Algebra.d1484 v0)
              (coe MAlonzo.Code.Algebra.d1486 v0)
              (coe
                 MAlonzo.Code.Algebra.Structures.d3222
                 (coe MAlonzo.Code.Algebra.d1494 v0)) in
    coe
      MAlonzo.Code.Algebra.Properties.Lattice.du128
      (coe
         MAlonzo.Code.Algebra.C655 (coe MAlonzo.Code.Algebra.d1412 v1)
         (coe MAlonzo.Code.Algebra.d1414 v1)
         (coe
            MAlonzo.Code.Algebra.Structures.d3038
            (coe MAlonzo.Code.Algebra.d1416 v1)))
name96 = "Algebra.Properties.BooleanAlgebra.DL.\8744-\8743-distrib"
d96 v0 v1 v2 = du96 v2
du96 v0
  = coe
      MAlonzo.Code.Algebra.Properties.DistributiveLattice.du148
      (coe
         MAlonzo.Code.Algebra.C687 (coe MAlonzo.Code.Algebra.d1484 v0)
         (coe MAlonzo.Code.Algebra.d1486 v0)
         (coe
            MAlonzo.Code.Algebra.Structures.d3222
            (coe MAlonzo.Code.Algebra.d1494 v0)))
name102 = "Algebra.Properties.BooleanAlgebra._._DistributesOver_"
d102 = erased
name124 = "Algebra.Properties.BooleanAlgebra._.Identity"
d124 = erased
name126 = "Algebra.Properties.BooleanAlgebra._.Inverse"
d126 = erased
name144 = "Algebra.Properties.BooleanAlgebra._.Zero"
d144 = erased
name150 = "Algebra.Properties.BooleanAlgebra._.Core.Op\8322"
d150 = erased
name156 = "Algebra.Properties.BooleanAlgebra._._\8718"
d156 v0 v1 v2 = du156 v2
du156 v0
  = let v1
          = coe
              MAlonzo.Code.Relation.Binary.C143
              (coe
                 MAlonzo.Code.Algebra.Structures.d2874
                 (coe
                    MAlonzo.Code.Algebra.Structures.d3038
                    (coe
                       MAlonzo.Code.Algebra.Structures.d3222
                       (coe MAlonzo.Code.Algebra.d1494 v0)))) in
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
name158
  = "Algebra.Properties.BooleanAlgebra._._\8764\10216_\10217_"
d158 v0 v1 v2 = du158 v2
du158 v0
  = let v1
          = coe
              MAlonzo.Code.Relation.Binary.C143
              (coe
                 MAlonzo.Code.Algebra.Structures.d2874
                 (coe
                    MAlonzo.Code.Algebra.Structures.d3038
                    (coe
                       MAlonzo.Code.Algebra.Structures.d3222
                       (coe MAlonzo.Code.Algebra.d1494 v0)))) in
    coe
      MAlonzo.Code.Relation.Binary.PreorderReasoning.du72
      (coe MAlonzo.Code.Relation.Binary.du150 v1)
name172 = "Algebra.Properties.BooleanAlgebra.\8744-complement"
d172 v0 v1 v2 = du172 v2
du172 v0
  = coe
      MAlonzo.Code.Data.Product.C30 (coe du178 v0)
      (coe
         MAlonzo.Code.Algebra.Structures.d3224
         (coe MAlonzo.Code.Algebra.d1494 v0))
name178
  = "Algebra.Properties.BooleanAlgebra._.\8744-complement\737"
d178 v0 v1 v2 v3 = du178 v2 v3
du178 v0 v1
  = coe
      MAlonzo.Code.Relation.Binary.PreorderReasoning.d62
      (let v2
             = coe
                 MAlonzo.Code.Relation.Binary.C143
                 (coe
                    MAlonzo.Code.Algebra.Structures.d2874
                    (coe
                       MAlonzo.Code.Algebra.Structures.d3038
                       (coe
                          MAlonzo.Code.Algebra.Structures.d3222
                          (coe MAlonzo.Code.Algebra.d1494 v0)))) in
       MAlonzo.Code.Relation.Binary.PreorderReasoning.du72
         (MAlonzo.Code.Relation.Binary.du150 v2)
         (MAlonzo.Code.Algebra.d1484
            v0 (MAlonzo.Code.Algebra.d1488 v0 v1) v1)
         (MAlonzo.Code.Algebra.d1484
            v0 v1 (MAlonzo.Code.Algebra.d1488 v0 v1))
         (MAlonzo.Code.Algebra.d1490 v0)
         (MAlonzo.Code.Algebra.Structures.d2876
            (MAlonzo.Code.Algebra.Structures.d3038
               (MAlonzo.Code.Algebra.Structures.d3222
                  (MAlonzo.Code.Algebra.d1494 v0)))
            (MAlonzo.Code.Algebra.d1488 v0 v1) v1)
         (let v3
                = coe
                    MAlonzo.Code.Relation.Binary.C143
                    (coe
                       MAlonzo.Code.Algebra.Structures.d2874
                       (coe
                          MAlonzo.Code.Algebra.Structures.d3038
                          (coe
                             MAlonzo.Code.Algebra.Structures.d3222
                             (coe MAlonzo.Code.Algebra.d1494 v0)))) in
          MAlonzo.Code.Relation.Binary.PreorderReasoning.du72
            (MAlonzo.Code.Relation.Binary.du150 v3)
            (MAlonzo.Code.Algebra.d1484
               v0 v1 (MAlonzo.Code.Algebra.d1488 v0 v1))
            (MAlonzo.Code.Algebra.d1490 v0) (MAlonzo.Code.Algebra.d1490 v0)
            (MAlonzo.Code.Algebra.Structures.d3224
               (MAlonzo.Code.Algebra.d1494 v0) v1)
            (let v4
                   = coe
                       MAlonzo.Code.Relation.Binary.C143
                       (coe
                          MAlonzo.Code.Algebra.Structures.d2874
                          (coe
                             MAlonzo.Code.Algebra.Structures.d3038
                             (coe
                                MAlonzo.Code.Algebra.Structures.d3222
                                (coe MAlonzo.Code.Algebra.d1494 v0)))) in
             let v5 = coe MAlonzo.Code.Algebra.d1490 v0 in
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
name182 = "Algebra.Properties.BooleanAlgebra.\8743-complement"
d182 v0 v1 v2 = du182 v2
du182 v0
  = coe
      MAlonzo.Code.Data.Product.C30 (coe du188 v0)
      (coe
         MAlonzo.Code.Algebra.Structures.d3226
         (coe MAlonzo.Code.Algebra.d1494 v0))
name188
  = "Algebra.Properties.BooleanAlgebra._.\8743-complement\737"
d188 v0 v1 v2 v3 = du188 v2 v3
du188 v0 v1
  = coe
      MAlonzo.Code.Relation.Binary.PreorderReasoning.d62
      (let v2
             = coe
                 MAlonzo.Code.Relation.Binary.C143
                 (coe
                    MAlonzo.Code.Algebra.Structures.d2874
                    (coe
                       MAlonzo.Code.Algebra.Structures.d3038
                       (coe
                          MAlonzo.Code.Algebra.Structures.d3222
                          (coe MAlonzo.Code.Algebra.d1494 v0)))) in
       MAlonzo.Code.Relation.Binary.PreorderReasoning.du72
         (MAlonzo.Code.Relation.Binary.du150 v2)
         (MAlonzo.Code.Algebra.d1486
            v0 (MAlonzo.Code.Algebra.d1488 v0 v1) v1)
         (MAlonzo.Code.Algebra.d1486
            v0 v1 (MAlonzo.Code.Algebra.d1488 v0 v1))
         (MAlonzo.Code.Algebra.d1492 v0)
         (MAlonzo.Code.Algebra.Structures.d2882
            (MAlonzo.Code.Algebra.Structures.d3038
               (MAlonzo.Code.Algebra.Structures.d3222
                  (MAlonzo.Code.Algebra.d1494 v0)))
            (MAlonzo.Code.Algebra.d1488 v0 v1) v1)
         (let v3
                = coe
                    MAlonzo.Code.Relation.Binary.C143
                    (coe
                       MAlonzo.Code.Algebra.Structures.d2874
                       (coe
                          MAlonzo.Code.Algebra.Structures.d3038
                          (coe
                             MAlonzo.Code.Algebra.Structures.d3222
                             (coe MAlonzo.Code.Algebra.d1494 v0)))) in
          MAlonzo.Code.Relation.Binary.PreorderReasoning.du72
            (MAlonzo.Code.Relation.Binary.du150 v3)
            (MAlonzo.Code.Algebra.d1486
               v0 v1 (MAlonzo.Code.Algebra.d1488 v0 v1))
            (MAlonzo.Code.Algebra.d1492 v0) (MAlonzo.Code.Algebra.d1492 v0)
            (MAlonzo.Code.Algebra.Structures.d3226
               (MAlonzo.Code.Algebra.d1494 v0) v1)
            (let v4
                   = coe
                       MAlonzo.Code.Relation.Binary.C143
                       (coe
                          MAlonzo.Code.Algebra.Structures.d2874
                          (coe
                             MAlonzo.Code.Algebra.Structures.d3038
                             (coe
                                MAlonzo.Code.Algebra.Structures.d3222
                                (coe MAlonzo.Code.Algebra.d1494 v0)))) in
             let v5 = coe MAlonzo.Code.Algebra.d1492 v0 in
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
name192
  = "Algebra.Properties.BooleanAlgebra.\8743-\8744-isBooleanAlgebra"
d192 v0 v1 v2 = du192 v2
du192 v0
  = coe
      MAlonzo.Code.Algebra.Structures.C2165
      (coe
         MAlonzo.Code.Algebra.Properties.DistributiveLattice.du184
         (coe
            MAlonzo.Code.Algebra.C687 (coe MAlonzo.Code.Algebra.d1484 v0)
            (coe MAlonzo.Code.Algebra.d1486 v0)
            (coe
               MAlonzo.Code.Algebra.Structures.d3222
               (coe MAlonzo.Code.Algebra.d1494 v0))))
      (coe MAlonzo.Code.Data.Product.d28 (coe du182 v0))
      (coe MAlonzo.Code.Data.Product.d28 (coe du172 v0))
      (coe
         MAlonzo.Code.Algebra.Structures.d3228
         (coe MAlonzo.Code.Algebra.d1494 v0))
name194
  = "Algebra.Properties.BooleanAlgebra.\8743-\8744-booleanAlgebra"
d194 v0 v1 v2 = du194 v2
du194 v0
  = coe
      MAlonzo.Code.Algebra.C719 (coe MAlonzo.Code.Algebra.d1486 v0)
      (coe MAlonzo.Code.Algebra.d1484 v0)
      (coe MAlonzo.Code.Algebra.d1488 v0)
      (coe MAlonzo.Code.Algebra.d1492 v0)
      (coe MAlonzo.Code.Algebra.d1490 v0) (coe du192 v0)
name196 = "Algebra.Properties.BooleanAlgebra.\8743-identity"
d196 v0 v1 v2 = du196 v2
du196 v0
  = coe
      MAlonzo.Code.Data.Product.C30
      (\ v1 ->
         coe
           MAlonzo.Code.Function.du176
           (coe
              MAlonzo.Code.Algebra.Structures.d2882
              (coe
                 MAlonzo.Code.Algebra.Structures.d3038
                 (coe
                    MAlonzo.Code.Algebra.Structures.d3222
                    (coe MAlonzo.Code.Algebra.d1494 v0)))
              (coe MAlonzo.Code.Algebra.d1490 v0) v1)
           (coe
              MAlonzo.Code.Relation.Binary.Core.d520
              (coe
                 MAlonzo.Code.Algebra.Structures.d2874
                 (coe
                    MAlonzo.Code.Algebra.Structures.d3038
                    (coe
                       MAlonzo.Code.Algebra.Structures.d3222
                       (coe MAlonzo.Code.Algebra.d1494 v0))))
              (coe
                 MAlonzo.Code.Algebra.d1486 v0 (coe MAlonzo.Code.Algebra.d1490 v0)
                 v1)
              (coe
                 MAlonzo.Code.Algebra.d1486 v0 v1
                 (coe MAlonzo.Code.Algebra.d1490 v0))
              v1)
           (coe du204 v0 v1))
      (coe du204 v0)
name204 = "Algebra.Properties.BooleanAlgebra._.x\8743\8868=x"
d204 v0 v1 v2 v3 = du204 v2 v3
du204 v0 v1
  = coe
      MAlonzo.Code.Relation.Binary.PreorderReasoning.d62
      (let v2
             = coe
                 MAlonzo.Code.Relation.Binary.C143
                 (coe
                    MAlonzo.Code.Algebra.Structures.d2874
                    (coe
                       MAlonzo.Code.Algebra.Structures.d3038
                       (coe
                          MAlonzo.Code.Algebra.Structures.d3222
                          (coe MAlonzo.Code.Algebra.d1494 v0)))) in
       MAlonzo.Code.Relation.Binary.PreorderReasoning.du72
         (MAlonzo.Code.Relation.Binary.du150 v2)
         (MAlonzo.Code.Algebra.d1486 v0 v1 (MAlonzo.Code.Algebra.d1490 v0))
         (MAlonzo.Code.Algebra.d1486
            v0 v1
            (MAlonzo.Code.Algebra.d1484
               v0 v1 (MAlonzo.Code.Algebra.d1488 v0 v1)))
         v1
         (MAlonzo.Code.Function.du176
            (MAlonzo.Code.Relation.Binary.Core.d516
               (MAlonzo.Code.Algebra.Structures.d2874
                  (MAlonzo.Code.Algebra.Structures.d3038
                     (MAlonzo.Code.Algebra.Structures.d3222
                        (MAlonzo.Code.Algebra.d1494 v0))))
               v1)
            (MAlonzo.Code.Algebra.Structures.d2886
               (MAlonzo.Code.Algebra.Structures.d3038
                  (MAlonzo.Code.Algebra.Structures.d3222
                     (MAlonzo.Code.Algebra.d1494 v0)))
               v1 v1 (MAlonzo.Code.Algebra.d1490 v0)
               (MAlonzo.Code.Algebra.d1484
                  v0 v1 (MAlonzo.Code.Algebra.d1488 v0 v1)))
            (MAlonzo.Code.Relation.Binary.Core.d518
               (MAlonzo.Code.Algebra.Structures.d2874
                  (MAlonzo.Code.Algebra.Structures.d3038
                     (MAlonzo.Code.Algebra.Structures.d3222
                        (MAlonzo.Code.Algebra.d1494 v0))))
               (MAlonzo.Code.Algebra.d1484
                  v0 v1 (MAlonzo.Code.Algebra.d1488 v0 v1))
               (MAlonzo.Code.Algebra.d1490 v0)
               (MAlonzo.Code.Data.Product.d28 (du172 v0) v1)))
         (let v3
                = coe
                    MAlonzo.Code.Relation.Binary.C143
                    (coe
                       MAlonzo.Code.Algebra.Structures.d2874
                       (coe
                          MAlonzo.Code.Algebra.Structures.d3038
                          (coe
                             MAlonzo.Code.Algebra.Structures.d3222
                             (coe MAlonzo.Code.Algebra.d1494 v0)))) in
          MAlonzo.Code.Relation.Binary.PreorderReasoning.du72
            (MAlonzo.Code.Relation.Binary.du150 v3)
            (MAlonzo.Code.Algebra.d1486
               v0 v1
               (MAlonzo.Code.Algebra.d1484
                  v0 v1 (MAlonzo.Code.Algebra.d1488 v0 v1)))
            v1 v1
            (MAlonzo.Code.Data.Product.d28
               (MAlonzo.Code.Algebra.Structures.d2888
                  (MAlonzo.Code.Algebra.Structures.d3038
                     (MAlonzo.Code.Algebra.Structures.d3222
                        (MAlonzo.Code.Algebra.d1494 v0))))
               v1 (MAlonzo.Code.Algebra.d1488 v0 v1))
            (let v4
                   = coe
                       MAlonzo.Code.Relation.Binary.C143
                       (coe
                          MAlonzo.Code.Algebra.Structures.d2874
                          (coe
                             MAlonzo.Code.Algebra.Structures.d3038
                             (coe
                                MAlonzo.Code.Algebra.Structures.d3222
                                (coe MAlonzo.Code.Algebra.d1494 v0)))) in
             MAlonzo.Code.Relation.Binary.PreorderReasoning.C56
               (MAlonzo.Code.Relation.Binary.d38
                  (MAlonzo.Code.Relation.Binary.d92
                     (MAlonzo.Code.Relation.Binary.du150 v4))
                  v1 v1
                  (MAlonzo.Code.Relation.Binary.Core.d516
                     (MAlonzo.Code.Relation.Binary.d36
                        (MAlonzo.Code.Relation.Binary.d92
                           (MAlonzo.Code.Relation.Binary.du150 v4)))
                     v1)))))
name210 = "Algebra.Properties.BooleanAlgebra.\8744-identity"
d210 v0 v1 v2 = du210 v2
du210 v0
  = coe
      MAlonzo.Code.Data.Product.C30
      (\ v1 ->
         coe
           MAlonzo.Code.Function.du176
           (coe
              MAlonzo.Code.Algebra.Structures.d2876
              (coe
                 MAlonzo.Code.Algebra.Structures.d3038
                 (coe
                    MAlonzo.Code.Algebra.Structures.d3222
                    (coe MAlonzo.Code.Algebra.d1494 v0)))
              (coe MAlonzo.Code.Algebra.d1492 v0) v1)
           (coe
              MAlonzo.Code.Relation.Binary.Core.d520
              (coe
                 MAlonzo.Code.Algebra.Structures.d2874
                 (coe
                    MAlonzo.Code.Algebra.Structures.d3038
                    (coe
                       MAlonzo.Code.Algebra.Structures.d3222
                       (coe MAlonzo.Code.Algebra.d1494 v0))))
              (coe
                 MAlonzo.Code.Algebra.d1484 v0 (coe MAlonzo.Code.Algebra.d1492 v0)
                 v1)
              (coe
                 MAlonzo.Code.Algebra.d1484 v0 v1
                 (coe MAlonzo.Code.Algebra.d1492 v0))
              v1)
           (coe du218 v0 v1))
      (coe du218 v0)
name218 = "Algebra.Properties.BooleanAlgebra._.x\8744\8869=x"
d218 v0 v1 v2 v3 = du218 v2 v3
du218 v0 v1
  = coe
      MAlonzo.Code.Relation.Binary.PreorderReasoning.d62
      (let v2
             = coe
                 MAlonzo.Code.Relation.Binary.C143
                 (coe
                    MAlonzo.Code.Algebra.Structures.d2874
                    (coe
                       MAlonzo.Code.Algebra.Structures.d3038
                       (coe
                          MAlonzo.Code.Algebra.Structures.d3222
                          (coe MAlonzo.Code.Algebra.d1494 v0)))) in
       MAlonzo.Code.Relation.Binary.PreorderReasoning.du72
         (MAlonzo.Code.Relation.Binary.du150 v2)
         (MAlonzo.Code.Algebra.d1484 v0 v1 (MAlonzo.Code.Algebra.d1492 v0))
         (MAlonzo.Code.Algebra.d1484
            v0 v1
            (MAlonzo.Code.Algebra.d1486
               v0 v1 (MAlonzo.Code.Algebra.d1488 v0 v1)))
         v1
         (MAlonzo.Code.Function.du176
            (MAlonzo.Code.Relation.Binary.Core.d516
               (MAlonzo.Code.Algebra.Structures.d2874
                  (MAlonzo.Code.Algebra.Structures.d3038
                     (MAlonzo.Code.Algebra.Structures.d3222
                        (MAlonzo.Code.Algebra.d1494 v0))))
               v1)
            (MAlonzo.Code.Algebra.Structures.d2880
               (MAlonzo.Code.Algebra.Structures.d3038
                  (MAlonzo.Code.Algebra.Structures.d3222
                     (MAlonzo.Code.Algebra.d1494 v0)))
               v1 v1 (MAlonzo.Code.Algebra.d1492 v0)
               (MAlonzo.Code.Algebra.d1486
                  v0 v1 (MAlonzo.Code.Algebra.d1488 v0 v1)))
            (MAlonzo.Code.Relation.Binary.Core.d518
               (MAlonzo.Code.Algebra.Structures.d2874
                  (MAlonzo.Code.Algebra.Structures.d3038
                     (MAlonzo.Code.Algebra.Structures.d3222
                        (MAlonzo.Code.Algebra.d1494 v0))))
               (MAlonzo.Code.Algebra.d1486
                  v0 v1 (MAlonzo.Code.Algebra.d1488 v0 v1))
               (MAlonzo.Code.Algebra.d1492 v0)
               (MAlonzo.Code.Data.Product.d28 (du182 v0) v1)))
         (let v3
                = coe
                    MAlonzo.Code.Relation.Binary.C143
                    (coe
                       MAlonzo.Code.Algebra.Structures.d2874
                       (coe
                          MAlonzo.Code.Algebra.Structures.d3038
                          (coe
                             MAlonzo.Code.Algebra.Structures.d3222
                             (coe MAlonzo.Code.Algebra.d1494 v0)))) in
          MAlonzo.Code.Relation.Binary.PreorderReasoning.du72
            (MAlonzo.Code.Relation.Binary.du150 v3)
            (MAlonzo.Code.Algebra.d1484
               v0 v1
               (MAlonzo.Code.Algebra.d1486
                  v0 v1 (MAlonzo.Code.Algebra.d1488 v0 v1)))
            v1 v1
            (MAlonzo.Code.Data.Product.d26
               (MAlonzo.Code.Algebra.Structures.d2888
                  (MAlonzo.Code.Algebra.Structures.d3038
                     (MAlonzo.Code.Algebra.Structures.d3222
                        (MAlonzo.Code.Algebra.d1494 v0))))
               v1 (MAlonzo.Code.Algebra.d1488 v0 v1))
            (let v4
                   = coe
                       MAlonzo.Code.Relation.Binary.C143
                       (coe
                          MAlonzo.Code.Algebra.Structures.d2874
                          (coe
                             MAlonzo.Code.Algebra.Structures.d3038
                             (coe
                                MAlonzo.Code.Algebra.Structures.d3222
                                (coe MAlonzo.Code.Algebra.d1494 v0)))) in
             MAlonzo.Code.Relation.Binary.PreorderReasoning.C56
               (MAlonzo.Code.Relation.Binary.d38
                  (MAlonzo.Code.Relation.Binary.d92
                     (MAlonzo.Code.Relation.Binary.du150 v4))
                  v1 v1
                  (MAlonzo.Code.Relation.Binary.Core.d516
                     (MAlonzo.Code.Relation.Binary.d36
                        (MAlonzo.Code.Relation.Binary.d92
                           (MAlonzo.Code.Relation.Binary.du150 v4)))
                     v1)))))
name224 = "Algebra.Properties.BooleanAlgebra.\8743-zero"
d224 v0 v1 v2 = du224 v2
du224 v0
  = coe
      MAlonzo.Code.Data.Product.C30
      (\ v1 ->
         coe
           MAlonzo.Code.Function.du176
           (coe
              MAlonzo.Code.Algebra.Structures.d2882
              (coe
                 MAlonzo.Code.Algebra.Structures.d3038
                 (coe
                    MAlonzo.Code.Algebra.Structures.d3222
                    (coe MAlonzo.Code.Algebra.d1494 v0)))
              (coe MAlonzo.Code.Algebra.d1492 v0) v1)
           (coe
              MAlonzo.Code.Relation.Binary.Core.d520
              (coe
                 MAlonzo.Code.Algebra.Structures.d2874
                 (coe
                    MAlonzo.Code.Algebra.Structures.d3038
                    (coe
                       MAlonzo.Code.Algebra.Structures.d3222
                       (coe MAlonzo.Code.Algebra.d1494 v0))))
              (coe
                 MAlonzo.Code.Algebra.d1486 v0 (coe MAlonzo.Code.Algebra.d1492 v0)
                 v1)
              (coe
                 MAlonzo.Code.Algebra.d1486 v0 v1
                 (coe MAlonzo.Code.Algebra.d1492 v0))
              (coe MAlonzo.Code.Algebra.d1492 v0))
           (coe du232 v0 v1))
      (coe du232 v0)
name232 = "Algebra.Properties.BooleanAlgebra._.x\8743\8869=\8869"
d232 v0 v1 v2 v3 = du232 v2 v3
du232 v0 v1
  = coe
      MAlonzo.Code.Relation.Binary.PreorderReasoning.d62
      (let v2
             = coe
                 MAlonzo.Code.Relation.Binary.C143
                 (coe
                    MAlonzo.Code.Algebra.Structures.d2874
                    (coe
                       MAlonzo.Code.Algebra.Structures.d3038
                       (coe
                          MAlonzo.Code.Algebra.Structures.d3222
                          (coe MAlonzo.Code.Algebra.d1494 v0)))) in
       MAlonzo.Code.Relation.Binary.PreorderReasoning.du72
         (MAlonzo.Code.Relation.Binary.du150 v2)
         (MAlonzo.Code.Algebra.d1486 v0 v1 (MAlonzo.Code.Algebra.d1492 v0))
         (MAlonzo.Code.Algebra.d1486
            v0 v1
            (MAlonzo.Code.Algebra.d1486
               v0 v1 (MAlonzo.Code.Algebra.d1488 v0 v1)))
         (MAlonzo.Code.Algebra.d1492 v0)
         (MAlonzo.Code.Function.du176
            (MAlonzo.Code.Relation.Binary.Core.d516
               (MAlonzo.Code.Algebra.Structures.d2874
                  (MAlonzo.Code.Algebra.Structures.d3038
                     (MAlonzo.Code.Algebra.Structures.d3222
                        (MAlonzo.Code.Algebra.d1494 v0))))
               v1)
            (MAlonzo.Code.Algebra.Structures.d2886
               (MAlonzo.Code.Algebra.Structures.d3038
                  (MAlonzo.Code.Algebra.Structures.d3222
                     (MAlonzo.Code.Algebra.d1494 v0)))
               v1 v1 (MAlonzo.Code.Algebra.d1492 v0)
               (MAlonzo.Code.Algebra.d1486
                  v0 v1 (MAlonzo.Code.Algebra.d1488 v0 v1)))
            (MAlonzo.Code.Relation.Binary.Core.d518
               (MAlonzo.Code.Algebra.Structures.d2874
                  (MAlonzo.Code.Algebra.Structures.d3038
                     (MAlonzo.Code.Algebra.Structures.d3222
                        (MAlonzo.Code.Algebra.d1494 v0))))
               (MAlonzo.Code.Algebra.d1486
                  v0 v1 (MAlonzo.Code.Algebra.d1488 v0 v1))
               (MAlonzo.Code.Algebra.d1492 v0)
               (MAlonzo.Code.Data.Product.d28 (du182 v0) v1)))
         (let v3
                = coe
                    MAlonzo.Code.Relation.Binary.C143
                    (coe
                       MAlonzo.Code.Algebra.Structures.d2874
                       (coe
                          MAlonzo.Code.Algebra.Structures.d3038
                          (coe
                             MAlonzo.Code.Algebra.Structures.d3222
                             (coe MAlonzo.Code.Algebra.d1494 v0)))) in
          MAlonzo.Code.Relation.Binary.PreorderReasoning.du72
            (MAlonzo.Code.Relation.Binary.du150 v3)
            (MAlonzo.Code.Algebra.d1486
               v0 v1
               (MAlonzo.Code.Algebra.d1486
                  v0 v1 (MAlonzo.Code.Algebra.d1488 v0 v1)))
            (MAlonzo.Code.Algebra.d1486
               v0 (MAlonzo.Code.Algebra.d1486 v0 v1 v1)
               (MAlonzo.Code.Algebra.d1488 v0 v1))
            (MAlonzo.Code.Algebra.d1492 v0)
            (MAlonzo.Code.Function.du158
               (MAlonzo.Code.Relation.Binary.Core.d518
                  (MAlonzo.Code.Algebra.Structures.d2874
                     (MAlonzo.Code.Algebra.Structures.d3038
                        (MAlonzo.Code.Algebra.Structures.d3222
                           (MAlonzo.Code.Algebra.d1494 v0))))
                  (MAlonzo.Code.Algebra.d1486
                     v0 (MAlonzo.Code.Algebra.d1486 v0 v1 v1)
                     (MAlonzo.Code.Algebra.d1488 v0 v1))
                  (MAlonzo.Code.Algebra.d1486
                     v0 v1
                     (MAlonzo.Code.Algebra.d1486
                        v0 v1 (MAlonzo.Code.Algebra.d1488 v0 v1))))
               (MAlonzo.Code.Algebra.Structures.d2884
                  (MAlonzo.Code.Algebra.Structures.d3038
                     (MAlonzo.Code.Algebra.Structures.d3222
                        (MAlonzo.Code.Algebra.d1494 v0)))
                  v1 v1 (MAlonzo.Code.Algebra.d1488 v0 v1)))
            (let v4
                   = coe
                       MAlonzo.Code.Relation.Binary.C143
                       (coe
                          MAlonzo.Code.Algebra.Structures.d2874
                          (coe
                             MAlonzo.Code.Algebra.Structures.d3038
                             (coe
                                MAlonzo.Code.Algebra.Structures.d3222
                                (coe MAlonzo.Code.Algebra.d1494 v0)))) in
             MAlonzo.Code.Relation.Binary.PreorderReasoning.du72
               (MAlonzo.Code.Relation.Binary.du150 v4)
               (MAlonzo.Code.Algebra.d1486
                  v0 (MAlonzo.Code.Algebra.d1486 v0 v1 v1)
                  (MAlonzo.Code.Algebra.d1488 v0 v1))
               (MAlonzo.Code.Algebra.d1486
                  v0 v1 (MAlonzo.Code.Algebra.d1488 v0 v1))
               (MAlonzo.Code.Algebra.d1492 v0)
               (MAlonzo.Code.Function.du176
                  (let v5
                         = coe
                             MAlonzo.Code.Algebra.C687 (coe MAlonzo.Code.Algebra.d1484 v0)
                             (coe MAlonzo.Code.Algebra.d1486 v0)
                             (coe
                                MAlonzo.Code.Algebra.Structures.d3222
                                (coe MAlonzo.Code.Algebra.d1494 v0)) in
                   MAlonzo.Code.Algebra.Properties.Lattice.du124
                     (MAlonzo.Code.Algebra.C655
                        (MAlonzo.Code.Algebra.d1412 v5) (MAlonzo.Code.Algebra.d1414 v5)
                        (MAlonzo.Code.Algebra.Structures.d3038
                           (MAlonzo.Code.Algebra.d1416 v5)))
                     v1)
                  (MAlonzo.Code.Algebra.Structures.d2886
                     (MAlonzo.Code.Algebra.Structures.d3038
                        (MAlonzo.Code.Algebra.Structures.d3222
                           (MAlonzo.Code.Algebra.d1494 v0)))
                     (MAlonzo.Code.Algebra.d1486 v0 v1 v1) v1
                     (MAlonzo.Code.Algebra.d1488 v0 v1)
                     (MAlonzo.Code.Algebra.d1488 v0 v1))
                  (MAlonzo.Code.Relation.Binary.Core.d516
                     (MAlonzo.Code.Algebra.Structures.d2874
                        (MAlonzo.Code.Algebra.Structures.d3038
                           (MAlonzo.Code.Algebra.Structures.d3222
                              (MAlonzo.Code.Algebra.d1494 v0))))
                     (MAlonzo.Code.Algebra.d1488 v0 v1)))
               (let v5
                      = coe
                          MAlonzo.Code.Relation.Binary.C143
                          (coe
                             MAlonzo.Code.Algebra.Structures.d2874
                             (coe
                                MAlonzo.Code.Algebra.Structures.d3038
                                (coe
                                   MAlonzo.Code.Algebra.Structures.d3222
                                   (coe MAlonzo.Code.Algebra.d1494 v0)))) in
                MAlonzo.Code.Relation.Binary.PreorderReasoning.du72
                  (MAlonzo.Code.Relation.Binary.du150 v5)
                  (MAlonzo.Code.Algebra.d1486
                     v0 v1 (MAlonzo.Code.Algebra.d1488 v0 v1))
                  (MAlonzo.Code.Algebra.d1492 v0) (MAlonzo.Code.Algebra.d1492 v0)
                  (MAlonzo.Code.Data.Product.d28 (du182 v0) v1)
                  (let v6
                         = coe
                             MAlonzo.Code.Relation.Binary.C143
                             (coe
                                MAlonzo.Code.Algebra.Structures.d2874
                                (coe
                                   MAlonzo.Code.Algebra.Structures.d3038
                                   (coe
                                      MAlonzo.Code.Algebra.Structures.d3222
                                      (coe MAlonzo.Code.Algebra.d1494 v0)))) in
                   let v7 = coe MAlonzo.Code.Algebra.d1492 v0 in
                   MAlonzo.Code.Relation.Binary.PreorderReasoning.C56
                     (MAlonzo.Code.Relation.Binary.d38
                        (MAlonzo.Code.Relation.Binary.d92
                           (MAlonzo.Code.Relation.Binary.du150 v6))
                        v7 v7
                        (MAlonzo.Code.Relation.Binary.Core.d516
                           (MAlonzo.Code.Relation.Binary.d36
                              (MAlonzo.Code.Relation.Binary.d92
                                 (MAlonzo.Code.Relation.Binary.du150 v6)))
                           v7)))))))
name238
  = "Algebra.Properties.BooleanAlgebra.\8744-\8743-isCommutativeSemiring"
d238 v0 v1 v2 = du238 v2
du238 v0
  = coe
      MAlonzo.Code.Algebra.Structures.C1155
      (coe
         MAlonzo.Code.Algebra.Structures.C221
         (coe
            MAlonzo.Code.Algebra.Structures.C75
            (coe
               MAlonzo.Code.Algebra.Structures.d2874
               (coe
                  MAlonzo.Code.Algebra.Structures.d3038
                  (coe
                     MAlonzo.Code.Algebra.Structures.d3222
                     (coe MAlonzo.Code.Algebra.d1494 v0))))
            (coe
               MAlonzo.Code.Algebra.Structures.d2878
               (coe
                  MAlonzo.Code.Algebra.Structures.d3038
                  (coe
                     MAlonzo.Code.Algebra.Structures.d3222
                     (coe MAlonzo.Code.Algebra.d1494 v0))))
            (coe
               MAlonzo.Code.Algebra.Structures.d2880
               (coe
                  MAlonzo.Code.Algebra.Structures.d3038
                  (coe
                     MAlonzo.Code.Algebra.Structures.d3222
                     (coe MAlonzo.Code.Algebra.d1494 v0)))))
         (coe MAlonzo.Code.Data.Product.d26 (coe du210 v0))
         (coe
            MAlonzo.Code.Algebra.Structures.d2876
            (coe
               MAlonzo.Code.Algebra.Structures.d3038
               (coe
                  MAlonzo.Code.Algebra.Structures.d3222
                  (coe MAlonzo.Code.Algebra.d1494 v0)))))
      (coe
         MAlonzo.Code.Algebra.Structures.C221
         (coe
            MAlonzo.Code.Algebra.Structures.C75
            (coe
               MAlonzo.Code.Algebra.Structures.d2874
               (coe
                  MAlonzo.Code.Algebra.Structures.d3038
                  (coe
                     MAlonzo.Code.Algebra.Structures.d3222
                     (coe MAlonzo.Code.Algebra.d1494 v0))))
            (coe
               MAlonzo.Code.Algebra.Structures.d2884
               (coe
                  MAlonzo.Code.Algebra.Structures.d3038
                  (coe
                     MAlonzo.Code.Algebra.Structures.d3222
                     (coe MAlonzo.Code.Algebra.d1494 v0))))
            (coe
               MAlonzo.Code.Algebra.Structures.d2886
               (coe
                  MAlonzo.Code.Algebra.Structures.d3038
                  (coe
                     MAlonzo.Code.Algebra.Structures.d3222
                     (coe MAlonzo.Code.Algebra.d1494 v0)))))
         (coe MAlonzo.Code.Data.Product.d26 (coe du196 v0))
         (coe
            MAlonzo.Code.Algebra.Structures.d2882
            (coe
               MAlonzo.Code.Algebra.Structures.d3038
               (coe
                  MAlonzo.Code.Algebra.Structures.d3222
                  (coe MAlonzo.Code.Algebra.d1494 v0)))))
      (coe
         MAlonzo.Code.Data.Product.d28
         (coe
            MAlonzo.Code.Algebra.Properties.DistributiveLattice.du162
            (coe
               MAlonzo.Code.Algebra.C687 (coe MAlonzo.Code.Algebra.d1484 v0)
               (coe MAlonzo.Code.Algebra.d1486 v0)
               (coe
                  MAlonzo.Code.Algebra.Structures.d3222
                  (coe MAlonzo.Code.Algebra.d1494 v0)))))
      (coe MAlonzo.Code.Data.Product.d26 (coe du224 v0))
name240
  = "Algebra.Properties.BooleanAlgebra.\8744-\8743-commutativeSemiring"
d240 v0 v1 v2 = du240 v2
du240 v0
  = coe
      MAlonzo.Code.Algebra.C463 (coe MAlonzo.Code.Algebra.d1484 v0)
      (coe MAlonzo.Code.Algebra.d1486 v0)
      (coe MAlonzo.Code.Algebra.d1492 v0)
      (coe MAlonzo.Code.Algebra.d1490 v0) (coe du238 v0)
name242 = "Algebra.Properties.BooleanAlgebra.\8744-zero"
d242 v0 v1 v2 = du242 v2
du242 v0
  = coe
      MAlonzo.Code.Data.Product.C30
      (\ v1 ->
         coe
           MAlonzo.Code.Function.du176
           (coe
              MAlonzo.Code.Algebra.Structures.d2876
              (coe
                 MAlonzo.Code.Algebra.Structures.d3038
                 (coe
                    MAlonzo.Code.Algebra.Structures.d3222
                    (coe MAlonzo.Code.Algebra.d1494 v0)))
              (coe MAlonzo.Code.Algebra.d1490 v0) v1)
           (coe
              MAlonzo.Code.Relation.Binary.Core.d520
              (coe
                 MAlonzo.Code.Algebra.Structures.d2874
                 (coe
                    MAlonzo.Code.Algebra.Structures.d3038
                    (coe
                       MAlonzo.Code.Algebra.Structures.d3222
                       (coe MAlonzo.Code.Algebra.d1494 v0))))
              (coe
                 MAlonzo.Code.Algebra.d1484 v0 (coe MAlonzo.Code.Algebra.d1490 v0)
                 v1)
              (coe
                 MAlonzo.Code.Algebra.d1484 v0 v1
                 (coe MAlonzo.Code.Algebra.d1490 v0))
              (coe MAlonzo.Code.Algebra.d1490 v0))
           (coe du250 v0 v1))
      (coe du250 v0)
name250 = "Algebra.Properties.BooleanAlgebra._.x\8744\8868=\8868"
d250 v0 v1 v2 v3 = du250 v2 v3
du250 v0 v1
  = coe
      MAlonzo.Code.Relation.Binary.PreorderReasoning.d62
      (let v2
             = coe
                 MAlonzo.Code.Relation.Binary.C143
                 (coe
                    MAlonzo.Code.Algebra.Structures.d2874
                    (coe
                       MAlonzo.Code.Algebra.Structures.d3038
                       (coe
                          MAlonzo.Code.Algebra.Structures.d3222
                          (coe MAlonzo.Code.Algebra.d1494 v0)))) in
       MAlonzo.Code.Relation.Binary.PreorderReasoning.du72
         (MAlonzo.Code.Relation.Binary.du150 v2)
         (MAlonzo.Code.Algebra.d1484 v0 v1 (MAlonzo.Code.Algebra.d1490 v0))
         (MAlonzo.Code.Algebra.d1484
            v0 v1
            (MAlonzo.Code.Algebra.d1484
               v0 v1 (MAlonzo.Code.Algebra.d1488 v0 v1)))
         (MAlonzo.Code.Algebra.d1490 v0)
         (MAlonzo.Code.Function.du176
            (MAlonzo.Code.Relation.Binary.Core.d516
               (MAlonzo.Code.Algebra.Structures.d2874
                  (MAlonzo.Code.Algebra.Structures.d3038
                     (MAlonzo.Code.Algebra.Structures.d3222
                        (MAlonzo.Code.Algebra.d1494 v0))))
               v1)
            (MAlonzo.Code.Algebra.Structures.d2880
               (MAlonzo.Code.Algebra.Structures.d3038
                  (MAlonzo.Code.Algebra.Structures.d3222
                     (MAlonzo.Code.Algebra.d1494 v0)))
               v1 v1 (MAlonzo.Code.Algebra.d1490 v0)
               (MAlonzo.Code.Algebra.d1484
                  v0 v1 (MAlonzo.Code.Algebra.d1488 v0 v1)))
            (MAlonzo.Code.Relation.Binary.Core.d518
               (MAlonzo.Code.Algebra.Structures.d2874
                  (MAlonzo.Code.Algebra.Structures.d3038
                     (MAlonzo.Code.Algebra.Structures.d3222
                        (MAlonzo.Code.Algebra.d1494 v0))))
               (MAlonzo.Code.Algebra.d1484
                  v0 v1 (MAlonzo.Code.Algebra.d1488 v0 v1))
               (MAlonzo.Code.Algebra.d1490 v0)
               (MAlonzo.Code.Data.Product.d28 (du172 v0) v1)))
         (let v3
                = coe
                    MAlonzo.Code.Relation.Binary.C143
                    (coe
                       MAlonzo.Code.Algebra.Structures.d2874
                       (coe
                          MAlonzo.Code.Algebra.Structures.d3038
                          (coe
                             MAlonzo.Code.Algebra.Structures.d3222
                             (coe MAlonzo.Code.Algebra.d1494 v0)))) in
          MAlonzo.Code.Relation.Binary.PreorderReasoning.du72
            (MAlonzo.Code.Relation.Binary.du150 v3)
            (MAlonzo.Code.Algebra.d1484
               v0 v1
               (MAlonzo.Code.Algebra.d1484
                  v0 v1 (MAlonzo.Code.Algebra.d1488 v0 v1)))
            (MAlonzo.Code.Algebra.d1484
               v0 (MAlonzo.Code.Algebra.d1484 v0 v1 v1)
               (MAlonzo.Code.Algebra.d1488 v0 v1))
            (MAlonzo.Code.Algebra.d1490 v0)
            (MAlonzo.Code.Function.du158
               (MAlonzo.Code.Relation.Binary.Core.d518
                  (MAlonzo.Code.Algebra.Structures.d2874
                     (MAlonzo.Code.Algebra.Structures.d3038
                        (MAlonzo.Code.Algebra.Structures.d3222
                           (MAlonzo.Code.Algebra.d1494 v0))))
                  (MAlonzo.Code.Algebra.d1484
                     v0 (MAlonzo.Code.Algebra.d1484 v0 v1 v1)
                     (MAlonzo.Code.Algebra.d1488 v0 v1))
                  (MAlonzo.Code.Algebra.d1484
                     v0 v1
                     (MAlonzo.Code.Algebra.d1484
                        v0 v1 (MAlonzo.Code.Algebra.d1488 v0 v1))))
               (MAlonzo.Code.Algebra.Structures.d2878
                  (MAlonzo.Code.Algebra.Structures.d3038
                     (MAlonzo.Code.Algebra.Structures.d3222
                        (MAlonzo.Code.Algebra.d1494 v0)))
                  v1 v1 (MAlonzo.Code.Algebra.d1488 v0 v1)))
            (let v4
                   = coe
                       MAlonzo.Code.Relation.Binary.C143
                       (coe
                          MAlonzo.Code.Algebra.Structures.d2874
                          (coe
                             MAlonzo.Code.Algebra.Structures.d3038
                             (coe
                                MAlonzo.Code.Algebra.Structures.d3222
                                (coe MAlonzo.Code.Algebra.d1494 v0)))) in
             MAlonzo.Code.Relation.Binary.PreorderReasoning.du72
               (MAlonzo.Code.Relation.Binary.du150 v4)
               (MAlonzo.Code.Algebra.d1484
                  v0 (MAlonzo.Code.Algebra.d1484 v0 v1 v1)
                  (MAlonzo.Code.Algebra.d1488 v0 v1))
               (MAlonzo.Code.Algebra.d1484
                  v0 v1 (MAlonzo.Code.Algebra.d1488 v0 v1))
               (MAlonzo.Code.Algebra.d1490 v0)
               (MAlonzo.Code.Function.du176
                  (let v5
                         = coe
                             MAlonzo.Code.Algebra.C687 (coe MAlonzo.Code.Algebra.d1484 v0)
                             (coe MAlonzo.Code.Algebra.d1486 v0)
                             (coe
                                MAlonzo.Code.Algebra.Structures.d3222
                                (coe MAlonzo.Code.Algebra.d1494 v0)) in
                   MAlonzo.Code.Algebra.Properties.Lattice.du128
                     (MAlonzo.Code.Algebra.C655
                        (MAlonzo.Code.Algebra.d1412 v5) (MAlonzo.Code.Algebra.d1414 v5)
                        (MAlonzo.Code.Algebra.Structures.d3038
                           (MAlonzo.Code.Algebra.d1416 v5)))
                     v1)
                  (MAlonzo.Code.Algebra.Structures.d2880
                     (MAlonzo.Code.Algebra.Structures.d3038
                        (MAlonzo.Code.Algebra.Structures.d3222
                           (MAlonzo.Code.Algebra.d1494 v0)))
                     (MAlonzo.Code.Algebra.d1484 v0 v1 v1) v1
                     (MAlonzo.Code.Algebra.d1488 v0 v1)
                     (MAlonzo.Code.Algebra.d1488 v0 v1))
                  (MAlonzo.Code.Relation.Binary.Core.d516
                     (MAlonzo.Code.Algebra.Structures.d2874
                        (MAlonzo.Code.Algebra.Structures.d3038
                           (MAlonzo.Code.Algebra.Structures.d3222
                              (MAlonzo.Code.Algebra.d1494 v0))))
                     (MAlonzo.Code.Algebra.d1488 v0 v1)))
               (let v5
                      = coe
                          MAlonzo.Code.Relation.Binary.C143
                          (coe
                             MAlonzo.Code.Algebra.Structures.d2874
                             (coe
                                MAlonzo.Code.Algebra.Structures.d3038
                                (coe
                                   MAlonzo.Code.Algebra.Structures.d3222
                                   (coe MAlonzo.Code.Algebra.d1494 v0)))) in
                MAlonzo.Code.Relation.Binary.PreorderReasoning.du72
                  (MAlonzo.Code.Relation.Binary.du150 v5)
                  (MAlonzo.Code.Algebra.d1484
                     v0 v1 (MAlonzo.Code.Algebra.d1488 v0 v1))
                  (MAlonzo.Code.Algebra.d1490 v0) (MAlonzo.Code.Algebra.d1490 v0)
                  (MAlonzo.Code.Data.Product.d28 (du172 v0) v1)
                  (let v6
                         = coe
                             MAlonzo.Code.Relation.Binary.C143
                             (coe
                                MAlonzo.Code.Algebra.Structures.d2874
                                (coe
                                   MAlonzo.Code.Algebra.Structures.d3038
                                   (coe
                                      MAlonzo.Code.Algebra.Structures.d3222
                                      (coe MAlonzo.Code.Algebra.d1494 v0)))) in
                   let v7 = coe MAlonzo.Code.Algebra.d1490 v0 in
                   MAlonzo.Code.Relation.Binary.PreorderReasoning.C56
                     (MAlonzo.Code.Relation.Binary.d38
                        (MAlonzo.Code.Relation.Binary.d92
                           (MAlonzo.Code.Relation.Binary.du150 v6))
                        v7 v7
                        (MAlonzo.Code.Relation.Binary.Core.d516
                           (MAlonzo.Code.Relation.Binary.d36
                              (MAlonzo.Code.Relation.Binary.d92
                                 (MAlonzo.Code.Relation.Binary.du150 v6)))
                           v7)))))))
name256
  = "Algebra.Properties.BooleanAlgebra.\8743-\8744-isCommutativeSemiring"
d256 v0 v1 v2 = du256 v2
du256 v0
  = coe
      MAlonzo.Code.Algebra.Structures.C1155
      (coe
         MAlonzo.Code.Algebra.Structures.C221
         (coe
            MAlonzo.Code.Algebra.Structures.C75
            (coe
               MAlonzo.Code.Algebra.Structures.d2874
               (coe
                  MAlonzo.Code.Algebra.Structures.d3038
                  (coe
                     MAlonzo.Code.Algebra.Structures.d3222
                     (coe MAlonzo.Code.Algebra.d1494 v0))))
            (coe
               MAlonzo.Code.Algebra.Structures.d2884
               (coe
                  MAlonzo.Code.Algebra.Structures.d3038
                  (coe
                     MAlonzo.Code.Algebra.Structures.d3222
                     (coe MAlonzo.Code.Algebra.d1494 v0))))
            (coe
               MAlonzo.Code.Algebra.Structures.d2886
               (coe
                  MAlonzo.Code.Algebra.Structures.d3038
                  (coe
                     MAlonzo.Code.Algebra.Structures.d3222
                     (coe MAlonzo.Code.Algebra.d1494 v0)))))
         (coe MAlonzo.Code.Data.Product.d26 (coe du196 v0))
         (coe
            MAlonzo.Code.Algebra.Structures.d2882
            (coe
               MAlonzo.Code.Algebra.Structures.d3038
               (coe
                  MAlonzo.Code.Algebra.Structures.d3222
                  (coe MAlonzo.Code.Algebra.d1494 v0)))))
      (coe
         MAlonzo.Code.Algebra.Structures.C221
         (coe
            MAlonzo.Code.Algebra.Structures.C75
            (coe
               MAlonzo.Code.Algebra.Structures.d2874
               (coe
                  MAlonzo.Code.Algebra.Structures.d3038
                  (coe
                     MAlonzo.Code.Algebra.Structures.d3222
                     (coe MAlonzo.Code.Algebra.d1494 v0))))
            (coe
               MAlonzo.Code.Algebra.Structures.d2878
               (coe
                  MAlonzo.Code.Algebra.Structures.d3038
                  (coe
                     MAlonzo.Code.Algebra.Structures.d3222
                     (coe MAlonzo.Code.Algebra.d1494 v0))))
            (coe
               MAlonzo.Code.Algebra.Structures.d2880
               (coe
                  MAlonzo.Code.Algebra.Structures.d3038
                  (coe
                     MAlonzo.Code.Algebra.Structures.d3222
                     (coe MAlonzo.Code.Algebra.d1494 v0)))))
         (coe MAlonzo.Code.Data.Product.d26 (coe du210 v0))
         (coe
            MAlonzo.Code.Algebra.Structures.d2876
            (coe
               MAlonzo.Code.Algebra.Structures.d3038
               (coe
                  MAlonzo.Code.Algebra.Structures.d3222
                  (coe MAlonzo.Code.Algebra.d1494 v0)))))
      (coe
         MAlonzo.Code.Data.Product.d28
         (coe
            MAlonzo.Code.Algebra.Properties.DistributiveLattice.du148
            (coe
               MAlonzo.Code.Algebra.C687 (coe MAlonzo.Code.Algebra.d1484 v0)
               (coe MAlonzo.Code.Algebra.d1486 v0)
               (coe
                  MAlonzo.Code.Algebra.Structures.d3222
                  (coe MAlonzo.Code.Algebra.d1494 v0)))))
      (coe MAlonzo.Code.Data.Product.d26 (coe du242 v0))
name258
  = "Algebra.Properties.BooleanAlgebra.\8743-\8744-commutativeSemiring"
d258 v0 v1 v2 = du258 v2
du258 v0
  = coe
      MAlonzo.Code.Algebra.C463 (coe MAlonzo.Code.Algebra.d1486 v0)
      (coe MAlonzo.Code.Algebra.d1484 v0)
      (coe MAlonzo.Code.Algebra.d1490 v0)
      (coe MAlonzo.Code.Algebra.d1492 v0) (coe du256 v0)
name264 = "Algebra.Properties.BooleanAlgebra.lemma"
d264 v0 v1 v2 v3 v4 v5 v6 = du264 v2 v3 v4 v5 v6
du264 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Relation.Binary.PreorderReasoning.d62
      (let v5
             = coe
                 MAlonzo.Code.Relation.Binary.C143
                 (coe
                    MAlonzo.Code.Algebra.Structures.d2874
                    (coe
                       MAlonzo.Code.Algebra.Structures.d3038
                       (coe
                          MAlonzo.Code.Algebra.Structures.d3222
                          (coe MAlonzo.Code.Algebra.d1494 v0)))) in
       MAlonzo.Code.Relation.Binary.PreorderReasoning.du72
         (MAlonzo.Code.Relation.Binary.du150 v5)
         (MAlonzo.Code.Algebra.d1488 v0 v1)
         (MAlonzo.Code.Algebra.d1486
            v0 (MAlonzo.Code.Algebra.d1488 v0 v1)
            (MAlonzo.Code.Algebra.d1490 v0))
         v2
         (MAlonzo.Code.Function.du158
            (MAlonzo.Code.Relation.Binary.Core.d518
               (MAlonzo.Code.Algebra.Structures.d2874
                  (MAlonzo.Code.Algebra.Structures.d3038
                     (MAlonzo.Code.Algebra.Structures.d3222
                        (MAlonzo.Code.Algebra.d1494 v0))))
               (MAlonzo.Code.Algebra.d1486
                  v0 (MAlonzo.Code.Algebra.d1488 v0 v1)
                  (MAlonzo.Code.Algebra.d1490 v0))
               (MAlonzo.Code.Algebra.d1488 v0 v1))
            (MAlonzo.Code.Data.Product.d28
               (du196 v0) (MAlonzo.Code.Algebra.d1488 v0 v1)))
         (let v6
                = coe
                    MAlonzo.Code.Relation.Binary.C143
                    (coe
                       MAlonzo.Code.Algebra.Structures.d2874
                       (coe
                          MAlonzo.Code.Algebra.Structures.d3038
                          (coe
                             MAlonzo.Code.Algebra.Structures.d3222
                             (coe MAlonzo.Code.Algebra.d1494 v0)))) in
          MAlonzo.Code.Relation.Binary.PreorderReasoning.du72
            (MAlonzo.Code.Relation.Binary.du150 v6)
            (MAlonzo.Code.Algebra.d1486
               v0 (MAlonzo.Code.Algebra.d1488 v0 v1)
               (MAlonzo.Code.Algebra.d1490 v0))
            (MAlonzo.Code.Algebra.d1486
               v0 (MAlonzo.Code.Algebra.d1488 v0 v1)
               (MAlonzo.Code.Algebra.d1484 v0 v1 v2))
            v2
            (MAlonzo.Code.Function.du176
               (MAlonzo.Code.Relation.Binary.Core.d516
                  (MAlonzo.Code.Algebra.Structures.d2874
                     (MAlonzo.Code.Algebra.Structures.d3038
                        (MAlonzo.Code.Algebra.Structures.d3222
                           (MAlonzo.Code.Algebra.d1494 v0))))
                  (MAlonzo.Code.Algebra.d1488 v0 v1))
               (MAlonzo.Code.Algebra.Structures.d2886
                  (MAlonzo.Code.Algebra.Structures.d3038
                     (MAlonzo.Code.Algebra.Structures.d3222
                        (MAlonzo.Code.Algebra.d1494 v0)))
                  (MAlonzo.Code.Algebra.d1488 v0 v1)
                  (MAlonzo.Code.Algebra.d1488 v0 v1) (MAlonzo.Code.Algebra.d1490 v0)
                  (MAlonzo.Code.Algebra.d1484 v0 v1 v2))
               (MAlonzo.Code.Relation.Binary.Core.d518
                  (MAlonzo.Code.Algebra.Structures.d2874
                     (MAlonzo.Code.Algebra.Structures.d3038
                        (MAlonzo.Code.Algebra.Structures.d3222
                           (MAlonzo.Code.Algebra.d1494 v0))))
                  (MAlonzo.Code.Algebra.d1484 v0 v1 v2)
                  (MAlonzo.Code.Algebra.d1490 v0) v4))
            (let v7
                   = coe
                       MAlonzo.Code.Relation.Binary.C143
                       (coe
                          MAlonzo.Code.Algebra.Structures.d2874
                          (coe
                             MAlonzo.Code.Algebra.Structures.d3038
                             (coe
                                MAlonzo.Code.Algebra.Structures.d3222
                                (coe MAlonzo.Code.Algebra.d1494 v0)))) in
             MAlonzo.Code.Relation.Binary.PreorderReasoning.du72
               (MAlonzo.Code.Relation.Binary.du150 v7)
               (MAlonzo.Code.Algebra.d1486
                  v0 (MAlonzo.Code.Algebra.d1488 v0 v1)
                  (MAlonzo.Code.Algebra.d1484 v0 v1 v2))
               (MAlonzo.Code.Algebra.d1484
                  v0
                  (MAlonzo.Code.Algebra.d1486
                     v0 (MAlonzo.Code.Algebra.d1488 v0 v1) v1)
                  (MAlonzo.Code.Algebra.d1486
                     v0 (MAlonzo.Code.Algebra.d1488 v0 v1) v2))
               v2
               (MAlonzo.Code.Data.Product.d26
                  (MAlonzo.Code.Algebra.Properties.DistributiveLattice.du162
                     (MAlonzo.Code.Algebra.C687
                        (MAlonzo.Code.Algebra.d1484 v0) (MAlonzo.Code.Algebra.d1486 v0)
                        (MAlonzo.Code.Algebra.Structures.d3222
                           (MAlonzo.Code.Algebra.d1494 v0))))
                  (MAlonzo.Code.Algebra.d1488 v0 v1) v1 v2)
               (let v8
                      = coe
                          MAlonzo.Code.Relation.Binary.C143
                          (coe
                             MAlonzo.Code.Algebra.Structures.d2874
                             (coe
                                MAlonzo.Code.Algebra.Structures.d3038
                                (coe
                                   MAlonzo.Code.Algebra.Structures.d3222
                                   (coe MAlonzo.Code.Algebra.d1494 v0)))) in
                MAlonzo.Code.Relation.Binary.PreorderReasoning.du72
                  (MAlonzo.Code.Relation.Binary.du150 v8)
                  (MAlonzo.Code.Algebra.d1484
                     v0
                     (MAlonzo.Code.Algebra.d1486
                        v0 (MAlonzo.Code.Algebra.d1488 v0 v1) v1)
                     (MAlonzo.Code.Algebra.d1486
                        v0 (MAlonzo.Code.Algebra.d1488 v0 v1) v2))
                  (MAlonzo.Code.Algebra.d1484
                     v0 (MAlonzo.Code.Algebra.d1492 v0)
                     (MAlonzo.Code.Algebra.d1486
                        v0 (MAlonzo.Code.Algebra.d1488 v0 v1) v2))
                  v2
                  (MAlonzo.Code.Function.du176
                     (MAlonzo.Code.Data.Product.d26 (du182 v0) v1)
                     (MAlonzo.Code.Algebra.Structures.d2880
                        (MAlonzo.Code.Algebra.Structures.d3038
                           (MAlonzo.Code.Algebra.Structures.d3222
                              (MAlonzo.Code.Algebra.d1494 v0)))
                        (MAlonzo.Code.Algebra.d1486
                           v0 (MAlonzo.Code.Algebra.d1488 v0 v1) v1)
                        (MAlonzo.Code.Algebra.d1492 v0)
                        (MAlonzo.Code.Algebra.d1486
                           v0 (MAlonzo.Code.Algebra.d1488 v0 v1) v2)
                        (MAlonzo.Code.Algebra.d1486
                           v0 (MAlonzo.Code.Algebra.d1488 v0 v1) v2))
                     (MAlonzo.Code.Relation.Binary.Core.d516
                        (MAlonzo.Code.Algebra.Structures.d2874
                           (MAlonzo.Code.Algebra.Structures.d3038
                              (MAlonzo.Code.Algebra.Structures.d3222
                                 (MAlonzo.Code.Algebra.d1494 v0))))
                        (MAlonzo.Code.Algebra.d1486
                           v0 (MAlonzo.Code.Algebra.d1488 v0 v1) v2)))
                  (let v9
                         = coe
                             MAlonzo.Code.Relation.Binary.C143
                             (coe
                                MAlonzo.Code.Algebra.Structures.d2874
                                (coe
                                   MAlonzo.Code.Algebra.Structures.d3038
                                   (coe
                                      MAlonzo.Code.Algebra.Structures.d3222
                                      (coe MAlonzo.Code.Algebra.d1494 v0)))) in
                   MAlonzo.Code.Relation.Binary.PreorderReasoning.du72
                     (MAlonzo.Code.Relation.Binary.du150 v9)
                     (MAlonzo.Code.Algebra.d1484
                        v0 (MAlonzo.Code.Algebra.d1492 v0)
                        (MAlonzo.Code.Algebra.d1486
                           v0 (MAlonzo.Code.Algebra.d1488 v0 v1) v2))
                     (MAlonzo.Code.Algebra.d1484
                        v0 (MAlonzo.Code.Algebra.d1486 v0 v1 v2)
                        (MAlonzo.Code.Algebra.d1486
                           v0 (MAlonzo.Code.Algebra.d1488 v0 v1) v2))
                     v2
                     (MAlonzo.Code.Function.du176
                        (MAlonzo.Code.Relation.Binary.Core.d518
                           (MAlonzo.Code.Algebra.Structures.d2874
                              (MAlonzo.Code.Algebra.Structures.d3038
                                 (MAlonzo.Code.Algebra.Structures.d3222
                                    (MAlonzo.Code.Algebra.d1494 v0))))
                           (MAlonzo.Code.Algebra.d1486 v0 v1 v2)
                           (MAlonzo.Code.Algebra.d1492 v0) v3)
                        (MAlonzo.Code.Algebra.Structures.d2880
                           (MAlonzo.Code.Algebra.Structures.d3038
                              (MAlonzo.Code.Algebra.Structures.d3222
                                 (MAlonzo.Code.Algebra.d1494 v0)))
                           (MAlonzo.Code.Algebra.d1492 v0)
                           (MAlonzo.Code.Algebra.d1486 v0 v1 v2)
                           (MAlonzo.Code.Algebra.d1486
                              v0 (MAlonzo.Code.Algebra.d1488 v0 v1) v2)
                           (MAlonzo.Code.Algebra.d1486
                              v0 (MAlonzo.Code.Algebra.d1488 v0 v1) v2))
                        (MAlonzo.Code.Relation.Binary.Core.d516
                           (MAlonzo.Code.Algebra.Structures.d2874
                              (MAlonzo.Code.Algebra.Structures.d3038
                                 (MAlonzo.Code.Algebra.Structures.d3222
                                    (MAlonzo.Code.Algebra.d1494 v0))))
                           (MAlonzo.Code.Algebra.d1486
                              v0 (MAlonzo.Code.Algebra.d1488 v0 v1) v2)))
                     (let v10
                            = coe
                                MAlonzo.Code.Relation.Binary.C143
                                (coe
                                   MAlonzo.Code.Algebra.Structures.d2874
                                   (coe
                                      MAlonzo.Code.Algebra.Structures.d3038
                                      (coe
                                         MAlonzo.Code.Algebra.Structures.d3222
                                         (coe MAlonzo.Code.Algebra.d1494 v0)))) in
                      MAlonzo.Code.Relation.Binary.PreorderReasoning.du72
                        (MAlonzo.Code.Relation.Binary.du150 v10)
                        (MAlonzo.Code.Algebra.d1484
                           v0 (MAlonzo.Code.Algebra.d1486 v0 v1 v2)
                           (MAlonzo.Code.Algebra.d1486
                              v0 (MAlonzo.Code.Algebra.d1488 v0 v1) v2))
                        (MAlonzo.Code.Algebra.d1486
                           v0
                           (MAlonzo.Code.Algebra.d1484
                              v0 v1 (MAlonzo.Code.Algebra.d1488 v0 v1))
                           v2)
                        v2
                        (MAlonzo.Code.Function.du158
                           (MAlonzo.Code.Relation.Binary.Core.d518
                              (MAlonzo.Code.Algebra.Structures.d2874
                                 (MAlonzo.Code.Algebra.Structures.d3038
                                    (MAlonzo.Code.Algebra.Structures.d3222
                                       (MAlonzo.Code.Algebra.d1494 v0))))
                              (MAlonzo.Code.Algebra.d1486
                                 v0
                                 (MAlonzo.Code.Algebra.d1484
                                    v0 v1 (MAlonzo.Code.Algebra.d1488 v0 v1))
                                 v2)
                              (MAlonzo.Code.Algebra.d1484
                                 v0 (MAlonzo.Code.Algebra.d1486 v0 v1 v2)
                                 (MAlonzo.Code.Algebra.d1486
                                    v0 (MAlonzo.Code.Algebra.d1488 v0 v1) v2)))
                           (MAlonzo.Code.Data.Product.d28
                              (MAlonzo.Code.Algebra.Properties.DistributiveLattice.du162
                                 (MAlonzo.Code.Algebra.C687
                                    (MAlonzo.Code.Algebra.d1484 v0) (MAlonzo.Code.Algebra.d1486 v0)
                                    (MAlonzo.Code.Algebra.Structures.d3222
                                       (MAlonzo.Code.Algebra.d1494 v0))))
                              v2 v1 (MAlonzo.Code.Algebra.d1488 v0 v1)))
                        (let v11
                               = coe
                                   MAlonzo.Code.Relation.Binary.C143
                                   (coe
                                      MAlonzo.Code.Algebra.Structures.d2874
                                      (coe
                                         MAlonzo.Code.Algebra.Structures.d3038
                                         (coe
                                            MAlonzo.Code.Algebra.Structures.d3222
                                            (coe MAlonzo.Code.Algebra.d1494 v0)))) in
                         MAlonzo.Code.Relation.Binary.PreorderReasoning.du72
                           (MAlonzo.Code.Relation.Binary.du150 v11)
                           (MAlonzo.Code.Algebra.d1486
                              v0
                              (MAlonzo.Code.Algebra.d1484
                                 v0 v1 (MAlonzo.Code.Algebra.d1488 v0 v1))
                              v2)
                           (MAlonzo.Code.Algebra.d1486 v0 (MAlonzo.Code.Algebra.d1490 v0) v2)
                           v2
                           (MAlonzo.Code.Function.du176
                              (MAlonzo.Code.Data.Product.d28 (du172 v0) v1)
                              (MAlonzo.Code.Algebra.Structures.d2886
                                 (MAlonzo.Code.Algebra.Structures.d3038
                                    (MAlonzo.Code.Algebra.Structures.d3222
                                       (MAlonzo.Code.Algebra.d1494 v0)))
                                 (MAlonzo.Code.Algebra.d1484
                                    v0 v1 (MAlonzo.Code.Algebra.d1488 v0 v1))
                                 (MAlonzo.Code.Algebra.d1490 v0) v2 v2)
                              (MAlonzo.Code.Relation.Binary.Core.d516
                                 (MAlonzo.Code.Algebra.Structures.d2874
                                    (MAlonzo.Code.Algebra.Structures.d3038
                                       (MAlonzo.Code.Algebra.Structures.d3222
                                          (MAlonzo.Code.Algebra.d1494 v0))))
                                 v2))
                           (let v12
                                  = coe
                                      MAlonzo.Code.Relation.Binary.C143
                                      (coe
                                         MAlonzo.Code.Algebra.Structures.d2874
                                         (coe
                                            MAlonzo.Code.Algebra.Structures.d3038
                                            (coe
                                               MAlonzo.Code.Algebra.Structures.d3222
                                               (coe MAlonzo.Code.Algebra.d1494 v0)))) in
                            MAlonzo.Code.Relation.Binary.PreorderReasoning.du72
                              (MAlonzo.Code.Relation.Binary.du150 v12)
                              (MAlonzo.Code.Algebra.d1486 v0 (MAlonzo.Code.Algebra.d1490 v0) v2)
                              v2 v2 (MAlonzo.Code.Data.Product.d26 (du196 v0) v2)
                              (let v13
                                     = coe
                                         MAlonzo.Code.Relation.Binary.C143
                                         (coe
                                            MAlonzo.Code.Algebra.Structures.d2874
                                            (coe
                                               MAlonzo.Code.Algebra.Structures.d3038
                                               (coe
                                                  MAlonzo.Code.Algebra.Structures.d3222
                                                  (coe MAlonzo.Code.Algebra.d1494 v0)))) in
                               MAlonzo.Code.Relation.Binary.PreorderReasoning.C56
                                 (MAlonzo.Code.Relation.Binary.d38
                                    (MAlonzo.Code.Relation.Binary.d92
                                       (MAlonzo.Code.Relation.Binary.du150 v13))
                                    v2 v2
                                    (MAlonzo.Code.Relation.Binary.Core.d516
                                       (MAlonzo.Code.Relation.Binary.d36
                                          (MAlonzo.Code.Relation.Binary.d92
                                             (MAlonzo.Code.Relation.Binary.du150 v13)))
                                       v2)))))))))))
name274 = "Algebra.Properties.BooleanAlgebra.\172\8869=\8868"
d274 v0 v1 v2 = du274 v2
du274 v0
  = coe
      du264 v0 (coe MAlonzo.Code.Algebra.d1492 v0)
      (coe MAlonzo.Code.Algebra.d1490 v0)
      (coe
         MAlonzo.Code.Data.Product.d28 (coe du196 v0)
         (coe MAlonzo.Code.Algebra.d1492 v0))
      (coe
         MAlonzo.Code.Data.Product.d28 (coe du242 v0)
         (coe MAlonzo.Code.Algebra.d1492 v0))
name276 = "Algebra.Properties.BooleanAlgebra.\172\8868=\8869"
d276 v0 v1 v2 = du276 v2
du276 v0
  = coe
      du264 v0 (coe MAlonzo.Code.Algebra.d1490 v0)
      (coe MAlonzo.Code.Algebra.d1492 v0)
      (coe
         MAlonzo.Code.Data.Product.d28 (coe du224 v0)
         (coe MAlonzo.Code.Algebra.d1490 v0))
      (coe
         MAlonzo.Code.Data.Product.d28 (coe du210 v0)
         (coe MAlonzo.Code.Algebra.d1490 v0))
name278 = "Algebra.Properties.BooleanAlgebra.\172-involutive"
d278 v0 v1 v2 v3 = du278 v2 v3
du278 v0 v1
  = coe
      du264 v0 (coe MAlonzo.Code.Algebra.d1488 v0 v1) v1
      (coe MAlonzo.Code.Data.Product.d26 (coe du182 v0) v1)
      (coe MAlonzo.Code.Data.Product.d26 (coe du172 v0) v1)
name286 = "Algebra.Properties.BooleanAlgebra.deMorgan\8321"
d286 v0 v1 v2 v3 v4 = du286 v2 v3 v4
du286 v0 v1 v2
  = coe
      du264 v0 (coe MAlonzo.Code.Algebra.d1486 v0 v1 v2)
      (coe
         MAlonzo.Code.Algebra.d1484 v0
         (coe MAlonzo.Code.Algebra.d1488 v0 v1)
         (coe MAlonzo.Code.Algebra.d1488 v0 v2))
      (coe du296 v0 v1 v2) (coe du300 v0 v1 v2)
name296 = "Algebra.Properties.BooleanAlgebra._.lem\8321"
d296 v0 v1 v2 v3 v4 = du296 v2 v3 v4
du296 v0 v1 v2
  = coe
      MAlonzo.Code.Relation.Binary.PreorderReasoning.d62
      (let v3
             = coe
                 MAlonzo.Code.Relation.Binary.C143
                 (coe
                    MAlonzo.Code.Algebra.Structures.d2874
                    (coe
                       MAlonzo.Code.Algebra.Structures.d3038
                       (coe
                          MAlonzo.Code.Algebra.Structures.d3222
                          (coe MAlonzo.Code.Algebra.d1494 v0)))) in
       MAlonzo.Code.Relation.Binary.PreorderReasoning.du72
         (MAlonzo.Code.Relation.Binary.du150 v3)
         (MAlonzo.Code.Algebra.d1486
            v0 (MAlonzo.Code.Algebra.d1486 v0 v1 v2)
            (MAlonzo.Code.Algebra.d1484
               v0 (MAlonzo.Code.Algebra.d1488 v0 v1)
               (MAlonzo.Code.Algebra.d1488 v0 v2)))
         (MAlonzo.Code.Algebra.d1484
            v0
            (MAlonzo.Code.Algebra.d1486
               v0 (MAlonzo.Code.Algebra.d1486 v0 v1 v2)
               (MAlonzo.Code.Algebra.d1488 v0 v1))
            (MAlonzo.Code.Algebra.d1486
               v0 (MAlonzo.Code.Algebra.d1486 v0 v1 v2)
               (MAlonzo.Code.Algebra.d1488 v0 v2)))
         (MAlonzo.Code.Algebra.d1492 v0)
         (MAlonzo.Code.Data.Product.d26
            (MAlonzo.Code.Algebra.Properties.DistributiveLattice.du162
               (MAlonzo.Code.Algebra.C687
                  (MAlonzo.Code.Algebra.d1484 v0) (MAlonzo.Code.Algebra.d1486 v0)
                  (MAlonzo.Code.Algebra.Structures.d3222
                     (MAlonzo.Code.Algebra.d1494 v0))))
            (MAlonzo.Code.Algebra.d1486 v0 v1 v2)
            (MAlonzo.Code.Algebra.d1488 v0 v1)
            (MAlonzo.Code.Algebra.d1488 v0 v2))
         (let v4
                = coe
                    MAlonzo.Code.Relation.Binary.C143
                    (coe
                       MAlonzo.Code.Algebra.Structures.d2874
                       (coe
                          MAlonzo.Code.Algebra.Structures.d3038
                          (coe
                             MAlonzo.Code.Algebra.Structures.d3222
                             (coe MAlonzo.Code.Algebra.d1494 v0)))) in
          MAlonzo.Code.Relation.Binary.PreorderReasoning.du72
            (MAlonzo.Code.Relation.Binary.du150 v4)
            (MAlonzo.Code.Algebra.d1484
               v0
               (MAlonzo.Code.Algebra.d1486
                  v0 (MAlonzo.Code.Algebra.d1486 v0 v1 v2)
                  (MAlonzo.Code.Algebra.d1488 v0 v1))
               (MAlonzo.Code.Algebra.d1486
                  v0 (MAlonzo.Code.Algebra.d1486 v0 v1 v2)
                  (MAlonzo.Code.Algebra.d1488 v0 v2)))
            (MAlonzo.Code.Algebra.d1484
               v0
               (MAlonzo.Code.Algebra.d1486
                  v0 (MAlonzo.Code.Algebra.d1486 v0 v2 v1)
                  (MAlonzo.Code.Algebra.d1488 v0 v1))
               (MAlonzo.Code.Algebra.d1486
                  v0 (MAlonzo.Code.Algebra.d1486 v0 v1 v2)
                  (MAlonzo.Code.Algebra.d1488 v0 v2)))
            (MAlonzo.Code.Algebra.d1492 v0)
            (MAlonzo.Code.Function.du176
               (MAlonzo.Code.Function.du176
                  (MAlonzo.Code.Algebra.Structures.d2882
                     (MAlonzo.Code.Algebra.Structures.d3038
                        (MAlonzo.Code.Algebra.Structures.d3222
                           (MAlonzo.Code.Algebra.d1494 v0)))
                     v1 v2)
                  (MAlonzo.Code.Algebra.Structures.d2886
                     (MAlonzo.Code.Algebra.Structures.d3038
                        (MAlonzo.Code.Algebra.Structures.d3222
                           (MAlonzo.Code.Algebra.d1494 v0)))
                     (MAlonzo.Code.Algebra.d1486 v0 v1 v2)
                     (MAlonzo.Code.Algebra.d1486 v0 v2 v1)
                     (MAlonzo.Code.Algebra.d1488 v0 v1)
                     (MAlonzo.Code.Algebra.d1488 v0 v1))
                  (MAlonzo.Code.Relation.Binary.Core.d516
                     (MAlonzo.Code.Algebra.Structures.d2874
                        (MAlonzo.Code.Algebra.Structures.d3038
                           (MAlonzo.Code.Algebra.Structures.d3222
                              (MAlonzo.Code.Algebra.d1494 v0))))
                     (MAlonzo.Code.Algebra.d1488 v0 v1)))
               (MAlonzo.Code.Algebra.Structures.d2880
                  (MAlonzo.Code.Algebra.Structures.d3038
                     (MAlonzo.Code.Algebra.Structures.d3222
                        (MAlonzo.Code.Algebra.d1494 v0)))
                  (MAlonzo.Code.Algebra.d1486
                     v0 (MAlonzo.Code.Algebra.d1486 v0 v1 v2)
                     (MAlonzo.Code.Algebra.d1488 v0 v1))
                  (MAlonzo.Code.Algebra.d1486
                     v0 (MAlonzo.Code.Algebra.d1486 v0 v2 v1)
                     (MAlonzo.Code.Algebra.d1488 v0 v1))
                  (MAlonzo.Code.Algebra.d1486
                     v0 (MAlonzo.Code.Algebra.d1486 v0 v1 v2)
                     (MAlonzo.Code.Algebra.d1488 v0 v2))
                  (MAlonzo.Code.Algebra.d1486
                     v0 (MAlonzo.Code.Algebra.d1486 v0 v1 v2)
                     (MAlonzo.Code.Algebra.d1488 v0 v2)))
               (MAlonzo.Code.Relation.Binary.Core.d516
                  (MAlonzo.Code.Algebra.Structures.d2874
                     (MAlonzo.Code.Algebra.Structures.d3038
                        (MAlonzo.Code.Algebra.Structures.d3222
                           (MAlonzo.Code.Algebra.d1494 v0))))
                  (MAlonzo.Code.Algebra.d1486
                     v0 (MAlonzo.Code.Algebra.d1486 v0 v1 v2)
                     (MAlonzo.Code.Algebra.d1488 v0 v2))))
            (let v5
                   = coe
                       MAlonzo.Code.Relation.Binary.C143
                       (coe
                          MAlonzo.Code.Algebra.Structures.d2874
                          (coe
                             MAlonzo.Code.Algebra.Structures.d3038
                             (coe
                                MAlonzo.Code.Algebra.Structures.d3222
                                (coe MAlonzo.Code.Algebra.d1494 v0)))) in
             MAlonzo.Code.Relation.Binary.PreorderReasoning.du72
               (MAlonzo.Code.Relation.Binary.du150 v5)
               (MAlonzo.Code.Algebra.d1484
                  v0
                  (MAlonzo.Code.Algebra.d1486
                     v0 (MAlonzo.Code.Algebra.d1486 v0 v2 v1)
                     (MAlonzo.Code.Algebra.d1488 v0 v1))
                  (MAlonzo.Code.Algebra.d1486
                     v0 (MAlonzo.Code.Algebra.d1486 v0 v1 v2)
                     (MAlonzo.Code.Algebra.d1488 v0 v2)))
               (MAlonzo.Code.Algebra.d1484
                  v0
                  (MAlonzo.Code.Algebra.d1486
                     v0 v2
                     (MAlonzo.Code.Algebra.d1486
                        v0 v1 (MAlonzo.Code.Algebra.d1488 v0 v1)))
                  (MAlonzo.Code.Algebra.d1486
                     v0 v1
                     (MAlonzo.Code.Algebra.d1486
                        v0 v2 (MAlonzo.Code.Algebra.d1488 v0 v2))))
               (MAlonzo.Code.Algebra.d1492 v0)
               (MAlonzo.Code.Function.du176
                  (MAlonzo.Code.Algebra.Structures.d2884
                     (MAlonzo.Code.Algebra.Structures.d3038
                        (MAlonzo.Code.Algebra.Structures.d3222
                           (MAlonzo.Code.Algebra.d1494 v0)))
                     v2 v1 (MAlonzo.Code.Algebra.d1488 v0 v1))
                  (MAlonzo.Code.Algebra.Structures.d2880
                     (MAlonzo.Code.Algebra.Structures.d3038
                        (MAlonzo.Code.Algebra.Structures.d3222
                           (MAlonzo.Code.Algebra.d1494 v0)))
                     (MAlonzo.Code.Algebra.d1486
                        v0 (MAlonzo.Code.Algebra.d1486 v0 v2 v1)
                        (MAlonzo.Code.Algebra.d1488 v0 v1))
                     (MAlonzo.Code.Algebra.d1486
                        v0 v2
                        (MAlonzo.Code.Algebra.d1486
                           v0 v1 (MAlonzo.Code.Algebra.d1488 v0 v1)))
                     (MAlonzo.Code.Algebra.d1486
                        v0 (MAlonzo.Code.Algebra.d1486 v0 v1 v2)
                        (MAlonzo.Code.Algebra.d1488 v0 v2))
                     (MAlonzo.Code.Algebra.d1486
                        v0 v1
                        (MAlonzo.Code.Algebra.d1486
                           v0 v2 (MAlonzo.Code.Algebra.d1488 v0 v2))))
                  (MAlonzo.Code.Algebra.Structures.d2884
                     (MAlonzo.Code.Algebra.Structures.d3038
                        (MAlonzo.Code.Algebra.Structures.d3222
                           (MAlonzo.Code.Algebra.d1494 v0)))
                     v1 v2 (MAlonzo.Code.Algebra.d1488 v0 v2)))
               (let v6
                      = coe
                          MAlonzo.Code.Relation.Binary.C143
                          (coe
                             MAlonzo.Code.Algebra.Structures.d2874
                             (coe
                                MAlonzo.Code.Algebra.Structures.d3038
                                (coe
                                   MAlonzo.Code.Algebra.Structures.d3222
                                   (coe MAlonzo.Code.Algebra.d1494 v0)))) in
                MAlonzo.Code.Relation.Binary.PreorderReasoning.du72
                  (MAlonzo.Code.Relation.Binary.du150 v6)
                  (MAlonzo.Code.Algebra.d1484
                     v0
                     (MAlonzo.Code.Algebra.d1486
                        v0 v2
                        (MAlonzo.Code.Algebra.d1486
                           v0 v1 (MAlonzo.Code.Algebra.d1488 v0 v1)))
                     (MAlonzo.Code.Algebra.d1486
                        v0 v1
                        (MAlonzo.Code.Algebra.d1486
                           v0 v2 (MAlonzo.Code.Algebra.d1488 v0 v2))))
                  (MAlonzo.Code.Algebra.d1484
                     v0
                     (MAlonzo.Code.Algebra.d1486 v0 v2 (MAlonzo.Code.Algebra.d1492 v0))
                     (MAlonzo.Code.Algebra.d1486 v0 v1 (MAlonzo.Code.Algebra.d1492 v0)))
                  (MAlonzo.Code.Algebra.d1492 v0)
                  (MAlonzo.Code.Function.du176
                     (MAlonzo.Code.Function.du176
                        (MAlonzo.Code.Relation.Binary.Core.d516
                           (MAlonzo.Code.Algebra.Structures.d2874
                              (MAlonzo.Code.Algebra.Structures.d3038
                                 (MAlonzo.Code.Algebra.Structures.d3222
                                    (MAlonzo.Code.Algebra.d1494 v0))))
                           v2)
                        (MAlonzo.Code.Algebra.Structures.d2886
                           (MAlonzo.Code.Algebra.Structures.d3038
                              (MAlonzo.Code.Algebra.Structures.d3222
                                 (MAlonzo.Code.Algebra.d1494 v0)))
                           v2 v2
                           (MAlonzo.Code.Algebra.d1486
                              v0 v1 (MAlonzo.Code.Algebra.d1488 v0 v1))
                           (MAlonzo.Code.Algebra.d1492 v0))
                        (MAlonzo.Code.Data.Product.d28 (du182 v0) v1))
                     (MAlonzo.Code.Algebra.Structures.d2880
                        (MAlonzo.Code.Algebra.Structures.d3038
                           (MAlonzo.Code.Algebra.Structures.d3222
                              (MAlonzo.Code.Algebra.d1494 v0)))
                        (MAlonzo.Code.Algebra.d1486
                           v0 v2
                           (MAlonzo.Code.Algebra.d1486
                              v0 v1 (MAlonzo.Code.Algebra.d1488 v0 v1)))
                        (MAlonzo.Code.Algebra.d1486 v0 v2 (MAlonzo.Code.Algebra.d1492 v0))
                        (MAlonzo.Code.Algebra.d1486
                           v0 v1
                           (MAlonzo.Code.Algebra.d1486
                              v0 v2 (MAlonzo.Code.Algebra.d1488 v0 v2)))
                        (MAlonzo.Code.Algebra.d1486 v0 v1 (MAlonzo.Code.Algebra.d1492 v0)))
                     (MAlonzo.Code.Function.du176
                        (MAlonzo.Code.Relation.Binary.Core.d516
                           (MAlonzo.Code.Algebra.Structures.d2874
                              (MAlonzo.Code.Algebra.Structures.d3038
                                 (MAlonzo.Code.Algebra.Structures.d3222
                                    (MAlonzo.Code.Algebra.d1494 v0))))
                           v1)
                        (MAlonzo.Code.Algebra.Structures.d2886
                           (MAlonzo.Code.Algebra.Structures.d3038
                              (MAlonzo.Code.Algebra.Structures.d3222
                                 (MAlonzo.Code.Algebra.d1494 v0)))
                           v1 v1
                           (MAlonzo.Code.Algebra.d1486
                              v0 v2 (MAlonzo.Code.Algebra.d1488 v0 v2))
                           (MAlonzo.Code.Algebra.d1492 v0))
                        (MAlonzo.Code.Data.Product.d28 (du182 v0) v2)))
                  (let v7
                         = coe
                             MAlonzo.Code.Relation.Binary.C143
                             (coe
                                MAlonzo.Code.Algebra.Structures.d2874
                                (coe
                                   MAlonzo.Code.Algebra.Structures.d3038
                                   (coe
                                      MAlonzo.Code.Algebra.Structures.d3222
                                      (coe MAlonzo.Code.Algebra.d1494 v0)))) in
                   MAlonzo.Code.Relation.Binary.PreorderReasoning.du72
                     (MAlonzo.Code.Relation.Binary.du150 v7)
                     (MAlonzo.Code.Algebra.d1484
                        v0
                        (MAlonzo.Code.Algebra.d1486 v0 v2 (MAlonzo.Code.Algebra.d1492 v0))
                        (MAlonzo.Code.Algebra.d1486 v0 v1 (MAlonzo.Code.Algebra.d1492 v0)))
                     (MAlonzo.Code.Algebra.d1484
                        v0 (MAlonzo.Code.Algebra.d1492 v0) (MAlonzo.Code.Algebra.d1492 v0))
                     (MAlonzo.Code.Algebra.d1492 v0)
                     (MAlonzo.Code.Function.du176
                        (MAlonzo.Code.Data.Product.d28 (du224 v0) v2)
                        (MAlonzo.Code.Algebra.Structures.d2880
                           (MAlonzo.Code.Algebra.Structures.d3038
                              (MAlonzo.Code.Algebra.Structures.d3222
                                 (MAlonzo.Code.Algebra.d1494 v0)))
                           (MAlonzo.Code.Algebra.d1486 v0 v2 (MAlonzo.Code.Algebra.d1492 v0))
                           (MAlonzo.Code.Algebra.d1492 v0)
                           (MAlonzo.Code.Algebra.d1486 v0 v1 (MAlonzo.Code.Algebra.d1492 v0))
                           (MAlonzo.Code.Algebra.d1492 v0))
                        (MAlonzo.Code.Data.Product.d28 (du224 v0) v1))
                     (let v8
                            = coe
                                MAlonzo.Code.Relation.Binary.C143
                                (coe
                                   MAlonzo.Code.Algebra.Structures.d2874
                                   (coe
                                      MAlonzo.Code.Algebra.Structures.d3038
                                      (coe
                                         MAlonzo.Code.Algebra.Structures.d3222
                                         (coe MAlonzo.Code.Algebra.d1494 v0)))) in
                      MAlonzo.Code.Relation.Binary.PreorderReasoning.du72
                        (MAlonzo.Code.Relation.Binary.du150 v8)
                        (MAlonzo.Code.Algebra.d1484
                           v0 (MAlonzo.Code.Algebra.d1492 v0) (MAlonzo.Code.Algebra.d1492 v0))
                        (MAlonzo.Code.Algebra.d1492 v0) (MAlonzo.Code.Algebra.d1492 v0)
                        (MAlonzo.Code.Data.Product.d28
                           (du210 v0) (MAlonzo.Code.Algebra.d1492 v0))
                        (let v9
                               = coe
                                   MAlonzo.Code.Relation.Binary.C143
                                   (coe
                                      MAlonzo.Code.Algebra.Structures.d2874
                                      (coe
                                         MAlonzo.Code.Algebra.Structures.d3038
                                         (coe
                                            MAlonzo.Code.Algebra.Structures.d3222
                                            (coe MAlonzo.Code.Algebra.d1494 v0)))) in
                         let v10 = coe MAlonzo.Code.Algebra.d1492 v0 in
                         MAlonzo.Code.Relation.Binary.PreorderReasoning.C56
                           (MAlonzo.Code.Relation.Binary.d38
                              (MAlonzo.Code.Relation.Binary.d92
                                 (MAlonzo.Code.Relation.Binary.du150 v9))
                              v10 v10
                              (MAlonzo.Code.Relation.Binary.Core.d516
                                 (MAlonzo.Code.Relation.Binary.d36
                                    (MAlonzo.Code.Relation.Binary.d92
                                       (MAlonzo.Code.Relation.Binary.du150 v9)))
                                 v10)))))))))
name298 = "Algebra.Properties.BooleanAlgebra._.lem\8323"
d298 v0 v1 v2 v3 v4 = du298 v2 v3 v4
du298 v0 v1 v2
  = coe
      MAlonzo.Code.Relation.Binary.PreorderReasoning.d62
      (let v3
             = coe
                 MAlonzo.Code.Relation.Binary.C143
                 (coe
                    MAlonzo.Code.Algebra.Structures.d2874
                    (coe
                       MAlonzo.Code.Algebra.Structures.d3038
                       (coe
                          MAlonzo.Code.Algebra.Structures.d3222
                          (coe MAlonzo.Code.Algebra.d1494 v0)))) in
       MAlonzo.Code.Relation.Binary.PreorderReasoning.du72
         (MAlonzo.Code.Relation.Binary.du150 v3)
         (MAlonzo.Code.Algebra.d1484
            v0 (MAlonzo.Code.Algebra.d1486 v0 v1 v2)
            (MAlonzo.Code.Algebra.d1488 v0 v1))
         (MAlonzo.Code.Algebra.d1486
            v0
            (MAlonzo.Code.Algebra.d1484
               v0 v1 (MAlonzo.Code.Algebra.d1488 v0 v1))
            (MAlonzo.Code.Algebra.d1484
               v0 v2 (MAlonzo.Code.Algebra.d1488 v0 v1)))
         (MAlonzo.Code.Algebra.d1484
            v0 (MAlonzo.Code.Algebra.d1488 v0 v1) v2)
         (MAlonzo.Code.Data.Product.d28
            (MAlonzo.Code.Algebra.Properties.DistributiveLattice.du148
               (MAlonzo.Code.Algebra.C687
                  (MAlonzo.Code.Algebra.d1484 v0) (MAlonzo.Code.Algebra.d1486 v0)
                  (MAlonzo.Code.Algebra.Structures.d3222
                     (MAlonzo.Code.Algebra.d1494 v0))))
            (MAlonzo.Code.Algebra.d1488 v0 v1) v1 v2)
         (let v4
                = coe
                    MAlonzo.Code.Relation.Binary.C143
                    (coe
                       MAlonzo.Code.Algebra.Structures.d2874
                       (coe
                          MAlonzo.Code.Algebra.Structures.d3038
                          (coe
                             MAlonzo.Code.Algebra.Structures.d3222
                             (coe MAlonzo.Code.Algebra.d1494 v0)))) in
          MAlonzo.Code.Relation.Binary.PreorderReasoning.du72
            (MAlonzo.Code.Relation.Binary.du150 v4)
            (MAlonzo.Code.Algebra.d1486
               v0
               (MAlonzo.Code.Algebra.d1484
                  v0 v1 (MAlonzo.Code.Algebra.d1488 v0 v1))
               (MAlonzo.Code.Algebra.d1484
                  v0 v2 (MAlonzo.Code.Algebra.d1488 v0 v1)))
            (MAlonzo.Code.Algebra.d1486
               v0 (MAlonzo.Code.Algebra.d1490 v0)
               (MAlonzo.Code.Algebra.d1484
                  v0 v2 (MAlonzo.Code.Algebra.d1488 v0 v1)))
            (MAlonzo.Code.Algebra.d1484
               v0 (MAlonzo.Code.Algebra.d1488 v0 v1) v2)
            (MAlonzo.Code.Function.du176
               (MAlonzo.Code.Data.Product.d28 (du172 v0) v1)
               (MAlonzo.Code.Algebra.Structures.d2886
                  (MAlonzo.Code.Algebra.Structures.d3038
                     (MAlonzo.Code.Algebra.Structures.d3222
                        (MAlonzo.Code.Algebra.d1494 v0)))
                  (MAlonzo.Code.Algebra.d1484
                     v0 v1 (MAlonzo.Code.Algebra.d1488 v0 v1))
                  (MAlonzo.Code.Algebra.d1490 v0)
                  (MAlonzo.Code.Algebra.d1484
                     v0 v2 (MAlonzo.Code.Algebra.d1488 v0 v1))
                  (MAlonzo.Code.Algebra.d1484
                     v0 v2 (MAlonzo.Code.Algebra.d1488 v0 v1)))
               (MAlonzo.Code.Relation.Binary.Core.d516
                  (MAlonzo.Code.Algebra.Structures.d2874
                     (MAlonzo.Code.Algebra.Structures.d3038
                        (MAlonzo.Code.Algebra.Structures.d3222
                           (MAlonzo.Code.Algebra.d1494 v0))))
                  (MAlonzo.Code.Algebra.d1484
                     v0 v2 (MAlonzo.Code.Algebra.d1488 v0 v1))))
            (let v5
                   = coe
                       MAlonzo.Code.Relation.Binary.C143
                       (coe
                          MAlonzo.Code.Algebra.Structures.d2874
                          (coe
                             MAlonzo.Code.Algebra.Structures.d3038
                             (coe
                                MAlonzo.Code.Algebra.Structures.d3222
                                (coe MAlonzo.Code.Algebra.d1494 v0)))) in
             MAlonzo.Code.Relation.Binary.PreorderReasoning.du72
               (MAlonzo.Code.Relation.Binary.du150 v5)
               (MAlonzo.Code.Algebra.d1486
                  v0 (MAlonzo.Code.Algebra.d1490 v0)
                  (MAlonzo.Code.Algebra.d1484
                     v0 v2 (MAlonzo.Code.Algebra.d1488 v0 v1)))
               (MAlonzo.Code.Algebra.d1484
                  v0 v2 (MAlonzo.Code.Algebra.d1488 v0 v1))
               (MAlonzo.Code.Algebra.d1484
                  v0 (MAlonzo.Code.Algebra.d1488 v0 v1) v2)
               (MAlonzo.Code.Data.Product.d26
                  (du196 v0)
                  (MAlonzo.Code.Algebra.d1484
                     v0 v2 (MAlonzo.Code.Algebra.d1488 v0 v1)))
               (let v6
                      = coe
                          MAlonzo.Code.Relation.Binary.C143
                          (coe
                             MAlonzo.Code.Algebra.Structures.d2874
                             (coe
                                MAlonzo.Code.Algebra.Structures.d3038
                                (coe
                                   MAlonzo.Code.Algebra.Structures.d3222
                                   (coe MAlonzo.Code.Algebra.d1494 v0)))) in
                MAlonzo.Code.Relation.Binary.PreorderReasoning.du72
                  (MAlonzo.Code.Relation.Binary.du150 v6)
                  (MAlonzo.Code.Algebra.d1484
                     v0 v2 (MAlonzo.Code.Algebra.d1488 v0 v1))
                  (MAlonzo.Code.Algebra.d1484
                     v0 (MAlonzo.Code.Algebra.d1488 v0 v1) v2)
                  (MAlonzo.Code.Algebra.d1484
                     v0 (MAlonzo.Code.Algebra.d1488 v0 v1) v2)
                  (MAlonzo.Code.Algebra.Structures.d2876
                     (MAlonzo.Code.Algebra.Structures.d3038
                        (MAlonzo.Code.Algebra.Structures.d3222
                           (MAlonzo.Code.Algebra.d1494 v0)))
                     v2 (MAlonzo.Code.Algebra.d1488 v0 v1))
                  (let v7
                         = coe
                             MAlonzo.Code.Relation.Binary.C143
                             (coe
                                MAlonzo.Code.Algebra.Structures.d2874
                                (coe
                                   MAlonzo.Code.Algebra.Structures.d3038
                                   (coe
                                      MAlonzo.Code.Algebra.Structures.d3222
                                      (coe MAlonzo.Code.Algebra.d1494 v0)))) in
                   let v8
                         = coe
                             MAlonzo.Code.Algebra.d1484 v0
                             (coe MAlonzo.Code.Algebra.d1488 v0 v1) v2 in
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
name300 = "Algebra.Properties.BooleanAlgebra._.lem\8322"
d300 v0 v1 v2 v3 v4 = du300 v2 v3 v4
du300 v0 v1 v2
  = coe
      MAlonzo.Code.Relation.Binary.PreorderReasoning.d62
      (let v3
             = coe
                 MAlonzo.Code.Relation.Binary.C143
                 (coe
                    MAlonzo.Code.Algebra.Structures.d2874
                    (coe
                       MAlonzo.Code.Algebra.Structures.d3038
                       (coe
                          MAlonzo.Code.Algebra.Structures.d3222
                          (coe MAlonzo.Code.Algebra.d1494 v0)))) in
       MAlonzo.Code.Relation.Binary.PreorderReasoning.du72
         (MAlonzo.Code.Relation.Binary.du150 v3)
         (MAlonzo.Code.Algebra.d1484
            v0 (MAlonzo.Code.Algebra.d1486 v0 v1 v2)
            (MAlonzo.Code.Algebra.d1484
               v0 (MAlonzo.Code.Algebra.d1488 v0 v1)
               (MAlonzo.Code.Algebra.d1488 v0 v2)))
         (MAlonzo.Code.Algebra.d1484
            v0
            (MAlonzo.Code.Algebra.d1484
               v0 (MAlonzo.Code.Algebra.d1486 v0 v1 v2)
               (MAlonzo.Code.Algebra.d1488 v0 v1))
            (MAlonzo.Code.Algebra.d1488 v0 v2))
         (MAlonzo.Code.Algebra.d1490 v0)
         (MAlonzo.Code.Function.du158
            (MAlonzo.Code.Relation.Binary.Core.d518
               (MAlonzo.Code.Algebra.Structures.d2874
                  (MAlonzo.Code.Algebra.Structures.d3038
                     (MAlonzo.Code.Algebra.Structures.d3222
                        (MAlonzo.Code.Algebra.d1494 v0))))
               (MAlonzo.Code.Algebra.d1484
                  v0
                  (MAlonzo.Code.Algebra.d1484
                     v0 (MAlonzo.Code.Algebra.d1486 v0 v1 v2)
                     (MAlonzo.Code.Algebra.d1488 v0 v1))
                  (MAlonzo.Code.Algebra.d1488 v0 v2))
               (MAlonzo.Code.Algebra.d1484
                  v0 (MAlonzo.Code.Algebra.d1486 v0 v1 v2)
                  (MAlonzo.Code.Algebra.d1484
                     v0 (MAlonzo.Code.Algebra.d1488 v0 v1)
                     (MAlonzo.Code.Algebra.d1488 v0 v2))))
            (MAlonzo.Code.Algebra.Structures.d2878
               (MAlonzo.Code.Algebra.Structures.d3038
                  (MAlonzo.Code.Algebra.Structures.d3222
                     (MAlonzo.Code.Algebra.d1494 v0)))
               (MAlonzo.Code.Algebra.d1486 v0 v1 v2)
               (MAlonzo.Code.Algebra.d1488 v0 v1)
               (MAlonzo.Code.Algebra.d1488 v0 v2)))
         (let v4
                = coe
                    MAlonzo.Code.Relation.Binary.C143
                    (coe
                       MAlonzo.Code.Algebra.Structures.d2874
                       (coe
                          MAlonzo.Code.Algebra.Structures.d3038
                          (coe
                             MAlonzo.Code.Algebra.Structures.d3222
                             (coe MAlonzo.Code.Algebra.d1494 v0)))) in
          MAlonzo.Code.Relation.Binary.PreorderReasoning.du72
            (MAlonzo.Code.Relation.Binary.du150 v4)
            (MAlonzo.Code.Algebra.d1484
               v0
               (MAlonzo.Code.Algebra.d1484
                  v0 (MAlonzo.Code.Algebra.d1486 v0 v1 v2)
                  (MAlonzo.Code.Algebra.d1488 v0 v1))
               (MAlonzo.Code.Algebra.d1488 v0 v2))
            (MAlonzo.Code.Algebra.d1484
               v0
               (MAlonzo.Code.Algebra.d1484
                  v0 (MAlonzo.Code.Algebra.d1488 v0 v1) v2)
               (MAlonzo.Code.Algebra.d1488 v0 v2))
            (MAlonzo.Code.Algebra.d1490 v0)
            (MAlonzo.Code.Function.du176
               (du298 v0 v1 v2)
               (MAlonzo.Code.Algebra.Structures.d2880
                  (MAlonzo.Code.Algebra.Structures.d3038
                     (MAlonzo.Code.Algebra.Structures.d3222
                        (MAlonzo.Code.Algebra.d1494 v0)))
                  (MAlonzo.Code.Algebra.d1484
                     v0 (MAlonzo.Code.Algebra.d1486 v0 v1 v2)
                     (MAlonzo.Code.Algebra.d1488 v0 v1))
                  (MAlonzo.Code.Algebra.d1484
                     v0 (MAlonzo.Code.Algebra.d1488 v0 v1) v2)
                  (MAlonzo.Code.Algebra.d1488 v0 v2)
                  (MAlonzo.Code.Algebra.d1488 v0 v2))
               (MAlonzo.Code.Relation.Binary.Core.d516
                  (MAlonzo.Code.Algebra.Structures.d2874
                     (MAlonzo.Code.Algebra.Structures.d3038
                        (MAlonzo.Code.Algebra.Structures.d3222
                           (MAlonzo.Code.Algebra.d1494 v0))))
                  (MAlonzo.Code.Algebra.d1488 v0 v2)))
            (let v5
                   = coe
                       MAlonzo.Code.Relation.Binary.C143
                       (coe
                          MAlonzo.Code.Algebra.Structures.d2874
                          (coe
                             MAlonzo.Code.Algebra.Structures.d3038
                             (coe
                                MAlonzo.Code.Algebra.Structures.d3222
                                (coe MAlonzo.Code.Algebra.d1494 v0)))) in
             MAlonzo.Code.Relation.Binary.PreorderReasoning.du72
               (MAlonzo.Code.Relation.Binary.du150 v5)
               (MAlonzo.Code.Algebra.d1484
                  v0
                  (MAlonzo.Code.Algebra.d1484
                     v0 (MAlonzo.Code.Algebra.d1488 v0 v1) v2)
                  (MAlonzo.Code.Algebra.d1488 v0 v2))
               (MAlonzo.Code.Algebra.d1484
                  v0 (MAlonzo.Code.Algebra.d1488 v0 v1)
                  (MAlonzo.Code.Algebra.d1484
                     v0 v2 (MAlonzo.Code.Algebra.d1488 v0 v2)))
               (MAlonzo.Code.Algebra.d1490 v0)
               (MAlonzo.Code.Algebra.Structures.d2878
                  (MAlonzo.Code.Algebra.Structures.d3038
                     (MAlonzo.Code.Algebra.Structures.d3222
                        (MAlonzo.Code.Algebra.d1494 v0)))
                  (MAlonzo.Code.Algebra.d1488 v0 v1) v2
                  (MAlonzo.Code.Algebra.d1488 v0 v2))
               (let v6
                      = coe
                          MAlonzo.Code.Relation.Binary.C143
                          (coe
                             MAlonzo.Code.Algebra.Structures.d2874
                             (coe
                                MAlonzo.Code.Algebra.Structures.d3038
                                (coe
                                   MAlonzo.Code.Algebra.Structures.d3222
                                   (coe MAlonzo.Code.Algebra.d1494 v0)))) in
                MAlonzo.Code.Relation.Binary.PreorderReasoning.du72
                  (MAlonzo.Code.Relation.Binary.du150 v6)
                  (MAlonzo.Code.Algebra.d1484
                     v0 (MAlonzo.Code.Algebra.d1488 v0 v1)
                     (MAlonzo.Code.Algebra.d1484
                        v0 v2 (MAlonzo.Code.Algebra.d1488 v0 v2)))
                  (MAlonzo.Code.Algebra.d1484
                     v0 (MAlonzo.Code.Algebra.d1488 v0 v1)
                     (MAlonzo.Code.Algebra.d1490 v0))
                  (MAlonzo.Code.Algebra.d1490 v0)
                  (MAlonzo.Code.Function.du176
                     (MAlonzo.Code.Relation.Binary.Core.d516
                        (MAlonzo.Code.Algebra.Structures.d2874
                           (MAlonzo.Code.Algebra.Structures.d3038
                              (MAlonzo.Code.Algebra.Structures.d3222
                                 (MAlonzo.Code.Algebra.d1494 v0))))
                        (MAlonzo.Code.Algebra.d1488 v0 v1))
                     (MAlonzo.Code.Algebra.Structures.d2880
                        (MAlonzo.Code.Algebra.Structures.d3038
                           (MAlonzo.Code.Algebra.Structures.d3222
                              (MAlonzo.Code.Algebra.d1494 v0)))
                        (MAlonzo.Code.Algebra.d1488 v0 v1)
                        (MAlonzo.Code.Algebra.d1488 v0 v1)
                        (MAlonzo.Code.Algebra.d1484
                           v0 v2 (MAlonzo.Code.Algebra.d1488 v0 v2))
                        (MAlonzo.Code.Algebra.d1490 v0))
                     (MAlonzo.Code.Data.Product.d28 (du172 v0) v2))
                  (let v7
                         = coe
                             MAlonzo.Code.Relation.Binary.C143
                             (coe
                                MAlonzo.Code.Algebra.Structures.d2874
                                (coe
                                   MAlonzo.Code.Algebra.Structures.d3038
                                   (coe
                                      MAlonzo.Code.Algebra.Structures.d3222
                                      (coe MAlonzo.Code.Algebra.d1494 v0)))) in
                   MAlonzo.Code.Relation.Binary.PreorderReasoning.du72
                     (MAlonzo.Code.Relation.Binary.du150 v7)
                     (MAlonzo.Code.Algebra.d1484
                        v0 (MAlonzo.Code.Algebra.d1488 v0 v1)
                        (MAlonzo.Code.Algebra.d1490 v0))
                     (MAlonzo.Code.Algebra.d1490 v0) (MAlonzo.Code.Algebra.d1490 v0)
                     (MAlonzo.Code.Data.Product.d28
                        (du242 v0) (MAlonzo.Code.Algebra.d1488 v0 v1))
                     (let v8
                            = coe
                                MAlonzo.Code.Relation.Binary.C143
                                (coe
                                   MAlonzo.Code.Algebra.Structures.d2874
                                   (coe
                                      MAlonzo.Code.Algebra.Structures.d3038
                                      (coe
                                         MAlonzo.Code.Algebra.Structures.d3222
                                         (coe MAlonzo.Code.Algebra.d1494 v0)))) in
                      let v9 = coe MAlonzo.Code.Algebra.d1490 v0 in
                      MAlonzo.Code.Relation.Binary.PreorderReasoning.C56
                        (MAlonzo.Code.Relation.Binary.d38
                           (MAlonzo.Code.Relation.Binary.d92
                              (MAlonzo.Code.Relation.Binary.du150 v8))
                           v9 v9
                           (MAlonzo.Code.Relation.Binary.Core.d516
                              (MAlonzo.Code.Relation.Binary.d36
                                 (MAlonzo.Code.Relation.Binary.d92
                                    (MAlonzo.Code.Relation.Binary.du150 v8)))
                              v9))))))))
name306 = "Algebra.Properties.BooleanAlgebra.deMorgan\8322"
d306 v0 v1 v2 v3 v4 = du306 v2 v3 v4
du306 v0 v1 v2
  = coe
      MAlonzo.Code.Relation.Binary.PreorderReasoning.d62
      (let v3
             = coe
                 MAlonzo.Code.Relation.Binary.C143
                 (coe
                    MAlonzo.Code.Algebra.Structures.d2874
                    (coe
                       MAlonzo.Code.Algebra.Structures.d3038
                       (coe
                          MAlonzo.Code.Algebra.Structures.d3222
                          (coe MAlonzo.Code.Algebra.d1494 v0)))) in
       MAlonzo.Code.Relation.Binary.PreorderReasoning.du72
         (MAlonzo.Code.Relation.Binary.du150 v3)
         (MAlonzo.Code.Algebra.d1488
            v0 (MAlonzo.Code.Algebra.d1484 v0 v1 v2))
         (MAlonzo.Code.Algebra.d1488
            v0
            (MAlonzo.Code.Algebra.d1484
               v0
               (MAlonzo.Code.Algebra.d1488 v0 (MAlonzo.Code.Algebra.d1488 v0 v1))
               (MAlonzo.Code.Algebra.d1488
                  v0 (MAlonzo.Code.Algebra.d1488 v0 v2))))
         (MAlonzo.Code.Algebra.d1486
            v0 (MAlonzo.Code.Algebra.d1488 v0 v1)
            (MAlonzo.Code.Algebra.d1488 v0 v2))
         (MAlonzo.Code.Function.du158
            (MAlonzo.Code.Algebra.Structures.d3228
               (MAlonzo.Code.Algebra.d1494 v0)
               (MAlonzo.Code.Algebra.d1484 v0 v1 v2)
               (MAlonzo.Code.Algebra.d1484
                  v0
                  (MAlonzo.Code.Algebra.d1488 v0 (MAlonzo.Code.Algebra.d1488 v0 v1))
                  (MAlonzo.Code.Algebra.d1488
                     v0 (MAlonzo.Code.Algebra.d1488 v0 v2))))
            (MAlonzo.Code.Function.du176
               (MAlonzo.Code.Relation.Binary.Core.d518
                  (MAlonzo.Code.Algebra.Structures.d2874
                     (MAlonzo.Code.Algebra.Structures.d3038
                        (MAlonzo.Code.Algebra.Structures.d3222
                           (MAlonzo.Code.Algebra.d1494 v0))))
                  (MAlonzo.Code.Algebra.d1488 v0 (MAlonzo.Code.Algebra.d1488 v0 v1))
                  v1 (du278 v0 v1))
               (MAlonzo.Code.Algebra.Structures.d2880
                  (MAlonzo.Code.Algebra.Structures.d3038
                     (MAlonzo.Code.Algebra.Structures.d3222
                        (MAlonzo.Code.Algebra.d1494 v0)))
                  v1
                  (MAlonzo.Code.Algebra.d1488 v0 (MAlonzo.Code.Algebra.d1488 v0 v1))
                  v2
                  (MAlonzo.Code.Algebra.d1488 v0 (MAlonzo.Code.Algebra.d1488 v0 v2)))
               (MAlonzo.Code.Relation.Binary.Core.d518
                  (MAlonzo.Code.Algebra.Structures.d2874
                     (MAlonzo.Code.Algebra.Structures.d3038
                        (MAlonzo.Code.Algebra.Structures.d3222
                           (MAlonzo.Code.Algebra.d1494 v0))))
                  (MAlonzo.Code.Algebra.d1488 v0 (MAlonzo.Code.Algebra.d1488 v0 v2))
                  v2 (du278 v0 v2))))
         (let v4
                = coe
                    MAlonzo.Code.Relation.Binary.C143
                    (coe
                       MAlonzo.Code.Algebra.Structures.d2874
                       (coe
                          MAlonzo.Code.Algebra.Structures.d3038
                          (coe
                             MAlonzo.Code.Algebra.Structures.d3222
                             (coe MAlonzo.Code.Algebra.d1494 v0)))) in
          MAlonzo.Code.Relation.Binary.PreorderReasoning.du72
            (MAlonzo.Code.Relation.Binary.du150 v4)
            (MAlonzo.Code.Algebra.d1488
               v0
               (MAlonzo.Code.Algebra.d1484
                  v0
                  (MAlonzo.Code.Algebra.d1488 v0 (MAlonzo.Code.Algebra.d1488 v0 v1))
                  (MAlonzo.Code.Algebra.d1488
                     v0 (MAlonzo.Code.Algebra.d1488 v0 v2))))
            (MAlonzo.Code.Algebra.d1488
               v0
               (MAlonzo.Code.Algebra.d1488
                  v0
                  (MAlonzo.Code.Algebra.d1486
                     v0 (MAlonzo.Code.Algebra.d1488 v0 v1)
                     (MAlonzo.Code.Algebra.d1488 v0 v2))))
            (MAlonzo.Code.Algebra.d1486
               v0 (MAlonzo.Code.Algebra.d1488 v0 v1)
               (MAlonzo.Code.Algebra.d1488 v0 v2))
            (MAlonzo.Code.Function.du158
               (MAlonzo.Code.Algebra.Structures.d3228
                  (MAlonzo.Code.Algebra.d1494 v0)
                  (MAlonzo.Code.Algebra.d1484
                     v0
                     (MAlonzo.Code.Algebra.d1488 v0 (MAlonzo.Code.Algebra.d1488 v0 v1))
                     (MAlonzo.Code.Algebra.d1488 v0 (MAlonzo.Code.Algebra.d1488 v0 v2)))
                  (MAlonzo.Code.Algebra.d1488
                     v0
                     (MAlonzo.Code.Algebra.d1486
                        v0 (MAlonzo.Code.Algebra.d1488 v0 v1)
                        (MAlonzo.Code.Algebra.d1488 v0 v2))))
               (MAlonzo.Code.Function.du158
                  (MAlonzo.Code.Relation.Binary.Core.d518
                     (MAlonzo.Code.Algebra.Structures.d2874
                        (MAlonzo.Code.Algebra.Structures.d3038
                           (MAlonzo.Code.Algebra.Structures.d3222
                              (MAlonzo.Code.Algebra.d1494 v0))))
                     (MAlonzo.Code.Algebra.d1488
                        v0
                        (MAlonzo.Code.Algebra.d1486
                           v0 (MAlonzo.Code.Algebra.d1488 v0 v1)
                           (MAlonzo.Code.Algebra.d1488 v0 v2)))
                     (MAlonzo.Code.Algebra.d1484
                        v0
                        (MAlonzo.Code.Algebra.d1488 v0 (MAlonzo.Code.Algebra.d1488 v0 v1))
                        (MAlonzo.Code.Algebra.d1488
                           v0 (MAlonzo.Code.Algebra.d1488 v0 v2))))
                  (du286
                     v0 (MAlonzo.Code.Algebra.d1488 v0 v1)
                     (MAlonzo.Code.Algebra.d1488 v0 v2))))
            (let v5
                   = coe
                       MAlonzo.Code.Relation.Binary.C143
                       (coe
                          MAlonzo.Code.Algebra.Structures.d2874
                          (coe
                             MAlonzo.Code.Algebra.Structures.d3038
                             (coe
                                MAlonzo.Code.Algebra.Structures.d3222
                                (coe MAlonzo.Code.Algebra.d1494 v0)))) in
             MAlonzo.Code.Relation.Binary.PreorderReasoning.du72
               (MAlonzo.Code.Relation.Binary.du150 v5)
               (MAlonzo.Code.Algebra.d1488
                  v0
                  (MAlonzo.Code.Algebra.d1488
                     v0
                     (MAlonzo.Code.Algebra.d1486
                        v0 (MAlonzo.Code.Algebra.d1488 v0 v1)
                        (MAlonzo.Code.Algebra.d1488 v0 v2))))
               (MAlonzo.Code.Algebra.d1486
                  v0 (MAlonzo.Code.Algebra.d1488 v0 v1)
                  (MAlonzo.Code.Algebra.d1488 v0 v2))
               (MAlonzo.Code.Algebra.d1486
                  v0 (MAlonzo.Code.Algebra.d1488 v0 v1)
                  (MAlonzo.Code.Algebra.d1488 v0 v2))
               (du278
                  v0
                  (MAlonzo.Code.Algebra.d1486
                     v0 (MAlonzo.Code.Algebra.d1488 v0 v1)
                     (MAlonzo.Code.Algebra.d1488 v0 v2)))
               (let v6
                      = coe
                          MAlonzo.Code.Relation.Binary.C143
                          (coe
                             MAlonzo.Code.Algebra.Structures.d2874
                             (coe
                                MAlonzo.Code.Algebra.Structures.d3038
                                (coe
                                   MAlonzo.Code.Algebra.Structures.d3222
                                   (coe MAlonzo.Code.Algebra.d1494 v0)))) in
                let v7
                      = coe
                          MAlonzo.Code.Algebra.d1486 v0
                          (coe MAlonzo.Code.Algebra.d1488 v0 v1)
                          (coe MAlonzo.Code.Algebra.d1488 v0 v2) in
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
name318 = "Algebra.Properties.BooleanAlgebra.replace-equality"
d318 v0 v1 v2 v3 v4 = du318 v2 v4
du318 v0 v1
  = coe
      MAlonzo.Code.Algebra.C719 (coe MAlonzo.Code.Algebra.d1484 v0)
      (coe MAlonzo.Code.Algebra.d1486 v0)
      (coe MAlonzo.Code.Algebra.d1488 v0)
      (coe MAlonzo.Code.Algebra.d1490 v0)
      (coe MAlonzo.Code.Algebra.d1492 v0)
      (coe
         MAlonzo.Code.Algebra.Structures.C2165
         (coe
            MAlonzo.Code.Algebra.d1416
            (coe
               MAlonzo.Code.Algebra.Properties.DistributiveLattice.du194
               (coe
                  MAlonzo.Code.Algebra.C687 (coe MAlonzo.Code.Algebra.d1484 v0)
                  (coe MAlonzo.Code.Algebra.d1486 v0)
                  (coe
                     MAlonzo.Code.Algebra.Structures.d3222
                     (coe MAlonzo.Code.Algebra.d1494 v0)))
               v1))
         (\ v2 ->
            coe
              MAlonzo.Code.Function.Equality.d38
              (coe
                 MAlonzo.Code.Function.Equivalence.d34
                 (coe
                    v1
                    (coe
                       MAlonzo.Code.Algebra.d1484 v0 v2
                       (coe MAlonzo.Code.Algebra.d1488 v0 v2))
                    (coe MAlonzo.Code.Algebra.d1490 v0)))
              (coe
                 MAlonzo.Code.Algebra.Structures.d3224
                 (coe MAlonzo.Code.Algebra.d1494 v0) v2))
         (\ v2 ->
            coe
              MAlonzo.Code.Function.Equality.d38
              (coe
                 MAlonzo.Code.Function.Equivalence.d34
                 (coe
                    v1
                    (coe
                       MAlonzo.Code.Algebra.d1486 v0 v2
                       (coe MAlonzo.Code.Algebra.d1488 v0 v2))
                    (coe MAlonzo.Code.Algebra.d1492 v0)))
              (coe
                 MAlonzo.Code.Algebra.Structures.d3226
                 (coe MAlonzo.Code.Algebra.d1494 v0) v2))
         (\ v2 v3 v4 ->
            coe
              MAlonzo.Code.Function.Equality.d38
              (coe
                 MAlonzo.Code.Function.Equivalence.d34
                 (coe
                    v1 (coe MAlonzo.Code.Algebra.d1488 v0 v2)
                    (coe MAlonzo.Code.Algebra.d1488 v0 v3)))
              (coe
                 MAlonzo.Code.Algebra.Structures.d3228
                 (coe MAlonzo.Code.Algebra.d1494 v0) v2 v3
                 (coe
                    MAlonzo.Code.Function.Equality.d38
                    (coe MAlonzo.Code.Function.Equivalence.d36 (coe v1 v2 v3)) v4))))
name334 = "Algebra.Properties.BooleanAlgebra._.E.from"
d334 v0 v1 v2 v3 v4 = du334 v2 v3 v4
du334 v0 v1 v2
  = coe MAlonzo.Code.Function.Equivalence.d36 (coe v0 v1 v2)
name336 = "Algebra.Properties.BooleanAlgebra._.E.to"
d336 v0 v1 v2 v3 v4 = du336 v2 v3 v4
du336 v0 v1 v2
  = coe MAlonzo.Code.Function.Equivalence.d34 (coe v0 v1 v2)
name354 = "Algebra.Properties.BooleanAlgebra.XorRing._\8853_"
d354 v0 v1 v2 = du354 v1
du354 v0 = coe v0
name364 = "Algebra.Properties.BooleanAlgebra.XorRing.helper"
d364 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10
  = du364 v2 v5 v6 v7 v8 v9 v10
du364 v0 v1 v2 v3 v4 v5 v6
  = coe
      MAlonzo.Code.Function.du176 v5
      (coe
         MAlonzo.Code.Algebra.Structures.d2886
         (coe
            MAlonzo.Code.Algebra.Structures.d3038
            (coe
               MAlonzo.Code.Algebra.Structures.d3222
               (coe MAlonzo.Code.Algebra.d1494 v0)))
         v1 v2 (coe MAlonzo.Code.Algebra.d1488 v0 v3)
         (coe MAlonzo.Code.Algebra.d1488 v0 v4))
      (coe
         MAlonzo.Code.Algebra.Structures.d3228
         (coe MAlonzo.Code.Algebra.d1494 v0) v3 v4 v6)
name374
  = "Algebra.Properties.BooleanAlgebra.XorRing.\8853-\172-distrib\737"
d374 v0 v1 v2 v3 v4 v5 v6 = du374 v2 v3 v4 v5 v6
du374 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Relation.Binary.PreorderReasoning.d62
      (let v5
             = coe
                 MAlonzo.Code.Relation.Binary.C143
                 (coe
                    MAlonzo.Code.Algebra.Structures.d2874
                    (coe
                       MAlonzo.Code.Algebra.Structures.d3038
                       (coe
                          MAlonzo.Code.Algebra.Structures.d3222
                          (coe MAlonzo.Code.Algebra.d1494 v0)))) in
       MAlonzo.Code.Relation.Binary.PreorderReasoning.du72
         (MAlonzo.Code.Relation.Binary.du150 v5)
         (MAlonzo.Code.Algebra.d1488 v0 (v1 v3 v4))
         (MAlonzo.Code.Algebra.d1488
            v0
            (MAlonzo.Code.Algebra.d1486
               v0 (MAlonzo.Code.Algebra.d1484 v0 v3 v4)
               (MAlonzo.Code.Algebra.d1488
                  v0 (MAlonzo.Code.Algebra.d1486 v0 v3 v4))))
         (v1 (MAlonzo.Code.Algebra.d1488 v0 v3) v4)
         (MAlonzo.Code.Function.du158
            (MAlonzo.Code.Algebra.Structures.d3228
               (MAlonzo.Code.Algebra.d1494 v0) (v1 v3 v4)
               (MAlonzo.Code.Algebra.d1486
                  v0 (MAlonzo.Code.Algebra.d1484 v0 v3 v4)
                  (MAlonzo.Code.Algebra.d1488
                     v0 (MAlonzo.Code.Algebra.d1486 v0 v3 v4))))
            (v2 v3 v4))
         (let v6
                = coe
                    MAlonzo.Code.Relation.Binary.C143
                    (coe
                       MAlonzo.Code.Algebra.Structures.d2874
                       (coe
                          MAlonzo.Code.Algebra.Structures.d3038
                          (coe
                             MAlonzo.Code.Algebra.Structures.d3222
                             (coe MAlonzo.Code.Algebra.d1494 v0)))) in
          MAlonzo.Code.Relation.Binary.PreorderReasoning.du72
            (MAlonzo.Code.Relation.Binary.du150 v6)
            (MAlonzo.Code.Algebra.d1488
               v0
               (MAlonzo.Code.Algebra.d1486
                  v0 (MAlonzo.Code.Algebra.d1484 v0 v3 v4)
                  (MAlonzo.Code.Algebra.d1488
                     v0 (MAlonzo.Code.Algebra.d1486 v0 v3 v4))))
            (MAlonzo.Code.Algebra.d1488
               v0
               (MAlonzo.Code.Algebra.d1484
                  v0
                  (MAlonzo.Code.Algebra.d1486
                     v0 v3
                     (MAlonzo.Code.Algebra.d1488
                        v0 (MAlonzo.Code.Algebra.d1486 v0 v3 v4)))
                  (MAlonzo.Code.Algebra.d1486
                     v0 v4
                     (MAlonzo.Code.Algebra.d1488
                        v0 (MAlonzo.Code.Algebra.d1486 v0 v3 v4)))))
            (v1 (MAlonzo.Code.Algebra.d1488 v0 v3) v4)
            (MAlonzo.Code.Algebra.Structures.d3228
               (MAlonzo.Code.Algebra.d1494 v0)
               (MAlonzo.Code.Algebra.d1486
                  v0 (MAlonzo.Code.Algebra.d1484 v0 v3 v4)
                  (MAlonzo.Code.Algebra.d1488
                     v0 (MAlonzo.Code.Algebra.d1486 v0 v3 v4)))
               (MAlonzo.Code.Algebra.d1484
                  v0
                  (MAlonzo.Code.Algebra.d1486
                     v0 v3
                     (MAlonzo.Code.Algebra.d1488
                        v0 (MAlonzo.Code.Algebra.d1486 v0 v3 v4)))
                  (MAlonzo.Code.Algebra.d1486
                     v0 v4
                     (MAlonzo.Code.Algebra.d1488
                        v0 (MAlonzo.Code.Algebra.d1486 v0 v3 v4))))
               (MAlonzo.Code.Data.Product.d28
                  (MAlonzo.Code.Algebra.Properties.DistributiveLattice.du162
                     (MAlonzo.Code.Algebra.C687
                        (MAlonzo.Code.Algebra.d1484 v0) (MAlonzo.Code.Algebra.d1486 v0)
                        (MAlonzo.Code.Algebra.Structures.d3222
                           (MAlonzo.Code.Algebra.d1494 v0))))
                  (MAlonzo.Code.Algebra.d1488
                     v0 (MAlonzo.Code.Algebra.d1486 v0 v3 v4))
                  v3 v4))
            (let v7
                   = coe
                       MAlonzo.Code.Relation.Binary.C143
                       (coe
                          MAlonzo.Code.Algebra.Structures.d2874
                          (coe
                             MAlonzo.Code.Algebra.Structures.d3038
                             (coe
                                MAlonzo.Code.Algebra.Structures.d3222
                                (coe MAlonzo.Code.Algebra.d1494 v0)))) in
             MAlonzo.Code.Relation.Binary.PreorderReasoning.du72
               (MAlonzo.Code.Relation.Binary.du150 v7)
               (MAlonzo.Code.Algebra.d1488
                  v0
                  (MAlonzo.Code.Algebra.d1484
                     v0
                     (MAlonzo.Code.Algebra.d1486
                        v0 v3
                        (MAlonzo.Code.Algebra.d1488
                           v0 (MAlonzo.Code.Algebra.d1486 v0 v3 v4)))
                     (MAlonzo.Code.Algebra.d1486
                        v0 v4
                        (MAlonzo.Code.Algebra.d1488
                           v0 (MAlonzo.Code.Algebra.d1486 v0 v3 v4)))))
               (MAlonzo.Code.Algebra.d1488
                  v0
                  (MAlonzo.Code.Algebra.d1484
                     v0
                     (MAlonzo.Code.Algebra.d1486
                        v0 v3
                        (MAlonzo.Code.Algebra.d1488
                           v0 (MAlonzo.Code.Algebra.d1486 v0 v3 v4)))
                     (MAlonzo.Code.Algebra.d1486
                        v0 v4
                        (MAlonzo.Code.Algebra.d1488
                           v0 (MAlonzo.Code.Algebra.d1486 v0 v4 v3)))))
               (v1 (MAlonzo.Code.Algebra.d1488 v0 v3) v4)
               (MAlonzo.Code.Function.du158
                  (MAlonzo.Code.Algebra.Structures.d3228
                     (MAlonzo.Code.Algebra.d1494 v0)
                     (MAlonzo.Code.Algebra.d1484
                        v0
                        (MAlonzo.Code.Algebra.d1486
                           v0 v3
                           (MAlonzo.Code.Algebra.d1488
                              v0 (MAlonzo.Code.Algebra.d1486 v0 v3 v4)))
                        (MAlonzo.Code.Algebra.d1486
                           v0 v4
                           (MAlonzo.Code.Algebra.d1488
                              v0 (MAlonzo.Code.Algebra.d1486 v0 v3 v4))))
                     (MAlonzo.Code.Algebra.d1484
                        v0
                        (MAlonzo.Code.Algebra.d1486
                           v0 v3
                           (MAlonzo.Code.Algebra.d1488
                              v0 (MAlonzo.Code.Algebra.d1486 v0 v3 v4)))
                        (MAlonzo.Code.Algebra.d1486
                           v0 v4
                           (MAlonzo.Code.Algebra.d1488
                              v0 (MAlonzo.Code.Algebra.d1486 v0 v4 v3)))))
                  (MAlonzo.Code.Function.du176
                     (MAlonzo.Code.Relation.Binary.Core.d516
                        (MAlonzo.Code.Algebra.Structures.d2874
                           (MAlonzo.Code.Algebra.Structures.d3038
                              (MAlonzo.Code.Algebra.Structures.d3222
                                 (MAlonzo.Code.Algebra.d1494 v0))))
                        (MAlonzo.Code.Algebra.d1486
                           v0 v3
                           (MAlonzo.Code.Algebra.d1488
                              v0 (MAlonzo.Code.Algebra.d1486 v0 v3 v4))))
                     (MAlonzo.Code.Algebra.Structures.d2880
                        (MAlonzo.Code.Algebra.Structures.d3038
                           (MAlonzo.Code.Algebra.Structures.d3222
                              (MAlonzo.Code.Algebra.d1494 v0)))
                        (MAlonzo.Code.Algebra.d1486
                           v0 v3
                           (MAlonzo.Code.Algebra.d1488
                              v0 (MAlonzo.Code.Algebra.d1486 v0 v3 v4)))
                        (MAlonzo.Code.Algebra.d1486
                           v0 v3
                           (MAlonzo.Code.Algebra.d1488
                              v0 (MAlonzo.Code.Algebra.d1486 v0 v3 v4)))
                        (MAlonzo.Code.Algebra.d1486
                           v0 v4
                           (MAlonzo.Code.Algebra.d1488
                              v0 (MAlonzo.Code.Algebra.d1486 v0 v3 v4)))
                        (MAlonzo.Code.Algebra.d1486
                           v0 v4
                           (MAlonzo.Code.Algebra.d1488
                              v0 (MAlonzo.Code.Algebra.d1486 v0 v4 v3))))
                     (MAlonzo.Code.Function.du176
                        (MAlonzo.Code.Relation.Binary.Core.d516
                           (MAlonzo.Code.Algebra.Structures.d2874
                              (MAlonzo.Code.Algebra.Structures.d3038
                                 (MAlonzo.Code.Algebra.Structures.d3222
                                    (MAlonzo.Code.Algebra.d1494 v0))))
                           v4)
                        (MAlonzo.Code.Algebra.Structures.d2886
                           (MAlonzo.Code.Algebra.Structures.d3038
                              (MAlonzo.Code.Algebra.Structures.d3222
                                 (MAlonzo.Code.Algebra.d1494 v0)))
                           v4 v4
                           (MAlonzo.Code.Algebra.d1488
                              v0 (MAlonzo.Code.Algebra.d1486 v0 v3 v4))
                           (MAlonzo.Code.Algebra.d1488
                              v0 (MAlonzo.Code.Algebra.d1486 v0 v4 v3)))
                        (MAlonzo.Code.Algebra.Structures.d3228
                           (MAlonzo.Code.Algebra.d1494 v0)
                           (MAlonzo.Code.Algebra.d1486 v0 v3 v4)
                           (MAlonzo.Code.Algebra.d1486 v0 v4 v3)
                           (MAlonzo.Code.Algebra.Structures.d2882
                              (MAlonzo.Code.Algebra.Structures.d3038
                                 (MAlonzo.Code.Algebra.Structures.d3222
                                    (MAlonzo.Code.Algebra.d1494 v0)))
                              v3 v4)))))
               (let v8
                      = coe
                          MAlonzo.Code.Relation.Binary.C143
                          (coe
                             MAlonzo.Code.Algebra.Structures.d2874
                             (coe
                                MAlonzo.Code.Algebra.Structures.d3038
                                (coe
                                   MAlonzo.Code.Algebra.Structures.d3222
                                   (coe MAlonzo.Code.Algebra.d1494 v0)))) in
                MAlonzo.Code.Relation.Binary.PreorderReasoning.du72
                  (MAlonzo.Code.Relation.Binary.du150 v8)
                  (MAlonzo.Code.Algebra.d1488
                     v0
                     (MAlonzo.Code.Algebra.d1484
                        v0
                        (MAlonzo.Code.Algebra.d1486
                           v0 v3
                           (MAlonzo.Code.Algebra.d1488
                              v0 (MAlonzo.Code.Algebra.d1486 v0 v3 v4)))
                        (MAlonzo.Code.Algebra.d1486
                           v0 v4
                           (MAlonzo.Code.Algebra.d1488
                              v0 (MAlonzo.Code.Algebra.d1486 v0 v4 v3)))))
                  (MAlonzo.Code.Algebra.d1488
                     v0
                     (MAlonzo.Code.Algebra.d1484
                        v0
                        (MAlonzo.Code.Algebra.d1486
                           v0 v3 (MAlonzo.Code.Algebra.d1488 v0 v4))
                        (MAlonzo.Code.Algebra.d1486
                           v0 v4 (MAlonzo.Code.Algebra.d1488 v0 v3))))
                  (v1 (MAlonzo.Code.Algebra.d1488 v0 v3) v4)
                  (MAlonzo.Code.Function.du158
                     (MAlonzo.Code.Algebra.Structures.d3228
                        (MAlonzo.Code.Algebra.d1494 v0)
                        (MAlonzo.Code.Algebra.d1484
                           v0
                           (MAlonzo.Code.Algebra.d1486
                              v0 v3
                              (MAlonzo.Code.Algebra.d1488
                                 v0 (MAlonzo.Code.Algebra.d1486 v0 v3 v4)))
                           (MAlonzo.Code.Algebra.d1486
                              v0 v4
                              (MAlonzo.Code.Algebra.d1488
                                 v0 (MAlonzo.Code.Algebra.d1486 v0 v4 v3))))
                        (MAlonzo.Code.Algebra.d1484
                           v0
                           (MAlonzo.Code.Algebra.d1486
                              v0 v3 (MAlonzo.Code.Algebra.d1488 v0 v4))
                           (MAlonzo.Code.Algebra.d1486
                              v0 v4 (MAlonzo.Code.Algebra.d1488 v0 v3))))
                     (MAlonzo.Code.Function.du176
                        (du388 v0 v3 v4)
                        (MAlonzo.Code.Algebra.Structures.d2880
                           (MAlonzo.Code.Algebra.Structures.d3038
                              (MAlonzo.Code.Algebra.Structures.d3222
                                 (MAlonzo.Code.Algebra.d1494 v0)))
                           (MAlonzo.Code.Algebra.d1486
                              v0 v3
                              (MAlonzo.Code.Algebra.d1488
                                 v0 (MAlonzo.Code.Algebra.d1486 v0 v3 v4)))
                           (MAlonzo.Code.Algebra.d1486
                              v0 v3 (MAlonzo.Code.Algebra.d1488 v0 v4))
                           (MAlonzo.Code.Algebra.d1486
                              v0 v4
                              (MAlonzo.Code.Algebra.d1488
                                 v0 (MAlonzo.Code.Algebra.d1486 v0 v4 v3)))
                           (MAlonzo.Code.Algebra.d1486
                              v0 v4 (MAlonzo.Code.Algebra.d1488 v0 v3)))
                        (du388 v0 v4 v3)))
                  (let v9
                         = coe
                             MAlonzo.Code.Relation.Binary.C143
                             (coe
                                MAlonzo.Code.Algebra.Structures.d2874
                                (coe
                                   MAlonzo.Code.Algebra.Structures.d3038
                                   (coe
                                      MAlonzo.Code.Algebra.Structures.d3222
                                      (coe MAlonzo.Code.Algebra.d1494 v0)))) in
                   MAlonzo.Code.Relation.Binary.PreorderReasoning.du72
                     (MAlonzo.Code.Relation.Binary.du150 v9)
                     (MAlonzo.Code.Algebra.d1488
                        v0
                        (MAlonzo.Code.Algebra.d1484
                           v0
                           (MAlonzo.Code.Algebra.d1486
                              v0 v3 (MAlonzo.Code.Algebra.d1488 v0 v4))
                           (MAlonzo.Code.Algebra.d1486
                              v0 v4 (MAlonzo.Code.Algebra.d1488 v0 v3))))
                     (MAlonzo.Code.Algebra.d1486
                        v0
                        (MAlonzo.Code.Algebra.d1488
                           v0
                           (MAlonzo.Code.Algebra.d1486
                              v0 v3 (MAlonzo.Code.Algebra.d1488 v0 v4)))
                        (MAlonzo.Code.Algebra.d1488
                           v0
                           (MAlonzo.Code.Algebra.d1486
                              v0 v4 (MAlonzo.Code.Algebra.d1488 v0 v3))))
                     (v1 (MAlonzo.Code.Algebra.d1488 v0 v3) v4)
                     (du306
                        v0
                        (MAlonzo.Code.Algebra.d1486
                           v0 v3 (MAlonzo.Code.Algebra.d1488 v0 v4))
                        (MAlonzo.Code.Algebra.d1486
                           v0 v4 (MAlonzo.Code.Algebra.d1488 v0 v3)))
                     (let v10
                            = coe
                                MAlonzo.Code.Relation.Binary.C143
                                (coe
                                   MAlonzo.Code.Algebra.Structures.d2874
                                   (coe
                                      MAlonzo.Code.Algebra.Structures.d3038
                                      (coe
                                         MAlonzo.Code.Algebra.Structures.d3222
                                         (coe MAlonzo.Code.Algebra.d1494 v0)))) in
                      MAlonzo.Code.Relation.Binary.PreorderReasoning.du72
                        (MAlonzo.Code.Relation.Binary.du150 v10)
                        (MAlonzo.Code.Algebra.d1486
                           v0
                           (MAlonzo.Code.Algebra.d1488
                              v0
                              (MAlonzo.Code.Algebra.d1486
                                 v0 v3 (MAlonzo.Code.Algebra.d1488 v0 v4)))
                           (MAlonzo.Code.Algebra.d1488
                              v0
                              (MAlonzo.Code.Algebra.d1486
                                 v0 v4 (MAlonzo.Code.Algebra.d1488 v0 v3))))
                        (MAlonzo.Code.Algebra.d1486
                           v0
                           (MAlonzo.Code.Algebra.d1484
                              v0 (MAlonzo.Code.Algebra.d1488 v0 v3)
                              (MAlonzo.Code.Algebra.d1488 v0 (MAlonzo.Code.Algebra.d1488 v0 v4)))
                           (MAlonzo.Code.Algebra.d1488
                              v0
                              (MAlonzo.Code.Algebra.d1486
                                 v0 v4 (MAlonzo.Code.Algebra.d1488 v0 v3))))
                        (v1 (MAlonzo.Code.Algebra.d1488 v0 v3) v4)
                        (MAlonzo.Code.Function.du176
                           (du286 v0 v3 (MAlonzo.Code.Algebra.d1488 v0 v4))
                           (MAlonzo.Code.Algebra.Structures.d2886
                              (MAlonzo.Code.Algebra.Structures.d3038
                                 (MAlonzo.Code.Algebra.Structures.d3222
                                    (MAlonzo.Code.Algebra.d1494 v0)))
                              (MAlonzo.Code.Algebra.d1488
                                 v0
                                 (MAlonzo.Code.Algebra.d1486
                                    v0 v3 (MAlonzo.Code.Algebra.d1488 v0 v4)))
                              (MAlonzo.Code.Algebra.d1484
                                 v0 (MAlonzo.Code.Algebra.d1488 v0 v3)
                                 (MAlonzo.Code.Algebra.d1488 v0 (MAlonzo.Code.Algebra.d1488 v0 v4)))
                              (MAlonzo.Code.Algebra.d1488
                                 v0
                                 (MAlonzo.Code.Algebra.d1486
                                    v0 v4 (MAlonzo.Code.Algebra.d1488 v0 v3)))
                              (MAlonzo.Code.Algebra.d1488
                                 v0
                                 (MAlonzo.Code.Algebra.d1486
                                    v0 v4 (MAlonzo.Code.Algebra.d1488 v0 v3))))
                           (MAlonzo.Code.Relation.Binary.Core.d516
                              (MAlonzo.Code.Algebra.Structures.d2874
                                 (MAlonzo.Code.Algebra.Structures.d3038
                                    (MAlonzo.Code.Algebra.Structures.d3222
                                       (MAlonzo.Code.Algebra.d1494 v0))))
                              (MAlonzo.Code.Algebra.d1488
                                 v0
                                 (MAlonzo.Code.Algebra.d1486
                                    v0 v4 (MAlonzo.Code.Algebra.d1488 v0 v3)))))
                        (let v11
                               = coe
                                   MAlonzo.Code.Relation.Binary.C143
                                   (coe
                                      MAlonzo.Code.Algebra.Structures.d2874
                                      (coe
                                         MAlonzo.Code.Algebra.Structures.d3038
                                         (coe
                                            MAlonzo.Code.Algebra.Structures.d3222
                                            (coe MAlonzo.Code.Algebra.d1494 v0)))) in
                         MAlonzo.Code.Relation.Binary.PreorderReasoning.du72
                           (MAlonzo.Code.Relation.Binary.du150 v11)
                           (MAlonzo.Code.Algebra.d1486
                              v0
                              (MAlonzo.Code.Algebra.d1484
                                 v0 (MAlonzo.Code.Algebra.d1488 v0 v3)
                                 (MAlonzo.Code.Algebra.d1488 v0 (MAlonzo.Code.Algebra.d1488 v0 v4)))
                              (MAlonzo.Code.Algebra.d1488
                                 v0
                                 (MAlonzo.Code.Algebra.d1486
                                    v0 v4 (MAlonzo.Code.Algebra.d1488 v0 v3))))
                           (MAlonzo.Code.Algebra.d1486
                              v0
                              (MAlonzo.Code.Algebra.d1484
                                 v0 (MAlonzo.Code.Algebra.d1488 v0 v3) v4)
                              (MAlonzo.Code.Algebra.d1488
                                 v0
                                 (MAlonzo.Code.Algebra.d1486
                                    v0 (MAlonzo.Code.Algebra.d1488 v0 v3) v4)))
                           (v1 (MAlonzo.Code.Algebra.d1488 v0 v3) v4)
                           (du364
                              v0
                              (MAlonzo.Code.Algebra.d1484
                                 v0 (MAlonzo.Code.Algebra.d1488 v0 v3)
                                 (MAlonzo.Code.Algebra.d1488 v0 (MAlonzo.Code.Algebra.d1488 v0 v4)))
                              (MAlonzo.Code.Algebra.d1484
                                 v0 (MAlonzo.Code.Algebra.d1488 v0 v3) v4)
                              (MAlonzo.Code.Algebra.d1486
                                 v0 v4 (MAlonzo.Code.Algebra.d1488 v0 v3))
                              (MAlonzo.Code.Algebra.d1486
                                 v0 (MAlonzo.Code.Algebra.d1488 v0 v3) v4)
                              (MAlonzo.Code.Function.du176
                                 (MAlonzo.Code.Relation.Binary.Core.d516
                                    (MAlonzo.Code.Algebra.Structures.d2874
                                       (MAlonzo.Code.Algebra.Structures.d3038
                                          (MAlonzo.Code.Algebra.Structures.d3222
                                             (MAlonzo.Code.Algebra.d1494 v0))))
                                    (MAlonzo.Code.Algebra.d1488 v0 v3))
                                 (MAlonzo.Code.Algebra.Structures.d2880
                                    (MAlonzo.Code.Algebra.Structures.d3038
                                       (MAlonzo.Code.Algebra.Structures.d3222
                                          (MAlonzo.Code.Algebra.d1494 v0)))
                                    (MAlonzo.Code.Algebra.d1488 v0 v3)
                                    (MAlonzo.Code.Algebra.d1488 v0 v3)
                                    (MAlonzo.Code.Algebra.d1488
                                       v0 (MAlonzo.Code.Algebra.d1488 v0 v4))
                                    v4)
                                 (du278 v0 v4))
                              (MAlonzo.Code.Algebra.Structures.d2882
                                 (MAlonzo.Code.Algebra.Structures.d3038
                                    (MAlonzo.Code.Algebra.Structures.d3222
                                       (MAlonzo.Code.Algebra.d1494 v0)))
                                 v4 (MAlonzo.Code.Algebra.d1488 v0 v3)))
                           (let v12
                                  = coe
                                      MAlonzo.Code.Relation.Binary.C143
                                      (coe
                                         MAlonzo.Code.Algebra.Structures.d2874
                                         (coe
                                            MAlonzo.Code.Algebra.Structures.d3038
                                            (coe
                                               MAlonzo.Code.Algebra.Structures.d3222
                                               (coe MAlonzo.Code.Algebra.d1494 v0)))) in
                            MAlonzo.Code.Relation.Binary.PreorderReasoning.du72
                              (MAlonzo.Code.Relation.Binary.du150 v12)
                              (MAlonzo.Code.Algebra.d1486
                                 v0
                                 (MAlonzo.Code.Algebra.d1484
                                    v0 (MAlonzo.Code.Algebra.d1488 v0 v3) v4)
                                 (MAlonzo.Code.Algebra.d1488
                                    v0
                                    (MAlonzo.Code.Algebra.d1486
                                       v0 (MAlonzo.Code.Algebra.d1488 v0 v3) v4)))
                              (v1 (MAlonzo.Code.Algebra.d1488 v0 v3) v4)
                              (v1 (MAlonzo.Code.Algebra.d1488 v0 v3) v4)
                              (MAlonzo.Code.Function.du158
                                 (MAlonzo.Code.Relation.Binary.Core.d518
                                    (MAlonzo.Code.Algebra.Structures.d2874
                                       (MAlonzo.Code.Algebra.Structures.d3038
                                          (MAlonzo.Code.Algebra.Structures.d3222
                                             (MAlonzo.Code.Algebra.d1494 v0))))
                                    (v1 (MAlonzo.Code.Algebra.d1488 v0 v3) v4)
                                    (MAlonzo.Code.Algebra.d1486
                                       v0
                                       (MAlonzo.Code.Algebra.d1484
                                          v0 (MAlonzo.Code.Algebra.d1488 v0 v3) v4)
                                       (MAlonzo.Code.Algebra.d1488
                                          v0
                                          (MAlonzo.Code.Algebra.d1486
                                             v0 (MAlonzo.Code.Algebra.d1488 v0 v3) v4))))
                                 (v2 (MAlonzo.Code.Algebra.d1488 v0 v3) v4))
                              (let v13
                                     = coe
                                         MAlonzo.Code.Relation.Binary.C143
                                         (coe
                                            MAlonzo.Code.Algebra.Structures.d2874
                                            (coe
                                               MAlonzo.Code.Algebra.Structures.d3038
                                               (coe
                                                  MAlonzo.Code.Algebra.Structures.d3222
                                                  (coe MAlonzo.Code.Algebra.d1494 v0)))) in
                               let v14 = coe v1 (coe MAlonzo.Code.Algebra.d1488 v0 v3) v4 in
                               MAlonzo.Code.Relation.Binary.PreorderReasoning.C56
                                 (MAlonzo.Code.Relation.Binary.d38
                                    (MAlonzo.Code.Relation.Binary.d92
                                       (MAlonzo.Code.Relation.Binary.du150 v13))
                                    v14 v14
                                    (MAlonzo.Code.Relation.Binary.Core.d516
                                       (MAlonzo.Code.Relation.Binary.d36
                                          (MAlonzo.Code.Relation.Binary.d92
                                             (MAlonzo.Code.Relation.Binary.du150 v13)))
                                       v14)))))))))))
name388 = "Algebra.Properties.BooleanAlgebra.XorRing._.lem"
d388 v0 v1 v2 v3 v4 v5 v6 v7 v8 = du388 v2 v7 v8
du388 v0 v1 v2
  = coe
      MAlonzo.Code.Relation.Binary.PreorderReasoning.d62
      (let v3
             = coe
                 MAlonzo.Code.Relation.Binary.C143
                 (coe
                    MAlonzo.Code.Algebra.Structures.d2874
                    (coe
                       MAlonzo.Code.Algebra.Structures.d3038
                       (coe
                          MAlonzo.Code.Algebra.Structures.d3222
                          (coe MAlonzo.Code.Algebra.d1494 v0)))) in
       MAlonzo.Code.Relation.Binary.PreorderReasoning.du72
         (MAlonzo.Code.Relation.Binary.du150 v3)
         (MAlonzo.Code.Algebra.d1486
            v0 v1
            (MAlonzo.Code.Algebra.d1488
               v0 (MAlonzo.Code.Algebra.d1486 v0 v1 v2)))
         (MAlonzo.Code.Algebra.d1486
            v0 v1
            (MAlonzo.Code.Algebra.d1484
               v0 (MAlonzo.Code.Algebra.d1488 v0 v1)
               (MAlonzo.Code.Algebra.d1488 v0 v2)))
         (MAlonzo.Code.Algebra.d1486
            v0 v1 (MAlonzo.Code.Algebra.d1488 v0 v2))
         (MAlonzo.Code.Function.du176
            (MAlonzo.Code.Relation.Binary.Core.d516
               (MAlonzo.Code.Algebra.Structures.d2874
                  (MAlonzo.Code.Algebra.Structures.d3038
                     (MAlonzo.Code.Algebra.Structures.d3222
                        (MAlonzo.Code.Algebra.d1494 v0))))
               v1)
            (MAlonzo.Code.Algebra.Structures.d2886
               (MAlonzo.Code.Algebra.Structures.d3038
                  (MAlonzo.Code.Algebra.Structures.d3222
                     (MAlonzo.Code.Algebra.d1494 v0)))
               v1 v1
               (MAlonzo.Code.Algebra.d1488
                  v0 (MAlonzo.Code.Algebra.d1486 v0 v1 v2))
               (MAlonzo.Code.Algebra.d1484
                  v0 (MAlonzo.Code.Algebra.d1488 v0 v1)
                  (MAlonzo.Code.Algebra.d1488 v0 v2)))
            (du286 v0 v1 v2))
         (let v4
                = coe
                    MAlonzo.Code.Relation.Binary.C143
                    (coe
                       MAlonzo.Code.Algebra.Structures.d2874
                       (coe
                          MAlonzo.Code.Algebra.Structures.d3038
                          (coe
                             MAlonzo.Code.Algebra.Structures.d3222
                             (coe MAlonzo.Code.Algebra.d1494 v0)))) in
          MAlonzo.Code.Relation.Binary.PreorderReasoning.du72
            (MAlonzo.Code.Relation.Binary.du150 v4)
            (MAlonzo.Code.Algebra.d1486
               v0 v1
               (MAlonzo.Code.Algebra.d1484
                  v0 (MAlonzo.Code.Algebra.d1488 v0 v1)
                  (MAlonzo.Code.Algebra.d1488 v0 v2)))
            (MAlonzo.Code.Algebra.d1484
               v0
               (MAlonzo.Code.Algebra.d1486
                  v0 v1 (MAlonzo.Code.Algebra.d1488 v0 v1))
               (MAlonzo.Code.Algebra.d1486
                  v0 v1 (MAlonzo.Code.Algebra.d1488 v0 v2)))
            (MAlonzo.Code.Algebra.d1486
               v0 v1 (MAlonzo.Code.Algebra.d1488 v0 v2))
            (MAlonzo.Code.Data.Product.d26
               (MAlonzo.Code.Algebra.Properties.DistributiveLattice.du162
                  (MAlonzo.Code.Algebra.C687
                     (MAlonzo.Code.Algebra.d1484 v0) (MAlonzo.Code.Algebra.d1486 v0)
                     (MAlonzo.Code.Algebra.Structures.d3222
                        (MAlonzo.Code.Algebra.d1494 v0))))
               v1 (MAlonzo.Code.Algebra.d1488 v0 v1)
               (MAlonzo.Code.Algebra.d1488 v0 v2))
            (let v5
                   = coe
                       MAlonzo.Code.Relation.Binary.C143
                       (coe
                          MAlonzo.Code.Algebra.Structures.d2874
                          (coe
                             MAlonzo.Code.Algebra.Structures.d3038
                             (coe
                                MAlonzo.Code.Algebra.Structures.d3222
                                (coe MAlonzo.Code.Algebra.d1494 v0)))) in
             MAlonzo.Code.Relation.Binary.PreorderReasoning.du72
               (MAlonzo.Code.Relation.Binary.du150 v5)
               (MAlonzo.Code.Algebra.d1484
                  v0
                  (MAlonzo.Code.Algebra.d1486
                     v0 v1 (MAlonzo.Code.Algebra.d1488 v0 v1))
                  (MAlonzo.Code.Algebra.d1486
                     v0 v1 (MAlonzo.Code.Algebra.d1488 v0 v2)))
               (MAlonzo.Code.Algebra.d1484
                  v0 (MAlonzo.Code.Algebra.d1492 v0)
                  (MAlonzo.Code.Algebra.d1486
                     v0 v1 (MAlonzo.Code.Algebra.d1488 v0 v2)))
               (MAlonzo.Code.Algebra.d1486
                  v0 v1 (MAlonzo.Code.Algebra.d1488 v0 v2))
               (MAlonzo.Code.Function.du176
                  (MAlonzo.Code.Data.Product.d28 (du182 v0) v1)
                  (MAlonzo.Code.Algebra.Structures.d2880
                     (MAlonzo.Code.Algebra.Structures.d3038
                        (MAlonzo.Code.Algebra.Structures.d3222
                           (MAlonzo.Code.Algebra.d1494 v0)))
                     (MAlonzo.Code.Algebra.d1486
                        v0 v1 (MAlonzo.Code.Algebra.d1488 v0 v1))
                     (MAlonzo.Code.Algebra.d1492 v0)
                     (MAlonzo.Code.Algebra.d1486
                        v0 v1 (MAlonzo.Code.Algebra.d1488 v0 v2))
                     (MAlonzo.Code.Algebra.d1486
                        v0 v1 (MAlonzo.Code.Algebra.d1488 v0 v2)))
                  (MAlonzo.Code.Relation.Binary.Core.d516
                     (MAlonzo.Code.Algebra.Structures.d2874
                        (MAlonzo.Code.Algebra.Structures.d3038
                           (MAlonzo.Code.Algebra.Structures.d3222
                              (MAlonzo.Code.Algebra.d1494 v0))))
                     (MAlonzo.Code.Algebra.d1486
                        v0 v1 (MAlonzo.Code.Algebra.d1488 v0 v2))))
               (let v6
                      = coe
                          MAlonzo.Code.Relation.Binary.C143
                          (coe
                             MAlonzo.Code.Algebra.Structures.d2874
                             (coe
                                MAlonzo.Code.Algebra.Structures.d3038
                                (coe
                                   MAlonzo.Code.Algebra.Structures.d3222
                                   (coe MAlonzo.Code.Algebra.d1494 v0)))) in
                MAlonzo.Code.Relation.Binary.PreorderReasoning.du72
                  (MAlonzo.Code.Relation.Binary.du150 v6)
                  (MAlonzo.Code.Algebra.d1484
                     v0 (MAlonzo.Code.Algebra.d1492 v0)
                     (MAlonzo.Code.Algebra.d1486
                        v0 v1 (MAlonzo.Code.Algebra.d1488 v0 v2)))
                  (MAlonzo.Code.Algebra.d1486
                     v0 v1 (MAlonzo.Code.Algebra.d1488 v0 v2))
                  (MAlonzo.Code.Algebra.d1486
                     v0 v1 (MAlonzo.Code.Algebra.d1488 v0 v2))
                  (MAlonzo.Code.Data.Product.d26
                     (du210 v0)
                     (MAlonzo.Code.Algebra.d1486
                        v0 v1 (MAlonzo.Code.Algebra.d1488 v0 v2)))
                  (let v7
                         = coe
                             MAlonzo.Code.Relation.Binary.C143
                             (coe
                                MAlonzo.Code.Algebra.Structures.d2874
                                (coe
                                   MAlonzo.Code.Algebra.Structures.d3038
                                   (coe
                                      MAlonzo.Code.Algebra.Structures.d3222
                                      (coe MAlonzo.Code.Algebra.d1494 v0)))) in
                   let v8
                         = coe
                             MAlonzo.Code.Algebra.d1486 v0 v1
                             (coe MAlonzo.Code.Algebra.d1488 v0 v2) in
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
name394 = "Algebra.Properties.BooleanAlgebra.XorRing.\8853-comm"
d394 v0 v1 v2 v3 v4 v5 v6 = du394 v2 v3 v4 v5 v6
du394 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Relation.Binary.PreorderReasoning.d62
      (let v5
             = coe
                 MAlonzo.Code.Relation.Binary.C143
                 (coe
                    MAlonzo.Code.Algebra.Structures.d2874
                    (coe
                       MAlonzo.Code.Algebra.Structures.d3038
                       (coe
                          MAlonzo.Code.Algebra.Structures.d3222
                          (coe MAlonzo.Code.Algebra.d1494 v0)))) in
       MAlonzo.Code.Relation.Binary.PreorderReasoning.du72
         (MAlonzo.Code.Relation.Binary.du150 v5) (v1 v3 v4)
         (MAlonzo.Code.Algebra.d1486
            v0 (MAlonzo.Code.Algebra.d1484 v0 v3 v4)
            (MAlonzo.Code.Algebra.d1488
               v0 (MAlonzo.Code.Algebra.d1486 v0 v3 v4)))
         (v1 v4 v3) (v2 v3 v4)
         (let v6
                = coe
                    MAlonzo.Code.Relation.Binary.C143
                    (coe
                       MAlonzo.Code.Algebra.Structures.d2874
                       (coe
                          MAlonzo.Code.Algebra.Structures.d3038
                          (coe
                             MAlonzo.Code.Algebra.Structures.d3222
                             (coe MAlonzo.Code.Algebra.d1494 v0)))) in
          MAlonzo.Code.Relation.Binary.PreorderReasoning.du72
            (MAlonzo.Code.Relation.Binary.du150 v6)
            (MAlonzo.Code.Algebra.d1486
               v0 (MAlonzo.Code.Algebra.d1484 v0 v3 v4)
               (MAlonzo.Code.Algebra.d1488
                  v0 (MAlonzo.Code.Algebra.d1486 v0 v3 v4)))
            (MAlonzo.Code.Algebra.d1486
               v0 (MAlonzo.Code.Algebra.d1484 v0 v4 v3)
               (MAlonzo.Code.Algebra.d1488
                  v0 (MAlonzo.Code.Algebra.d1486 v0 v4 v3)))
            (v1 v4 v3)
            (du364
               v0 (MAlonzo.Code.Algebra.d1484 v0 v3 v4)
               (MAlonzo.Code.Algebra.d1484 v0 v4 v3)
               (MAlonzo.Code.Algebra.d1486 v0 v3 v4)
               (MAlonzo.Code.Algebra.d1486 v0 v4 v3)
               (MAlonzo.Code.Algebra.Structures.d2876
                  (MAlonzo.Code.Algebra.Structures.d3038
                     (MAlonzo.Code.Algebra.Structures.d3222
                        (MAlonzo.Code.Algebra.d1494 v0)))
                  v3 v4)
               (MAlonzo.Code.Algebra.Structures.d2882
                  (MAlonzo.Code.Algebra.Structures.d3038
                     (MAlonzo.Code.Algebra.Structures.d3222
                        (MAlonzo.Code.Algebra.d1494 v0)))
                  v3 v4))
            (let v7
                   = coe
                       MAlonzo.Code.Relation.Binary.C143
                       (coe
                          MAlonzo.Code.Algebra.Structures.d2874
                          (coe
                             MAlonzo.Code.Algebra.Structures.d3038
                             (coe
                                MAlonzo.Code.Algebra.Structures.d3222
                                (coe MAlonzo.Code.Algebra.d1494 v0)))) in
             MAlonzo.Code.Relation.Binary.PreorderReasoning.du72
               (MAlonzo.Code.Relation.Binary.du150 v7)
               (MAlonzo.Code.Algebra.d1486
                  v0 (MAlonzo.Code.Algebra.d1484 v0 v4 v3)
                  (MAlonzo.Code.Algebra.d1488
                     v0 (MAlonzo.Code.Algebra.d1486 v0 v4 v3)))
               (v1 v4 v3) (v1 v4 v3)
               (MAlonzo.Code.Function.du158
                  (MAlonzo.Code.Relation.Binary.Core.d518
                     (MAlonzo.Code.Algebra.Structures.d2874
                        (MAlonzo.Code.Algebra.Structures.d3038
                           (MAlonzo.Code.Algebra.Structures.d3222
                              (MAlonzo.Code.Algebra.d1494 v0))))
                     (v1 v4 v3)
                     (MAlonzo.Code.Algebra.d1486
                        v0 (MAlonzo.Code.Algebra.d1484 v0 v4 v3)
                        (MAlonzo.Code.Algebra.d1488
                           v0 (MAlonzo.Code.Algebra.d1486 v0 v4 v3))))
                  (v2 v4 v3))
               (let v8
                      = coe
                          MAlonzo.Code.Relation.Binary.C143
                          (coe
                             MAlonzo.Code.Algebra.Structures.d2874
                             (coe
                                MAlonzo.Code.Algebra.Structures.d3038
                                (coe
                                   MAlonzo.Code.Algebra.Structures.d3222
                                   (coe MAlonzo.Code.Algebra.d1494 v0)))) in
                let v9 = coe v1 v4 v3 in
                MAlonzo.Code.Relation.Binary.PreorderReasoning.C56
                  (MAlonzo.Code.Relation.Binary.d38
                     (MAlonzo.Code.Relation.Binary.d92
                        (MAlonzo.Code.Relation.Binary.du150 v8))
                     v9 v9
                     (MAlonzo.Code.Relation.Binary.Core.d516
                        (MAlonzo.Code.Relation.Binary.d36
                           (MAlonzo.Code.Relation.Binary.d92
                              (MAlonzo.Code.Relation.Binary.du150 v8)))
                        v9))))))
name404
  = "Algebra.Properties.BooleanAlgebra.XorRing.\8853-\172-distrib\691"
d404 v0 v1 v2 v3 v4 v5 v6 = du404 v2 v3 v4 v5 v6
du404 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Relation.Binary.PreorderReasoning.d62
      (let v5
             = coe
                 MAlonzo.Code.Relation.Binary.C143
                 (coe
                    MAlonzo.Code.Algebra.Structures.d2874
                    (coe
                       MAlonzo.Code.Algebra.Structures.d3038
                       (coe
                          MAlonzo.Code.Algebra.Structures.d3222
                          (coe MAlonzo.Code.Algebra.d1494 v0)))) in
       MAlonzo.Code.Relation.Binary.PreorderReasoning.du72
         (MAlonzo.Code.Relation.Binary.du150 v5)
         (MAlonzo.Code.Algebra.d1488 v0 (v1 v3 v4))
         (MAlonzo.Code.Algebra.d1488 v0 (v1 v4 v3))
         (v1 v3 (MAlonzo.Code.Algebra.d1488 v0 v4))
         (MAlonzo.Code.Function.du158
            (MAlonzo.Code.Algebra.Structures.d3228
               (MAlonzo.Code.Algebra.d1494 v0) (v1 v3 v4) (v1 v4 v3))
            (du394 v0 v1 v2 v3 v4))
         (let v6
                = coe
                    MAlonzo.Code.Relation.Binary.C143
                    (coe
                       MAlonzo.Code.Algebra.Structures.d2874
                       (coe
                          MAlonzo.Code.Algebra.Structures.d3038
                          (coe
                             MAlonzo.Code.Algebra.Structures.d3222
                             (coe MAlonzo.Code.Algebra.d1494 v0)))) in
          MAlonzo.Code.Relation.Binary.PreorderReasoning.du72
            (MAlonzo.Code.Relation.Binary.du150 v6)
            (MAlonzo.Code.Algebra.d1488 v0 (v1 v4 v3))
            (v1 (MAlonzo.Code.Algebra.d1488 v0 v4) v3)
            (v1 v3 (MAlonzo.Code.Algebra.d1488 v0 v4)) (du374 v0 v1 v2 v4 v3)
            (let v7
                   = coe
                       MAlonzo.Code.Relation.Binary.C143
                       (coe
                          MAlonzo.Code.Algebra.Structures.d2874
                          (coe
                             MAlonzo.Code.Algebra.Structures.d3038
                             (coe
                                MAlonzo.Code.Algebra.Structures.d3222
                                (coe MAlonzo.Code.Algebra.d1494 v0)))) in
             MAlonzo.Code.Relation.Binary.PreorderReasoning.du72
               (MAlonzo.Code.Relation.Binary.du150 v7)
               (v1 (MAlonzo.Code.Algebra.d1488 v0 v4) v3)
               (v1 v3 (MAlonzo.Code.Algebra.d1488 v0 v4))
               (v1 v3 (MAlonzo.Code.Algebra.d1488 v0 v4))
               (du394 v0 v1 v2 (MAlonzo.Code.Algebra.d1488 v0 v4) v3)
               (let v8
                      = coe
                          MAlonzo.Code.Relation.Binary.C143
                          (coe
                             MAlonzo.Code.Algebra.Structures.d2874
                             (coe
                                MAlonzo.Code.Algebra.Structures.d3038
                                (coe
                                   MAlonzo.Code.Algebra.Structures.d3222
                                   (coe MAlonzo.Code.Algebra.d1494 v0)))) in
                let v9 = coe v1 v3 (coe MAlonzo.Code.Algebra.d1488 v0 v4) in
                MAlonzo.Code.Relation.Binary.PreorderReasoning.C56
                  (MAlonzo.Code.Relation.Binary.d38
                     (MAlonzo.Code.Relation.Binary.d92
                        (MAlonzo.Code.Relation.Binary.du150 v8))
                     v9 v9
                     (MAlonzo.Code.Relation.Binary.Core.d516
                        (MAlonzo.Code.Relation.Binary.d36
                           (MAlonzo.Code.Relation.Binary.d92
                              (MAlonzo.Code.Relation.Binary.du150 v8)))
                        v9))))))
name414
  = "Algebra.Properties.BooleanAlgebra.XorRing.\8853-annihilates-\172"
d414 v0 v1 v2 v3 v4 v5 v6 = du414 v2 v3 v4 v5 v6
du414 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Relation.Binary.PreorderReasoning.d62
      (let v5
             = coe
                 MAlonzo.Code.Relation.Binary.C143
                 (coe
                    MAlonzo.Code.Algebra.Structures.d2874
                    (coe
                       MAlonzo.Code.Algebra.Structures.d3038
                       (coe
                          MAlonzo.Code.Algebra.Structures.d3222
                          (coe MAlonzo.Code.Algebra.d1494 v0)))) in
       MAlonzo.Code.Relation.Binary.PreorderReasoning.du72
         (MAlonzo.Code.Relation.Binary.du150 v5) (v1 v3 v4)
         (MAlonzo.Code.Algebra.d1488
            v0 (MAlonzo.Code.Algebra.d1488 v0 (v1 v3 v4)))
         (v1
            (MAlonzo.Code.Algebra.d1488 v0 v3)
            (MAlonzo.Code.Algebra.d1488 v0 v4))
         (MAlonzo.Code.Function.du158
            (MAlonzo.Code.Relation.Binary.Core.d518
               (MAlonzo.Code.Algebra.Structures.d2874
                  (MAlonzo.Code.Algebra.Structures.d3038
                     (MAlonzo.Code.Algebra.Structures.d3222
                        (MAlonzo.Code.Algebra.d1494 v0))))
               (MAlonzo.Code.Algebra.d1488
                  v0 (MAlonzo.Code.Algebra.d1488 v0 (v1 v3 v4)))
               (v1 v3 v4))
            (du278 v0 (v1 v3 v4)))
         (let v6
                = coe
                    MAlonzo.Code.Relation.Binary.C143
                    (coe
                       MAlonzo.Code.Algebra.Structures.d2874
                       (coe
                          MAlonzo.Code.Algebra.Structures.d3038
                          (coe
                             MAlonzo.Code.Algebra.Structures.d3222
                             (coe MAlonzo.Code.Algebra.d1494 v0)))) in
          MAlonzo.Code.Relation.Binary.PreorderReasoning.du72
            (MAlonzo.Code.Relation.Binary.du150 v6)
            (MAlonzo.Code.Algebra.d1488
               v0 (MAlonzo.Code.Algebra.d1488 v0 (v1 v3 v4)))
            (MAlonzo.Code.Algebra.d1488
               v0 (v1 (MAlonzo.Code.Algebra.d1488 v0 v3) v4))
            (v1
               (MAlonzo.Code.Algebra.d1488 v0 v3)
               (MAlonzo.Code.Algebra.d1488 v0 v4))
            (MAlonzo.Code.Function.du158
               (MAlonzo.Code.Algebra.Structures.d3228
                  (MAlonzo.Code.Algebra.d1494 v0)
                  (MAlonzo.Code.Algebra.d1488 v0 (v1 v3 v4))
                  (v1 (MAlonzo.Code.Algebra.d1488 v0 v3) v4))
               (du374 v0 v1 v2 v3 v4))
            (let v7
                   = coe
                       MAlonzo.Code.Relation.Binary.C143
                       (coe
                          MAlonzo.Code.Algebra.Structures.d2874
                          (coe
                             MAlonzo.Code.Algebra.Structures.d3038
                             (coe
                                MAlonzo.Code.Algebra.Structures.d3222
                                (coe MAlonzo.Code.Algebra.d1494 v0)))) in
             MAlonzo.Code.Relation.Binary.PreorderReasoning.du72
               (MAlonzo.Code.Relation.Binary.du150 v7)
               (MAlonzo.Code.Algebra.d1488
                  v0 (v1 (MAlonzo.Code.Algebra.d1488 v0 v3) v4))
               (v1
                  (MAlonzo.Code.Algebra.d1488 v0 v3)
                  (MAlonzo.Code.Algebra.d1488 v0 v4))
               (v1
                  (MAlonzo.Code.Algebra.d1488 v0 v3)
                  (MAlonzo.Code.Algebra.d1488 v0 v4))
               (du404 v0 v1 v2 (MAlonzo.Code.Algebra.d1488 v0 v3) v4)
               (let v8
                      = coe
                          MAlonzo.Code.Relation.Binary.C143
                          (coe
                             MAlonzo.Code.Algebra.Structures.d2874
                             (coe
                                MAlonzo.Code.Algebra.Structures.d3038
                                (coe
                                   MAlonzo.Code.Algebra.Structures.d3222
                                   (coe MAlonzo.Code.Algebra.d1494 v0)))) in
                let v9
                      = coe
                          v1 (coe MAlonzo.Code.Algebra.d1488 v0 v3)
                          (coe MAlonzo.Code.Algebra.d1488 v0 v4) in
                MAlonzo.Code.Relation.Binary.PreorderReasoning.C56
                  (MAlonzo.Code.Relation.Binary.d38
                     (MAlonzo.Code.Relation.Binary.d92
                        (MAlonzo.Code.Relation.Binary.du150 v8))
                     v9 v9
                     (MAlonzo.Code.Relation.Binary.Core.d516
                        (MAlonzo.Code.Relation.Binary.d36
                           (MAlonzo.Code.Relation.Binary.d92
                              (MAlonzo.Code.Relation.Binary.du150 v8)))
                        v9))))))
name420 = "Algebra.Properties.BooleanAlgebra.XorRing.\8853-cong"
d420 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10
  = du420 v2 v3 v4 v5 v6 v7 v8 v9 v10
du420 v0 v1 v2 v3 v4 v5 v6 v7 v8
  = coe
      MAlonzo.Code.Relation.Binary.PreorderReasoning.d62
      (let v9
             = coe
                 MAlonzo.Code.Relation.Binary.C143
                 (coe
                    MAlonzo.Code.Algebra.Structures.d2874
                    (coe
                       MAlonzo.Code.Algebra.Structures.d3038
                       (coe
                          MAlonzo.Code.Algebra.Structures.d3222
                          (coe MAlonzo.Code.Algebra.d1494 v0)))) in
       MAlonzo.Code.Relation.Binary.PreorderReasoning.du72
         (MAlonzo.Code.Relation.Binary.du150 v9) (v1 v3 v5)
         (MAlonzo.Code.Algebra.d1486
            v0 (MAlonzo.Code.Algebra.d1484 v0 v3 v5)
            (MAlonzo.Code.Algebra.d1488
               v0 (MAlonzo.Code.Algebra.d1486 v0 v3 v5)))
         (v1 v4 v6) (v2 v3 v5)
         (let v10
                = coe
                    MAlonzo.Code.Relation.Binary.C143
                    (coe
                       MAlonzo.Code.Algebra.Structures.d2874
                       (coe
                          MAlonzo.Code.Algebra.Structures.d3038
                          (coe
                             MAlonzo.Code.Algebra.Structures.d3222
                             (coe MAlonzo.Code.Algebra.d1494 v0)))) in
          MAlonzo.Code.Relation.Binary.PreorderReasoning.du72
            (MAlonzo.Code.Relation.Binary.du150 v10)
            (MAlonzo.Code.Algebra.d1486
               v0 (MAlonzo.Code.Algebra.d1484 v0 v3 v5)
               (MAlonzo.Code.Algebra.d1488
                  v0 (MAlonzo.Code.Algebra.d1486 v0 v3 v5)))
            (MAlonzo.Code.Algebra.d1486
               v0 (MAlonzo.Code.Algebra.d1484 v0 v4 v6)
               (MAlonzo.Code.Algebra.d1488
                  v0 (MAlonzo.Code.Algebra.d1486 v0 v4 v6)))
            (v1 v4 v6)
            (du364
               v0 (MAlonzo.Code.Algebra.d1484 v0 v3 v5)
               (MAlonzo.Code.Algebra.d1484 v0 v4 v6)
               (MAlonzo.Code.Algebra.d1486 v0 v3 v5)
               (MAlonzo.Code.Algebra.d1486 v0 v4 v6)
               (MAlonzo.Code.Function.du176
                  v7
                  (MAlonzo.Code.Algebra.Structures.d2880
                     (MAlonzo.Code.Algebra.Structures.d3038
                        (MAlonzo.Code.Algebra.Structures.d3222
                           (MAlonzo.Code.Algebra.d1494 v0)))
                     v3 v4 v5 v6)
                  v8)
               (MAlonzo.Code.Function.du176
                  v7
                  (MAlonzo.Code.Algebra.Structures.d2886
                     (MAlonzo.Code.Algebra.Structures.d3038
                        (MAlonzo.Code.Algebra.Structures.d3222
                           (MAlonzo.Code.Algebra.d1494 v0)))
                     v3 v4 v5 v6)
                  v8))
            (let v11
                   = coe
                       MAlonzo.Code.Relation.Binary.C143
                       (coe
                          MAlonzo.Code.Algebra.Structures.d2874
                          (coe
                             MAlonzo.Code.Algebra.Structures.d3038
                             (coe
                                MAlonzo.Code.Algebra.Structures.d3222
                                (coe MAlonzo.Code.Algebra.d1494 v0)))) in
             MAlonzo.Code.Relation.Binary.PreorderReasoning.du72
               (MAlonzo.Code.Relation.Binary.du150 v11)
               (MAlonzo.Code.Algebra.d1486
                  v0 (MAlonzo.Code.Algebra.d1484 v0 v4 v6)
                  (MAlonzo.Code.Algebra.d1488
                     v0 (MAlonzo.Code.Algebra.d1486 v0 v4 v6)))
               (v1 v4 v6) (v1 v4 v6)
               (MAlonzo.Code.Function.du158
                  (MAlonzo.Code.Relation.Binary.Core.d518
                     (MAlonzo.Code.Algebra.Structures.d2874
                        (MAlonzo.Code.Algebra.Structures.d3038
                           (MAlonzo.Code.Algebra.Structures.d3222
                              (MAlonzo.Code.Algebra.d1494 v0))))
                     (v1 v4 v6)
                     (MAlonzo.Code.Algebra.d1486
                        v0 (MAlonzo.Code.Algebra.d1484 v0 v4 v6)
                        (MAlonzo.Code.Algebra.d1488
                           v0 (MAlonzo.Code.Algebra.d1486 v0 v4 v6))))
                  (v2 v4 v6))
               (let v12
                      = coe
                          MAlonzo.Code.Relation.Binary.C143
                          (coe
                             MAlonzo.Code.Algebra.Structures.d2874
                             (coe
                                MAlonzo.Code.Algebra.Structures.d3038
                                (coe
                                   MAlonzo.Code.Algebra.Structures.d3222
                                   (coe MAlonzo.Code.Algebra.d1494 v0)))) in
                let v13 = coe v1 v4 v6 in
                MAlonzo.Code.Relation.Binary.PreorderReasoning.C56
                  (MAlonzo.Code.Relation.Binary.d38
                     (MAlonzo.Code.Relation.Binary.d92
                        (MAlonzo.Code.Relation.Binary.du150 v12))
                     v13 v13
                     (MAlonzo.Code.Relation.Binary.Core.d516
                        (MAlonzo.Code.Relation.Binary.d36
                           (MAlonzo.Code.Relation.Binary.d92
                              (MAlonzo.Code.Relation.Binary.du150 v12)))
                        v13))))))
name434
  = "Algebra.Properties.BooleanAlgebra.XorRing.\8853-identity"
d434 v0 v1 v2 v3 v4 = du434 v2 v3 v4
du434 v0 v1 v2
  = coe
      MAlonzo.Code.Data.Product.C30 (coe du442 v0 v1 v2)
      (\ v3 ->
         coe
           MAlonzo.Code.Function.du176
           (coe du394 v0 v1 v2 v3 (coe MAlonzo.Code.Algebra.d1492 v0))
           (coe
              MAlonzo.Code.Relation.Binary.Core.d520
              (coe
                 MAlonzo.Code.Algebra.Structures.d2874
                 (coe
                    MAlonzo.Code.Algebra.Structures.d3038
                    (coe
                       MAlonzo.Code.Algebra.Structures.d3222
                       (coe MAlonzo.Code.Algebra.d1494 v0))))
              (coe v1 v3 (coe MAlonzo.Code.Algebra.d1492 v0))
              (coe v1 (coe MAlonzo.Code.Algebra.d1492 v0) v3) v3)
           (coe du442 v0 v1 v2 v3))
name442
  = "Algebra.Properties.BooleanAlgebra.XorRing._.\8869\8853x=x"
d442 v0 v1 v2 v3 v4 v5 = du442 v2 v3 v4 v5
du442 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Relation.Binary.PreorderReasoning.d62
      (let v4
             = coe
                 MAlonzo.Code.Relation.Binary.C143
                 (coe
                    MAlonzo.Code.Algebra.Structures.d2874
                    (coe
                       MAlonzo.Code.Algebra.Structures.d3038
                       (coe
                          MAlonzo.Code.Algebra.Structures.d3222
                          (coe MAlonzo.Code.Algebra.d1494 v0)))) in
       MAlonzo.Code.Relation.Binary.PreorderReasoning.du72
         (MAlonzo.Code.Relation.Binary.du150 v4)
         (v1 (MAlonzo.Code.Algebra.d1492 v0) v3)
         (MAlonzo.Code.Algebra.d1486
            v0
            (MAlonzo.Code.Algebra.d1484 v0 (MAlonzo.Code.Algebra.d1492 v0) v3)
            (MAlonzo.Code.Algebra.d1488
               v0
               (MAlonzo.Code.Algebra.d1486
                  v0 (MAlonzo.Code.Algebra.d1492 v0) v3)))
         v3 (v2 (MAlonzo.Code.Algebra.d1492 v0) v3)
         (let v5
                = coe
                    MAlonzo.Code.Relation.Binary.C143
                    (coe
                       MAlonzo.Code.Algebra.Structures.d2874
                       (coe
                          MAlonzo.Code.Algebra.Structures.d3038
                          (coe
                             MAlonzo.Code.Algebra.Structures.d3222
                             (coe MAlonzo.Code.Algebra.d1494 v0)))) in
          MAlonzo.Code.Relation.Binary.PreorderReasoning.du72
            (MAlonzo.Code.Relation.Binary.du150 v5)
            (MAlonzo.Code.Algebra.d1486
               v0
               (MAlonzo.Code.Algebra.d1484 v0 (MAlonzo.Code.Algebra.d1492 v0) v3)
               (MAlonzo.Code.Algebra.d1488
                  v0
                  (MAlonzo.Code.Algebra.d1486
                     v0 (MAlonzo.Code.Algebra.d1492 v0) v3)))
            (MAlonzo.Code.Algebra.d1486
               v0 v3
               (MAlonzo.Code.Algebra.d1488 v0 (MAlonzo.Code.Algebra.d1492 v0)))
            v3
            (du364
               v0
               (MAlonzo.Code.Algebra.d1484 v0 (MAlonzo.Code.Algebra.d1492 v0) v3)
               v3
               (MAlonzo.Code.Algebra.d1486 v0 (MAlonzo.Code.Algebra.d1492 v0) v3)
               (MAlonzo.Code.Algebra.d1492 v0)
               (MAlonzo.Code.Data.Product.d26 (du210 v0) v3)
               (MAlonzo.Code.Data.Product.d26 (du224 v0) v3))
            (let v6
                   = coe
                       MAlonzo.Code.Relation.Binary.C143
                       (coe
                          MAlonzo.Code.Algebra.Structures.d2874
                          (coe
                             MAlonzo.Code.Algebra.Structures.d3038
                             (coe
                                MAlonzo.Code.Algebra.Structures.d3222
                                (coe MAlonzo.Code.Algebra.d1494 v0)))) in
             MAlonzo.Code.Relation.Binary.PreorderReasoning.du72
               (MAlonzo.Code.Relation.Binary.du150 v6)
               (MAlonzo.Code.Algebra.d1486
                  v0 v3
                  (MAlonzo.Code.Algebra.d1488 v0 (MAlonzo.Code.Algebra.d1492 v0)))
               (MAlonzo.Code.Algebra.d1486 v0 v3 (MAlonzo.Code.Algebra.d1490 v0))
               v3
               (MAlonzo.Code.Function.du176
                  (MAlonzo.Code.Relation.Binary.Core.d516
                     (MAlonzo.Code.Algebra.Structures.d2874
                        (MAlonzo.Code.Algebra.Structures.d3038
                           (MAlonzo.Code.Algebra.Structures.d3222
                              (MAlonzo.Code.Algebra.d1494 v0))))
                     v3)
                  (MAlonzo.Code.Algebra.Structures.d2886
                     (MAlonzo.Code.Algebra.Structures.d3038
                        (MAlonzo.Code.Algebra.Structures.d3222
                           (MAlonzo.Code.Algebra.d1494 v0)))
                     v3 v3
                     (MAlonzo.Code.Algebra.d1488 v0 (MAlonzo.Code.Algebra.d1492 v0))
                     (MAlonzo.Code.Algebra.d1490 v0))
                  (du274 v0))
               (let v7
                      = coe
                          MAlonzo.Code.Relation.Binary.C143
                          (coe
                             MAlonzo.Code.Algebra.Structures.d2874
                             (coe
                                MAlonzo.Code.Algebra.Structures.d3038
                                (coe
                                   MAlonzo.Code.Algebra.Structures.d3222
                                   (coe MAlonzo.Code.Algebra.d1494 v0)))) in
                MAlonzo.Code.Relation.Binary.PreorderReasoning.du72
                  (MAlonzo.Code.Relation.Binary.du150 v7)
                  (MAlonzo.Code.Algebra.d1486 v0 v3 (MAlonzo.Code.Algebra.d1490 v0))
                  v3 v3 (MAlonzo.Code.Data.Product.d28 (du196 v0) v3)
                  (let v8
                         = coe
                             MAlonzo.Code.Relation.Binary.C143
                             (coe
                                MAlonzo.Code.Algebra.Structures.d2874
                                (coe
                                   MAlonzo.Code.Algebra.Structures.d3038
                                   (coe
                                      MAlonzo.Code.Algebra.Structures.d3222
                                      (coe MAlonzo.Code.Algebra.d1494 v0)))) in
                   MAlonzo.Code.Relation.Binary.PreorderReasoning.C56
                     (MAlonzo.Code.Relation.Binary.d38
                        (MAlonzo.Code.Relation.Binary.d92
                           (MAlonzo.Code.Relation.Binary.du150 v8))
                        v3 v3
                        (MAlonzo.Code.Relation.Binary.Core.d516
                           (MAlonzo.Code.Relation.Binary.d36
                              (MAlonzo.Code.Relation.Binary.d92
                                 (MAlonzo.Code.Relation.Binary.du150 v8)))
                           v3)))))))
name448 = "Algebra.Properties.BooleanAlgebra.XorRing.\8853-inverse"
d448 v0 v1 v2 v3 v4 = du448 v2 v3 v4
du448 v0 v1 v2
  = coe
      MAlonzo.Code.Data.Product.C30 (coe du456 v0 v1 v2)
      (\ v3 ->
         coe
           MAlonzo.Code.Function.du176 (coe du394 v0 v1 v2 v3 v3)
           (coe
              MAlonzo.Code.Relation.Binary.Core.d520
              (coe
                 MAlonzo.Code.Algebra.Structures.d2874
                 (coe
                    MAlonzo.Code.Algebra.Structures.d3038
                    (coe
                       MAlonzo.Code.Algebra.Structures.d3222
                       (coe MAlonzo.Code.Algebra.d1494 v0))))
              (coe v1 v3 v3) (coe v1 v3 v3) (coe MAlonzo.Code.Algebra.d1492 v0))
           (coe du456 v0 v1 v2 v3))
name456
  = "Algebra.Properties.BooleanAlgebra.XorRing._.x\8853x=\8869"
d456 v0 v1 v2 v3 v4 v5 = du456 v2 v3 v4 v5
du456 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Relation.Binary.PreorderReasoning.d62
      (let v4
             = coe
                 MAlonzo.Code.Relation.Binary.C143
                 (coe
                    MAlonzo.Code.Algebra.Structures.d2874
                    (coe
                       MAlonzo.Code.Algebra.Structures.d3038
                       (coe
                          MAlonzo.Code.Algebra.Structures.d3222
                          (coe MAlonzo.Code.Algebra.d1494 v0)))) in
       MAlonzo.Code.Relation.Binary.PreorderReasoning.du72
         (MAlonzo.Code.Relation.Binary.du150 v4) (v1 v3 v3)
         (MAlonzo.Code.Algebra.d1486
            v0 (MAlonzo.Code.Algebra.d1484 v0 v3 v3)
            (MAlonzo.Code.Algebra.d1488
               v0 (MAlonzo.Code.Algebra.d1486 v0 v3 v3)))
         (MAlonzo.Code.Algebra.d1492 v0) (v2 v3 v3)
         (let v5
                = coe
                    MAlonzo.Code.Relation.Binary.C143
                    (coe
                       MAlonzo.Code.Algebra.Structures.d2874
                       (coe
                          MAlonzo.Code.Algebra.Structures.d3038
                          (coe
                             MAlonzo.Code.Algebra.Structures.d3222
                             (coe MAlonzo.Code.Algebra.d1494 v0)))) in
          MAlonzo.Code.Relation.Binary.PreorderReasoning.du72
            (MAlonzo.Code.Relation.Binary.du150 v5)
            (MAlonzo.Code.Algebra.d1486
               v0 (MAlonzo.Code.Algebra.d1484 v0 v3 v3)
               (MAlonzo.Code.Algebra.d1488
                  v0 (MAlonzo.Code.Algebra.d1486 v0 v3 v3)))
            (MAlonzo.Code.Algebra.d1486
               v0 v3 (MAlonzo.Code.Algebra.d1488 v0 v3))
            (MAlonzo.Code.Algebra.d1492 v0)
            (du364
               v0 (MAlonzo.Code.Algebra.d1484 v0 v3 v3) v3
               (MAlonzo.Code.Algebra.d1486 v0 v3 v3) v3
               (let v6
                      = coe
                          MAlonzo.Code.Algebra.C687 (coe MAlonzo.Code.Algebra.d1484 v0)
                          (coe MAlonzo.Code.Algebra.d1486 v0)
                          (coe
                             MAlonzo.Code.Algebra.Structures.d3222
                             (coe MAlonzo.Code.Algebra.d1494 v0)) in
                MAlonzo.Code.Algebra.Properties.Lattice.du128
                  (MAlonzo.Code.Algebra.C655
                     (MAlonzo.Code.Algebra.d1412 v6) (MAlonzo.Code.Algebra.d1414 v6)
                     (MAlonzo.Code.Algebra.Structures.d3038
                        (MAlonzo.Code.Algebra.d1416 v6)))
                  v3)
               (let v6
                      = coe
                          MAlonzo.Code.Algebra.C687 (coe MAlonzo.Code.Algebra.d1484 v0)
                          (coe MAlonzo.Code.Algebra.d1486 v0)
                          (coe
                             MAlonzo.Code.Algebra.Structures.d3222
                             (coe MAlonzo.Code.Algebra.d1494 v0)) in
                MAlonzo.Code.Algebra.Properties.Lattice.du124
                  (MAlonzo.Code.Algebra.C655
                     (MAlonzo.Code.Algebra.d1412 v6) (MAlonzo.Code.Algebra.d1414 v6)
                     (MAlonzo.Code.Algebra.Structures.d3038
                        (MAlonzo.Code.Algebra.d1416 v6)))
                  v3))
            (let v6
                   = coe
                       MAlonzo.Code.Relation.Binary.C143
                       (coe
                          MAlonzo.Code.Algebra.Structures.d2874
                          (coe
                             MAlonzo.Code.Algebra.Structures.d3038
                             (coe
                                MAlonzo.Code.Algebra.Structures.d3222
                                (coe MAlonzo.Code.Algebra.d1494 v0)))) in
             MAlonzo.Code.Relation.Binary.PreorderReasoning.du72
               (MAlonzo.Code.Relation.Binary.du150 v6)
               (MAlonzo.Code.Algebra.d1486
                  v0 v3 (MAlonzo.Code.Algebra.d1488 v0 v3))
               (MAlonzo.Code.Algebra.d1492 v0) (MAlonzo.Code.Algebra.d1492 v0)
               (MAlonzo.Code.Data.Product.d28 (du182 v0) v3)
               (let v7
                      = coe
                          MAlonzo.Code.Relation.Binary.C143
                          (coe
                             MAlonzo.Code.Algebra.Structures.d2874
                             (coe
                                MAlonzo.Code.Algebra.Structures.d3038
                                (coe
                                   MAlonzo.Code.Algebra.Structures.d3222
                                   (coe MAlonzo.Code.Algebra.d1494 v0)))) in
                let v8 = coe MAlonzo.Code.Algebra.d1492 v0 in
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
name462
  = "Algebra.Properties.BooleanAlgebra.XorRing.distrib-\8743-\8853"
d462 v0 v1 v2 v3 v4 = du462 v2 v3 v4
du462 v0 v1 v2
  = coe
      MAlonzo.Code.Data.Product.C30 (coe du468 v0 v1 v2)
      (coe du486 v0 v1 v2)
name468 = "Algebra.Properties.BooleanAlgebra.XorRing._.dist\737"
d468 v0 v1 v2 v3 v4 v5 v6 v7 = du468 v2 v3 v4 v5 v6 v7
du468 v0 v1 v2 v3 v4 v5
  = coe
      MAlonzo.Code.Relation.Binary.PreorderReasoning.d62
      (let v6
             = coe
                 MAlonzo.Code.Relation.Binary.C143
                 (coe
                    MAlonzo.Code.Algebra.Structures.d2874
                    (coe
                       MAlonzo.Code.Algebra.Structures.d3038
                       (coe
                          MAlonzo.Code.Algebra.Structures.d3222
                          (coe MAlonzo.Code.Algebra.d1494 v0)))) in
       MAlonzo.Code.Relation.Binary.PreorderReasoning.du72
         (MAlonzo.Code.Relation.Binary.du150 v6)
         (MAlonzo.Code.Algebra.d1486 v0 v3 (v1 v4 v5))
         (MAlonzo.Code.Algebra.d1486
            v0 v3
            (MAlonzo.Code.Algebra.d1486
               v0 (MAlonzo.Code.Algebra.d1484 v0 v4 v5)
               (MAlonzo.Code.Algebra.d1488
                  v0 (MAlonzo.Code.Algebra.d1486 v0 v4 v5))))
         (v1
            (MAlonzo.Code.Algebra.d1486 v0 v3 v4)
            (MAlonzo.Code.Algebra.d1486 v0 v3 v5))
         (MAlonzo.Code.Function.du176
            (MAlonzo.Code.Relation.Binary.Core.d516
               (MAlonzo.Code.Algebra.Structures.d2874
                  (MAlonzo.Code.Algebra.Structures.d3038
                     (MAlonzo.Code.Algebra.Structures.d3222
                        (MAlonzo.Code.Algebra.d1494 v0))))
               v3)
            (MAlonzo.Code.Algebra.Structures.d2886
               (MAlonzo.Code.Algebra.Structures.d3038
                  (MAlonzo.Code.Algebra.Structures.d3222
                     (MAlonzo.Code.Algebra.d1494 v0)))
               v3 v3 (v1 v4 v5)
               (MAlonzo.Code.Algebra.d1486
                  v0 (MAlonzo.Code.Algebra.d1484 v0 v4 v5)
                  (MAlonzo.Code.Algebra.d1488
                     v0 (MAlonzo.Code.Algebra.d1486 v0 v4 v5))))
            (v2 v4 v5))
         (let v7
                = coe
                    MAlonzo.Code.Relation.Binary.C143
                    (coe
                       MAlonzo.Code.Algebra.Structures.d2874
                       (coe
                          MAlonzo.Code.Algebra.Structures.d3038
                          (coe
                             MAlonzo.Code.Algebra.Structures.d3222
                             (coe MAlonzo.Code.Algebra.d1494 v0)))) in
          MAlonzo.Code.Relation.Binary.PreorderReasoning.du72
            (MAlonzo.Code.Relation.Binary.du150 v7)
            (MAlonzo.Code.Algebra.d1486
               v0 v3
               (MAlonzo.Code.Algebra.d1486
                  v0 (MAlonzo.Code.Algebra.d1484 v0 v4 v5)
                  (MAlonzo.Code.Algebra.d1488
                     v0 (MAlonzo.Code.Algebra.d1486 v0 v4 v5))))
            (MAlonzo.Code.Algebra.d1486
               v0
               (MAlonzo.Code.Algebra.d1486
                  v0 v3 (MAlonzo.Code.Algebra.d1484 v0 v4 v5))
               (MAlonzo.Code.Algebra.d1488
                  v0 (MAlonzo.Code.Algebra.d1486 v0 v4 v5)))
            (v1
               (MAlonzo.Code.Algebra.d1486 v0 v3 v4)
               (MAlonzo.Code.Algebra.d1486 v0 v3 v5))
            (MAlonzo.Code.Function.du158
               (MAlonzo.Code.Relation.Binary.Core.d518
                  (MAlonzo.Code.Algebra.Structures.d2874
                     (MAlonzo.Code.Algebra.Structures.d3038
                        (MAlonzo.Code.Algebra.Structures.d3222
                           (MAlonzo.Code.Algebra.d1494 v0))))
                  (MAlonzo.Code.Algebra.d1486
                     v0
                     (MAlonzo.Code.Algebra.d1486
                        v0 v3 (MAlonzo.Code.Algebra.d1484 v0 v4 v5))
                     (MAlonzo.Code.Algebra.d1488
                        v0 (MAlonzo.Code.Algebra.d1486 v0 v4 v5)))
                  (MAlonzo.Code.Algebra.d1486
                     v0 v3
                     (MAlonzo.Code.Algebra.d1486
                        v0 (MAlonzo.Code.Algebra.d1484 v0 v4 v5)
                        (MAlonzo.Code.Algebra.d1488
                           v0 (MAlonzo.Code.Algebra.d1486 v0 v4 v5)))))
               (MAlonzo.Code.Algebra.Structures.d2884
                  (MAlonzo.Code.Algebra.Structures.d3038
                     (MAlonzo.Code.Algebra.Structures.d3222
                        (MAlonzo.Code.Algebra.d1494 v0)))
                  v3 (MAlonzo.Code.Algebra.d1484 v0 v4 v5)
                  (MAlonzo.Code.Algebra.d1488
                     v0 (MAlonzo.Code.Algebra.d1486 v0 v4 v5))))
            (let v8
                   = coe
                       MAlonzo.Code.Relation.Binary.C143
                       (coe
                          MAlonzo.Code.Algebra.Structures.d2874
                          (coe
                             MAlonzo.Code.Algebra.Structures.d3038
                             (coe
                                MAlonzo.Code.Algebra.Structures.d3222
                                (coe MAlonzo.Code.Algebra.d1494 v0)))) in
             MAlonzo.Code.Relation.Binary.PreorderReasoning.du72
               (MAlonzo.Code.Relation.Binary.du150 v8)
               (MAlonzo.Code.Algebra.d1486
                  v0
                  (MAlonzo.Code.Algebra.d1486
                     v0 v3 (MAlonzo.Code.Algebra.d1484 v0 v4 v5))
                  (MAlonzo.Code.Algebra.d1488
                     v0 (MAlonzo.Code.Algebra.d1486 v0 v4 v5)))
               (MAlonzo.Code.Algebra.d1486
                  v0
                  (MAlonzo.Code.Algebra.d1486
                     v0 v3 (MAlonzo.Code.Algebra.d1484 v0 v4 v5))
                  (MAlonzo.Code.Algebra.d1484
                     v0 (MAlonzo.Code.Algebra.d1488 v0 v4)
                     (MAlonzo.Code.Algebra.d1488 v0 v5)))
               (v1
                  (MAlonzo.Code.Algebra.d1486 v0 v3 v4)
                  (MAlonzo.Code.Algebra.d1486 v0 v3 v5))
               (MAlonzo.Code.Function.du176
                  (MAlonzo.Code.Relation.Binary.Core.d516
                     (MAlonzo.Code.Algebra.Structures.d2874
                        (MAlonzo.Code.Algebra.Structures.d3038
                           (MAlonzo.Code.Algebra.Structures.d3222
                              (MAlonzo.Code.Algebra.d1494 v0))))
                     (MAlonzo.Code.Algebra.d1486
                        v0 v3 (MAlonzo.Code.Algebra.d1484 v0 v4 v5)))
                  (MAlonzo.Code.Algebra.Structures.d2886
                     (MAlonzo.Code.Algebra.Structures.d3038
                        (MAlonzo.Code.Algebra.Structures.d3222
                           (MAlonzo.Code.Algebra.d1494 v0)))
                     (MAlonzo.Code.Algebra.d1486
                        v0 v3 (MAlonzo.Code.Algebra.d1484 v0 v4 v5))
                     (MAlonzo.Code.Algebra.d1486
                        v0 v3 (MAlonzo.Code.Algebra.d1484 v0 v4 v5))
                     (MAlonzo.Code.Algebra.d1488
                        v0 (MAlonzo.Code.Algebra.d1486 v0 v4 v5))
                     (MAlonzo.Code.Algebra.d1484
                        v0 (MAlonzo.Code.Algebra.d1488 v0 v4)
                        (MAlonzo.Code.Algebra.d1488 v0 v5)))
                  (du286 v0 v4 v5))
               (let v9
                      = coe
                          MAlonzo.Code.Relation.Binary.C143
                          (coe
                             MAlonzo.Code.Algebra.Structures.d2874
                             (coe
                                MAlonzo.Code.Algebra.Structures.d3038
                                (coe
                                   MAlonzo.Code.Algebra.Structures.d3222
                                   (coe MAlonzo.Code.Algebra.d1494 v0)))) in
                MAlonzo.Code.Relation.Binary.PreorderReasoning.du72
                  (MAlonzo.Code.Relation.Binary.du150 v9)
                  (MAlonzo.Code.Algebra.d1486
                     v0
                     (MAlonzo.Code.Algebra.d1486
                        v0 v3 (MAlonzo.Code.Algebra.d1484 v0 v4 v5))
                     (MAlonzo.Code.Algebra.d1484
                        v0 (MAlonzo.Code.Algebra.d1488 v0 v4)
                        (MAlonzo.Code.Algebra.d1488 v0 v5)))
                  (MAlonzo.Code.Algebra.d1484
                     v0 (MAlonzo.Code.Algebra.d1492 v0)
                     (MAlonzo.Code.Algebra.d1486
                        v0
                        (MAlonzo.Code.Algebra.d1486
                           v0 v3 (MAlonzo.Code.Algebra.d1484 v0 v4 v5))
                        (MAlonzo.Code.Algebra.d1484
                           v0 (MAlonzo.Code.Algebra.d1488 v0 v4)
                           (MAlonzo.Code.Algebra.d1488 v0 v5))))
                  (v1
                     (MAlonzo.Code.Algebra.d1486 v0 v3 v4)
                     (MAlonzo.Code.Algebra.d1486 v0 v3 v5))
                  (MAlonzo.Code.Function.du158
                     (MAlonzo.Code.Relation.Binary.Core.d518
                        (MAlonzo.Code.Algebra.Structures.d2874
                           (MAlonzo.Code.Algebra.Structures.d3038
                              (MAlonzo.Code.Algebra.Structures.d3222
                                 (MAlonzo.Code.Algebra.d1494 v0))))
                        (MAlonzo.Code.Algebra.d1484
                           v0 (MAlonzo.Code.Algebra.d1492 v0)
                           (MAlonzo.Code.Algebra.d1486
                              v0
                              (MAlonzo.Code.Algebra.d1486
                                 v0 v3 (MAlonzo.Code.Algebra.d1484 v0 v4 v5))
                              (MAlonzo.Code.Algebra.d1484
                                 v0 (MAlonzo.Code.Algebra.d1488 v0 v4)
                                 (MAlonzo.Code.Algebra.d1488 v0 v5))))
                        (MAlonzo.Code.Algebra.d1486
                           v0
                           (MAlonzo.Code.Algebra.d1486
                              v0 v3 (MAlonzo.Code.Algebra.d1484 v0 v4 v5))
                           (MAlonzo.Code.Algebra.d1484
                              v0 (MAlonzo.Code.Algebra.d1488 v0 v4)
                              (MAlonzo.Code.Algebra.d1488 v0 v5))))
                     (MAlonzo.Code.Data.Product.d26
                        (du210 v0)
                        (MAlonzo.Code.Algebra.d1486
                           v0
                           (MAlonzo.Code.Algebra.d1486
                              v0 v3 (MAlonzo.Code.Algebra.d1484 v0 v4 v5))
                           (MAlonzo.Code.Algebra.d1484
                              v0 (MAlonzo.Code.Algebra.d1488 v0 v4)
                              (MAlonzo.Code.Algebra.d1488 v0 v5)))))
                  (let v10
                         = coe
                             MAlonzo.Code.Relation.Binary.C143
                             (coe
                                MAlonzo.Code.Algebra.Structures.d2874
                                (coe
                                   MAlonzo.Code.Algebra.Structures.d3038
                                   (coe
                                      MAlonzo.Code.Algebra.Structures.d3222
                                      (coe MAlonzo.Code.Algebra.d1494 v0)))) in
                   MAlonzo.Code.Relation.Binary.PreorderReasoning.du72
                     (MAlonzo.Code.Relation.Binary.du150 v10)
                     (MAlonzo.Code.Algebra.d1484
                        v0 (MAlonzo.Code.Algebra.d1492 v0)
                        (MAlonzo.Code.Algebra.d1486
                           v0
                           (MAlonzo.Code.Algebra.d1486
                              v0 v3 (MAlonzo.Code.Algebra.d1484 v0 v4 v5))
                           (MAlonzo.Code.Algebra.d1484
                              v0 (MAlonzo.Code.Algebra.d1488 v0 v4)
                              (MAlonzo.Code.Algebra.d1488 v0 v5))))
                     (MAlonzo.Code.Algebra.d1484
                        v0
                        (MAlonzo.Code.Algebra.d1486
                           v0
                           (MAlonzo.Code.Algebra.d1486
                              v0 v3 (MAlonzo.Code.Algebra.d1484 v0 v4 v5))
                           (MAlonzo.Code.Algebra.d1488 v0 v3))
                        (MAlonzo.Code.Algebra.d1486
                           v0
                           (MAlonzo.Code.Algebra.d1486
                              v0 v3 (MAlonzo.Code.Algebra.d1484 v0 v4 v5))
                           (MAlonzo.Code.Algebra.d1484
                              v0 (MAlonzo.Code.Algebra.d1488 v0 v4)
                              (MAlonzo.Code.Algebra.d1488 v0 v5))))
                     (v1
                        (MAlonzo.Code.Algebra.d1486 v0 v3 v4)
                        (MAlonzo.Code.Algebra.d1486 v0 v3 v5))
                     (MAlonzo.Code.Function.du176
                        (du484 v0 v3 v4 v5)
                        (MAlonzo.Code.Algebra.Structures.d2880
                           (MAlonzo.Code.Algebra.Structures.d3038
                              (MAlonzo.Code.Algebra.Structures.d3222
                                 (MAlonzo.Code.Algebra.d1494 v0)))
                           (MAlonzo.Code.Algebra.d1492 v0)
                           (MAlonzo.Code.Algebra.d1486
                              v0
                              (MAlonzo.Code.Algebra.d1486
                                 v0 v3 (MAlonzo.Code.Algebra.d1484 v0 v4 v5))
                              (MAlonzo.Code.Algebra.d1488 v0 v3))
                           (MAlonzo.Code.Algebra.d1486
                              v0
                              (MAlonzo.Code.Algebra.d1486
                                 v0 v3 (MAlonzo.Code.Algebra.d1484 v0 v4 v5))
                              (MAlonzo.Code.Algebra.d1484
                                 v0 (MAlonzo.Code.Algebra.d1488 v0 v4)
                                 (MAlonzo.Code.Algebra.d1488 v0 v5)))
                           (MAlonzo.Code.Algebra.d1486
                              v0
                              (MAlonzo.Code.Algebra.d1486
                                 v0 v3 (MAlonzo.Code.Algebra.d1484 v0 v4 v5))
                              (MAlonzo.Code.Algebra.d1484
                                 v0 (MAlonzo.Code.Algebra.d1488 v0 v4)
                                 (MAlonzo.Code.Algebra.d1488 v0 v5))))
                        (MAlonzo.Code.Relation.Binary.Core.d516
                           (MAlonzo.Code.Algebra.Structures.d2874
                              (MAlonzo.Code.Algebra.Structures.d3038
                                 (MAlonzo.Code.Algebra.Structures.d3222
                                    (MAlonzo.Code.Algebra.d1494 v0))))
                           (MAlonzo.Code.Algebra.d1486
                              v0
                              (MAlonzo.Code.Algebra.d1486
                                 v0 v3 (MAlonzo.Code.Algebra.d1484 v0 v4 v5))
                              (MAlonzo.Code.Algebra.d1484
                                 v0 (MAlonzo.Code.Algebra.d1488 v0 v4)
                                 (MAlonzo.Code.Algebra.d1488 v0 v5)))))
                     (let v11
                            = coe
                                MAlonzo.Code.Relation.Binary.C143
                                (coe
                                   MAlonzo.Code.Algebra.Structures.d2874
                                   (coe
                                      MAlonzo.Code.Algebra.Structures.d3038
                                      (coe
                                         MAlonzo.Code.Algebra.Structures.d3222
                                         (coe MAlonzo.Code.Algebra.d1494 v0)))) in
                      MAlonzo.Code.Relation.Binary.PreorderReasoning.du72
                        (MAlonzo.Code.Relation.Binary.du150 v11)
                        (MAlonzo.Code.Algebra.d1484
                           v0
                           (MAlonzo.Code.Algebra.d1486
                              v0
                              (MAlonzo.Code.Algebra.d1486
                                 v0 v3 (MAlonzo.Code.Algebra.d1484 v0 v4 v5))
                              (MAlonzo.Code.Algebra.d1488 v0 v3))
                           (MAlonzo.Code.Algebra.d1486
                              v0
                              (MAlonzo.Code.Algebra.d1486
                                 v0 v3 (MAlonzo.Code.Algebra.d1484 v0 v4 v5))
                              (MAlonzo.Code.Algebra.d1484
                                 v0 (MAlonzo.Code.Algebra.d1488 v0 v4)
                                 (MAlonzo.Code.Algebra.d1488 v0 v5))))
                        (MAlonzo.Code.Algebra.d1486
                           v0
                           (MAlonzo.Code.Algebra.d1486
                              v0 v3 (MAlonzo.Code.Algebra.d1484 v0 v4 v5))
                           (MAlonzo.Code.Algebra.d1484
                              v0 (MAlonzo.Code.Algebra.d1488 v0 v3)
                              (MAlonzo.Code.Algebra.d1484
                                 v0 (MAlonzo.Code.Algebra.d1488 v0 v4)
                                 (MAlonzo.Code.Algebra.d1488 v0 v5))))
                        (v1
                           (MAlonzo.Code.Algebra.d1486 v0 v3 v4)
                           (MAlonzo.Code.Algebra.d1486 v0 v3 v5))
                        (MAlonzo.Code.Function.du158
                           (MAlonzo.Code.Relation.Binary.Core.d518
                              (MAlonzo.Code.Algebra.Structures.d2874
                                 (MAlonzo.Code.Algebra.Structures.d3038
                                    (MAlonzo.Code.Algebra.Structures.d3222
                                       (MAlonzo.Code.Algebra.d1494 v0))))
                              (MAlonzo.Code.Algebra.d1486
                                 v0
                                 (MAlonzo.Code.Algebra.d1486
                                    v0 v3 (MAlonzo.Code.Algebra.d1484 v0 v4 v5))
                                 (MAlonzo.Code.Algebra.d1484
                                    v0 (MAlonzo.Code.Algebra.d1488 v0 v3)
                                    (MAlonzo.Code.Algebra.d1484
                                       v0 (MAlonzo.Code.Algebra.d1488 v0 v4)
                                       (MAlonzo.Code.Algebra.d1488 v0 v5))))
                              (MAlonzo.Code.Algebra.d1484
                                 v0
                                 (MAlonzo.Code.Algebra.d1486
                                    v0
                                    (MAlonzo.Code.Algebra.d1486
                                       v0 v3 (MAlonzo.Code.Algebra.d1484 v0 v4 v5))
                                    (MAlonzo.Code.Algebra.d1488 v0 v3))
                                 (MAlonzo.Code.Algebra.d1486
                                    v0
                                    (MAlonzo.Code.Algebra.d1486
                                       v0 v3 (MAlonzo.Code.Algebra.d1484 v0 v4 v5))
                                    (MAlonzo.Code.Algebra.d1484
                                       v0 (MAlonzo.Code.Algebra.d1488 v0 v4)
                                       (MAlonzo.Code.Algebra.d1488 v0 v5)))))
                           (MAlonzo.Code.Data.Product.d26
                              (MAlonzo.Code.Algebra.Properties.DistributiveLattice.du162
                                 (MAlonzo.Code.Algebra.C687
                                    (MAlonzo.Code.Algebra.d1484 v0) (MAlonzo.Code.Algebra.d1486 v0)
                                    (MAlonzo.Code.Algebra.Structures.d3222
                                       (MAlonzo.Code.Algebra.d1494 v0))))
                              (MAlonzo.Code.Algebra.d1486
                                 v0 v3 (MAlonzo.Code.Algebra.d1484 v0 v4 v5))
                              (MAlonzo.Code.Algebra.d1488 v0 v3)
                              (MAlonzo.Code.Algebra.d1484
                                 v0 (MAlonzo.Code.Algebra.d1488 v0 v4)
                                 (MAlonzo.Code.Algebra.d1488 v0 v5))))
                        (let v12
                               = coe
                                   MAlonzo.Code.Relation.Binary.C143
                                   (coe
                                      MAlonzo.Code.Algebra.Structures.d2874
                                      (coe
                                         MAlonzo.Code.Algebra.Structures.d3038
                                         (coe
                                            MAlonzo.Code.Algebra.Structures.d3222
                                            (coe MAlonzo.Code.Algebra.d1494 v0)))) in
                         MAlonzo.Code.Relation.Binary.PreorderReasoning.du72
                           (MAlonzo.Code.Relation.Binary.du150 v12)
                           (MAlonzo.Code.Algebra.d1486
                              v0
                              (MAlonzo.Code.Algebra.d1486
                                 v0 v3 (MAlonzo.Code.Algebra.d1484 v0 v4 v5))
                              (MAlonzo.Code.Algebra.d1484
                                 v0 (MAlonzo.Code.Algebra.d1488 v0 v3)
                                 (MAlonzo.Code.Algebra.d1484
                                    v0 (MAlonzo.Code.Algebra.d1488 v0 v4)
                                    (MAlonzo.Code.Algebra.d1488 v0 v5))))
                           (MAlonzo.Code.Algebra.d1486
                              v0
                              (MAlonzo.Code.Algebra.d1486
                                 v0 v3 (MAlonzo.Code.Algebra.d1484 v0 v4 v5))
                              (MAlonzo.Code.Algebra.d1484
                                 v0 (MAlonzo.Code.Algebra.d1488 v0 v3)
                                 (MAlonzo.Code.Algebra.d1488
                                    v0 (MAlonzo.Code.Algebra.d1486 v0 v4 v5))))
                           (v1
                              (MAlonzo.Code.Algebra.d1486 v0 v3 v4)
                              (MAlonzo.Code.Algebra.d1486 v0 v3 v5))
                           (MAlonzo.Code.Function.du176
                              (MAlonzo.Code.Relation.Binary.Core.d516
                                 (MAlonzo.Code.Algebra.Structures.d2874
                                    (MAlonzo.Code.Algebra.Structures.d3038
                                       (MAlonzo.Code.Algebra.Structures.d3222
                                          (MAlonzo.Code.Algebra.d1494 v0))))
                                 (MAlonzo.Code.Algebra.d1486
                                    v0 v3 (MAlonzo.Code.Algebra.d1484 v0 v4 v5)))
                              (MAlonzo.Code.Algebra.Structures.d2886
                                 (MAlonzo.Code.Algebra.Structures.d3038
                                    (MAlonzo.Code.Algebra.Structures.d3222
                                       (MAlonzo.Code.Algebra.d1494 v0)))
                                 (MAlonzo.Code.Algebra.d1486
                                    v0 v3 (MAlonzo.Code.Algebra.d1484 v0 v4 v5))
                                 (MAlonzo.Code.Algebra.d1486
                                    v0 v3 (MAlonzo.Code.Algebra.d1484 v0 v4 v5))
                                 (MAlonzo.Code.Algebra.d1484
                                    v0 (MAlonzo.Code.Algebra.d1488 v0 v3)
                                    (MAlonzo.Code.Algebra.d1484
                                       v0 (MAlonzo.Code.Algebra.d1488 v0 v4)
                                       (MAlonzo.Code.Algebra.d1488 v0 v5)))
                                 (MAlonzo.Code.Algebra.d1484
                                    v0 (MAlonzo.Code.Algebra.d1488 v0 v3)
                                    (MAlonzo.Code.Algebra.d1488
                                       v0 (MAlonzo.Code.Algebra.d1486 v0 v4 v5))))
                              (MAlonzo.Code.Function.du176
                                 (MAlonzo.Code.Relation.Binary.Core.d516
                                    (MAlonzo.Code.Algebra.Structures.d2874
                                       (MAlonzo.Code.Algebra.Structures.d3038
                                          (MAlonzo.Code.Algebra.Structures.d3222
                                             (MAlonzo.Code.Algebra.d1494 v0))))
                                    (MAlonzo.Code.Algebra.d1488 v0 v3))
                                 (MAlonzo.Code.Algebra.Structures.d2880
                                    (MAlonzo.Code.Algebra.Structures.d3038
                                       (MAlonzo.Code.Algebra.Structures.d3222
                                          (MAlonzo.Code.Algebra.d1494 v0)))
                                    (MAlonzo.Code.Algebra.d1488 v0 v3)
                                    (MAlonzo.Code.Algebra.d1488 v0 v3)
                                    (MAlonzo.Code.Algebra.d1484
                                       v0 (MAlonzo.Code.Algebra.d1488 v0 v4)
                                       (MAlonzo.Code.Algebra.d1488 v0 v5))
                                    (MAlonzo.Code.Algebra.d1488
                                       v0 (MAlonzo.Code.Algebra.d1486 v0 v4 v5)))
                                 (MAlonzo.Code.Relation.Binary.Core.d518
                                    (MAlonzo.Code.Algebra.Structures.d2874
                                       (MAlonzo.Code.Algebra.Structures.d3038
                                          (MAlonzo.Code.Algebra.Structures.d3222
                                             (MAlonzo.Code.Algebra.d1494 v0))))
                                    (MAlonzo.Code.Algebra.d1488
                                       v0 (MAlonzo.Code.Algebra.d1486 v0 v4 v5))
                                    (MAlonzo.Code.Algebra.d1484
                                       v0 (MAlonzo.Code.Algebra.d1488 v0 v4)
                                       (MAlonzo.Code.Algebra.d1488 v0 v5))
                                    (du286 v0 v4 v5))))
                           (let v13
                                  = coe
                                      MAlonzo.Code.Relation.Binary.C143
                                      (coe
                                         MAlonzo.Code.Algebra.Structures.d2874
                                         (coe
                                            MAlonzo.Code.Algebra.Structures.d3038
                                            (coe
                                               MAlonzo.Code.Algebra.Structures.d3222
                                               (coe MAlonzo.Code.Algebra.d1494 v0)))) in
                            MAlonzo.Code.Relation.Binary.PreorderReasoning.du72
                              (MAlonzo.Code.Relation.Binary.du150 v13)
                              (MAlonzo.Code.Algebra.d1486
                                 v0
                                 (MAlonzo.Code.Algebra.d1486
                                    v0 v3 (MAlonzo.Code.Algebra.d1484 v0 v4 v5))
                                 (MAlonzo.Code.Algebra.d1484
                                    v0 (MAlonzo.Code.Algebra.d1488 v0 v3)
                                    (MAlonzo.Code.Algebra.d1488
                                       v0 (MAlonzo.Code.Algebra.d1486 v0 v4 v5))))
                              (MAlonzo.Code.Algebra.d1486
                                 v0
                                 (MAlonzo.Code.Algebra.d1486
                                    v0 v3 (MAlonzo.Code.Algebra.d1484 v0 v4 v5))
                                 (MAlonzo.Code.Algebra.d1488
                                    v0
                                    (MAlonzo.Code.Algebra.d1486
                                       v0 v3 (MAlonzo.Code.Algebra.d1486 v0 v4 v5))))
                              (v1
                                 (MAlonzo.Code.Algebra.d1486 v0 v3 v4)
                                 (MAlonzo.Code.Algebra.d1486 v0 v3 v5))
                              (MAlonzo.Code.Function.du176
                                 (MAlonzo.Code.Relation.Binary.Core.d516
                                    (MAlonzo.Code.Algebra.Structures.d2874
                                       (MAlonzo.Code.Algebra.Structures.d3038
                                          (MAlonzo.Code.Algebra.Structures.d3222
                                             (MAlonzo.Code.Algebra.d1494 v0))))
                                    (MAlonzo.Code.Algebra.d1486
                                       v0 v3 (MAlonzo.Code.Algebra.d1484 v0 v4 v5)))
                                 (MAlonzo.Code.Algebra.Structures.d2886
                                    (MAlonzo.Code.Algebra.Structures.d3038
                                       (MAlonzo.Code.Algebra.Structures.d3222
                                          (MAlonzo.Code.Algebra.d1494 v0)))
                                    (MAlonzo.Code.Algebra.d1486
                                       v0 v3 (MAlonzo.Code.Algebra.d1484 v0 v4 v5))
                                    (MAlonzo.Code.Algebra.d1486
                                       v0 v3 (MAlonzo.Code.Algebra.d1484 v0 v4 v5))
                                    (MAlonzo.Code.Algebra.d1484
                                       v0 (MAlonzo.Code.Algebra.d1488 v0 v3)
                                       (MAlonzo.Code.Algebra.d1488
                                          v0 (MAlonzo.Code.Algebra.d1486 v0 v4 v5)))
                                    (MAlonzo.Code.Algebra.d1488
                                       v0
                                       (MAlonzo.Code.Algebra.d1486
                                          v0 v3 (MAlonzo.Code.Algebra.d1486 v0 v4 v5))))
                                 (MAlonzo.Code.Relation.Binary.Core.d518
                                    (MAlonzo.Code.Algebra.Structures.d2874
                                       (MAlonzo.Code.Algebra.Structures.d3038
                                          (MAlonzo.Code.Algebra.Structures.d3222
                                             (MAlonzo.Code.Algebra.d1494 v0))))
                                    (MAlonzo.Code.Algebra.d1488
                                       v0
                                       (MAlonzo.Code.Algebra.d1486
                                          v0 v3 (MAlonzo.Code.Algebra.d1486 v0 v4 v5)))
                                    (MAlonzo.Code.Algebra.d1484
                                       v0 (MAlonzo.Code.Algebra.d1488 v0 v3)
                                       (MAlonzo.Code.Algebra.d1488
                                          v0 (MAlonzo.Code.Algebra.d1486 v0 v4 v5)))
                                    (du286 v0 v3 (MAlonzo.Code.Algebra.d1486 v0 v4 v5))))
                              (let v14
                                     = coe
                                         MAlonzo.Code.Relation.Binary.C143
                                         (coe
                                            MAlonzo.Code.Algebra.Structures.d2874
                                            (coe
                                               MAlonzo.Code.Algebra.Structures.d3038
                                               (coe
                                                  MAlonzo.Code.Algebra.Structures.d3222
                                                  (coe MAlonzo.Code.Algebra.d1494 v0)))) in
                               MAlonzo.Code.Relation.Binary.PreorderReasoning.du72
                                 (MAlonzo.Code.Relation.Binary.du150 v14)
                                 (MAlonzo.Code.Algebra.d1486
                                    v0
                                    (MAlonzo.Code.Algebra.d1486
                                       v0 v3 (MAlonzo.Code.Algebra.d1484 v0 v4 v5))
                                    (MAlonzo.Code.Algebra.d1488
                                       v0
                                       (MAlonzo.Code.Algebra.d1486
                                          v0 v3 (MAlonzo.Code.Algebra.d1486 v0 v4 v5))))
                                 (MAlonzo.Code.Algebra.d1486
                                    v0
                                    (MAlonzo.Code.Algebra.d1486
                                       v0 v3 (MAlonzo.Code.Algebra.d1484 v0 v4 v5))
                                    (MAlonzo.Code.Algebra.d1488
                                       v0
                                       (MAlonzo.Code.Algebra.d1486
                                          v0 (MAlonzo.Code.Algebra.d1486 v0 v3 v4)
                                          (MAlonzo.Code.Algebra.d1486 v0 v3 v5))))
                                 (v1
                                    (MAlonzo.Code.Algebra.d1486 v0 v3 v4)
                                    (MAlonzo.Code.Algebra.d1486 v0 v3 v5))
                                 (du364
                                    v0
                                    (MAlonzo.Code.Algebra.d1486
                                       v0 v3 (MAlonzo.Code.Algebra.d1484 v0 v4 v5))
                                    (MAlonzo.Code.Algebra.d1486
                                       v0 v3 (MAlonzo.Code.Algebra.d1484 v0 v4 v5))
                                    (MAlonzo.Code.Algebra.d1486
                                       v0 v3 (MAlonzo.Code.Algebra.d1486 v0 v4 v5))
                                    (MAlonzo.Code.Algebra.d1486
                                       v0 (MAlonzo.Code.Algebra.d1486 v0 v3 v4)
                                       (MAlonzo.Code.Algebra.d1486 v0 v3 v5))
                                    (MAlonzo.Code.Relation.Binary.Core.d516
                                       (MAlonzo.Code.Algebra.Structures.d2874
                                          (MAlonzo.Code.Algebra.Structures.d3038
                                             (MAlonzo.Code.Algebra.Structures.d3222
                                                (MAlonzo.Code.Algebra.d1494 v0))))
                                       (MAlonzo.Code.Algebra.d1486
                                          v0 v3 (MAlonzo.Code.Algebra.d1484 v0 v4 v5)))
                                    (du482 v0 v3 v4 v5))
                                 (let v15
                                        = coe
                                            MAlonzo.Code.Relation.Binary.C143
                                            (coe
                                               MAlonzo.Code.Algebra.Structures.d2874
                                               (coe
                                                  MAlonzo.Code.Algebra.Structures.d3038
                                                  (coe
                                                     MAlonzo.Code.Algebra.Structures.d3222
                                                     (coe MAlonzo.Code.Algebra.d1494 v0)))) in
                                  MAlonzo.Code.Relation.Binary.PreorderReasoning.du72
                                    (MAlonzo.Code.Relation.Binary.du150 v15)
                                    (MAlonzo.Code.Algebra.d1486
                                       v0
                                       (MAlonzo.Code.Algebra.d1486
                                          v0 v3 (MAlonzo.Code.Algebra.d1484 v0 v4 v5))
                                       (MAlonzo.Code.Algebra.d1488
                                          v0
                                          (MAlonzo.Code.Algebra.d1486
                                             v0 (MAlonzo.Code.Algebra.d1486 v0 v3 v4)
                                             (MAlonzo.Code.Algebra.d1486 v0 v3 v5))))
                                    (MAlonzo.Code.Algebra.d1486
                                       v0
                                       (MAlonzo.Code.Algebra.d1484
                                          v0 (MAlonzo.Code.Algebra.d1486 v0 v3 v4)
                                          (MAlonzo.Code.Algebra.d1486 v0 v3 v5))
                                       (MAlonzo.Code.Algebra.d1488
                                          v0
                                          (MAlonzo.Code.Algebra.d1486
                                             v0 (MAlonzo.Code.Algebra.d1486 v0 v3 v4)
                                             (MAlonzo.Code.Algebra.d1486 v0 v3 v5))))
                                    (v1
                                       (MAlonzo.Code.Algebra.d1486 v0 v3 v4)
                                       (MAlonzo.Code.Algebra.d1486 v0 v3 v5))
                                    (MAlonzo.Code.Function.du176
                                       (MAlonzo.Code.Data.Product.d26
                                          (MAlonzo.Code.Algebra.Properties.DistributiveLattice.du162
                                             (MAlonzo.Code.Algebra.C687
                                                (MAlonzo.Code.Algebra.d1484 v0)
                                                (MAlonzo.Code.Algebra.d1486 v0)
                                                (MAlonzo.Code.Algebra.Structures.d3222
                                                   (MAlonzo.Code.Algebra.d1494 v0))))
                                          v3 v4 v5)
                                       (MAlonzo.Code.Algebra.Structures.d2886
                                          (MAlonzo.Code.Algebra.Structures.d3038
                                             (MAlonzo.Code.Algebra.Structures.d3222
                                                (MAlonzo.Code.Algebra.d1494 v0)))
                                          (MAlonzo.Code.Algebra.d1486
                                             v0 v3 (MAlonzo.Code.Algebra.d1484 v0 v4 v5))
                                          (MAlonzo.Code.Algebra.d1484
                                             v0 (MAlonzo.Code.Algebra.d1486 v0 v3 v4)
                                             (MAlonzo.Code.Algebra.d1486 v0 v3 v5))
                                          (MAlonzo.Code.Algebra.d1488
                                             v0
                                             (MAlonzo.Code.Algebra.d1486
                                                v0 (MAlonzo.Code.Algebra.d1486 v0 v3 v4)
                                                (MAlonzo.Code.Algebra.d1486 v0 v3 v5)))
                                          (MAlonzo.Code.Algebra.d1488
                                             v0
                                             (MAlonzo.Code.Algebra.d1486
                                                v0 (MAlonzo.Code.Algebra.d1486 v0 v3 v4)
                                                (MAlonzo.Code.Algebra.d1486 v0 v3 v5))))
                                       (MAlonzo.Code.Relation.Binary.Core.d516
                                          (MAlonzo.Code.Algebra.Structures.d2874
                                             (MAlonzo.Code.Algebra.Structures.d3038
                                                (MAlonzo.Code.Algebra.Structures.d3222
                                                   (MAlonzo.Code.Algebra.d1494 v0))))
                                          (MAlonzo.Code.Algebra.d1488
                                             v0
                                             (MAlonzo.Code.Algebra.d1486
                                                v0 (MAlonzo.Code.Algebra.d1486 v0 v3 v4)
                                                (MAlonzo.Code.Algebra.d1486 v0 v3 v5)))))
                                    (let v16
                                           = coe
                                               MAlonzo.Code.Relation.Binary.C143
                                               (coe
                                                  MAlonzo.Code.Algebra.Structures.d2874
                                                  (coe
                                                     MAlonzo.Code.Algebra.Structures.d3038
                                                     (coe
                                                        MAlonzo.Code.Algebra.Structures.d3222
                                                        (coe MAlonzo.Code.Algebra.d1494 v0)))) in
                                     MAlonzo.Code.Relation.Binary.PreorderReasoning.du72
                                       (MAlonzo.Code.Relation.Binary.du150 v16)
                                       (MAlonzo.Code.Algebra.d1486
                                          v0
                                          (MAlonzo.Code.Algebra.d1484
                                             v0 (MAlonzo.Code.Algebra.d1486 v0 v3 v4)
                                             (MAlonzo.Code.Algebra.d1486 v0 v3 v5))
                                          (MAlonzo.Code.Algebra.d1488
                                             v0
                                             (MAlonzo.Code.Algebra.d1486
                                                v0 (MAlonzo.Code.Algebra.d1486 v0 v3 v4)
                                                (MAlonzo.Code.Algebra.d1486 v0 v3 v5))))
                                       (v1
                                          (MAlonzo.Code.Algebra.d1486 v0 v3 v4)
                                          (MAlonzo.Code.Algebra.d1486 v0 v3 v5))
                                       (v1
                                          (MAlonzo.Code.Algebra.d1486 v0 v3 v4)
                                          (MAlonzo.Code.Algebra.d1486 v0 v3 v5))
                                       (MAlonzo.Code.Function.du158
                                          (MAlonzo.Code.Relation.Binary.Core.d518
                                             (MAlonzo.Code.Algebra.Structures.d2874
                                                (MAlonzo.Code.Algebra.Structures.d3038
                                                   (MAlonzo.Code.Algebra.Structures.d3222
                                                      (MAlonzo.Code.Algebra.d1494 v0))))
                                             (v1
                                                (MAlonzo.Code.Algebra.d1486 v0 v3 v4)
                                                (MAlonzo.Code.Algebra.d1486 v0 v3 v5))
                                             (MAlonzo.Code.Algebra.d1486
                                                v0
                                                (MAlonzo.Code.Algebra.d1484
                                                   v0 (MAlonzo.Code.Algebra.d1486 v0 v3 v4)
                                                   (MAlonzo.Code.Algebra.d1486 v0 v3 v5))
                                                (MAlonzo.Code.Algebra.d1488
                                                   v0
                                                   (MAlonzo.Code.Algebra.d1486
                                                      v0 (MAlonzo.Code.Algebra.d1486 v0 v3 v4)
                                                      (MAlonzo.Code.Algebra.d1486 v0 v3 v5)))))
                                          (v2
                                             (MAlonzo.Code.Algebra.d1486 v0 v3 v4)
                                             (MAlonzo.Code.Algebra.d1486 v0 v3 v5)))
                                       (let v17
                                              = coe
                                                  MAlonzo.Code.Relation.Binary.C143
                                                  (coe
                                                     MAlonzo.Code.Algebra.Structures.d2874
                                                     (coe
                                                        MAlonzo.Code.Algebra.Structures.d3038
                                                        (coe
                                                           MAlonzo.Code.Algebra.Structures.d3222
                                                           (coe MAlonzo.Code.Algebra.d1494 v0)))) in
                                        let v18
                                              = coe
                                                  v1 (coe MAlonzo.Code.Algebra.d1486 v0 v3 v4)
                                                  (coe MAlonzo.Code.Algebra.d1486 v0 v3 v5) in
                                        MAlonzo.Code.Relation.Binary.PreorderReasoning.C56
                                          (MAlonzo.Code.Relation.Binary.d38
                                             (MAlonzo.Code.Relation.Binary.d92
                                                (MAlonzo.Code.Relation.Binary.du150 v17))
                                             v18 v18
                                             (MAlonzo.Code.Relation.Binary.Core.d516
                                                (MAlonzo.Code.Relation.Binary.d36
                                                   (MAlonzo.Code.Relation.Binary.d92
                                                      (MAlonzo.Code.Relation.Binary.du150 v17)))
                                                v18))))))))))))))
name480 = "Algebra.Properties.BooleanAlgebra.XorRing._._.lem\8322"
d480 v0 v1 v2 v3 v4 v5 v6 v7 = du480 v2 v5 v6 v7
du480 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Relation.Binary.PreorderReasoning.d62
      (let v4
             = coe
                 MAlonzo.Code.Relation.Binary.C143
                 (coe
                    MAlonzo.Code.Algebra.Structures.d2874
                    (coe
                       MAlonzo.Code.Algebra.Structures.d3038
                       (coe
                          MAlonzo.Code.Algebra.Structures.d3222
                          (coe MAlonzo.Code.Algebra.d1494 v0)))) in
       MAlonzo.Code.Relation.Binary.PreorderReasoning.du72
         (MAlonzo.Code.Relation.Binary.du150 v4)
         (MAlonzo.Code.Algebra.d1486
            v0 v1 (MAlonzo.Code.Algebra.d1486 v0 v2 v3))
         (MAlonzo.Code.Algebra.d1486
            v0 (MAlonzo.Code.Algebra.d1486 v0 v1 v2) v3)
         (MAlonzo.Code.Algebra.d1486
            v0 v2 (MAlonzo.Code.Algebra.d1486 v0 v1 v3))
         (MAlonzo.Code.Function.du158
            (MAlonzo.Code.Relation.Binary.Core.d518
               (MAlonzo.Code.Algebra.Structures.d2874
                  (MAlonzo.Code.Algebra.Structures.d3038
                     (MAlonzo.Code.Algebra.Structures.d3222
                        (MAlonzo.Code.Algebra.d1494 v0))))
               (MAlonzo.Code.Algebra.d1486
                  v0 (MAlonzo.Code.Algebra.d1486 v0 v1 v2) v3)
               (MAlonzo.Code.Algebra.d1486
                  v0 v1 (MAlonzo.Code.Algebra.d1486 v0 v2 v3)))
            (MAlonzo.Code.Algebra.Structures.d2884
               (MAlonzo.Code.Algebra.Structures.d3038
                  (MAlonzo.Code.Algebra.Structures.d3222
                     (MAlonzo.Code.Algebra.d1494 v0)))
               v1 v2 v3))
         (let v5
                = coe
                    MAlonzo.Code.Relation.Binary.C143
                    (coe
                       MAlonzo.Code.Algebra.Structures.d2874
                       (coe
                          MAlonzo.Code.Algebra.Structures.d3038
                          (coe
                             MAlonzo.Code.Algebra.Structures.d3222
                             (coe MAlonzo.Code.Algebra.d1494 v0)))) in
          MAlonzo.Code.Relation.Binary.PreorderReasoning.du72
            (MAlonzo.Code.Relation.Binary.du150 v5)
            (MAlonzo.Code.Algebra.d1486
               v0 (MAlonzo.Code.Algebra.d1486 v0 v1 v2) v3)
            (MAlonzo.Code.Algebra.d1486
               v0 (MAlonzo.Code.Algebra.d1486 v0 v2 v1) v3)
            (MAlonzo.Code.Algebra.d1486
               v0 v2 (MAlonzo.Code.Algebra.d1486 v0 v1 v3))
            (MAlonzo.Code.Function.du176
               (MAlonzo.Code.Algebra.Structures.d2882
                  (MAlonzo.Code.Algebra.Structures.d3038
                     (MAlonzo.Code.Algebra.Structures.d3222
                        (MAlonzo.Code.Algebra.d1494 v0)))
                  v1 v2)
               (MAlonzo.Code.Algebra.Structures.d2886
                  (MAlonzo.Code.Algebra.Structures.d3038
                     (MAlonzo.Code.Algebra.Structures.d3222
                        (MAlonzo.Code.Algebra.d1494 v0)))
                  (MAlonzo.Code.Algebra.d1486 v0 v1 v2)
                  (MAlonzo.Code.Algebra.d1486 v0 v2 v1) v3 v3)
               (MAlonzo.Code.Relation.Binary.Core.d516
                  (MAlonzo.Code.Algebra.Structures.d2874
                     (MAlonzo.Code.Algebra.Structures.d3038
                        (MAlonzo.Code.Algebra.Structures.d3222
                           (MAlonzo.Code.Algebra.d1494 v0))))
                  v3))
            (let v6
                   = coe
                       MAlonzo.Code.Relation.Binary.C143
                       (coe
                          MAlonzo.Code.Algebra.Structures.d2874
                          (coe
                             MAlonzo.Code.Algebra.Structures.d3038
                             (coe
                                MAlonzo.Code.Algebra.Structures.d3222
                                (coe MAlonzo.Code.Algebra.d1494 v0)))) in
             MAlonzo.Code.Relation.Binary.PreorderReasoning.du72
               (MAlonzo.Code.Relation.Binary.du150 v6)
               (MAlonzo.Code.Algebra.d1486
                  v0 (MAlonzo.Code.Algebra.d1486 v0 v2 v1) v3)
               (MAlonzo.Code.Algebra.d1486
                  v0 v2 (MAlonzo.Code.Algebra.d1486 v0 v1 v3))
               (MAlonzo.Code.Algebra.d1486
                  v0 v2 (MAlonzo.Code.Algebra.d1486 v0 v1 v3))
               (MAlonzo.Code.Algebra.Structures.d2884
                  (MAlonzo.Code.Algebra.Structures.d3038
                     (MAlonzo.Code.Algebra.Structures.d3222
                        (MAlonzo.Code.Algebra.d1494 v0)))
                  v2 v1 v3)
               (let v7
                      = coe
                          MAlonzo.Code.Relation.Binary.C143
                          (coe
                             MAlonzo.Code.Algebra.Structures.d2874
                             (coe
                                MAlonzo.Code.Algebra.Structures.d3038
                                (coe
                                   MAlonzo.Code.Algebra.Structures.d3222
                                   (coe MAlonzo.Code.Algebra.d1494 v0)))) in
                let v8
                      = coe
                          MAlonzo.Code.Algebra.d1486 v0 v2
                          (coe MAlonzo.Code.Algebra.d1486 v0 v1 v3) in
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
name482 = "Algebra.Properties.BooleanAlgebra.XorRing._._.lem\8321"
d482 v0 v1 v2 v3 v4 v5 v6 v7 = du482 v2 v5 v6 v7
du482 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Relation.Binary.PreorderReasoning.d62
      (let v4
             = coe
                 MAlonzo.Code.Relation.Binary.C143
                 (coe
                    MAlonzo.Code.Algebra.Structures.d2874
                    (coe
                       MAlonzo.Code.Algebra.Structures.d3038
                       (coe
                          MAlonzo.Code.Algebra.Structures.d3222
                          (coe MAlonzo.Code.Algebra.d1494 v0)))) in
       MAlonzo.Code.Relation.Binary.PreorderReasoning.du72
         (MAlonzo.Code.Relation.Binary.du150 v4)
         (MAlonzo.Code.Algebra.d1486
            v0 v1 (MAlonzo.Code.Algebra.d1486 v0 v2 v3))
         (MAlonzo.Code.Algebra.d1486
            v0 (MAlonzo.Code.Algebra.d1486 v0 v1 v1)
            (MAlonzo.Code.Algebra.d1486 v0 v2 v3))
         (MAlonzo.Code.Algebra.d1486
            v0 (MAlonzo.Code.Algebra.d1486 v0 v1 v2)
            (MAlonzo.Code.Algebra.d1486 v0 v1 v3))
         (MAlonzo.Code.Function.du176
            (MAlonzo.Code.Relation.Binary.Core.d518
               (MAlonzo.Code.Algebra.Structures.d2874
                  (MAlonzo.Code.Algebra.Structures.d3038
                     (MAlonzo.Code.Algebra.Structures.d3222
                        (MAlonzo.Code.Algebra.d1494 v0))))
               (MAlonzo.Code.Algebra.d1486 v0 v1 v1) v1
               (let v5
                      = coe
                          MAlonzo.Code.Algebra.C687 (coe MAlonzo.Code.Algebra.d1484 v0)
                          (coe MAlonzo.Code.Algebra.d1486 v0)
                          (coe
                             MAlonzo.Code.Algebra.Structures.d3222
                             (coe MAlonzo.Code.Algebra.d1494 v0)) in
                MAlonzo.Code.Algebra.Properties.Lattice.du124
                  (MAlonzo.Code.Algebra.C655
                     (MAlonzo.Code.Algebra.d1412 v5) (MAlonzo.Code.Algebra.d1414 v5)
                     (MAlonzo.Code.Algebra.Structures.d3038
                        (MAlonzo.Code.Algebra.d1416 v5)))
                  v1))
            (MAlonzo.Code.Algebra.Structures.d2886
               (MAlonzo.Code.Algebra.Structures.d3038
                  (MAlonzo.Code.Algebra.Structures.d3222
                     (MAlonzo.Code.Algebra.d1494 v0)))
               v1 (MAlonzo.Code.Algebra.d1486 v0 v1 v1)
               (MAlonzo.Code.Algebra.d1486 v0 v2 v3)
               (MAlonzo.Code.Algebra.d1486 v0 v2 v3))
            (MAlonzo.Code.Relation.Binary.Core.d516
               (MAlonzo.Code.Algebra.Structures.d2874
                  (MAlonzo.Code.Algebra.Structures.d3038
                     (MAlonzo.Code.Algebra.Structures.d3222
                        (MAlonzo.Code.Algebra.d1494 v0))))
               (MAlonzo.Code.Algebra.d1486 v0 v2 v3)))
         (let v5
                = coe
                    MAlonzo.Code.Relation.Binary.C143
                    (coe
                       MAlonzo.Code.Algebra.Structures.d2874
                       (coe
                          MAlonzo.Code.Algebra.Structures.d3038
                          (coe
                             MAlonzo.Code.Algebra.Structures.d3222
                             (coe MAlonzo.Code.Algebra.d1494 v0)))) in
          MAlonzo.Code.Relation.Binary.PreorderReasoning.du72
            (MAlonzo.Code.Relation.Binary.du150 v5)
            (MAlonzo.Code.Algebra.d1486
               v0 (MAlonzo.Code.Algebra.d1486 v0 v1 v1)
               (MAlonzo.Code.Algebra.d1486 v0 v2 v3))
            (MAlonzo.Code.Algebra.d1486
               v0 v1
               (MAlonzo.Code.Algebra.d1486
                  v0 v1 (MAlonzo.Code.Algebra.d1486 v0 v2 v3)))
            (MAlonzo.Code.Algebra.d1486
               v0 (MAlonzo.Code.Algebra.d1486 v0 v1 v2)
               (MAlonzo.Code.Algebra.d1486 v0 v1 v3))
            (MAlonzo.Code.Algebra.Structures.d2884
               (MAlonzo.Code.Algebra.Structures.d3038
                  (MAlonzo.Code.Algebra.Structures.d3222
                     (MAlonzo.Code.Algebra.d1494 v0)))
               v1 v1 (MAlonzo.Code.Algebra.d1486 v0 v2 v3))
            (let v6
                   = coe
                       MAlonzo.Code.Relation.Binary.C143
                       (coe
                          MAlonzo.Code.Algebra.Structures.d2874
                          (coe
                             MAlonzo.Code.Algebra.Structures.d3038
                             (coe
                                MAlonzo.Code.Algebra.Structures.d3222
                                (coe MAlonzo.Code.Algebra.d1494 v0)))) in
             MAlonzo.Code.Relation.Binary.PreorderReasoning.du72
               (MAlonzo.Code.Relation.Binary.du150 v6)
               (MAlonzo.Code.Algebra.d1486
                  v0 v1
                  (MAlonzo.Code.Algebra.d1486
                     v0 v1 (MAlonzo.Code.Algebra.d1486 v0 v2 v3)))
               (MAlonzo.Code.Algebra.d1486
                  v0 v1
                  (MAlonzo.Code.Algebra.d1486
                     v0 v2 (MAlonzo.Code.Algebra.d1486 v0 v1 v3)))
               (MAlonzo.Code.Algebra.d1486
                  v0 (MAlonzo.Code.Algebra.d1486 v0 v1 v2)
                  (MAlonzo.Code.Algebra.d1486 v0 v1 v3))
               (MAlonzo.Code.Function.du176
                  (MAlonzo.Code.Relation.Binary.Core.d516
                     (MAlonzo.Code.Algebra.Structures.d2874
                        (MAlonzo.Code.Algebra.Structures.d3038
                           (MAlonzo.Code.Algebra.Structures.d3222
                              (MAlonzo.Code.Algebra.d1494 v0))))
                     v1)
                  (MAlonzo.Code.Algebra.Structures.d2886
                     (MAlonzo.Code.Algebra.Structures.d3038
                        (MAlonzo.Code.Algebra.Structures.d3222
                           (MAlonzo.Code.Algebra.d1494 v0)))
                     v1 v1
                     (MAlonzo.Code.Algebra.d1486
                        v0 v1 (MAlonzo.Code.Algebra.d1486 v0 v2 v3))
                     (MAlonzo.Code.Algebra.d1486
                        v0 v2 (MAlonzo.Code.Algebra.d1486 v0 v1 v3)))
                  (du480 v0 v1 v2 v3))
               (let v7
                      = coe
                          MAlonzo.Code.Relation.Binary.C143
                          (coe
                             MAlonzo.Code.Algebra.Structures.d2874
                             (coe
                                MAlonzo.Code.Algebra.Structures.d3038
                                (coe
                                   MAlonzo.Code.Algebra.Structures.d3222
                                   (coe MAlonzo.Code.Algebra.d1494 v0)))) in
                MAlonzo.Code.Relation.Binary.PreorderReasoning.du72
                  (MAlonzo.Code.Relation.Binary.du150 v7)
                  (MAlonzo.Code.Algebra.d1486
                     v0 v1
                     (MAlonzo.Code.Algebra.d1486
                        v0 v2 (MAlonzo.Code.Algebra.d1486 v0 v1 v3)))
                  (MAlonzo.Code.Algebra.d1486
                     v0 (MAlonzo.Code.Algebra.d1486 v0 v1 v2)
                     (MAlonzo.Code.Algebra.d1486 v0 v1 v3))
                  (MAlonzo.Code.Algebra.d1486
                     v0 (MAlonzo.Code.Algebra.d1486 v0 v1 v2)
                     (MAlonzo.Code.Algebra.d1486 v0 v1 v3))
                  (MAlonzo.Code.Function.du158
                     (MAlonzo.Code.Relation.Binary.Core.d518
                        (MAlonzo.Code.Algebra.Structures.d2874
                           (MAlonzo.Code.Algebra.Structures.d3038
                              (MAlonzo.Code.Algebra.Structures.d3222
                                 (MAlonzo.Code.Algebra.d1494 v0))))
                        (MAlonzo.Code.Algebra.d1486
                           v0 (MAlonzo.Code.Algebra.d1486 v0 v1 v2)
                           (MAlonzo.Code.Algebra.d1486 v0 v1 v3))
                        (MAlonzo.Code.Algebra.d1486
                           v0 v1
                           (MAlonzo.Code.Algebra.d1486
                              v0 v2 (MAlonzo.Code.Algebra.d1486 v0 v1 v3))))
                     (MAlonzo.Code.Algebra.Structures.d2884
                        (MAlonzo.Code.Algebra.Structures.d3038
                           (MAlonzo.Code.Algebra.Structures.d3222
                              (MAlonzo.Code.Algebra.d1494 v0)))
                        v1 v2 (MAlonzo.Code.Algebra.d1486 v0 v1 v3)))
                  (let v8
                         = coe
                             MAlonzo.Code.Relation.Binary.C143
                             (coe
                                MAlonzo.Code.Algebra.Structures.d2874
                                (coe
                                   MAlonzo.Code.Algebra.Structures.d3038
                                   (coe
                                      MAlonzo.Code.Algebra.Structures.d3222
                                      (coe MAlonzo.Code.Algebra.d1494 v0)))) in
                   let v9
                         = coe
                             MAlonzo.Code.Algebra.d1486 v0
                             (coe MAlonzo.Code.Algebra.d1486 v0 v1 v2)
                             (coe MAlonzo.Code.Algebra.d1486 v0 v1 v3) in
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
name484 = "Algebra.Properties.BooleanAlgebra.XorRing._._.lem\8323"
d484 v0 v1 v2 v3 v4 v5 v6 v7 = du484 v2 v5 v6 v7
du484 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Relation.Binary.PreorderReasoning.d62
      (let v4
             = coe
                 MAlonzo.Code.Relation.Binary.C143
                 (coe
                    MAlonzo.Code.Algebra.Structures.d2874
                    (coe
                       MAlonzo.Code.Algebra.Structures.d3038
                       (coe
                          MAlonzo.Code.Algebra.Structures.d3222
                          (coe MAlonzo.Code.Algebra.d1494 v0)))) in
       MAlonzo.Code.Relation.Binary.PreorderReasoning.du72
         (MAlonzo.Code.Relation.Binary.du150 v4)
         (MAlonzo.Code.Algebra.d1492 v0)
         (MAlonzo.Code.Algebra.d1486
            v0 (MAlonzo.Code.Algebra.d1484 v0 v2 v3)
            (MAlonzo.Code.Algebra.d1492 v0))
         (MAlonzo.Code.Algebra.d1486
            v0
            (MAlonzo.Code.Algebra.d1486
               v0 v1 (MAlonzo.Code.Algebra.d1484 v0 v2 v3))
            (MAlonzo.Code.Algebra.d1488 v0 v1))
         (MAlonzo.Code.Function.du158
            (MAlonzo.Code.Relation.Binary.Core.d518
               (MAlonzo.Code.Algebra.Structures.d2874
                  (MAlonzo.Code.Algebra.Structures.d3038
                     (MAlonzo.Code.Algebra.Structures.d3222
                        (MAlonzo.Code.Algebra.d1494 v0))))
               (MAlonzo.Code.Algebra.d1486
                  v0 (MAlonzo.Code.Algebra.d1484 v0 v2 v3)
                  (MAlonzo.Code.Algebra.d1492 v0))
               (MAlonzo.Code.Algebra.d1492 v0))
            (MAlonzo.Code.Data.Product.d28
               (du224 v0) (MAlonzo.Code.Algebra.d1484 v0 v2 v3)))
         (let v5
                = coe
                    MAlonzo.Code.Relation.Binary.C143
                    (coe
                       MAlonzo.Code.Algebra.Structures.d2874
                       (coe
                          MAlonzo.Code.Algebra.Structures.d3038
                          (coe
                             MAlonzo.Code.Algebra.Structures.d3222
                             (coe MAlonzo.Code.Algebra.d1494 v0)))) in
          MAlonzo.Code.Relation.Binary.PreorderReasoning.du72
            (MAlonzo.Code.Relation.Binary.du150 v5)
            (MAlonzo.Code.Algebra.d1486
               v0 (MAlonzo.Code.Algebra.d1484 v0 v2 v3)
               (MAlonzo.Code.Algebra.d1492 v0))
            (MAlonzo.Code.Algebra.d1486
               v0 (MAlonzo.Code.Algebra.d1484 v0 v2 v3)
               (MAlonzo.Code.Algebra.d1486
                  v0 v1 (MAlonzo.Code.Algebra.d1488 v0 v1)))
            (MAlonzo.Code.Algebra.d1486
               v0
               (MAlonzo.Code.Algebra.d1486
                  v0 v1 (MAlonzo.Code.Algebra.d1484 v0 v2 v3))
               (MAlonzo.Code.Algebra.d1488 v0 v1))
            (MAlonzo.Code.Function.du176
               (MAlonzo.Code.Relation.Binary.Core.d516
                  (MAlonzo.Code.Algebra.Structures.d2874
                     (MAlonzo.Code.Algebra.Structures.d3038
                        (MAlonzo.Code.Algebra.Structures.d3222
                           (MAlonzo.Code.Algebra.d1494 v0))))
                  (MAlonzo.Code.Algebra.d1484 v0 v2 v3))
               (MAlonzo.Code.Algebra.Structures.d2886
                  (MAlonzo.Code.Algebra.Structures.d3038
                     (MAlonzo.Code.Algebra.Structures.d3222
                        (MAlonzo.Code.Algebra.d1494 v0)))
                  (MAlonzo.Code.Algebra.d1484 v0 v2 v3)
                  (MAlonzo.Code.Algebra.d1484 v0 v2 v3)
                  (MAlonzo.Code.Algebra.d1492 v0)
                  (MAlonzo.Code.Algebra.d1486
                     v0 v1 (MAlonzo.Code.Algebra.d1488 v0 v1)))
               (MAlonzo.Code.Relation.Binary.Core.d518
                  (MAlonzo.Code.Algebra.Structures.d2874
                     (MAlonzo.Code.Algebra.Structures.d3038
                        (MAlonzo.Code.Algebra.Structures.d3222
                           (MAlonzo.Code.Algebra.d1494 v0))))
                  (MAlonzo.Code.Algebra.d1486
                     v0 v1 (MAlonzo.Code.Algebra.d1488 v0 v1))
                  (MAlonzo.Code.Algebra.d1492 v0)
                  (MAlonzo.Code.Data.Product.d28 (du182 v0) v1)))
            (let v6
                   = coe
                       MAlonzo.Code.Relation.Binary.C143
                       (coe
                          MAlonzo.Code.Algebra.Structures.d2874
                          (coe
                             MAlonzo.Code.Algebra.Structures.d3038
                             (coe
                                MAlonzo.Code.Algebra.Structures.d3222
                                (coe MAlonzo.Code.Algebra.d1494 v0)))) in
             MAlonzo.Code.Relation.Binary.PreorderReasoning.du72
               (MAlonzo.Code.Relation.Binary.du150 v6)
               (MAlonzo.Code.Algebra.d1486
                  v0 (MAlonzo.Code.Algebra.d1484 v0 v2 v3)
                  (MAlonzo.Code.Algebra.d1486
                     v0 v1 (MAlonzo.Code.Algebra.d1488 v0 v1)))
               (MAlonzo.Code.Algebra.d1486
                  v0
                  (MAlonzo.Code.Algebra.d1486
                     v0 (MAlonzo.Code.Algebra.d1484 v0 v2 v3) v1)
                  (MAlonzo.Code.Algebra.d1488 v0 v1))
               (MAlonzo.Code.Algebra.d1486
                  v0
                  (MAlonzo.Code.Algebra.d1486
                     v0 v1 (MAlonzo.Code.Algebra.d1484 v0 v2 v3))
                  (MAlonzo.Code.Algebra.d1488 v0 v1))
               (MAlonzo.Code.Function.du158
                  (MAlonzo.Code.Relation.Binary.Core.d518
                     (MAlonzo.Code.Algebra.Structures.d2874
                        (MAlonzo.Code.Algebra.Structures.d3038
                           (MAlonzo.Code.Algebra.Structures.d3222
                              (MAlonzo.Code.Algebra.d1494 v0))))
                     (MAlonzo.Code.Algebra.d1486
                        v0
                        (MAlonzo.Code.Algebra.d1486
                           v0 (MAlonzo.Code.Algebra.d1484 v0 v2 v3) v1)
                        (MAlonzo.Code.Algebra.d1488 v0 v1))
                     (MAlonzo.Code.Algebra.d1486
                        v0 (MAlonzo.Code.Algebra.d1484 v0 v2 v3)
                        (MAlonzo.Code.Algebra.d1486
                           v0 v1 (MAlonzo.Code.Algebra.d1488 v0 v1))))
                  (MAlonzo.Code.Algebra.Structures.d2884
                     (MAlonzo.Code.Algebra.Structures.d3038
                        (MAlonzo.Code.Algebra.Structures.d3222
                           (MAlonzo.Code.Algebra.d1494 v0)))
                     (MAlonzo.Code.Algebra.d1484 v0 v2 v3) v1
                     (MAlonzo.Code.Algebra.d1488 v0 v1)))
               (let v7
                      = coe
                          MAlonzo.Code.Relation.Binary.C143
                          (coe
                             MAlonzo.Code.Algebra.Structures.d2874
                             (coe
                                MAlonzo.Code.Algebra.Structures.d3038
                                (coe
                                   MAlonzo.Code.Algebra.Structures.d3222
                                   (coe MAlonzo.Code.Algebra.d1494 v0)))) in
                MAlonzo.Code.Relation.Binary.PreorderReasoning.du72
                  (MAlonzo.Code.Relation.Binary.du150 v7)
                  (MAlonzo.Code.Algebra.d1486
                     v0
                     (MAlonzo.Code.Algebra.d1486
                        v0 (MAlonzo.Code.Algebra.d1484 v0 v2 v3) v1)
                     (MAlonzo.Code.Algebra.d1488 v0 v1))
                  (MAlonzo.Code.Algebra.d1486
                     v0
                     (MAlonzo.Code.Algebra.d1486
                        v0 v1 (MAlonzo.Code.Algebra.d1484 v0 v2 v3))
                     (MAlonzo.Code.Algebra.d1488 v0 v1))
                  (MAlonzo.Code.Algebra.d1486
                     v0
                     (MAlonzo.Code.Algebra.d1486
                        v0 v1 (MAlonzo.Code.Algebra.d1484 v0 v2 v3))
                     (MAlonzo.Code.Algebra.d1488 v0 v1))
                  (MAlonzo.Code.Function.du176
                     (MAlonzo.Code.Algebra.Structures.d2882
                        (MAlonzo.Code.Algebra.Structures.d3038
                           (MAlonzo.Code.Algebra.Structures.d3222
                              (MAlonzo.Code.Algebra.d1494 v0)))
                        (MAlonzo.Code.Algebra.d1484 v0 v2 v3) v1)
                     (MAlonzo.Code.Algebra.Structures.d2886
                        (MAlonzo.Code.Algebra.Structures.d3038
                           (MAlonzo.Code.Algebra.Structures.d3222
                              (MAlonzo.Code.Algebra.d1494 v0)))
                        (MAlonzo.Code.Algebra.d1486
                           v0 (MAlonzo.Code.Algebra.d1484 v0 v2 v3) v1)
                        (MAlonzo.Code.Algebra.d1486
                           v0 v1 (MAlonzo.Code.Algebra.d1484 v0 v2 v3))
                        (MAlonzo.Code.Algebra.d1488 v0 v1)
                        (MAlonzo.Code.Algebra.d1488 v0 v1))
                     (MAlonzo.Code.Relation.Binary.Core.d516
                        (MAlonzo.Code.Algebra.Structures.d2874
                           (MAlonzo.Code.Algebra.Structures.d3038
                              (MAlonzo.Code.Algebra.Structures.d3222
                                 (MAlonzo.Code.Algebra.d1494 v0))))
                        (MAlonzo.Code.Algebra.d1488 v0 v1)))
                  (let v8
                         = coe
                             MAlonzo.Code.Relation.Binary.C143
                             (coe
                                MAlonzo.Code.Algebra.Structures.d2874
                                (coe
                                   MAlonzo.Code.Algebra.Structures.d3038
                                   (coe
                                      MAlonzo.Code.Algebra.Structures.d3222
                                      (coe MAlonzo.Code.Algebra.d1494 v0)))) in
                   let v9
                         = coe
                             MAlonzo.Code.Algebra.d1486 v0
                             (coe
                                MAlonzo.Code.Algebra.d1486 v0 v1
                                (coe MAlonzo.Code.Algebra.d1484 v0 v2 v3))
                             (coe MAlonzo.Code.Algebra.d1488 v0 v1) in
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
name486 = "Algebra.Properties.BooleanAlgebra.XorRing._.dist\691"
d486 v0 v1 v2 v3 v4 v5 v6 v7 = du486 v2 v3 v4 v5 v6 v7
du486 v0 v1 v2 v3 v4 v5
  = coe
      MAlonzo.Code.Relation.Binary.PreorderReasoning.d62
      (let v6
             = coe
                 MAlonzo.Code.Relation.Binary.C143
                 (coe
                    MAlonzo.Code.Algebra.Structures.d2874
                    (coe
                       MAlonzo.Code.Algebra.Structures.d3038
                       (coe
                          MAlonzo.Code.Algebra.Structures.d3222
                          (coe MAlonzo.Code.Algebra.d1494 v0)))) in
       MAlonzo.Code.Relation.Binary.PreorderReasoning.du72
         (MAlonzo.Code.Relation.Binary.du150 v6)
         (MAlonzo.Code.Algebra.d1486 v0 (v1 v4 v5) v3)
         (MAlonzo.Code.Algebra.d1486 v0 v3 (v1 v4 v5))
         (v1
            (MAlonzo.Code.Algebra.d1486 v0 v4 v3)
            (MAlonzo.Code.Algebra.d1486 v0 v5 v3))
         (MAlonzo.Code.Algebra.Structures.d2882
            (MAlonzo.Code.Algebra.Structures.d3038
               (MAlonzo.Code.Algebra.Structures.d3222
                  (MAlonzo.Code.Algebra.d1494 v0)))
            (v1 v4 v5) v3)
         (let v7
                = coe
                    MAlonzo.Code.Relation.Binary.C143
                    (coe
                       MAlonzo.Code.Algebra.Structures.d2874
                       (coe
                          MAlonzo.Code.Algebra.Structures.d3038
                          (coe
                             MAlonzo.Code.Algebra.Structures.d3222
                             (coe MAlonzo.Code.Algebra.d1494 v0)))) in
          MAlonzo.Code.Relation.Binary.PreorderReasoning.du72
            (MAlonzo.Code.Relation.Binary.du150 v7)
            (MAlonzo.Code.Algebra.d1486 v0 v3 (v1 v4 v5))
            (v1
               (MAlonzo.Code.Algebra.d1486 v0 v3 v4)
               (MAlonzo.Code.Algebra.d1486 v0 v3 v5))
            (v1
               (MAlonzo.Code.Algebra.d1486 v0 v4 v3)
               (MAlonzo.Code.Algebra.d1486 v0 v5 v3))
            (du468 v0 v1 v2 v3 v4 v5)
            (let v8
                   = coe
                       MAlonzo.Code.Relation.Binary.C143
                       (coe
                          MAlonzo.Code.Algebra.Structures.d2874
                          (coe
                             MAlonzo.Code.Algebra.Structures.d3038
                             (coe
                                MAlonzo.Code.Algebra.Structures.d3222
                                (coe MAlonzo.Code.Algebra.d1494 v0)))) in
             MAlonzo.Code.Relation.Binary.PreorderReasoning.du72
               (MAlonzo.Code.Relation.Binary.du150 v8)
               (v1
                  (MAlonzo.Code.Algebra.d1486 v0 v3 v4)
                  (MAlonzo.Code.Algebra.d1486 v0 v3 v5))
               (v1
                  (MAlonzo.Code.Algebra.d1486 v0 v4 v3)
                  (MAlonzo.Code.Algebra.d1486 v0 v5 v3))
               (v1
                  (MAlonzo.Code.Algebra.d1486 v0 v4 v3)
                  (MAlonzo.Code.Algebra.d1486 v0 v5 v3))
               (MAlonzo.Code.Function.du176
                  (MAlonzo.Code.Algebra.Structures.d2882
                     (MAlonzo.Code.Algebra.Structures.d3038
                        (MAlonzo.Code.Algebra.Structures.d3222
                           (MAlonzo.Code.Algebra.d1494 v0)))
                     v3 v4)
                  (du420
                     v0 v1 v2 (MAlonzo.Code.Algebra.d1486 v0 v3 v4)
                     (MAlonzo.Code.Algebra.d1486 v0 v4 v3)
                     (MAlonzo.Code.Algebra.d1486 v0 v3 v5)
                     (MAlonzo.Code.Algebra.d1486 v0 v5 v3))
                  (MAlonzo.Code.Algebra.Structures.d2882
                     (MAlonzo.Code.Algebra.Structures.d3038
                        (MAlonzo.Code.Algebra.Structures.d3222
                           (MAlonzo.Code.Algebra.d1494 v0)))
                     v3 v5))
               (let v9
                      = coe
                          MAlonzo.Code.Relation.Binary.C143
                          (coe
                             MAlonzo.Code.Algebra.Structures.d2874
                             (coe
                                MAlonzo.Code.Algebra.Structures.d3038
                                (coe
                                   MAlonzo.Code.Algebra.Structures.d3222
                                   (coe MAlonzo.Code.Algebra.d1494 v0)))) in
                let v10
                      = coe
                          v1 (coe MAlonzo.Code.Algebra.d1486 v0 v4 v3)
                          (coe MAlonzo.Code.Algebra.d1486 v0 v5 v3) in
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
name502 = "Algebra.Properties.BooleanAlgebra.XorRing.lemma\8322"
d502 v0 v1 v2 v3 v4 v5 v6 v7 v8 = du502 v2 v5 v6 v7 v8
du502 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Relation.Binary.PreorderReasoning.d62
      (let v5
             = coe
                 MAlonzo.Code.Relation.Binary.C143
                 (coe
                    MAlonzo.Code.Algebra.Structures.d2874
                    (coe
                       MAlonzo.Code.Algebra.Structures.d3038
                       (coe
                          MAlonzo.Code.Algebra.Structures.d3222
                          (coe MAlonzo.Code.Algebra.d1494 v0)))) in
       MAlonzo.Code.Relation.Binary.PreorderReasoning.du72
         (MAlonzo.Code.Relation.Binary.du150 v5)
         (MAlonzo.Code.Algebra.d1484
            v0 (MAlonzo.Code.Algebra.d1486 v0 v1 v2)
            (MAlonzo.Code.Algebra.d1486 v0 v3 v4))
         (MAlonzo.Code.Algebra.d1486
            v0
            (MAlonzo.Code.Algebra.d1484
               v0 (MAlonzo.Code.Algebra.d1486 v0 v1 v2) v3)
            (MAlonzo.Code.Algebra.d1484
               v0 (MAlonzo.Code.Algebra.d1486 v0 v1 v2) v4))
         (MAlonzo.Code.Algebra.d1486
            v0
            (MAlonzo.Code.Algebra.d1486
               v0 (MAlonzo.Code.Algebra.d1484 v0 v1 v3)
               (MAlonzo.Code.Algebra.d1484 v0 v2 v3))
            (MAlonzo.Code.Algebra.d1486
               v0 (MAlonzo.Code.Algebra.d1484 v0 v1 v4)
               (MAlonzo.Code.Algebra.d1484 v0 v2 v4)))
         (MAlonzo.Code.Data.Product.d26
            (MAlonzo.Code.Algebra.Properties.DistributiveLattice.du148
               (MAlonzo.Code.Algebra.C687
                  (MAlonzo.Code.Algebra.d1484 v0) (MAlonzo.Code.Algebra.d1486 v0)
                  (MAlonzo.Code.Algebra.Structures.d3222
                     (MAlonzo.Code.Algebra.d1494 v0))))
            (MAlonzo.Code.Algebra.d1486 v0 v1 v2) v3 v4)
         (let v6
                = coe
                    MAlonzo.Code.Relation.Binary.C143
                    (coe
                       MAlonzo.Code.Algebra.Structures.d2874
                       (coe
                          MAlonzo.Code.Algebra.Structures.d3038
                          (coe
                             MAlonzo.Code.Algebra.Structures.d3222
                             (coe MAlonzo.Code.Algebra.d1494 v0)))) in
          MAlonzo.Code.Relation.Binary.PreorderReasoning.du72
            (MAlonzo.Code.Relation.Binary.du150 v6)
            (MAlonzo.Code.Algebra.d1486
               v0
               (MAlonzo.Code.Algebra.d1484
                  v0 (MAlonzo.Code.Algebra.d1486 v0 v1 v2) v3)
               (MAlonzo.Code.Algebra.d1484
                  v0 (MAlonzo.Code.Algebra.d1486 v0 v1 v2) v4))
            (MAlonzo.Code.Algebra.d1486
               v0
               (MAlonzo.Code.Algebra.d1486
                  v0 (MAlonzo.Code.Algebra.d1484 v0 v1 v3)
                  (MAlonzo.Code.Algebra.d1484 v0 v2 v3))
               (MAlonzo.Code.Algebra.d1486
                  v0 (MAlonzo.Code.Algebra.d1484 v0 v1 v4)
                  (MAlonzo.Code.Algebra.d1484 v0 v2 v4)))
            (MAlonzo.Code.Algebra.d1486
               v0
               (MAlonzo.Code.Algebra.d1486
                  v0 (MAlonzo.Code.Algebra.d1484 v0 v1 v3)
                  (MAlonzo.Code.Algebra.d1484 v0 v2 v3))
               (MAlonzo.Code.Algebra.d1486
                  v0 (MAlonzo.Code.Algebra.d1484 v0 v1 v4)
                  (MAlonzo.Code.Algebra.d1484 v0 v2 v4)))
            (MAlonzo.Code.Function.du176
               (MAlonzo.Code.Data.Product.d28
                  (MAlonzo.Code.Algebra.Properties.DistributiveLattice.du148
                     (MAlonzo.Code.Algebra.C687
                        (MAlonzo.Code.Algebra.d1484 v0) (MAlonzo.Code.Algebra.d1486 v0)
                        (MAlonzo.Code.Algebra.Structures.d3222
                           (MAlonzo.Code.Algebra.d1494 v0))))
                  v3 v1 v2)
               (MAlonzo.Code.Algebra.Structures.d2886
                  (MAlonzo.Code.Algebra.Structures.d3038
                     (MAlonzo.Code.Algebra.Structures.d3222
                        (MAlonzo.Code.Algebra.d1494 v0)))
                  (MAlonzo.Code.Algebra.d1484
                     v0 (MAlonzo.Code.Algebra.d1486 v0 v1 v2) v3)
                  (MAlonzo.Code.Algebra.d1486
                     v0 (MAlonzo.Code.Algebra.d1484 v0 v1 v3)
                     (MAlonzo.Code.Algebra.d1484 v0 v2 v3))
                  (MAlonzo.Code.Algebra.d1484
                     v0 (MAlonzo.Code.Algebra.d1486 v0 v1 v2) v4)
                  (MAlonzo.Code.Algebra.d1486
                     v0 (MAlonzo.Code.Algebra.d1484 v0 v1 v4)
                     (MAlonzo.Code.Algebra.d1484 v0 v2 v4)))
               (MAlonzo.Code.Data.Product.d28
                  (MAlonzo.Code.Algebra.Properties.DistributiveLattice.du148
                     (MAlonzo.Code.Algebra.C687
                        (MAlonzo.Code.Algebra.d1484 v0) (MAlonzo.Code.Algebra.d1486 v0)
                        (MAlonzo.Code.Algebra.Structures.d3222
                           (MAlonzo.Code.Algebra.d1494 v0))))
                  v4 v1 v2))
            (let v7
                   = coe
                       MAlonzo.Code.Relation.Binary.C143
                       (coe
                          MAlonzo.Code.Algebra.Structures.d2874
                          (coe
                             MAlonzo.Code.Algebra.Structures.d3038
                             (coe
                                MAlonzo.Code.Algebra.Structures.d3222
                                (coe MAlonzo.Code.Algebra.d1494 v0)))) in
             let v8
                   = coe
                       MAlonzo.Code.Algebra.d1486 v0
                       (coe
                          MAlonzo.Code.Algebra.d1486 v0
                          (coe MAlonzo.Code.Algebra.d1484 v0 v1 v3)
                          (coe MAlonzo.Code.Algebra.d1484 v0 v2 v3))
                       (coe
                          MAlonzo.Code.Algebra.d1486 v0
                          (coe MAlonzo.Code.Algebra.d1484 v0 v1 v4)
                          (coe MAlonzo.Code.Algebra.d1484 v0 v2 v4)) in
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
name512 = "Algebra.Properties.BooleanAlgebra.XorRing.\8853-assoc"
d512 v0 v1 v2 v3 v4 v5 v6 v7 = du512 v2 v3 v4 v5 v6 v7
du512 v0 v1 v2 v3 v4 v5
  = coe
      MAlonzo.Code.Function.du158
      (coe
         MAlonzo.Code.Relation.Binary.Core.d518
         (coe
            MAlonzo.Code.Algebra.Structures.d2874
            (coe
               MAlonzo.Code.Algebra.Structures.d3038
               (coe
                  MAlonzo.Code.Algebra.Structures.d3222
                  (coe MAlonzo.Code.Algebra.d1494 v0))))
         (coe v1 v3 (coe v1 v4 v5)) (coe v1 (coe v1 v3 v4) v5))
      (coe
         MAlonzo.Code.Relation.Binary.PreorderReasoning.d62
         (let v6
                = coe
                    MAlonzo.Code.Relation.Binary.C143
                    (coe
                       MAlonzo.Code.Algebra.Structures.d2874
                       (coe
                          MAlonzo.Code.Algebra.Structures.d3038
                          (coe
                             MAlonzo.Code.Algebra.Structures.d3222
                             (coe MAlonzo.Code.Algebra.d1494 v0)))) in
          MAlonzo.Code.Relation.Binary.PreorderReasoning.du72
            (MAlonzo.Code.Relation.Binary.du150 v6) (v1 v3 (v1 v4 v5))
            (v1
               v3
               (MAlonzo.Code.Algebra.d1486
                  v0 (MAlonzo.Code.Algebra.d1484 v0 v4 v5)
                  (MAlonzo.Code.Algebra.d1488
                     v0 (MAlonzo.Code.Algebra.d1486 v0 v4 v5))))
            (v1 (v1 v3 v4) v5)
            (MAlonzo.Code.Function.du176
               (MAlonzo.Code.Relation.Binary.Core.d516
                  (MAlonzo.Code.Algebra.Structures.d2874
                     (MAlonzo.Code.Algebra.Structures.d3038
                        (MAlonzo.Code.Algebra.Structures.d3222
                           (MAlonzo.Code.Algebra.d1494 v0))))
                  v3)
               (du420
                  v0 v1 v2 v3 v3 (v1 v4 v5)
                  (MAlonzo.Code.Algebra.d1486
                     v0 (MAlonzo.Code.Algebra.d1484 v0 v4 v5)
                     (MAlonzo.Code.Algebra.d1488
                        v0 (MAlonzo.Code.Algebra.d1486 v0 v4 v5))))
               (v2 v4 v5))
            (let v7
                   = coe
                       MAlonzo.Code.Relation.Binary.C143
                       (coe
                          MAlonzo.Code.Algebra.Structures.d2874
                          (coe
                             MAlonzo.Code.Algebra.Structures.d3038
                             (coe
                                MAlonzo.Code.Algebra.Structures.d3222
                                (coe MAlonzo.Code.Algebra.d1494 v0)))) in
             MAlonzo.Code.Relation.Binary.PreorderReasoning.du72
               (MAlonzo.Code.Relation.Binary.du150 v7)
               (v1
                  v3
                  (MAlonzo.Code.Algebra.d1486
                     v0 (MAlonzo.Code.Algebra.d1484 v0 v4 v5)
                     (MAlonzo.Code.Algebra.d1488
                        v0 (MAlonzo.Code.Algebra.d1486 v0 v4 v5))))
               (MAlonzo.Code.Algebra.d1486
                  v0
                  (MAlonzo.Code.Algebra.d1484
                     v0 v3
                     (MAlonzo.Code.Algebra.d1486
                        v0 (MAlonzo.Code.Algebra.d1484 v0 v4 v5)
                        (MAlonzo.Code.Algebra.d1488
                           v0 (MAlonzo.Code.Algebra.d1486 v0 v4 v5))))
                  (MAlonzo.Code.Algebra.d1488
                     v0
                     (MAlonzo.Code.Algebra.d1486
                        v0 v3
                        (MAlonzo.Code.Algebra.d1486
                           v0 (MAlonzo.Code.Algebra.d1484 v0 v4 v5)
                           (MAlonzo.Code.Algebra.d1488
                              v0 (MAlonzo.Code.Algebra.d1486 v0 v4 v5))))))
               (v1 (v1 v3 v4) v5)
               (v2
                  v3
                  (MAlonzo.Code.Algebra.d1486
                     v0 (MAlonzo.Code.Algebra.d1484 v0 v4 v5)
                     (MAlonzo.Code.Algebra.d1488
                        v0 (MAlonzo.Code.Algebra.d1486 v0 v4 v5))))
               (let v8
                      = coe
                          MAlonzo.Code.Relation.Binary.C143
                          (coe
                             MAlonzo.Code.Algebra.Structures.d2874
                             (coe
                                MAlonzo.Code.Algebra.Structures.d3038
                                (coe
                                   MAlonzo.Code.Algebra.Structures.d3222
                                   (coe MAlonzo.Code.Algebra.d1494 v0)))) in
                MAlonzo.Code.Relation.Binary.PreorderReasoning.du72
                  (MAlonzo.Code.Relation.Binary.du150 v8)
                  (MAlonzo.Code.Algebra.d1486
                     v0
                     (MAlonzo.Code.Algebra.d1484
                        v0 v3
                        (MAlonzo.Code.Algebra.d1486
                           v0 (MAlonzo.Code.Algebra.d1484 v0 v4 v5)
                           (MAlonzo.Code.Algebra.d1488
                              v0 (MAlonzo.Code.Algebra.d1486 v0 v4 v5))))
                     (MAlonzo.Code.Algebra.d1488
                        v0
                        (MAlonzo.Code.Algebra.d1486
                           v0 v3
                           (MAlonzo.Code.Algebra.d1486
                              v0 (MAlonzo.Code.Algebra.d1484 v0 v4 v5)
                              (MAlonzo.Code.Algebra.d1488
                                 v0 (MAlonzo.Code.Algebra.d1486 v0 v4 v5))))))
                  (MAlonzo.Code.Algebra.d1486
                     v0
                     (MAlonzo.Code.Algebra.d1486
                        v0
                        (MAlonzo.Code.Algebra.d1484
                           v0 (MAlonzo.Code.Algebra.d1484 v0 v3 v4) v5)
                        (MAlonzo.Code.Algebra.d1484
                           v0
                           (MAlonzo.Code.Algebra.d1484
                              v0 v3 (MAlonzo.Code.Algebra.d1488 v0 v4))
                           (MAlonzo.Code.Algebra.d1488 v0 v5)))
                     (MAlonzo.Code.Algebra.d1486
                        v0
                        (MAlonzo.Code.Algebra.d1484
                           v0
                           (MAlonzo.Code.Algebra.d1484
                              v0 (MAlonzo.Code.Algebra.d1488 v0 v3)
                              (MAlonzo.Code.Algebra.d1488 v0 v4))
                           v5)
                        (MAlonzo.Code.Algebra.d1484
                           v0
                           (MAlonzo.Code.Algebra.d1484
                              v0 (MAlonzo.Code.Algebra.d1488 v0 v3) v4)
                           (MAlonzo.Code.Algebra.d1488 v0 v5))))
                  (v1 (v1 v3 v4) v5)
                  (MAlonzo.Code.Function.du176
                     (du530 v0 v3 v4 v5)
                     (MAlonzo.Code.Algebra.Structures.d2886
                        (MAlonzo.Code.Algebra.Structures.d3038
                           (MAlonzo.Code.Algebra.Structures.d3222
                              (MAlonzo.Code.Algebra.d1494 v0)))
                        (MAlonzo.Code.Algebra.d1484
                           v0 v3
                           (MAlonzo.Code.Algebra.d1486
                              v0 (MAlonzo.Code.Algebra.d1484 v0 v4 v5)
                              (MAlonzo.Code.Algebra.d1488
                                 v0 (MAlonzo.Code.Algebra.d1486 v0 v4 v5))))
                        (MAlonzo.Code.Algebra.d1486
                           v0
                           (MAlonzo.Code.Algebra.d1484
                              v0 (MAlonzo.Code.Algebra.d1484 v0 v3 v4) v5)
                           (MAlonzo.Code.Algebra.d1484
                              v0
                              (MAlonzo.Code.Algebra.d1484
                                 v0 v3 (MAlonzo.Code.Algebra.d1488 v0 v4))
                              (MAlonzo.Code.Algebra.d1488 v0 v5)))
                        (MAlonzo.Code.Algebra.d1488
                           v0
                           (MAlonzo.Code.Algebra.d1486
                              v0 v3
                              (MAlonzo.Code.Algebra.d1486
                                 v0 (MAlonzo.Code.Algebra.d1484 v0 v4 v5)
                                 (MAlonzo.Code.Algebra.d1488
                                    v0 (MAlonzo.Code.Algebra.d1486 v0 v4 v5)))))
                        (MAlonzo.Code.Algebra.d1486
                           v0
                           (MAlonzo.Code.Algebra.d1484
                              v0
                              (MAlonzo.Code.Algebra.d1484
                                 v0 (MAlonzo.Code.Algebra.d1488 v0 v3)
                                 (MAlonzo.Code.Algebra.d1488 v0 v4))
                              v5)
                           (MAlonzo.Code.Algebra.d1484
                              v0
                              (MAlonzo.Code.Algebra.d1484
                                 v0 (MAlonzo.Code.Algebra.d1488 v0 v3) v4)
                              (MAlonzo.Code.Algebra.d1488 v0 v5))))
                     (du534 v0 v3 v4 v5))
                  (let v9
                         = coe
                             MAlonzo.Code.Relation.Binary.C143
                             (coe
                                MAlonzo.Code.Algebra.Structures.d2874
                                (coe
                                   MAlonzo.Code.Algebra.Structures.d3038
                                   (coe
                                      MAlonzo.Code.Algebra.Structures.d3222
                                      (coe MAlonzo.Code.Algebra.d1494 v0)))) in
                   MAlonzo.Code.Relation.Binary.PreorderReasoning.du72
                     (MAlonzo.Code.Relation.Binary.du150 v9)
                     (MAlonzo.Code.Algebra.d1486
                        v0
                        (MAlonzo.Code.Algebra.d1486
                           v0
                           (MAlonzo.Code.Algebra.d1484
                              v0 (MAlonzo.Code.Algebra.d1484 v0 v3 v4) v5)
                           (MAlonzo.Code.Algebra.d1484
                              v0
                              (MAlonzo.Code.Algebra.d1484
                                 v0 v3 (MAlonzo.Code.Algebra.d1488 v0 v4))
                              (MAlonzo.Code.Algebra.d1488 v0 v5)))
                        (MAlonzo.Code.Algebra.d1486
                           v0
                           (MAlonzo.Code.Algebra.d1484
                              v0
                              (MAlonzo.Code.Algebra.d1484
                                 v0 (MAlonzo.Code.Algebra.d1488 v0 v3)
                                 (MAlonzo.Code.Algebra.d1488 v0 v4))
                              v5)
                           (MAlonzo.Code.Algebra.d1484
                              v0
                              (MAlonzo.Code.Algebra.d1484
                                 v0 (MAlonzo.Code.Algebra.d1488 v0 v3) v4)
                              (MAlonzo.Code.Algebra.d1488 v0 v5))))
                     (MAlonzo.Code.Algebra.d1486
                        v0
                        (MAlonzo.Code.Algebra.d1484
                           v0 (MAlonzo.Code.Algebra.d1484 v0 v3 v4) v5)
                        (MAlonzo.Code.Algebra.d1486
                           v0
                           (MAlonzo.Code.Algebra.d1484
                              v0
                              (MAlonzo.Code.Algebra.d1484
                                 v0 v3 (MAlonzo.Code.Algebra.d1488 v0 v4))
                              (MAlonzo.Code.Algebra.d1488 v0 v5))
                           (MAlonzo.Code.Algebra.d1486
                              v0
                              (MAlonzo.Code.Algebra.d1484
                                 v0
                                 (MAlonzo.Code.Algebra.d1484
                                    v0 (MAlonzo.Code.Algebra.d1488 v0 v3)
                                    (MAlonzo.Code.Algebra.d1488 v0 v4))
                                 v5)
                              (MAlonzo.Code.Algebra.d1484
                                 v0
                                 (MAlonzo.Code.Algebra.d1484
                                    v0 (MAlonzo.Code.Algebra.d1488 v0 v3) v4)
                                 (MAlonzo.Code.Algebra.d1488 v0 v5)))))
                     (v1 (v1 v3 v4) v5)
                     (MAlonzo.Code.Algebra.Structures.d2884
                        (MAlonzo.Code.Algebra.Structures.d3038
                           (MAlonzo.Code.Algebra.Structures.d3222
                              (MAlonzo.Code.Algebra.d1494 v0)))
                        (MAlonzo.Code.Algebra.d1484
                           v0 (MAlonzo.Code.Algebra.d1484 v0 v3 v4) v5)
                        (MAlonzo.Code.Algebra.d1484
                           v0
                           (MAlonzo.Code.Algebra.d1484
                              v0 v3 (MAlonzo.Code.Algebra.d1488 v0 v4))
                           (MAlonzo.Code.Algebra.d1488 v0 v5))
                        (MAlonzo.Code.Algebra.d1486
                           v0
                           (MAlonzo.Code.Algebra.d1484
                              v0
                              (MAlonzo.Code.Algebra.d1484
                                 v0 (MAlonzo.Code.Algebra.d1488 v0 v3)
                                 (MAlonzo.Code.Algebra.d1488 v0 v4))
                              v5)
                           (MAlonzo.Code.Algebra.d1484
                              v0
                              (MAlonzo.Code.Algebra.d1484
                                 v0 (MAlonzo.Code.Algebra.d1488 v0 v3) v4)
                              (MAlonzo.Code.Algebra.d1488 v0 v5))))
                     (let v10
                            = coe
                                MAlonzo.Code.Relation.Binary.C143
                                (coe
                                   MAlonzo.Code.Algebra.Structures.d2874
                                   (coe
                                      MAlonzo.Code.Algebra.Structures.d3038
                                      (coe
                                         MAlonzo.Code.Algebra.Structures.d3222
                                         (coe MAlonzo.Code.Algebra.d1494 v0)))) in
                      MAlonzo.Code.Relation.Binary.PreorderReasoning.du72
                        (MAlonzo.Code.Relation.Binary.du150 v10)
                        (MAlonzo.Code.Algebra.d1486
                           v0
                           (MAlonzo.Code.Algebra.d1484
                              v0 (MAlonzo.Code.Algebra.d1484 v0 v3 v4) v5)
                           (MAlonzo.Code.Algebra.d1486
                              v0
                              (MAlonzo.Code.Algebra.d1484
                                 v0
                                 (MAlonzo.Code.Algebra.d1484
                                    v0 v3 (MAlonzo.Code.Algebra.d1488 v0 v4))
                                 (MAlonzo.Code.Algebra.d1488 v0 v5))
                              (MAlonzo.Code.Algebra.d1486
                                 v0
                                 (MAlonzo.Code.Algebra.d1484
                                    v0
                                    (MAlonzo.Code.Algebra.d1484
                                       v0 (MAlonzo.Code.Algebra.d1488 v0 v3)
                                       (MAlonzo.Code.Algebra.d1488 v0 v4))
                                    v5)
                                 (MAlonzo.Code.Algebra.d1484
                                    v0
                                    (MAlonzo.Code.Algebra.d1484
                                       v0 (MAlonzo.Code.Algebra.d1488 v0 v3) v4)
                                    (MAlonzo.Code.Algebra.d1488 v0 v5)))))
                        (MAlonzo.Code.Algebra.d1486
                           v0
                           (MAlonzo.Code.Algebra.d1484
                              v0 (MAlonzo.Code.Algebra.d1484 v0 v3 v4) v5)
                           (MAlonzo.Code.Algebra.d1486
                              v0
                              (MAlonzo.Code.Algebra.d1484
                                 v0
                                 (MAlonzo.Code.Algebra.d1484
                                    v0 (MAlonzo.Code.Algebra.d1488 v0 v3)
                                    (MAlonzo.Code.Algebra.d1488 v0 v4))
                                 v5)
                              (MAlonzo.Code.Algebra.d1486
                                 v0
                                 (MAlonzo.Code.Algebra.d1484
                                    v0
                                    (MAlonzo.Code.Algebra.d1484
                                       v0 v3 (MAlonzo.Code.Algebra.d1488 v0 v4))
                                    (MAlonzo.Code.Algebra.d1488 v0 v5))
                                 (MAlonzo.Code.Algebra.d1484
                                    v0
                                    (MAlonzo.Code.Algebra.d1484
                                       v0 (MAlonzo.Code.Algebra.d1488 v0 v3) v4)
                                    (MAlonzo.Code.Algebra.d1488 v0 v5)))))
                        (v1 (v1 v3 v4) v5)
                        (MAlonzo.Code.Function.du176
                           (MAlonzo.Code.Relation.Binary.Core.d516
                              (MAlonzo.Code.Algebra.Structures.d2874
                                 (MAlonzo.Code.Algebra.Structures.d3038
                                    (MAlonzo.Code.Algebra.Structures.d3222
                                       (MAlonzo.Code.Algebra.d1494 v0))))
                              (MAlonzo.Code.Algebra.d1484
                                 v0 (MAlonzo.Code.Algebra.d1484 v0 v3 v4) v5))
                           (MAlonzo.Code.Algebra.Structures.d2886
                              (MAlonzo.Code.Algebra.Structures.d3038
                                 (MAlonzo.Code.Algebra.Structures.d3222
                                    (MAlonzo.Code.Algebra.d1494 v0)))
                              (MAlonzo.Code.Algebra.d1484
                                 v0 (MAlonzo.Code.Algebra.d1484 v0 v3 v4) v5)
                              (MAlonzo.Code.Algebra.d1484
                                 v0 (MAlonzo.Code.Algebra.d1484 v0 v3 v4) v5)
                              (MAlonzo.Code.Algebra.d1486
                                 v0
                                 (MAlonzo.Code.Algebra.d1484
                                    v0
                                    (MAlonzo.Code.Algebra.d1484
                                       v0 v3 (MAlonzo.Code.Algebra.d1488 v0 v4))
                                    (MAlonzo.Code.Algebra.d1488 v0 v5))
                                 (MAlonzo.Code.Algebra.d1486
                                    v0
                                    (MAlonzo.Code.Algebra.d1484
                                       v0
                                       (MAlonzo.Code.Algebra.d1484
                                          v0 (MAlonzo.Code.Algebra.d1488 v0 v3)
                                          (MAlonzo.Code.Algebra.d1488 v0 v4))
                                       v5)
                                    (MAlonzo.Code.Algebra.d1484
                                       v0
                                       (MAlonzo.Code.Algebra.d1484
                                          v0 (MAlonzo.Code.Algebra.d1488 v0 v3) v4)
                                       (MAlonzo.Code.Algebra.d1488 v0 v5))))
                              (MAlonzo.Code.Algebra.d1486
                                 v0
                                 (MAlonzo.Code.Algebra.d1484
                                    v0
                                    (MAlonzo.Code.Algebra.d1484
                                       v0 (MAlonzo.Code.Algebra.d1488 v0 v3)
                                       (MAlonzo.Code.Algebra.d1488 v0 v4))
                                    v5)
                                 (MAlonzo.Code.Algebra.d1486
                                    v0
                                    (MAlonzo.Code.Algebra.d1484
                                       v0
                                       (MAlonzo.Code.Algebra.d1484
                                          v0 v3 (MAlonzo.Code.Algebra.d1488 v0 v4))
                                       (MAlonzo.Code.Algebra.d1488 v0 v5))
                                    (MAlonzo.Code.Algebra.d1484
                                       v0
                                       (MAlonzo.Code.Algebra.d1484
                                          v0 (MAlonzo.Code.Algebra.d1488 v0 v3) v4)
                                       (MAlonzo.Code.Algebra.d1488 v0 v5)))))
                           (du536 v0 v3 v4 v5))
                        (let v11
                               = coe
                                   MAlonzo.Code.Relation.Binary.C143
                                   (coe
                                      MAlonzo.Code.Algebra.Structures.d2874
                                      (coe
                                         MAlonzo.Code.Algebra.Structures.d3038
                                         (coe
                                            MAlonzo.Code.Algebra.Structures.d3222
                                            (coe MAlonzo.Code.Algebra.d1494 v0)))) in
                         MAlonzo.Code.Relation.Binary.PreorderReasoning.du72
                           (MAlonzo.Code.Relation.Binary.du150 v11)
                           (MAlonzo.Code.Algebra.d1486
                              v0
                              (MAlonzo.Code.Algebra.d1484
                                 v0 (MAlonzo.Code.Algebra.d1484 v0 v3 v4) v5)
                              (MAlonzo.Code.Algebra.d1486
                                 v0
                                 (MAlonzo.Code.Algebra.d1484
                                    v0
                                    (MAlonzo.Code.Algebra.d1484
                                       v0 (MAlonzo.Code.Algebra.d1488 v0 v3)
                                       (MAlonzo.Code.Algebra.d1488 v0 v4))
                                    v5)
                                 (MAlonzo.Code.Algebra.d1486
                                    v0
                                    (MAlonzo.Code.Algebra.d1484
                                       v0
                                       (MAlonzo.Code.Algebra.d1484
                                          v0 v3 (MAlonzo.Code.Algebra.d1488 v0 v4))
                                       (MAlonzo.Code.Algebra.d1488 v0 v5))
                                    (MAlonzo.Code.Algebra.d1484
                                       v0
                                       (MAlonzo.Code.Algebra.d1484
                                          v0 (MAlonzo.Code.Algebra.d1488 v0 v3) v4)
                                       (MAlonzo.Code.Algebra.d1488 v0 v5)))))
                           (MAlonzo.Code.Algebra.d1486
                              v0
                              (MAlonzo.Code.Algebra.d1486
                                 v0
                                 (MAlonzo.Code.Algebra.d1484
                                    v0 (MAlonzo.Code.Algebra.d1484 v0 v3 v4) v5)
                                 (MAlonzo.Code.Algebra.d1484
                                    v0
                                    (MAlonzo.Code.Algebra.d1484
                                       v0 (MAlonzo.Code.Algebra.d1488 v0 v3)
                                       (MAlonzo.Code.Algebra.d1488 v0 v4))
                                    v5))
                              (MAlonzo.Code.Algebra.d1486
                                 v0
                                 (MAlonzo.Code.Algebra.d1484
                                    v0
                                    (MAlonzo.Code.Algebra.d1484
                                       v0 v3 (MAlonzo.Code.Algebra.d1488 v0 v4))
                                    (MAlonzo.Code.Algebra.d1488 v0 v5))
                                 (MAlonzo.Code.Algebra.d1484
                                    v0
                                    (MAlonzo.Code.Algebra.d1484
                                       v0 (MAlonzo.Code.Algebra.d1488 v0 v3) v4)
                                    (MAlonzo.Code.Algebra.d1488 v0 v5))))
                           (v1 (v1 v3 v4) v5)
                           (MAlonzo.Code.Function.du158
                              (MAlonzo.Code.Relation.Binary.Core.d518
                                 (MAlonzo.Code.Algebra.Structures.d2874
                                    (MAlonzo.Code.Algebra.Structures.d3038
                                       (MAlonzo.Code.Algebra.Structures.d3222
                                          (MAlonzo.Code.Algebra.d1494 v0))))
                                 (MAlonzo.Code.Algebra.d1486
                                    v0
                                    (MAlonzo.Code.Algebra.d1486
                                       v0
                                       (MAlonzo.Code.Algebra.d1484
                                          v0 (MAlonzo.Code.Algebra.d1484 v0 v3 v4) v5)
                                       (MAlonzo.Code.Algebra.d1484
                                          v0
                                          (MAlonzo.Code.Algebra.d1484
                                             v0 (MAlonzo.Code.Algebra.d1488 v0 v3)
                                             (MAlonzo.Code.Algebra.d1488 v0 v4))
                                          v5))
                                    (MAlonzo.Code.Algebra.d1486
                                       v0
                                       (MAlonzo.Code.Algebra.d1484
                                          v0
                                          (MAlonzo.Code.Algebra.d1484
                                             v0 v3 (MAlonzo.Code.Algebra.d1488 v0 v4))
                                          (MAlonzo.Code.Algebra.d1488 v0 v5))
                                       (MAlonzo.Code.Algebra.d1484
                                          v0
                                          (MAlonzo.Code.Algebra.d1484
                                             v0 (MAlonzo.Code.Algebra.d1488 v0 v3) v4)
                                          (MAlonzo.Code.Algebra.d1488 v0 v5))))
                                 (MAlonzo.Code.Algebra.d1486
                                    v0
                                    (MAlonzo.Code.Algebra.d1484
                                       v0 (MAlonzo.Code.Algebra.d1484 v0 v3 v4) v5)
                                    (MAlonzo.Code.Algebra.d1486
                                       v0
                                       (MAlonzo.Code.Algebra.d1484
                                          v0
                                          (MAlonzo.Code.Algebra.d1484
                                             v0 (MAlonzo.Code.Algebra.d1488 v0 v3)
                                             (MAlonzo.Code.Algebra.d1488 v0 v4))
                                          v5)
                                       (MAlonzo.Code.Algebra.d1486
                                          v0
                                          (MAlonzo.Code.Algebra.d1484
                                             v0
                                             (MAlonzo.Code.Algebra.d1484
                                                v0 v3 (MAlonzo.Code.Algebra.d1488 v0 v4))
                                             (MAlonzo.Code.Algebra.d1488 v0 v5))
                                          (MAlonzo.Code.Algebra.d1484
                                             v0
                                             (MAlonzo.Code.Algebra.d1484
                                                v0 (MAlonzo.Code.Algebra.d1488 v0 v3) v4)
                                             (MAlonzo.Code.Algebra.d1488 v0 v5))))))
                              (MAlonzo.Code.Algebra.Structures.d2884
                                 (MAlonzo.Code.Algebra.Structures.d3038
                                    (MAlonzo.Code.Algebra.Structures.d3222
                                       (MAlonzo.Code.Algebra.d1494 v0)))
                                 (MAlonzo.Code.Algebra.d1484
                                    v0 (MAlonzo.Code.Algebra.d1484 v0 v3 v4) v5)
                                 (MAlonzo.Code.Algebra.d1484
                                    v0
                                    (MAlonzo.Code.Algebra.d1484
                                       v0 (MAlonzo.Code.Algebra.d1488 v0 v3)
                                       (MAlonzo.Code.Algebra.d1488 v0 v4))
                                    v5)
                                 (MAlonzo.Code.Algebra.d1486
                                    v0
                                    (MAlonzo.Code.Algebra.d1484
                                       v0
                                       (MAlonzo.Code.Algebra.d1484
                                          v0 v3 (MAlonzo.Code.Algebra.d1488 v0 v4))
                                       (MAlonzo.Code.Algebra.d1488 v0 v5))
                                    (MAlonzo.Code.Algebra.d1484
                                       v0
                                       (MAlonzo.Code.Algebra.d1484
                                          v0 (MAlonzo.Code.Algebra.d1488 v0 v3) v4)
                                       (MAlonzo.Code.Algebra.d1488 v0 v5)))))
                           (let v12
                                  = coe
                                      MAlonzo.Code.Relation.Binary.C143
                                      (coe
                                         MAlonzo.Code.Algebra.Structures.d2874
                                         (coe
                                            MAlonzo.Code.Algebra.Structures.d3038
                                            (coe
                                               MAlonzo.Code.Algebra.Structures.d3222
                                               (coe MAlonzo.Code.Algebra.d1494 v0)))) in
                            MAlonzo.Code.Relation.Binary.PreorderReasoning.du72
                              (MAlonzo.Code.Relation.Binary.du150 v12)
                              (MAlonzo.Code.Algebra.d1486
                                 v0
                                 (MAlonzo.Code.Algebra.d1486
                                    v0
                                    (MAlonzo.Code.Algebra.d1484
                                       v0 (MAlonzo.Code.Algebra.d1484 v0 v3 v4) v5)
                                    (MAlonzo.Code.Algebra.d1484
                                       v0
                                       (MAlonzo.Code.Algebra.d1484
                                          v0 (MAlonzo.Code.Algebra.d1488 v0 v3)
                                          (MAlonzo.Code.Algebra.d1488 v0 v4))
                                       v5))
                                 (MAlonzo.Code.Algebra.d1486
                                    v0
                                    (MAlonzo.Code.Algebra.d1484
                                       v0
                                       (MAlonzo.Code.Algebra.d1484
                                          v0 v3 (MAlonzo.Code.Algebra.d1488 v0 v4))
                                       (MAlonzo.Code.Algebra.d1488 v0 v5))
                                    (MAlonzo.Code.Algebra.d1484
                                       v0
                                       (MAlonzo.Code.Algebra.d1484
                                          v0 (MAlonzo.Code.Algebra.d1488 v0 v3) v4)
                                       (MAlonzo.Code.Algebra.d1488 v0 v5))))
                              (MAlonzo.Code.Algebra.d1486
                                 v0
                                 (MAlonzo.Code.Algebra.d1484
                                    v0
                                    (MAlonzo.Code.Algebra.d1486
                                       v0 (MAlonzo.Code.Algebra.d1484 v0 v3 v4)
                                       (MAlonzo.Code.Algebra.d1488
                                          v0 (MAlonzo.Code.Algebra.d1486 v0 v3 v4)))
                                    v5)
                                 (MAlonzo.Code.Algebra.d1488
                                    v0
                                    (MAlonzo.Code.Algebra.d1486
                                       v0
                                       (MAlonzo.Code.Algebra.d1486
                                          v0 (MAlonzo.Code.Algebra.d1484 v0 v3 v4)
                                          (MAlonzo.Code.Algebra.d1488
                                             v0 (MAlonzo.Code.Algebra.d1486 v0 v3 v4)))
                                       v5)))
                              (v1 (v1 v3 v4) v5)
                              (MAlonzo.Code.Function.du176
                                 (du524 v0 v3 v4 v5)
                                 (MAlonzo.Code.Algebra.Structures.d2886
                                    (MAlonzo.Code.Algebra.Structures.d3038
                                       (MAlonzo.Code.Algebra.Structures.d3222
                                          (MAlonzo.Code.Algebra.d1494 v0)))
                                    (MAlonzo.Code.Algebra.d1486
                                       v0
                                       (MAlonzo.Code.Algebra.d1484
                                          v0 (MAlonzo.Code.Algebra.d1484 v0 v3 v4) v5)
                                       (MAlonzo.Code.Algebra.d1484
                                          v0
                                          (MAlonzo.Code.Algebra.d1484
                                             v0 (MAlonzo.Code.Algebra.d1488 v0 v3)
                                             (MAlonzo.Code.Algebra.d1488 v0 v4))
                                          v5))
                                    (MAlonzo.Code.Algebra.d1484
                                       v0
                                       (MAlonzo.Code.Algebra.d1486
                                          v0 (MAlonzo.Code.Algebra.d1484 v0 v3 v4)
                                          (MAlonzo.Code.Algebra.d1488
                                             v0 (MAlonzo.Code.Algebra.d1486 v0 v3 v4)))
                                       v5)
                                    (MAlonzo.Code.Algebra.d1486
                                       v0
                                       (MAlonzo.Code.Algebra.d1484
                                          v0
                                          (MAlonzo.Code.Algebra.d1484
                                             v0 v3 (MAlonzo.Code.Algebra.d1488 v0 v4))
                                          (MAlonzo.Code.Algebra.d1488 v0 v5))
                                       (MAlonzo.Code.Algebra.d1484
                                          v0
                                          (MAlonzo.Code.Algebra.d1484
                                             v0 (MAlonzo.Code.Algebra.d1488 v0 v3) v4)
                                          (MAlonzo.Code.Algebra.d1488 v0 v5)))
                                    (MAlonzo.Code.Algebra.d1488
                                       v0
                                       (MAlonzo.Code.Algebra.d1486
                                          v0
                                          (MAlonzo.Code.Algebra.d1486
                                             v0 (MAlonzo.Code.Algebra.d1484 v0 v3 v4)
                                             (MAlonzo.Code.Algebra.d1488
                                                v0 (MAlonzo.Code.Algebra.d1486 v0 v3 v4)))
                                          v5)))
                                 (du528 v0 v3 v4 v5))
                              (let v13
                                     = coe
                                         MAlonzo.Code.Relation.Binary.C143
                                         (coe
                                            MAlonzo.Code.Algebra.Structures.d2874
                                            (coe
                                               MAlonzo.Code.Algebra.Structures.d3038
                                               (coe
                                                  MAlonzo.Code.Algebra.Structures.d3222
                                                  (coe MAlonzo.Code.Algebra.d1494 v0)))) in
                               MAlonzo.Code.Relation.Binary.PreorderReasoning.du72
                                 (MAlonzo.Code.Relation.Binary.du150 v13)
                                 (MAlonzo.Code.Algebra.d1486
                                    v0
                                    (MAlonzo.Code.Algebra.d1484
                                       v0
                                       (MAlonzo.Code.Algebra.d1486
                                          v0 (MAlonzo.Code.Algebra.d1484 v0 v3 v4)
                                          (MAlonzo.Code.Algebra.d1488
                                             v0 (MAlonzo.Code.Algebra.d1486 v0 v3 v4)))
                                       v5)
                                    (MAlonzo.Code.Algebra.d1488
                                       v0
                                       (MAlonzo.Code.Algebra.d1486
                                          v0
                                          (MAlonzo.Code.Algebra.d1486
                                             v0 (MAlonzo.Code.Algebra.d1484 v0 v3 v4)
                                             (MAlonzo.Code.Algebra.d1488
                                                v0 (MAlonzo.Code.Algebra.d1486 v0 v3 v4)))
                                          v5)))
                                 (v1
                                    (MAlonzo.Code.Algebra.d1486
                                       v0 (MAlonzo.Code.Algebra.d1484 v0 v3 v4)
                                       (MAlonzo.Code.Algebra.d1488
                                          v0 (MAlonzo.Code.Algebra.d1486 v0 v3 v4)))
                                    v5)
                                 (v1 (v1 v3 v4) v5)
                                 (MAlonzo.Code.Function.du158
                                    (MAlonzo.Code.Relation.Binary.Core.d518
                                       (MAlonzo.Code.Algebra.Structures.d2874
                                          (MAlonzo.Code.Algebra.Structures.d3038
                                             (MAlonzo.Code.Algebra.Structures.d3222
                                                (MAlonzo.Code.Algebra.d1494 v0))))
                                       (v1
                                          (MAlonzo.Code.Algebra.d1486
                                             v0 (MAlonzo.Code.Algebra.d1484 v0 v3 v4)
                                             (MAlonzo.Code.Algebra.d1488
                                                v0 (MAlonzo.Code.Algebra.d1486 v0 v3 v4)))
                                          v5)
                                       (MAlonzo.Code.Algebra.d1486
                                          v0
                                          (MAlonzo.Code.Algebra.d1484
                                             v0
                                             (MAlonzo.Code.Algebra.d1486
                                                v0 (MAlonzo.Code.Algebra.d1484 v0 v3 v4)
                                                (MAlonzo.Code.Algebra.d1488
                                                   v0 (MAlonzo.Code.Algebra.d1486 v0 v3 v4)))
                                             v5)
                                          (MAlonzo.Code.Algebra.d1488
                                             v0
                                             (MAlonzo.Code.Algebra.d1486
                                                v0
                                                (MAlonzo.Code.Algebra.d1486
                                                   v0 (MAlonzo.Code.Algebra.d1484 v0 v3 v4)
                                                   (MAlonzo.Code.Algebra.d1488
                                                      v0 (MAlonzo.Code.Algebra.d1486 v0 v3 v4)))
                                                v5))))
                                    (v2
                                       (MAlonzo.Code.Algebra.d1486
                                          v0 (MAlonzo.Code.Algebra.d1484 v0 v3 v4)
                                          (MAlonzo.Code.Algebra.d1488
                                             v0 (MAlonzo.Code.Algebra.d1486 v0 v3 v4)))
                                       v5))
                                 (let v14
                                        = coe
                                            MAlonzo.Code.Relation.Binary.C143
                                            (coe
                                               MAlonzo.Code.Algebra.Structures.d2874
                                               (coe
                                                  MAlonzo.Code.Algebra.Structures.d3038
                                                  (coe
                                                     MAlonzo.Code.Algebra.Structures.d3222
                                                     (coe MAlonzo.Code.Algebra.d1494 v0)))) in
                                  MAlonzo.Code.Relation.Binary.PreorderReasoning.du72
                                    (MAlonzo.Code.Relation.Binary.du150 v14)
                                    (v1
                                       (MAlonzo.Code.Algebra.d1486
                                          v0 (MAlonzo.Code.Algebra.d1484 v0 v3 v4)
                                          (MAlonzo.Code.Algebra.d1488
                                             v0 (MAlonzo.Code.Algebra.d1486 v0 v3 v4)))
                                       v5)
                                    (v1 (v1 v3 v4) v5) (v1 (v1 v3 v4) v5)
                                    (MAlonzo.Code.Function.du158
                                       (MAlonzo.Code.Relation.Binary.Core.d518
                                          (MAlonzo.Code.Algebra.Structures.d2874
                                             (MAlonzo.Code.Algebra.Structures.d3038
                                                (MAlonzo.Code.Algebra.Structures.d3222
                                                   (MAlonzo.Code.Algebra.d1494 v0))))
                                          (v1 (v1 v3 v4) v5)
                                          (v1
                                             (MAlonzo.Code.Algebra.d1486
                                                v0 (MAlonzo.Code.Algebra.d1484 v0 v3 v4)
                                                (MAlonzo.Code.Algebra.d1488
                                                   v0 (MAlonzo.Code.Algebra.d1486 v0 v3 v4)))
                                             v5))
                                       (MAlonzo.Code.Function.du176
                                          (v2 v3 v4)
                                          (du420
                                             v0 v1 v2 (v1 v3 v4)
                                             (MAlonzo.Code.Algebra.d1486
                                                v0 (MAlonzo.Code.Algebra.d1484 v0 v3 v4)
                                                (MAlonzo.Code.Algebra.d1488
                                                   v0 (MAlonzo.Code.Algebra.d1486 v0 v3 v4)))
                                             v5 v5)
                                          (MAlonzo.Code.Relation.Binary.Core.d516
                                             (MAlonzo.Code.Algebra.Structures.d2874
                                                (MAlonzo.Code.Algebra.Structures.d3038
                                                   (MAlonzo.Code.Algebra.Structures.d3222
                                                      (MAlonzo.Code.Algebra.d1494 v0))))
                                             v5)))
                                    (let v15
                                           = coe
                                               MAlonzo.Code.Relation.Binary.C143
                                               (coe
                                                  MAlonzo.Code.Algebra.Structures.d2874
                                                  (coe
                                                     MAlonzo.Code.Algebra.Structures.d3038
                                                     (coe
                                                        MAlonzo.Code.Algebra.Structures.d3222
                                                        (coe MAlonzo.Code.Algebra.d1494 v0)))) in
                                     let v16 = coe v1 (coe v1 v3 v4) v5 in
                                     MAlonzo.Code.Relation.Binary.PreorderReasoning.C56
                                       (MAlonzo.Code.Relation.Binary.d38
                                          (MAlonzo.Code.Relation.Binary.d92
                                             (MAlonzo.Code.Relation.Binary.du150 v15))
                                          v16 v16
                                          (MAlonzo.Code.Relation.Binary.Core.d516
                                             (MAlonzo.Code.Relation.Binary.d36
                                                (MAlonzo.Code.Relation.Binary.d92
                                                   (MAlonzo.Code.Relation.Binary.du150 v15)))
                                             v16)))))))))))))
name524 = "Algebra.Properties.BooleanAlgebra.XorRing._.lem\8321"
d524 v0 v1 v2 v3 v4 v5 v6 v7 = du524 v2 v5 v6 v7
du524 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Relation.Binary.PreorderReasoning.d62
      (let v4
             = coe
                 MAlonzo.Code.Relation.Binary.C143
                 (coe
                    MAlonzo.Code.Algebra.Structures.d2874
                    (coe
                       MAlonzo.Code.Algebra.Structures.d3038
                       (coe
                          MAlonzo.Code.Algebra.Structures.d3222
                          (coe MAlonzo.Code.Algebra.d1494 v0)))) in
       MAlonzo.Code.Relation.Binary.PreorderReasoning.du72
         (MAlonzo.Code.Relation.Binary.du150 v4)
         (MAlonzo.Code.Algebra.d1486
            v0
            (MAlonzo.Code.Algebra.d1484
               v0 (MAlonzo.Code.Algebra.d1484 v0 v1 v2) v3)
            (MAlonzo.Code.Algebra.d1484
               v0
               (MAlonzo.Code.Algebra.d1484
                  v0 (MAlonzo.Code.Algebra.d1488 v0 v1)
                  (MAlonzo.Code.Algebra.d1488 v0 v2))
               v3))
         (MAlonzo.Code.Algebra.d1484
            v0
            (MAlonzo.Code.Algebra.d1486
               v0 (MAlonzo.Code.Algebra.d1484 v0 v1 v2)
               (MAlonzo.Code.Algebra.d1484
                  v0 (MAlonzo.Code.Algebra.d1488 v0 v1)
                  (MAlonzo.Code.Algebra.d1488 v0 v2)))
            v3)
         (MAlonzo.Code.Algebra.d1484
            v0
            (MAlonzo.Code.Algebra.d1486
               v0 (MAlonzo.Code.Algebra.d1484 v0 v1 v2)
               (MAlonzo.Code.Algebra.d1488
                  v0 (MAlonzo.Code.Algebra.d1486 v0 v1 v2)))
            v3)
         (MAlonzo.Code.Function.du158
            (MAlonzo.Code.Relation.Binary.Core.d518
               (MAlonzo.Code.Algebra.Structures.d2874
                  (MAlonzo.Code.Algebra.Structures.d3038
                     (MAlonzo.Code.Algebra.Structures.d3222
                        (MAlonzo.Code.Algebra.d1494 v0))))
               (MAlonzo.Code.Algebra.d1484
                  v0
                  (MAlonzo.Code.Algebra.d1486
                     v0 (MAlonzo.Code.Algebra.d1484 v0 v1 v2)
                     (MAlonzo.Code.Algebra.d1484
                        v0 (MAlonzo.Code.Algebra.d1488 v0 v1)
                        (MAlonzo.Code.Algebra.d1488 v0 v2)))
                  v3)
               (MAlonzo.Code.Algebra.d1486
                  v0
                  (MAlonzo.Code.Algebra.d1484
                     v0 (MAlonzo.Code.Algebra.d1484 v0 v1 v2) v3)
                  (MAlonzo.Code.Algebra.d1484
                     v0
                     (MAlonzo.Code.Algebra.d1484
                        v0 (MAlonzo.Code.Algebra.d1488 v0 v1)
                        (MAlonzo.Code.Algebra.d1488 v0 v2))
                     v3)))
            (MAlonzo.Code.Data.Product.d28
               (MAlonzo.Code.Algebra.Properties.DistributiveLattice.du148
                  (MAlonzo.Code.Algebra.C687
                     (MAlonzo.Code.Algebra.d1484 v0) (MAlonzo.Code.Algebra.d1486 v0)
                     (MAlonzo.Code.Algebra.Structures.d3222
                        (MAlonzo.Code.Algebra.d1494 v0))))
               v3 (MAlonzo.Code.Algebra.d1484 v0 v1 v2)
               (MAlonzo.Code.Algebra.d1484
                  v0 (MAlonzo.Code.Algebra.d1488 v0 v1)
                  (MAlonzo.Code.Algebra.d1488 v0 v2))))
         (let v5
                = coe
                    MAlonzo.Code.Relation.Binary.C143
                    (coe
                       MAlonzo.Code.Algebra.Structures.d2874
                       (coe
                          MAlonzo.Code.Algebra.Structures.d3038
                          (coe
                             MAlonzo.Code.Algebra.Structures.d3222
                             (coe MAlonzo.Code.Algebra.d1494 v0)))) in
          MAlonzo.Code.Relation.Binary.PreorderReasoning.du72
            (MAlonzo.Code.Relation.Binary.du150 v5)
            (MAlonzo.Code.Algebra.d1484
               v0
               (MAlonzo.Code.Algebra.d1486
                  v0 (MAlonzo.Code.Algebra.d1484 v0 v1 v2)
                  (MAlonzo.Code.Algebra.d1484
                     v0 (MAlonzo.Code.Algebra.d1488 v0 v1)
                     (MAlonzo.Code.Algebra.d1488 v0 v2)))
               v3)
            (MAlonzo.Code.Algebra.d1484
               v0
               (MAlonzo.Code.Algebra.d1486
                  v0 (MAlonzo.Code.Algebra.d1484 v0 v1 v2)
                  (MAlonzo.Code.Algebra.d1488
                     v0 (MAlonzo.Code.Algebra.d1486 v0 v1 v2)))
               v3)
            (MAlonzo.Code.Algebra.d1484
               v0
               (MAlonzo.Code.Algebra.d1486
                  v0 (MAlonzo.Code.Algebra.d1484 v0 v1 v2)
                  (MAlonzo.Code.Algebra.d1488
                     v0 (MAlonzo.Code.Algebra.d1486 v0 v1 v2)))
               v3)
            (MAlonzo.Code.Function.du176
               (MAlonzo.Code.Function.du176
                  (MAlonzo.Code.Relation.Binary.Core.d516
                     (MAlonzo.Code.Algebra.Structures.d2874
                        (MAlonzo.Code.Algebra.Structures.d3038
                           (MAlonzo.Code.Algebra.Structures.d3222
                              (MAlonzo.Code.Algebra.d1494 v0))))
                     (MAlonzo.Code.Algebra.d1484 v0 v1 v2))
                  (MAlonzo.Code.Algebra.Structures.d2886
                     (MAlonzo.Code.Algebra.Structures.d3038
                        (MAlonzo.Code.Algebra.Structures.d3222
                           (MAlonzo.Code.Algebra.d1494 v0)))
                     (MAlonzo.Code.Algebra.d1484 v0 v1 v2)
                     (MAlonzo.Code.Algebra.d1484 v0 v1 v2)
                     (MAlonzo.Code.Algebra.d1484
                        v0 (MAlonzo.Code.Algebra.d1488 v0 v1)
                        (MAlonzo.Code.Algebra.d1488 v0 v2))
                     (MAlonzo.Code.Algebra.d1488
                        v0 (MAlonzo.Code.Algebra.d1486 v0 v1 v2)))
                  (MAlonzo.Code.Relation.Binary.Core.d518
                     (MAlonzo.Code.Algebra.Structures.d2874
                        (MAlonzo.Code.Algebra.Structures.d3038
                           (MAlonzo.Code.Algebra.Structures.d3222
                              (MAlonzo.Code.Algebra.d1494 v0))))
                     (MAlonzo.Code.Algebra.d1488
                        v0 (MAlonzo.Code.Algebra.d1486 v0 v1 v2))
                     (MAlonzo.Code.Algebra.d1484
                        v0 (MAlonzo.Code.Algebra.d1488 v0 v1)
                        (MAlonzo.Code.Algebra.d1488 v0 v2))
                     (du286 v0 v1 v2)))
               (MAlonzo.Code.Algebra.Structures.d2880
                  (MAlonzo.Code.Algebra.Structures.d3038
                     (MAlonzo.Code.Algebra.Structures.d3222
                        (MAlonzo.Code.Algebra.d1494 v0)))
                  (MAlonzo.Code.Algebra.d1486
                     v0 (MAlonzo.Code.Algebra.d1484 v0 v1 v2)
                     (MAlonzo.Code.Algebra.d1484
                        v0 (MAlonzo.Code.Algebra.d1488 v0 v1)
                        (MAlonzo.Code.Algebra.d1488 v0 v2)))
                  (MAlonzo.Code.Algebra.d1486
                     v0 (MAlonzo.Code.Algebra.d1484 v0 v1 v2)
                     (MAlonzo.Code.Algebra.d1488
                        v0 (MAlonzo.Code.Algebra.d1486 v0 v1 v2)))
                  v3 v3)
               (MAlonzo.Code.Relation.Binary.Core.d516
                  (MAlonzo.Code.Algebra.Structures.d2874
                     (MAlonzo.Code.Algebra.Structures.d3038
                        (MAlonzo.Code.Algebra.Structures.d3222
                           (MAlonzo.Code.Algebra.d1494 v0))))
                  v3))
            (let v6
                   = coe
                       MAlonzo.Code.Relation.Binary.C143
                       (coe
                          MAlonzo.Code.Algebra.Structures.d2874
                          (coe
                             MAlonzo.Code.Algebra.Structures.d3038
                             (coe
                                MAlonzo.Code.Algebra.Structures.d3222
                                (coe MAlonzo.Code.Algebra.d1494 v0)))) in
             let v7
                   = coe
                       MAlonzo.Code.Algebra.d1484 v0
                       (coe
                          MAlonzo.Code.Algebra.d1486 v0
                          (coe MAlonzo.Code.Algebra.d1484 v0 v1 v2)
                          (coe
                             MAlonzo.Code.Algebra.d1488 v0
                             (coe MAlonzo.Code.Algebra.d1486 v0 v1 v2)))
                       v3 in
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
name526 = "Algebra.Properties.BooleanAlgebra.XorRing._.lem\8322'"
d526 v0 v1 v2 v3 v4 v5 v6 v7 = du526 v2 v5 v6
du526 v0 v1 v2
  = coe
      MAlonzo.Code.Relation.Binary.PreorderReasoning.d62
      (let v3
             = coe
                 MAlonzo.Code.Relation.Binary.C143
                 (coe
                    MAlonzo.Code.Algebra.Structures.d2874
                    (coe
                       MAlonzo.Code.Algebra.Structures.d3038
                       (coe
                          MAlonzo.Code.Algebra.Structures.d3222
                          (coe MAlonzo.Code.Algebra.d1494 v0)))) in
       MAlonzo.Code.Relation.Binary.PreorderReasoning.du72
         (MAlonzo.Code.Relation.Binary.du150 v3)
         (MAlonzo.Code.Algebra.d1486
            v0
            (MAlonzo.Code.Algebra.d1484
               v0 v1 (MAlonzo.Code.Algebra.d1488 v0 v2))
            (MAlonzo.Code.Algebra.d1484
               v0 (MAlonzo.Code.Algebra.d1488 v0 v1) v2))
         (MAlonzo.Code.Algebra.d1486
            v0
            (MAlonzo.Code.Algebra.d1486
               v0 (MAlonzo.Code.Algebra.d1490 v0)
               (MAlonzo.Code.Algebra.d1484
                  v0 v1 (MAlonzo.Code.Algebra.d1488 v0 v2)))
            (MAlonzo.Code.Algebra.d1486
               v0
               (MAlonzo.Code.Algebra.d1484
                  v0 (MAlonzo.Code.Algebra.d1488 v0 v1) v2)
               (MAlonzo.Code.Algebra.d1490 v0)))
         (MAlonzo.Code.Algebra.d1488
            v0
            (MAlonzo.Code.Algebra.d1486
               v0 (MAlonzo.Code.Algebra.d1484 v0 v1 v2)
               (MAlonzo.Code.Algebra.d1488
                  v0 (MAlonzo.Code.Algebra.d1486 v0 v1 v2))))
         (MAlonzo.Code.Function.du158
            (MAlonzo.Code.Relation.Binary.Core.d518
               (MAlonzo.Code.Algebra.Structures.d2874
                  (MAlonzo.Code.Algebra.Structures.d3038
                     (MAlonzo.Code.Algebra.Structures.d3222
                        (MAlonzo.Code.Algebra.d1494 v0))))
               (MAlonzo.Code.Algebra.d1486
                  v0
                  (MAlonzo.Code.Algebra.d1486
                     v0 (MAlonzo.Code.Algebra.d1490 v0)
                     (MAlonzo.Code.Algebra.d1484
                        v0 v1 (MAlonzo.Code.Algebra.d1488 v0 v2)))
                  (MAlonzo.Code.Algebra.d1486
                     v0
                     (MAlonzo.Code.Algebra.d1484
                        v0 (MAlonzo.Code.Algebra.d1488 v0 v1) v2)
                     (MAlonzo.Code.Algebra.d1490 v0)))
               (MAlonzo.Code.Algebra.d1486
                  v0
                  (MAlonzo.Code.Algebra.d1484
                     v0 v1 (MAlonzo.Code.Algebra.d1488 v0 v2))
                  (MAlonzo.Code.Algebra.d1484
                     v0 (MAlonzo.Code.Algebra.d1488 v0 v1) v2)))
            (MAlonzo.Code.Function.du176
               (MAlonzo.Code.Data.Product.d26
                  (du196 v0)
                  (MAlonzo.Code.Algebra.d1484
                     v0 v1 (MAlonzo.Code.Algebra.d1488 v0 v2)))
               (MAlonzo.Code.Algebra.Structures.d2886
                  (MAlonzo.Code.Algebra.Structures.d3038
                     (MAlonzo.Code.Algebra.Structures.d3222
                        (MAlonzo.Code.Algebra.d1494 v0)))
                  (MAlonzo.Code.Algebra.d1486
                     v0 (MAlonzo.Code.Algebra.d1490 v0)
                     (MAlonzo.Code.Algebra.d1484
                        v0 v1 (MAlonzo.Code.Algebra.d1488 v0 v2)))
                  (MAlonzo.Code.Algebra.d1484
                     v0 v1 (MAlonzo.Code.Algebra.d1488 v0 v2))
                  (MAlonzo.Code.Algebra.d1486
                     v0
                     (MAlonzo.Code.Algebra.d1484
                        v0 (MAlonzo.Code.Algebra.d1488 v0 v1) v2)
                     (MAlonzo.Code.Algebra.d1490 v0))
                  (MAlonzo.Code.Algebra.d1484
                     v0 (MAlonzo.Code.Algebra.d1488 v0 v1) v2))
               (MAlonzo.Code.Data.Product.d28
                  (du196 v0)
                  (MAlonzo.Code.Algebra.d1484
                     v0 (MAlonzo.Code.Algebra.d1488 v0 v1) v2))))
         (let v4
                = coe
                    MAlonzo.Code.Relation.Binary.C143
                    (coe
                       MAlonzo.Code.Algebra.Structures.d2874
                       (coe
                          MAlonzo.Code.Algebra.Structures.d3038
                          (coe
                             MAlonzo.Code.Algebra.Structures.d3222
                             (coe MAlonzo.Code.Algebra.d1494 v0)))) in
          MAlonzo.Code.Relation.Binary.PreorderReasoning.du72
            (MAlonzo.Code.Relation.Binary.du150 v4)
            (MAlonzo.Code.Algebra.d1486
               v0
               (MAlonzo.Code.Algebra.d1486
                  v0 (MAlonzo.Code.Algebra.d1490 v0)
                  (MAlonzo.Code.Algebra.d1484
                     v0 v1 (MAlonzo.Code.Algebra.d1488 v0 v2)))
               (MAlonzo.Code.Algebra.d1486
                  v0
                  (MAlonzo.Code.Algebra.d1484
                     v0 (MAlonzo.Code.Algebra.d1488 v0 v1) v2)
                  (MAlonzo.Code.Algebra.d1490 v0)))
            (MAlonzo.Code.Algebra.d1486
               v0
               (MAlonzo.Code.Algebra.d1486
                  v0
                  (MAlonzo.Code.Algebra.d1484
                     v0 (MAlonzo.Code.Algebra.d1488 v0 v1) v1)
                  (MAlonzo.Code.Algebra.d1484
                     v0 (MAlonzo.Code.Algebra.d1488 v0 v2) v1))
               (MAlonzo.Code.Algebra.d1486
                  v0
                  (MAlonzo.Code.Algebra.d1484
                     v0 (MAlonzo.Code.Algebra.d1488 v0 v1) v2)
                  (MAlonzo.Code.Algebra.d1484
                     v0 (MAlonzo.Code.Algebra.d1488 v0 v2) v2)))
            (MAlonzo.Code.Algebra.d1488
               v0
               (MAlonzo.Code.Algebra.d1486
                  v0 (MAlonzo.Code.Algebra.d1484 v0 v1 v2)
                  (MAlonzo.Code.Algebra.d1488
                     v0 (MAlonzo.Code.Algebra.d1486 v0 v1 v2))))
            (MAlonzo.Code.Function.du158
               (MAlonzo.Code.Relation.Binary.Core.d518
                  (MAlonzo.Code.Algebra.Structures.d2874
                     (MAlonzo.Code.Algebra.Structures.d3038
                        (MAlonzo.Code.Algebra.Structures.d3222
                           (MAlonzo.Code.Algebra.d1494 v0))))
                  (MAlonzo.Code.Algebra.d1486
                     v0
                     (MAlonzo.Code.Algebra.d1486
                        v0
                        (MAlonzo.Code.Algebra.d1484
                           v0 (MAlonzo.Code.Algebra.d1488 v0 v1) v1)
                        (MAlonzo.Code.Algebra.d1484
                           v0 (MAlonzo.Code.Algebra.d1488 v0 v2) v1))
                     (MAlonzo.Code.Algebra.d1486
                        v0
                        (MAlonzo.Code.Algebra.d1484
                           v0 (MAlonzo.Code.Algebra.d1488 v0 v1) v2)
                        (MAlonzo.Code.Algebra.d1484
                           v0 (MAlonzo.Code.Algebra.d1488 v0 v2) v2)))
                  (MAlonzo.Code.Algebra.d1486
                     v0
                     (MAlonzo.Code.Algebra.d1486
                        v0 (MAlonzo.Code.Algebra.d1490 v0)
                        (MAlonzo.Code.Algebra.d1484
                           v0 v1 (MAlonzo.Code.Algebra.d1488 v0 v2)))
                     (MAlonzo.Code.Algebra.d1486
                        v0
                        (MAlonzo.Code.Algebra.d1484
                           v0 (MAlonzo.Code.Algebra.d1488 v0 v1) v2)
                        (MAlonzo.Code.Algebra.d1490 v0))))
               (MAlonzo.Code.Function.du176
                  (MAlonzo.Code.Function.du176
                     (MAlonzo.Code.Data.Product.d26 (du172 v0) v1)
                     (MAlonzo.Code.Algebra.Structures.d2886
                        (MAlonzo.Code.Algebra.Structures.d3038
                           (MAlonzo.Code.Algebra.Structures.d3222
                              (MAlonzo.Code.Algebra.d1494 v0)))
                        (MAlonzo.Code.Algebra.d1484
                           v0 (MAlonzo.Code.Algebra.d1488 v0 v1) v1)
                        (MAlonzo.Code.Algebra.d1490 v0)
                        (MAlonzo.Code.Algebra.d1484
                           v0 (MAlonzo.Code.Algebra.d1488 v0 v2) v1)
                        (MAlonzo.Code.Algebra.d1484
                           v0 v1 (MAlonzo.Code.Algebra.d1488 v0 v2)))
                     (MAlonzo.Code.Algebra.Structures.d2876
                        (MAlonzo.Code.Algebra.Structures.d3038
                           (MAlonzo.Code.Algebra.Structures.d3222
                              (MAlonzo.Code.Algebra.d1494 v0)))
                        (MAlonzo.Code.Algebra.d1488 v0 v2) v1))
                  (MAlonzo.Code.Algebra.Structures.d2886
                     (MAlonzo.Code.Algebra.Structures.d3038
                        (MAlonzo.Code.Algebra.Structures.d3222
                           (MAlonzo.Code.Algebra.d1494 v0)))
                     (MAlonzo.Code.Algebra.d1486
                        v0
                        (MAlonzo.Code.Algebra.d1484
                           v0 (MAlonzo.Code.Algebra.d1488 v0 v1) v1)
                        (MAlonzo.Code.Algebra.d1484
                           v0 (MAlonzo.Code.Algebra.d1488 v0 v2) v1))
                     (MAlonzo.Code.Algebra.d1486
                        v0 (MAlonzo.Code.Algebra.d1490 v0)
                        (MAlonzo.Code.Algebra.d1484
                           v0 v1 (MAlonzo.Code.Algebra.d1488 v0 v2)))
                     (MAlonzo.Code.Algebra.d1486
                        v0
                        (MAlonzo.Code.Algebra.d1484
                           v0 (MAlonzo.Code.Algebra.d1488 v0 v1) v2)
                        (MAlonzo.Code.Algebra.d1484
                           v0 (MAlonzo.Code.Algebra.d1488 v0 v2) v2))
                     (MAlonzo.Code.Algebra.d1486
                        v0
                        (MAlonzo.Code.Algebra.d1484
                           v0 (MAlonzo.Code.Algebra.d1488 v0 v1) v2)
                        (MAlonzo.Code.Algebra.d1490 v0)))
                  (MAlonzo.Code.Function.du176
                     (MAlonzo.Code.Relation.Binary.Core.d516
                        (MAlonzo.Code.Algebra.Structures.d2874
                           (MAlonzo.Code.Algebra.Structures.d3038
                              (MAlonzo.Code.Algebra.Structures.d3222
                                 (MAlonzo.Code.Algebra.d1494 v0))))
                        (MAlonzo.Code.Algebra.d1484
                           v0 (MAlonzo.Code.Algebra.d1488 v0 v1) v2))
                     (MAlonzo.Code.Algebra.Structures.d2886
                        (MAlonzo.Code.Algebra.Structures.d3038
                           (MAlonzo.Code.Algebra.Structures.d3222
                              (MAlonzo.Code.Algebra.d1494 v0)))
                        (MAlonzo.Code.Algebra.d1484
                           v0 (MAlonzo.Code.Algebra.d1488 v0 v1) v2)
                        (MAlonzo.Code.Algebra.d1484
                           v0 (MAlonzo.Code.Algebra.d1488 v0 v1) v2)
                        (MAlonzo.Code.Algebra.d1484
                           v0 (MAlonzo.Code.Algebra.d1488 v0 v2) v2)
                        (MAlonzo.Code.Algebra.d1490 v0))
                     (MAlonzo.Code.Data.Product.d26 (du172 v0) v2))))
            (let v5
                   = coe
                       MAlonzo.Code.Relation.Binary.C143
                       (coe
                          MAlonzo.Code.Algebra.Structures.d2874
                          (coe
                             MAlonzo.Code.Algebra.Structures.d3038
                             (coe
                                MAlonzo.Code.Algebra.Structures.d3222
                                (coe MAlonzo.Code.Algebra.d1494 v0)))) in
             MAlonzo.Code.Relation.Binary.PreorderReasoning.du72
               (MAlonzo.Code.Relation.Binary.du150 v5)
               (MAlonzo.Code.Algebra.d1486
                  v0
                  (MAlonzo.Code.Algebra.d1486
                     v0
                     (MAlonzo.Code.Algebra.d1484
                        v0 (MAlonzo.Code.Algebra.d1488 v0 v1) v1)
                     (MAlonzo.Code.Algebra.d1484
                        v0 (MAlonzo.Code.Algebra.d1488 v0 v2) v1))
                  (MAlonzo.Code.Algebra.d1486
                     v0
                     (MAlonzo.Code.Algebra.d1484
                        v0 (MAlonzo.Code.Algebra.d1488 v0 v1) v2)
                     (MAlonzo.Code.Algebra.d1484
                        v0 (MAlonzo.Code.Algebra.d1488 v0 v2) v2)))
               (MAlonzo.Code.Algebra.d1484
                  v0
                  (MAlonzo.Code.Algebra.d1486
                     v0 (MAlonzo.Code.Algebra.d1488 v0 v1)
                     (MAlonzo.Code.Algebra.d1488 v0 v2))
                  (MAlonzo.Code.Algebra.d1486 v0 v1 v2))
               (MAlonzo.Code.Algebra.d1488
                  v0
                  (MAlonzo.Code.Algebra.d1486
                     v0 (MAlonzo.Code.Algebra.d1484 v0 v1 v2)
                     (MAlonzo.Code.Algebra.d1488
                        v0 (MAlonzo.Code.Algebra.d1486 v0 v1 v2))))
               (MAlonzo.Code.Function.du158
                  (MAlonzo.Code.Relation.Binary.Core.d518
                     (MAlonzo.Code.Algebra.Structures.d2874
                        (MAlonzo.Code.Algebra.Structures.d3038
                           (MAlonzo.Code.Algebra.Structures.d3222
                              (MAlonzo.Code.Algebra.d1494 v0))))
                     (MAlonzo.Code.Algebra.d1484
                        v0
                        (MAlonzo.Code.Algebra.d1486
                           v0 (MAlonzo.Code.Algebra.d1488 v0 v1)
                           (MAlonzo.Code.Algebra.d1488 v0 v2))
                        (MAlonzo.Code.Algebra.d1486 v0 v1 v2))
                     (MAlonzo.Code.Algebra.d1486
                        v0
                        (MAlonzo.Code.Algebra.d1486
                           v0
                           (MAlonzo.Code.Algebra.d1484
                              v0 (MAlonzo.Code.Algebra.d1488 v0 v1) v1)
                           (MAlonzo.Code.Algebra.d1484
                              v0 (MAlonzo.Code.Algebra.d1488 v0 v2) v1))
                        (MAlonzo.Code.Algebra.d1486
                           v0
                           (MAlonzo.Code.Algebra.d1484
                              v0 (MAlonzo.Code.Algebra.d1488 v0 v1) v2)
                           (MAlonzo.Code.Algebra.d1484
                              v0 (MAlonzo.Code.Algebra.d1488 v0 v2) v2))))
                  (du502
                     v0 (MAlonzo.Code.Algebra.d1488 v0 v1)
                     (MAlonzo.Code.Algebra.d1488 v0 v2) v1 v2))
               (let v6
                      = coe
                          MAlonzo.Code.Relation.Binary.C143
                          (coe
                             MAlonzo.Code.Algebra.Structures.d2874
                             (coe
                                MAlonzo.Code.Algebra.Structures.d3038
                                (coe
                                   MAlonzo.Code.Algebra.Structures.d3222
                                   (coe MAlonzo.Code.Algebra.d1494 v0)))) in
                MAlonzo.Code.Relation.Binary.PreorderReasoning.du72
                  (MAlonzo.Code.Relation.Binary.du150 v6)
                  (MAlonzo.Code.Algebra.d1484
                     v0
                     (MAlonzo.Code.Algebra.d1486
                        v0 (MAlonzo.Code.Algebra.d1488 v0 v1)
                        (MAlonzo.Code.Algebra.d1488 v0 v2))
                     (MAlonzo.Code.Algebra.d1486 v0 v1 v2))
                  (MAlonzo.Code.Algebra.d1484
                     v0
                     (MAlonzo.Code.Algebra.d1488
                        v0 (MAlonzo.Code.Algebra.d1484 v0 v1 v2))
                     (MAlonzo.Code.Algebra.d1488
                        v0
                        (MAlonzo.Code.Algebra.d1488
                           v0 (MAlonzo.Code.Algebra.d1486 v0 v1 v2))))
                  (MAlonzo.Code.Algebra.d1488
                     v0
                     (MAlonzo.Code.Algebra.d1486
                        v0 (MAlonzo.Code.Algebra.d1484 v0 v1 v2)
                        (MAlonzo.Code.Algebra.d1488
                           v0 (MAlonzo.Code.Algebra.d1486 v0 v1 v2))))
                  (MAlonzo.Code.Function.du158
                     (MAlonzo.Code.Relation.Binary.Core.d518
                        (MAlonzo.Code.Algebra.Structures.d2874
                           (MAlonzo.Code.Algebra.Structures.d3038
                              (MAlonzo.Code.Algebra.Structures.d3222
                                 (MAlonzo.Code.Algebra.d1494 v0))))
                        (MAlonzo.Code.Algebra.d1484
                           v0
                           (MAlonzo.Code.Algebra.d1488
                              v0 (MAlonzo.Code.Algebra.d1484 v0 v1 v2))
                           (MAlonzo.Code.Algebra.d1488
                              v0
                              (MAlonzo.Code.Algebra.d1488
                                 v0 (MAlonzo.Code.Algebra.d1486 v0 v1 v2))))
                        (MAlonzo.Code.Algebra.d1484
                           v0
                           (MAlonzo.Code.Algebra.d1486
                              v0 (MAlonzo.Code.Algebra.d1488 v0 v1)
                              (MAlonzo.Code.Algebra.d1488 v0 v2))
                           (MAlonzo.Code.Algebra.d1486 v0 v1 v2)))
                     (MAlonzo.Code.Function.du176
                        (du306 v0 v1 v2)
                        (MAlonzo.Code.Algebra.Structures.d2880
                           (MAlonzo.Code.Algebra.Structures.d3038
                              (MAlonzo.Code.Algebra.Structures.d3222
                                 (MAlonzo.Code.Algebra.d1494 v0)))
                           (MAlonzo.Code.Algebra.d1488
                              v0 (MAlonzo.Code.Algebra.d1484 v0 v1 v2))
                           (MAlonzo.Code.Algebra.d1486
                              v0 (MAlonzo.Code.Algebra.d1488 v0 v1)
                              (MAlonzo.Code.Algebra.d1488 v0 v2))
                           (MAlonzo.Code.Algebra.d1488
                              v0
                              (MAlonzo.Code.Algebra.d1488
                                 v0 (MAlonzo.Code.Algebra.d1486 v0 v1 v2)))
                           (MAlonzo.Code.Algebra.d1486 v0 v1 v2))
                        (du278 v0 (MAlonzo.Code.Algebra.d1486 v0 v1 v2))))
                  (let v7
                         = coe
                             MAlonzo.Code.Relation.Binary.C143
                             (coe
                                MAlonzo.Code.Algebra.Structures.d2874
                                (coe
                                   MAlonzo.Code.Algebra.Structures.d3038
                                   (coe
                                      MAlonzo.Code.Algebra.Structures.d3222
                                      (coe MAlonzo.Code.Algebra.d1494 v0)))) in
                   MAlonzo.Code.Relation.Binary.PreorderReasoning.du72
                     (MAlonzo.Code.Relation.Binary.du150 v7)
                     (MAlonzo.Code.Algebra.d1484
                        v0
                        (MAlonzo.Code.Algebra.d1488
                           v0 (MAlonzo.Code.Algebra.d1484 v0 v1 v2))
                        (MAlonzo.Code.Algebra.d1488
                           v0
                           (MAlonzo.Code.Algebra.d1488
                              v0 (MAlonzo.Code.Algebra.d1486 v0 v1 v2))))
                     (MAlonzo.Code.Algebra.d1488
                        v0
                        (MAlonzo.Code.Algebra.d1486
                           v0 (MAlonzo.Code.Algebra.d1484 v0 v1 v2)
                           (MAlonzo.Code.Algebra.d1488
                              v0 (MAlonzo.Code.Algebra.d1486 v0 v1 v2))))
                     (MAlonzo.Code.Algebra.d1488
                        v0
                        (MAlonzo.Code.Algebra.d1486
                           v0 (MAlonzo.Code.Algebra.d1484 v0 v1 v2)
                           (MAlonzo.Code.Algebra.d1488
                              v0 (MAlonzo.Code.Algebra.d1486 v0 v1 v2))))
                     (MAlonzo.Code.Relation.Binary.Core.d518
                        (MAlonzo.Code.Algebra.Structures.d2874
                           (MAlonzo.Code.Algebra.Structures.d3038
                              (MAlonzo.Code.Algebra.Structures.d3222
                                 (MAlonzo.Code.Algebra.d1494 v0))))
                        (MAlonzo.Code.Algebra.d1488
                           v0
                           (MAlonzo.Code.Algebra.d1486
                              v0 (MAlonzo.Code.Algebra.d1484 v0 v1 v2)
                              (MAlonzo.Code.Algebra.d1488
                                 v0 (MAlonzo.Code.Algebra.d1486 v0 v1 v2))))
                        (MAlonzo.Code.Algebra.d1484
                           v0
                           (MAlonzo.Code.Algebra.d1488
                              v0 (MAlonzo.Code.Algebra.d1484 v0 v1 v2))
                           (MAlonzo.Code.Algebra.d1488
                              v0
                              (MAlonzo.Code.Algebra.d1488
                                 v0 (MAlonzo.Code.Algebra.d1486 v0 v1 v2))))
                        (du286
                           v0 (MAlonzo.Code.Algebra.d1484 v0 v1 v2)
                           (MAlonzo.Code.Algebra.d1488
                              v0 (MAlonzo.Code.Algebra.d1486 v0 v1 v2))))
                     (let v8
                            = coe
                                MAlonzo.Code.Relation.Binary.C143
                                (coe
                                   MAlonzo.Code.Algebra.Structures.d2874
                                   (coe
                                      MAlonzo.Code.Algebra.Structures.d3038
                                      (coe
                                         MAlonzo.Code.Algebra.Structures.d3222
                                         (coe MAlonzo.Code.Algebra.d1494 v0)))) in
                      let v9
                            = coe
                                MAlonzo.Code.Algebra.d1488 v0
                                (coe
                                   MAlonzo.Code.Algebra.d1486 v0
                                   (coe MAlonzo.Code.Algebra.d1484 v0 v1 v2)
                                   (coe
                                      MAlonzo.Code.Algebra.d1488 v0
                                      (coe MAlonzo.Code.Algebra.d1486 v0 v1 v2))) in
                      MAlonzo.Code.Relation.Binary.PreorderReasoning.C56
                        (MAlonzo.Code.Relation.Binary.d38
                           (MAlonzo.Code.Relation.Binary.d92
                              (MAlonzo.Code.Relation.Binary.du150 v8))
                           v9 v9
                           (MAlonzo.Code.Relation.Binary.Core.d516
                              (MAlonzo.Code.Relation.Binary.d36
                                 (MAlonzo.Code.Relation.Binary.d92
                                    (MAlonzo.Code.Relation.Binary.du150 v8)))
                              v9))))))))
name528 = "Algebra.Properties.BooleanAlgebra.XorRing._.lem\8322"
d528 v0 v1 v2 v3 v4 v5 v6 v7 = du528 v2 v5 v6 v7
du528 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Relation.Binary.PreorderReasoning.d62
      (let v4
             = coe
                 MAlonzo.Code.Relation.Binary.C143
                 (coe
                    MAlonzo.Code.Algebra.Structures.d2874
                    (coe
                       MAlonzo.Code.Algebra.Structures.d3038
                       (coe
                          MAlonzo.Code.Algebra.Structures.d3222
                          (coe MAlonzo.Code.Algebra.d1494 v0)))) in
       MAlonzo.Code.Relation.Binary.PreorderReasoning.du72
         (MAlonzo.Code.Relation.Binary.du150 v4)
         (MAlonzo.Code.Algebra.d1486
            v0
            (MAlonzo.Code.Algebra.d1484
               v0
               (MAlonzo.Code.Algebra.d1484
                  v0 v1 (MAlonzo.Code.Algebra.d1488 v0 v2))
               (MAlonzo.Code.Algebra.d1488 v0 v3))
            (MAlonzo.Code.Algebra.d1484
               v0
               (MAlonzo.Code.Algebra.d1484
                  v0 (MAlonzo.Code.Algebra.d1488 v0 v1) v2)
               (MAlonzo.Code.Algebra.d1488 v0 v3)))
         (MAlonzo.Code.Algebra.d1484
            v0
            (MAlonzo.Code.Algebra.d1486
               v0
               (MAlonzo.Code.Algebra.d1484
                  v0 v1 (MAlonzo.Code.Algebra.d1488 v0 v2))
               (MAlonzo.Code.Algebra.d1484
                  v0 (MAlonzo.Code.Algebra.d1488 v0 v1) v2))
            (MAlonzo.Code.Algebra.d1488 v0 v3))
         (MAlonzo.Code.Algebra.d1488
            v0
            (MAlonzo.Code.Algebra.d1486
               v0
               (MAlonzo.Code.Algebra.d1486
                  v0 (MAlonzo.Code.Algebra.d1484 v0 v1 v2)
                  (MAlonzo.Code.Algebra.d1488
                     v0 (MAlonzo.Code.Algebra.d1486 v0 v1 v2)))
               v3))
         (MAlonzo.Code.Function.du158
            (MAlonzo.Code.Relation.Binary.Core.d518
               (MAlonzo.Code.Algebra.Structures.d2874
                  (MAlonzo.Code.Algebra.Structures.d3038
                     (MAlonzo.Code.Algebra.Structures.d3222
                        (MAlonzo.Code.Algebra.d1494 v0))))
               (MAlonzo.Code.Algebra.d1484
                  v0
                  (MAlonzo.Code.Algebra.d1486
                     v0
                     (MAlonzo.Code.Algebra.d1484
                        v0 v1 (MAlonzo.Code.Algebra.d1488 v0 v2))
                     (MAlonzo.Code.Algebra.d1484
                        v0 (MAlonzo.Code.Algebra.d1488 v0 v1) v2))
                  (MAlonzo.Code.Algebra.d1488 v0 v3))
               (MAlonzo.Code.Algebra.d1486
                  v0
                  (MAlonzo.Code.Algebra.d1484
                     v0
                     (MAlonzo.Code.Algebra.d1484
                        v0 v1 (MAlonzo.Code.Algebra.d1488 v0 v2))
                     (MAlonzo.Code.Algebra.d1488 v0 v3))
                  (MAlonzo.Code.Algebra.d1484
                     v0
                     (MAlonzo.Code.Algebra.d1484
                        v0 (MAlonzo.Code.Algebra.d1488 v0 v1) v2)
                     (MAlonzo.Code.Algebra.d1488 v0 v3))))
            (MAlonzo.Code.Data.Product.d28
               (MAlonzo.Code.Algebra.Properties.DistributiveLattice.du148
                  (MAlonzo.Code.Algebra.C687
                     (MAlonzo.Code.Algebra.d1484 v0) (MAlonzo.Code.Algebra.d1486 v0)
                     (MAlonzo.Code.Algebra.Structures.d3222
                        (MAlonzo.Code.Algebra.d1494 v0))))
               (MAlonzo.Code.Algebra.d1488 v0 v3)
               (MAlonzo.Code.Algebra.d1484
                  v0 v1 (MAlonzo.Code.Algebra.d1488 v0 v2))
               (MAlonzo.Code.Algebra.d1484
                  v0 (MAlonzo.Code.Algebra.d1488 v0 v1) v2)))
         (let v5
                = coe
                    MAlonzo.Code.Relation.Binary.C143
                    (coe
                       MAlonzo.Code.Algebra.Structures.d2874
                       (coe
                          MAlonzo.Code.Algebra.Structures.d3038
                          (coe
                             MAlonzo.Code.Algebra.Structures.d3222
                             (coe MAlonzo.Code.Algebra.d1494 v0)))) in
          MAlonzo.Code.Relation.Binary.PreorderReasoning.du72
            (MAlonzo.Code.Relation.Binary.du150 v5)
            (MAlonzo.Code.Algebra.d1484
               v0
               (MAlonzo.Code.Algebra.d1486
                  v0
                  (MAlonzo.Code.Algebra.d1484
                     v0 v1 (MAlonzo.Code.Algebra.d1488 v0 v2))
                  (MAlonzo.Code.Algebra.d1484
                     v0 (MAlonzo.Code.Algebra.d1488 v0 v1) v2))
               (MAlonzo.Code.Algebra.d1488 v0 v3))
            (MAlonzo.Code.Algebra.d1484
               v0
               (MAlonzo.Code.Algebra.d1488
                  v0
                  (MAlonzo.Code.Algebra.d1486
                     v0 (MAlonzo.Code.Algebra.d1484 v0 v1 v2)
                     (MAlonzo.Code.Algebra.d1488
                        v0 (MAlonzo.Code.Algebra.d1486 v0 v1 v2))))
               (MAlonzo.Code.Algebra.d1488 v0 v3))
            (MAlonzo.Code.Algebra.d1488
               v0
               (MAlonzo.Code.Algebra.d1486
                  v0
                  (MAlonzo.Code.Algebra.d1486
                     v0 (MAlonzo.Code.Algebra.d1484 v0 v1 v2)
                     (MAlonzo.Code.Algebra.d1488
                        v0 (MAlonzo.Code.Algebra.d1486 v0 v1 v2)))
                  v3))
            (MAlonzo.Code.Function.du176
               (du526 v0 v1 v2)
               (MAlonzo.Code.Algebra.Structures.d2880
                  (MAlonzo.Code.Algebra.Structures.d3038
                     (MAlonzo.Code.Algebra.Structures.d3222
                        (MAlonzo.Code.Algebra.d1494 v0)))
                  (MAlonzo.Code.Algebra.d1486
                     v0
                     (MAlonzo.Code.Algebra.d1484
                        v0 v1 (MAlonzo.Code.Algebra.d1488 v0 v2))
                     (MAlonzo.Code.Algebra.d1484
                        v0 (MAlonzo.Code.Algebra.d1488 v0 v1) v2))
                  (MAlonzo.Code.Algebra.d1488
                     v0
                     (MAlonzo.Code.Algebra.d1486
                        v0 (MAlonzo.Code.Algebra.d1484 v0 v1 v2)
                        (MAlonzo.Code.Algebra.d1488
                           v0 (MAlonzo.Code.Algebra.d1486 v0 v1 v2))))
                  (MAlonzo.Code.Algebra.d1488 v0 v3)
                  (MAlonzo.Code.Algebra.d1488 v0 v3))
               (MAlonzo.Code.Relation.Binary.Core.d516
                  (MAlonzo.Code.Algebra.Structures.d2874
                     (MAlonzo.Code.Algebra.Structures.d3038
                        (MAlonzo.Code.Algebra.Structures.d3222
                           (MAlonzo.Code.Algebra.d1494 v0))))
                  (MAlonzo.Code.Algebra.d1488 v0 v3)))
            (let v6
                   = coe
                       MAlonzo.Code.Relation.Binary.C143
                       (coe
                          MAlonzo.Code.Algebra.Structures.d2874
                          (coe
                             MAlonzo.Code.Algebra.Structures.d3038
                             (coe
                                MAlonzo.Code.Algebra.Structures.d3222
                                (coe MAlonzo.Code.Algebra.d1494 v0)))) in
             MAlonzo.Code.Relation.Binary.PreorderReasoning.du72
               (MAlonzo.Code.Relation.Binary.du150 v6)
               (MAlonzo.Code.Algebra.d1484
                  v0
                  (MAlonzo.Code.Algebra.d1488
                     v0
                     (MAlonzo.Code.Algebra.d1486
                        v0 (MAlonzo.Code.Algebra.d1484 v0 v1 v2)
                        (MAlonzo.Code.Algebra.d1488
                           v0 (MAlonzo.Code.Algebra.d1486 v0 v1 v2))))
                  (MAlonzo.Code.Algebra.d1488 v0 v3))
               (MAlonzo.Code.Algebra.d1488
                  v0
                  (MAlonzo.Code.Algebra.d1486
                     v0
                     (MAlonzo.Code.Algebra.d1486
                        v0 (MAlonzo.Code.Algebra.d1484 v0 v1 v2)
                        (MAlonzo.Code.Algebra.d1488
                           v0 (MAlonzo.Code.Algebra.d1486 v0 v1 v2)))
                     v3))
               (MAlonzo.Code.Algebra.d1488
                  v0
                  (MAlonzo.Code.Algebra.d1486
                     v0
                     (MAlonzo.Code.Algebra.d1486
                        v0 (MAlonzo.Code.Algebra.d1484 v0 v1 v2)
                        (MAlonzo.Code.Algebra.d1488
                           v0 (MAlonzo.Code.Algebra.d1486 v0 v1 v2)))
                     v3))
               (MAlonzo.Code.Function.du158
                  (MAlonzo.Code.Relation.Binary.Core.d518
                     (MAlonzo.Code.Algebra.Structures.d2874
                        (MAlonzo.Code.Algebra.Structures.d3038
                           (MAlonzo.Code.Algebra.Structures.d3222
                              (MAlonzo.Code.Algebra.d1494 v0))))
                     (MAlonzo.Code.Algebra.d1488
                        v0
                        (MAlonzo.Code.Algebra.d1486
                           v0
                           (MAlonzo.Code.Algebra.d1486
                              v0 (MAlonzo.Code.Algebra.d1484 v0 v1 v2)
                              (MAlonzo.Code.Algebra.d1488
                                 v0 (MAlonzo.Code.Algebra.d1486 v0 v1 v2)))
                           v3))
                     (MAlonzo.Code.Algebra.d1484
                        v0
                        (MAlonzo.Code.Algebra.d1488
                           v0
                           (MAlonzo.Code.Algebra.d1486
                              v0 (MAlonzo.Code.Algebra.d1484 v0 v1 v2)
                              (MAlonzo.Code.Algebra.d1488
                                 v0 (MAlonzo.Code.Algebra.d1486 v0 v1 v2))))
                        (MAlonzo.Code.Algebra.d1488 v0 v3)))
                  (du286
                     v0
                     (MAlonzo.Code.Algebra.d1486
                        v0 (MAlonzo.Code.Algebra.d1484 v0 v1 v2)
                        (MAlonzo.Code.Algebra.d1488
                           v0 (MAlonzo.Code.Algebra.d1486 v0 v1 v2)))
                     v3))
               (let v7
                      = coe
                          MAlonzo.Code.Relation.Binary.C143
                          (coe
                             MAlonzo.Code.Algebra.Structures.d2874
                             (coe
                                MAlonzo.Code.Algebra.Structures.d3038
                                (coe
                                   MAlonzo.Code.Algebra.Structures.d3222
                                   (coe MAlonzo.Code.Algebra.d1494 v0)))) in
                let v8
                      = coe
                          MAlonzo.Code.Algebra.d1488 v0
                          (coe
                             MAlonzo.Code.Algebra.d1486 v0
                             (coe
                                MAlonzo.Code.Algebra.d1486 v0
                                (coe MAlonzo.Code.Algebra.d1484 v0 v1 v2)
                                (coe
                                   MAlonzo.Code.Algebra.d1488 v0
                                   (coe MAlonzo.Code.Algebra.d1486 v0 v1 v2)))
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
                        v8))))))
name530 = "Algebra.Properties.BooleanAlgebra.XorRing._.lem\8323"
d530 v0 v1 v2 v3 v4 v5 v6 v7 = du530 v2 v5 v6 v7
du530 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Relation.Binary.PreorderReasoning.d62
      (let v4
             = coe
                 MAlonzo.Code.Relation.Binary.C143
                 (coe
                    MAlonzo.Code.Algebra.Structures.d2874
                    (coe
                       MAlonzo.Code.Algebra.Structures.d3038
                       (coe
                          MAlonzo.Code.Algebra.Structures.d3222
                          (coe MAlonzo.Code.Algebra.d1494 v0)))) in
       MAlonzo.Code.Relation.Binary.PreorderReasoning.du72
         (MAlonzo.Code.Relation.Binary.du150 v4)
         (MAlonzo.Code.Algebra.d1484
            v0 v1
            (MAlonzo.Code.Algebra.d1486
               v0 (MAlonzo.Code.Algebra.d1484 v0 v2 v3)
               (MAlonzo.Code.Algebra.d1488
                  v0 (MAlonzo.Code.Algebra.d1486 v0 v2 v3))))
         (MAlonzo.Code.Algebra.d1484
            v0 v1
            (MAlonzo.Code.Algebra.d1486
               v0 (MAlonzo.Code.Algebra.d1484 v0 v2 v3)
               (MAlonzo.Code.Algebra.d1484
                  v0 (MAlonzo.Code.Algebra.d1488 v0 v2)
                  (MAlonzo.Code.Algebra.d1488 v0 v3))))
         (MAlonzo.Code.Algebra.d1486
            v0
            (MAlonzo.Code.Algebra.d1484
               v0 (MAlonzo.Code.Algebra.d1484 v0 v1 v2) v3)
            (MAlonzo.Code.Algebra.d1484
               v0
               (MAlonzo.Code.Algebra.d1484
                  v0 v1 (MAlonzo.Code.Algebra.d1488 v0 v2))
               (MAlonzo.Code.Algebra.d1488 v0 v3)))
         (MAlonzo.Code.Function.du176
            (MAlonzo.Code.Relation.Binary.Core.d516
               (MAlonzo.Code.Algebra.Structures.d2874
                  (MAlonzo.Code.Algebra.Structures.d3038
                     (MAlonzo.Code.Algebra.Structures.d3222
                        (MAlonzo.Code.Algebra.d1494 v0))))
               v1)
            (MAlonzo.Code.Algebra.Structures.d2880
               (MAlonzo.Code.Algebra.Structures.d3038
                  (MAlonzo.Code.Algebra.Structures.d3222
                     (MAlonzo.Code.Algebra.d1494 v0)))
               v1 v1
               (MAlonzo.Code.Algebra.d1486
                  v0 (MAlonzo.Code.Algebra.d1484 v0 v2 v3)
                  (MAlonzo.Code.Algebra.d1488
                     v0 (MAlonzo.Code.Algebra.d1486 v0 v2 v3)))
               (MAlonzo.Code.Algebra.d1486
                  v0 (MAlonzo.Code.Algebra.d1484 v0 v2 v3)
                  (MAlonzo.Code.Algebra.d1484
                     v0 (MAlonzo.Code.Algebra.d1488 v0 v2)
                     (MAlonzo.Code.Algebra.d1488 v0 v3))))
            (MAlonzo.Code.Function.du176
               (MAlonzo.Code.Relation.Binary.Core.d516
                  (MAlonzo.Code.Algebra.Structures.d2874
                     (MAlonzo.Code.Algebra.Structures.d3038
                        (MAlonzo.Code.Algebra.Structures.d3222
                           (MAlonzo.Code.Algebra.d1494 v0))))
                  (MAlonzo.Code.Algebra.d1484 v0 v2 v3))
               (MAlonzo.Code.Algebra.Structures.d2886
                  (MAlonzo.Code.Algebra.Structures.d3038
                     (MAlonzo.Code.Algebra.Structures.d3222
                        (MAlonzo.Code.Algebra.d1494 v0)))
                  (MAlonzo.Code.Algebra.d1484 v0 v2 v3)
                  (MAlonzo.Code.Algebra.d1484 v0 v2 v3)
                  (MAlonzo.Code.Algebra.d1488
                     v0 (MAlonzo.Code.Algebra.d1486 v0 v2 v3))
                  (MAlonzo.Code.Algebra.d1484
                     v0 (MAlonzo.Code.Algebra.d1488 v0 v2)
                     (MAlonzo.Code.Algebra.d1488 v0 v3)))
               (du286 v0 v2 v3)))
         (let v5
                = coe
                    MAlonzo.Code.Relation.Binary.C143
                    (coe
                       MAlonzo.Code.Algebra.Structures.d2874
                       (coe
                          MAlonzo.Code.Algebra.Structures.d3038
                          (coe
                             MAlonzo.Code.Algebra.Structures.d3222
                             (coe MAlonzo.Code.Algebra.d1494 v0)))) in
          MAlonzo.Code.Relation.Binary.PreorderReasoning.du72
            (MAlonzo.Code.Relation.Binary.du150 v5)
            (MAlonzo.Code.Algebra.d1484
               v0 v1
               (MAlonzo.Code.Algebra.d1486
                  v0 (MAlonzo.Code.Algebra.d1484 v0 v2 v3)
                  (MAlonzo.Code.Algebra.d1484
                     v0 (MAlonzo.Code.Algebra.d1488 v0 v2)
                     (MAlonzo.Code.Algebra.d1488 v0 v3))))
            (MAlonzo.Code.Algebra.d1486
               v0
               (MAlonzo.Code.Algebra.d1484
                  v0 v1 (MAlonzo.Code.Algebra.d1484 v0 v2 v3))
               (MAlonzo.Code.Algebra.d1484
                  v0 v1
                  (MAlonzo.Code.Algebra.d1484
                     v0 (MAlonzo.Code.Algebra.d1488 v0 v2)
                     (MAlonzo.Code.Algebra.d1488 v0 v3))))
            (MAlonzo.Code.Algebra.d1486
               v0
               (MAlonzo.Code.Algebra.d1484
                  v0 (MAlonzo.Code.Algebra.d1484 v0 v1 v2) v3)
               (MAlonzo.Code.Algebra.d1484
                  v0
                  (MAlonzo.Code.Algebra.d1484
                     v0 v1 (MAlonzo.Code.Algebra.d1488 v0 v2))
                  (MAlonzo.Code.Algebra.d1488 v0 v3)))
            (MAlonzo.Code.Data.Product.d26
               (MAlonzo.Code.Algebra.Properties.DistributiveLattice.du148
                  (MAlonzo.Code.Algebra.C687
                     (MAlonzo.Code.Algebra.d1484 v0) (MAlonzo.Code.Algebra.d1486 v0)
                     (MAlonzo.Code.Algebra.Structures.d3222
                        (MAlonzo.Code.Algebra.d1494 v0))))
               v1 (MAlonzo.Code.Algebra.d1484 v0 v2 v3)
               (MAlonzo.Code.Algebra.d1484
                  v0 (MAlonzo.Code.Algebra.d1488 v0 v2)
                  (MAlonzo.Code.Algebra.d1488 v0 v3)))
            (let v6
                   = coe
                       MAlonzo.Code.Relation.Binary.C143
                       (coe
                          MAlonzo.Code.Algebra.Structures.d2874
                          (coe
                             MAlonzo.Code.Algebra.Structures.d3038
                             (coe
                                MAlonzo.Code.Algebra.Structures.d3222
                                (coe MAlonzo.Code.Algebra.d1494 v0)))) in
             MAlonzo.Code.Relation.Binary.PreorderReasoning.du72
               (MAlonzo.Code.Relation.Binary.du150 v6)
               (MAlonzo.Code.Algebra.d1486
                  v0
                  (MAlonzo.Code.Algebra.d1484
                     v0 v1 (MAlonzo.Code.Algebra.d1484 v0 v2 v3))
                  (MAlonzo.Code.Algebra.d1484
                     v0 v1
                     (MAlonzo.Code.Algebra.d1484
                        v0 (MAlonzo.Code.Algebra.d1488 v0 v2)
                        (MAlonzo.Code.Algebra.d1488 v0 v3))))
               (MAlonzo.Code.Algebra.d1486
                  v0
                  (MAlonzo.Code.Algebra.d1484
                     v0 (MAlonzo.Code.Algebra.d1484 v0 v1 v2) v3)
                  (MAlonzo.Code.Algebra.d1484
                     v0
                     (MAlonzo.Code.Algebra.d1484
                        v0 v1 (MAlonzo.Code.Algebra.d1488 v0 v2))
                     (MAlonzo.Code.Algebra.d1488 v0 v3)))
               (MAlonzo.Code.Algebra.d1486
                  v0
                  (MAlonzo.Code.Algebra.d1484
                     v0 (MAlonzo.Code.Algebra.d1484 v0 v1 v2) v3)
                  (MAlonzo.Code.Algebra.d1484
                     v0
                     (MAlonzo.Code.Algebra.d1484
                        v0 v1 (MAlonzo.Code.Algebra.d1488 v0 v2))
                     (MAlonzo.Code.Algebra.d1488 v0 v3)))
               (MAlonzo.Code.Function.du176
                  (MAlonzo.Code.Relation.Binary.Core.d518
                     (MAlonzo.Code.Algebra.Structures.d2874
                        (MAlonzo.Code.Algebra.Structures.d3038
                           (MAlonzo.Code.Algebra.Structures.d3222
                              (MAlonzo.Code.Algebra.d1494 v0))))
                     (MAlonzo.Code.Algebra.d1484
                        v0 (MAlonzo.Code.Algebra.d1484 v0 v1 v2) v3)
                     (MAlonzo.Code.Algebra.d1484
                        v0 v1 (MAlonzo.Code.Algebra.d1484 v0 v2 v3))
                     (MAlonzo.Code.Algebra.Structures.d2878
                        (MAlonzo.Code.Algebra.Structures.d3038
                           (MAlonzo.Code.Algebra.Structures.d3222
                              (MAlonzo.Code.Algebra.d1494 v0)))
                        v1 v2 v3))
                  (MAlonzo.Code.Algebra.Structures.d2886
                     (MAlonzo.Code.Algebra.Structures.d3038
                        (MAlonzo.Code.Algebra.Structures.d3222
                           (MAlonzo.Code.Algebra.d1494 v0)))
                     (MAlonzo.Code.Algebra.d1484
                        v0 v1 (MAlonzo.Code.Algebra.d1484 v0 v2 v3))
                     (MAlonzo.Code.Algebra.d1484
                        v0 (MAlonzo.Code.Algebra.d1484 v0 v1 v2) v3)
                     (MAlonzo.Code.Algebra.d1484
                        v0 v1
                        (MAlonzo.Code.Algebra.d1484
                           v0 (MAlonzo.Code.Algebra.d1488 v0 v2)
                           (MAlonzo.Code.Algebra.d1488 v0 v3)))
                     (MAlonzo.Code.Algebra.d1484
                        v0
                        (MAlonzo.Code.Algebra.d1484
                           v0 v1 (MAlonzo.Code.Algebra.d1488 v0 v2))
                        (MAlonzo.Code.Algebra.d1488 v0 v3)))
                  (MAlonzo.Code.Relation.Binary.Core.d518
                     (MAlonzo.Code.Algebra.Structures.d2874
                        (MAlonzo.Code.Algebra.Structures.d3038
                           (MAlonzo.Code.Algebra.Structures.d3222
                              (MAlonzo.Code.Algebra.d1494 v0))))
                     (MAlonzo.Code.Algebra.d1484
                        v0
                        (MAlonzo.Code.Algebra.d1484
                           v0 v1 (MAlonzo.Code.Algebra.d1488 v0 v2))
                        (MAlonzo.Code.Algebra.d1488 v0 v3))
                     (MAlonzo.Code.Algebra.d1484
                        v0 v1
                        (MAlonzo.Code.Algebra.d1484
                           v0 (MAlonzo.Code.Algebra.d1488 v0 v2)
                           (MAlonzo.Code.Algebra.d1488 v0 v3)))
                     (MAlonzo.Code.Algebra.Structures.d2878
                        (MAlonzo.Code.Algebra.Structures.d3038
                           (MAlonzo.Code.Algebra.Structures.d3222
                              (MAlonzo.Code.Algebra.d1494 v0)))
                        v1 (MAlonzo.Code.Algebra.d1488 v0 v2)
                        (MAlonzo.Code.Algebra.d1488 v0 v3))))
               (let v7
                      = coe
                          MAlonzo.Code.Relation.Binary.C143
                          (coe
                             MAlonzo.Code.Algebra.Structures.d2874
                             (coe
                                MAlonzo.Code.Algebra.Structures.d3038
                                (coe
                                   MAlonzo.Code.Algebra.Structures.d3222
                                   (coe MAlonzo.Code.Algebra.d1494 v0)))) in
                let v8
                      = coe
                          MAlonzo.Code.Algebra.d1486 v0
                          (coe
                             MAlonzo.Code.Algebra.d1484 v0
                             (coe MAlonzo.Code.Algebra.d1484 v0 v1 v2) v3)
                          (coe
                             MAlonzo.Code.Algebra.d1484 v0
                             (coe
                                MAlonzo.Code.Algebra.d1484 v0 v1
                                (coe MAlonzo.Code.Algebra.d1488 v0 v2))
                             (coe MAlonzo.Code.Algebra.d1488 v0 v3)) in
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
name532 = "Algebra.Properties.BooleanAlgebra.XorRing._.lem\8324'"
d532 v0 v1 v2 v3 v4 v5 v6 v7 = du532 v2 v6 v7
du532 v0 v1 v2
  = coe
      MAlonzo.Code.Relation.Binary.PreorderReasoning.d62
      (let v3
             = coe
                 MAlonzo.Code.Relation.Binary.C143
                 (coe
                    MAlonzo.Code.Algebra.Structures.d2874
                    (coe
                       MAlonzo.Code.Algebra.Structures.d3038
                       (coe
                          MAlonzo.Code.Algebra.Structures.d3222
                          (coe MAlonzo.Code.Algebra.d1494 v0)))) in
       MAlonzo.Code.Relation.Binary.PreorderReasoning.du72
         (MAlonzo.Code.Relation.Binary.du150 v3)
         (MAlonzo.Code.Algebra.d1488
            v0
            (MAlonzo.Code.Algebra.d1486
               v0 (MAlonzo.Code.Algebra.d1484 v0 v1 v2)
               (MAlonzo.Code.Algebra.d1488
                  v0 (MAlonzo.Code.Algebra.d1486 v0 v1 v2))))
         (MAlonzo.Code.Algebra.d1484
            v0
            (MAlonzo.Code.Algebra.d1488
               v0 (MAlonzo.Code.Algebra.d1484 v0 v1 v2))
            (MAlonzo.Code.Algebra.d1488
               v0
               (MAlonzo.Code.Algebra.d1488
                  v0 (MAlonzo.Code.Algebra.d1486 v0 v1 v2))))
         (MAlonzo.Code.Algebra.d1486
            v0
            (MAlonzo.Code.Algebra.d1484
               v0 v1 (MAlonzo.Code.Algebra.d1488 v0 v2))
            (MAlonzo.Code.Algebra.d1484
               v0 (MAlonzo.Code.Algebra.d1488 v0 v1) v2))
         (du286
            v0 (MAlonzo.Code.Algebra.d1484 v0 v1 v2)
            (MAlonzo.Code.Algebra.d1488
               v0 (MAlonzo.Code.Algebra.d1486 v0 v1 v2)))
         (let v4
                = coe
                    MAlonzo.Code.Relation.Binary.C143
                    (coe
                       MAlonzo.Code.Algebra.Structures.d2874
                       (coe
                          MAlonzo.Code.Algebra.Structures.d3038
                          (coe
                             MAlonzo.Code.Algebra.Structures.d3222
                             (coe MAlonzo.Code.Algebra.d1494 v0)))) in
          MAlonzo.Code.Relation.Binary.PreorderReasoning.du72
            (MAlonzo.Code.Relation.Binary.du150 v4)
            (MAlonzo.Code.Algebra.d1484
               v0
               (MAlonzo.Code.Algebra.d1488
                  v0 (MAlonzo.Code.Algebra.d1484 v0 v1 v2))
               (MAlonzo.Code.Algebra.d1488
                  v0
                  (MAlonzo.Code.Algebra.d1488
                     v0 (MAlonzo.Code.Algebra.d1486 v0 v1 v2))))
            (MAlonzo.Code.Algebra.d1484
               v0
               (MAlonzo.Code.Algebra.d1486
                  v0 (MAlonzo.Code.Algebra.d1488 v0 v1)
                  (MAlonzo.Code.Algebra.d1488 v0 v2))
               (MAlonzo.Code.Algebra.d1486 v0 v1 v2))
            (MAlonzo.Code.Algebra.d1486
               v0
               (MAlonzo.Code.Algebra.d1484
                  v0 v1 (MAlonzo.Code.Algebra.d1488 v0 v2))
               (MAlonzo.Code.Algebra.d1484
                  v0 (MAlonzo.Code.Algebra.d1488 v0 v1) v2))
            (MAlonzo.Code.Function.du176
               (du306 v0 v1 v2)
               (MAlonzo.Code.Algebra.Structures.d2880
                  (MAlonzo.Code.Algebra.Structures.d3038
                     (MAlonzo.Code.Algebra.Structures.d3222
                        (MAlonzo.Code.Algebra.d1494 v0)))
                  (MAlonzo.Code.Algebra.d1488
                     v0 (MAlonzo.Code.Algebra.d1484 v0 v1 v2))
                  (MAlonzo.Code.Algebra.d1486
                     v0 (MAlonzo.Code.Algebra.d1488 v0 v1)
                     (MAlonzo.Code.Algebra.d1488 v0 v2))
                  (MAlonzo.Code.Algebra.d1488
                     v0
                     (MAlonzo.Code.Algebra.d1488
                        v0 (MAlonzo.Code.Algebra.d1486 v0 v1 v2)))
                  (MAlonzo.Code.Algebra.d1486 v0 v1 v2))
               (du278 v0 (MAlonzo.Code.Algebra.d1486 v0 v1 v2)))
            (let v5
                   = coe
                       MAlonzo.Code.Relation.Binary.C143
                       (coe
                          MAlonzo.Code.Algebra.Structures.d2874
                          (coe
                             MAlonzo.Code.Algebra.Structures.d3038
                             (coe
                                MAlonzo.Code.Algebra.Structures.d3222
                                (coe MAlonzo.Code.Algebra.d1494 v0)))) in
             MAlonzo.Code.Relation.Binary.PreorderReasoning.du72
               (MAlonzo.Code.Relation.Binary.du150 v5)
               (MAlonzo.Code.Algebra.d1484
                  v0
                  (MAlonzo.Code.Algebra.d1486
                     v0 (MAlonzo.Code.Algebra.d1488 v0 v1)
                     (MAlonzo.Code.Algebra.d1488 v0 v2))
                  (MAlonzo.Code.Algebra.d1486 v0 v1 v2))
               (MAlonzo.Code.Algebra.d1486
                  v0
                  (MAlonzo.Code.Algebra.d1486
                     v0
                     (MAlonzo.Code.Algebra.d1484
                        v0 (MAlonzo.Code.Algebra.d1488 v0 v1) v1)
                     (MAlonzo.Code.Algebra.d1484
                        v0 (MAlonzo.Code.Algebra.d1488 v0 v2) v1))
                  (MAlonzo.Code.Algebra.d1486
                     v0
                     (MAlonzo.Code.Algebra.d1484
                        v0 (MAlonzo.Code.Algebra.d1488 v0 v1) v2)
                     (MAlonzo.Code.Algebra.d1484
                        v0 (MAlonzo.Code.Algebra.d1488 v0 v2) v2)))
               (MAlonzo.Code.Algebra.d1486
                  v0
                  (MAlonzo.Code.Algebra.d1484
                     v0 v1 (MAlonzo.Code.Algebra.d1488 v0 v2))
                  (MAlonzo.Code.Algebra.d1484
                     v0 (MAlonzo.Code.Algebra.d1488 v0 v1) v2))
               (du502
                  v0 (MAlonzo.Code.Algebra.d1488 v0 v1)
                  (MAlonzo.Code.Algebra.d1488 v0 v2) v1 v2)
               (let v6
                      = coe
                          MAlonzo.Code.Relation.Binary.C143
                          (coe
                             MAlonzo.Code.Algebra.Structures.d2874
                             (coe
                                MAlonzo.Code.Algebra.Structures.d3038
                                (coe
                                   MAlonzo.Code.Algebra.Structures.d3222
                                   (coe MAlonzo.Code.Algebra.d1494 v0)))) in
                MAlonzo.Code.Relation.Binary.PreorderReasoning.du72
                  (MAlonzo.Code.Relation.Binary.du150 v6)
                  (MAlonzo.Code.Algebra.d1486
                     v0
                     (MAlonzo.Code.Algebra.d1486
                        v0
                        (MAlonzo.Code.Algebra.d1484
                           v0 (MAlonzo.Code.Algebra.d1488 v0 v1) v1)
                        (MAlonzo.Code.Algebra.d1484
                           v0 (MAlonzo.Code.Algebra.d1488 v0 v2) v1))
                     (MAlonzo.Code.Algebra.d1486
                        v0
                        (MAlonzo.Code.Algebra.d1484
                           v0 (MAlonzo.Code.Algebra.d1488 v0 v1) v2)
                        (MAlonzo.Code.Algebra.d1484
                           v0 (MAlonzo.Code.Algebra.d1488 v0 v2) v2)))
                  (MAlonzo.Code.Algebra.d1486
                     v0
                     (MAlonzo.Code.Algebra.d1486
                        v0 (MAlonzo.Code.Algebra.d1490 v0)
                        (MAlonzo.Code.Algebra.d1484
                           v0 v1 (MAlonzo.Code.Algebra.d1488 v0 v2)))
                     (MAlonzo.Code.Algebra.d1486
                        v0
                        (MAlonzo.Code.Algebra.d1484
                           v0 (MAlonzo.Code.Algebra.d1488 v0 v1) v2)
                        (MAlonzo.Code.Algebra.d1490 v0)))
                  (MAlonzo.Code.Algebra.d1486
                     v0
                     (MAlonzo.Code.Algebra.d1484
                        v0 v1 (MAlonzo.Code.Algebra.d1488 v0 v2))
                     (MAlonzo.Code.Algebra.d1484
                        v0 (MAlonzo.Code.Algebra.d1488 v0 v1) v2))
                  (MAlonzo.Code.Function.du176
                     (MAlonzo.Code.Function.du176
                        (MAlonzo.Code.Data.Product.d26 (du172 v0) v1)
                        (MAlonzo.Code.Algebra.Structures.d2886
                           (MAlonzo.Code.Algebra.Structures.d3038
                              (MAlonzo.Code.Algebra.Structures.d3222
                                 (MAlonzo.Code.Algebra.d1494 v0)))
                           (MAlonzo.Code.Algebra.d1484
                              v0 (MAlonzo.Code.Algebra.d1488 v0 v1) v1)
                           (MAlonzo.Code.Algebra.d1490 v0)
                           (MAlonzo.Code.Algebra.d1484
                              v0 (MAlonzo.Code.Algebra.d1488 v0 v2) v1)
                           (MAlonzo.Code.Algebra.d1484
                              v0 v1 (MAlonzo.Code.Algebra.d1488 v0 v2)))
                        (MAlonzo.Code.Algebra.Structures.d2876
                           (MAlonzo.Code.Algebra.Structures.d3038
                              (MAlonzo.Code.Algebra.Structures.d3222
                                 (MAlonzo.Code.Algebra.d1494 v0)))
                           (MAlonzo.Code.Algebra.d1488 v0 v2) v1))
                     (MAlonzo.Code.Algebra.Structures.d2886
                        (MAlonzo.Code.Algebra.Structures.d3038
                           (MAlonzo.Code.Algebra.Structures.d3222
                              (MAlonzo.Code.Algebra.d1494 v0)))
                        (MAlonzo.Code.Algebra.d1486
                           v0
                           (MAlonzo.Code.Algebra.d1484
                              v0 (MAlonzo.Code.Algebra.d1488 v0 v1) v1)
                           (MAlonzo.Code.Algebra.d1484
                              v0 (MAlonzo.Code.Algebra.d1488 v0 v2) v1))
                        (MAlonzo.Code.Algebra.d1486
                           v0 (MAlonzo.Code.Algebra.d1490 v0)
                           (MAlonzo.Code.Algebra.d1484
                              v0 v1 (MAlonzo.Code.Algebra.d1488 v0 v2)))
                        (MAlonzo.Code.Algebra.d1486
                           v0
                           (MAlonzo.Code.Algebra.d1484
                              v0 (MAlonzo.Code.Algebra.d1488 v0 v1) v2)
                           (MAlonzo.Code.Algebra.d1484
                              v0 (MAlonzo.Code.Algebra.d1488 v0 v2) v2))
                        (MAlonzo.Code.Algebra.d1486
                           v0
                           (MAlonzo.Code.Algebra.d1484
                              v0 (MAlonzo.Code.Algebra.d1488 v0 v1) v2)
                           (MAlonzo.Code.Algebra.d1490 v0)))
                     (MAlonzo.Code.Function.du176
                        (MAlonzo.Code.Relation.Binary.Core.d516
                           (MAlonzo.Code.Algebra.Structures.d2874
                              (MAlonzo.Code.Algebra.Structures.d3038
                                 (MAlonzo.Code.Algebra.Structures.d3222
                                    (MAlonzo.Code.Algebra.d1494 v0))))
                           (MAlonzo.Code.Algebra.d1484
                              v0 (MAlonzo.Code.Algebra.d1488 v0 v1) v2))
                        (MAlonzo.Code.Algebra.Structures.d2886
                           (MAlonzo.Code.Algebra.Structures.d3038
                              (MAlonzo.Code.Algebra.Structures.d3222
                                 (MAlonzo.Code.Algebra.d1494 v0)))
                           (MAlonzo.Code.Algebra.d1484
                              v0 (MAlonzo.Code.Algebra.d1488 v0 v1) v2)
                           (MAlonzo.Code.Algebra.d1484
                              v0 (MAlonzo.Code.Algebra.d1488 v0 v1) v2)
                           (MAlonzo.Code.Algebra.d1484
                              v0 (MAlonzo.Code.Algebra.d1488 v0 v2) v2)
                           (MAlonzo.Code.Algebra.d1490 v0))
                        (MAlonzo.Code.Data.Product.d26 (du172 v0) v2)))
                  (let v7
                         = coe
                             MAlonzo.Code.Relation.Binary.C143
                             (coe
                                MAlonzo.Code.Algebra.Structures.d2874
                                (coe
                                   MAlonzo.Code.Algebra.Structures.d3038
                                   (coe
                                      MAlonzo.Code.Algebra.Structures.d3222
                                      (coe MAlonzo.Code.Algebra.d1494 v0)))) in
                   MAlonzo.Code.Relation.Binary.PreorderReasoning.du72
                     (MAlonzo.Code.Relation.Binary.du150 v7)
                     (MAlonzo.Code.Algebra.d1486
                        v0
                        (MAlonzo.Code.Algebra.d1486
                           v0 (MAlonzo.Code.Algebra.d1490 v0)
                           (MAlonzo.Code.Algebra.d1484
                              v0 v1 (MAlonzo.Code.Algebra.d1488 v0 v2)))
                        (MAlonzo.Code.Algebra.d1486
                           v0
                           (MAlonzo.Code.Algebra.d1484
                              v0 (MAlonzo.Code.Algebra.d1488 v0 v1) v2)
                           (MAlonzo.Code.Algebra.d1490 v0)))
                     (MAlonzo.Code.Algebra.d1486
                        v0
                        (MAlonzo.Code.Algebra.d1484
                           v0 v1 (MAlonzo.Code.Algebra.d1488 v0 v2))
                        (MAlonzo.Code.Algebra.d1484
                           v0 (MAlonzo.Code.Algebra.d1488 v0 v1) v2))
                     (MAlonzo.Code.Algebra.d1486
                        v0
                        (MAlonzo.Code.Algebra.d1484
                           v0 v1 (MAlonzo.Code.Algebra.d1488 v0 v2))
                        (MAlonzo.Code.Algebra.d1484
                           v0 (MAlonzo.Code.Algebra.d1488 v0 v1) v2))
                     (MAlonzo.Code.Function.du176
                        (MAlonzo.Code.Data.Product.d26
                           (du196 v0)
                           (MAlonzo.Code.Algebra.d1484
                              v0 v1 (MAlonzo.Code.Algebra.d1488 v0 v2)))
                        (MAlonzo.Code.Algebra.Structures.d2886
                           (MAlonzo.Code.Algebra.Structures.d3038
                              (MAlonzo.Code.Algebra.Structures.d3222
                                 (MAlonzo.Code.Algebra.d1494 v0)))
                           (MAlonzo.Code.Algebra.d1486
                              v0 (MAlonzo.Code.Algebra.d1490 v0)
                              (MAlonzo.Code.Algebra.d1484
                                 v0 v1 (MAlonzo.Code.Algebra.d1488 v0 v2)))
                           (MAlonzo.Code.Algebra.d1484
                              v0 v1 (MAlonzo.Code.Algebra.d1488 v0 v2))
                           (MAlonzo.Code.Algebra.d1486
                              v0
                              (MAlonzo.Code.Algebra.d1484
                                 v0 (MAlonzo.Code.Algebra.d1488 v0 v1) v2)
                              (MAlonzo.Code.Algebra.d1490 v0))
                           (MAlonzo.Code.Algebra.d1484
                              v0 (MAlonzo.Code.Algebra.d1488 v0 v1) v2))
                        (MAlonzo.Code.Data.Product.d28
                           (du196 v0)
                           (MAlonzo.Code.Algebra.d1484
                              v0 (MAlonzo.Code.Algebra.d1488 v0 v1) v2)))
                     (let v8
                            = coe
                                MAlonzo.Code.Relation.Binary.C143
                                (coe
                                   MAlonzo.Code.Algebra.Structures.d2874
                                   (coe
                                      MAlonzo.Code.Algebra.Structures.d3038
                                      (coe
                                         MAlonzo.Code.Algebra.Structures.d3222
                                         (coe MAlonzo.Code.Algebra.d1494 v0)))) in
                      let v9
                            = coe
                                MAlonzo.Code.Algebra.d1486 v0
                                (coe
                                   MAlonzo.Code.Algebra.d1484 v0 v1
                                   (coe MAlonzo.Code.Algebra.d1488 v0 v2))
                                (coe
                                   MAlonzo.Code.Algebra.d1484 v0
                                   (coe MAlonzo.Code.Algebra.d1488 v0 v1) v2) in
                      MAlonzo.Code.Relation.Binary.PreorderReasoning.C56
                        (MAlonzo.Code.Relation.Binary.d38
                           (MAlonzo.Code.Relation.Binary.d92
                              (MAlonzo.Code.Relation.Binary.du150 v8))
                           v9 v9
                           (MAlonzo.Code.Relation.Binary.Core.d516
                              (MAlonzo.Code.Relation.Binary.d36
                                 (MAlonzo.Code.Relation.Binary.d92
                                    (MAlonzo.Code.Relation.Binary.du150 v8)))
                              v9))))))))
name534 = "Algebra.Properties.BooleanAlgebra.XorRing._.lem\8324"
d534 v0 v1 v2 v3 v4 v5 v6 v7 = du534 v2 v5 v6 v7
du534 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Relation.Binary.PreorderReasoning.d62
      (let v4
             = coe
                 MAlonzo.Code.Relation.Binary.C143
                 (coe
                    MAlonzo.Code.Algebra.Structures.d2874
                    (coe
                       MAlonzo.Code.Algebra.Structures.d3038
                       (coe
                          MAlonzo.Code.Algebra.Structures.d3222
                          (coe MAlonzo.Code.Algebra.d1494 v0)))) in
       MAlonzo.Code.Relation.Binary.PreorderReasoning.du72
         (MAlonzo.Code.Relation.Binary.du150 v4)
         (MAlonzo.Code.Algebra.d1488
            v0
            (MAlonzo.Code.Algebra.d1486
               v0 v1
               (MAlonzo.Code.Algebra.d1486
                  v0 (MAlonzo.Code.Algebra.d1484 v0 v2 v3)
                  (MAlonzo.Code.Algebra.d1488
                     v0 (MAlonzo.Code.Algebra.d1486 v0 v2 v3)))))
         (MAlonzo.Code.Algebra.d1484
            v0 (MAlonzo.Code.Algebra.d1488 v0 v1)
            (MAlonzo.Code.Algebra.d1488
               v0
               (MAlonzo.Code.Algebra.d1486
                  v0 (MAlonzo.Code.Algebra.d1484 v0 v2 v3)
                  (MAlonzo.Code.Algebra.d1488
                     v0 (MAlonzo.Code.Algebra.d1486 v0 v2 v3)))))
         (MAlonzo.Code.Algebra.d1486
            v0
            (MAlonzo.Code.Algebra.d1484
               v0
               (MAlonzo.Code.Algebra.d1484
                  v0 (MAlonzo.Code.Algebra.d1488 v0 v1)
                  (MAlonzo.Code.Algebra.d1488 v0 v2))
               v3)
            (MAlonzo.Code.Algebra.d1484
               v0
               (MAlonzo.Code.Algebra.d1484
                  v0 (MAlonzo.Code.Algebra.d1488 v0 v1) v2)
               (MAlonzo.Code.Algebra.d1488 v0 v3)))
         (du286
            v0 v1
            (MAlonzo.Code.Algebra.d1486
               v0 (MAlonzo.Code.Algebra.d1484 v0 v2 v3)
               (MAlonzo.Code.Algebra.d1488
                  v0 (MAlonzo.Code.Algebra.d1486 v0 v2 v3))))
         (let v5
                = coe
                    MAlonzo.Code.Relation.Binary.C143
                    (coe
                       MAlonzo.Code.Algebra.Structures.d2874
                       (coe
                          MAlonzo.Code.Algebra.Structures.d3038
                          (coe
                             MAlonzo.Code.Algebra.Structures.d3222
                             (coe MAlonzo.Code.Algebra.d1494 v0)))) in
          MAlonzo.Code.Relation.Binary.PreorderReasoning.du72
            (MAlonzo.Code.Relation.Binary.du150 v5)
            (MAlonzo.Code.Algebra.d1484
               v0 (MAlonzo.Code.Algebra.d1488 v0 v1)
               (MAlonzo.Code.Algebra.d1488
                  v0
                  (MAlonzo.Code.Algebra.d1486
                     v0 (MAlonzo.Code.Algebra.d1484 v0 v2 v3)
                     (MAlonzo.Code.Algebra.d1488
                        v0 (MAlonzo.Code.Algebra.d1486 v0 v2 v3)))))
            (MAlonzo.Code.Algebra.d1484
               v0 (MAlonzo.Code.Algebra.d1488 v0 v1)
               (MAlonzo.Code.Algebra.d1486
                  v0
                  (MAlonzo.Code.Algebra.d1484
                     v0 v2 (MAlonzo.Code.Algebra.d1488 v0 v3))
                  (MAlonzo.Code.Algebra.d1484
                     v0 (MAlonzo.Code.Algebra.d1488 v0 v2) v3)))
            (MAlonzo.Code.Algebra.d1486
               v0
               (MAlonzo.Code.Algebra.d1484
                  v0
                  (MAlonzo.Code.Algebra.d1484
                     v0 (MAlonzo.Code.Algebra.d1488 v0 v1)
                     (MAlonzo.Code.Algebra.d1488 v0 v2))
                  v3)
               (MAlonzo.Code.Algebra.d1484
                  v0
                  (MAlonzo.Code.Algebra.d1484
                     v0 (MAlonzo.Code.Algebra.d1488 v0 v1) v2)
                  (MAlonzo.Code.Algebra.d1488 v0 v3)))
            (MAlonzo.Code.Function.du176
               (MAlonzo.Code.Relation.Binary.Core.d516
                  (MAlonzo.Code.Algebra.Structures.d2874
                     (MAlonzo.Code.Algebra.Structures.d3038
                        (MAlonzo.Code.Algebra.Structures.d3222
                           (MAlonzo.Code.Algebra.d1494 v0))))
                  (MAlonzo.Code.Algebra.d1488 v0 v1))
               (MAlonzo.Code.Algebra.Structures.d2880
                  (MAlonzo.Code.Algebra.Structures.d3038
                     (MAlonzo.Code.Algebra.Structures.d3222
                        (MAlonzo.Code.Algebra.d1494 v0)))
                  (MAlonzo.Code.Algebra.d1488 v0 v1)
                  (MAlonzo.Code.Algebra.d1488 v0 v1)
                  (MAlonzo.Code.Algebra.d1488
                     v0
                     (MAlonzo.Code.Algebra.d1486
                        v0 (MAlonzo.Code.Algebra.d1484 v0 v2 v3)
                        (MAlonzo.Code.Algebra.d1488
                           v0 (MAlonzo.Code.Algebra.d1486 v0 v2 v3))))
                  (MAlonzo.Code.Algebra.d1486
                     v0
                     (MAlonzo.Code.Algebra.d1484
                        v0 v2 (MAlonzo.Code.Algebra.d1488 v0 v3))
                     (MAlonzo.Code.Algebra.d1484
                        v0 (MAlonzo.Code.Algebra.d1488 v0 v2) v3)))
               (du532 v0 v2 v3))
            (let v6
                   = coe
                       MAlonzo.Code.Relation.Binary.C143
                       (coe
                          MAlonzo.Code.Algebra.Structures.d2874
                          (coe
                             MAlonzo.Code.Algebra.Structures.d3038
                             (coe
                                MAlonzo.Code.Algebra.Structures.d3222
                                (coe MAlonzo.Code.Algebra.d1494 v0)))) in
             MAlonzo.Code.Relation.Binary.PreorderReasoning.du72
               (MAlonzo.Code.Relation.Binary.du150 v6)
               (MAlonzo.Code.Algebra.d1484
                  v0 (MAlonzo.Code.Algebra.d1488 v0 v1)
                  (MAlonzo.Code.Algebra.d1486
                     v0
                     (MAlonzo.Code.Algebra.d1484
                        v0 v2 (MAlonzo.Code.Algebra.d1488 v0 v3))
                     (MAlonzo.Code.Algebra.d1484
                        v0 (MAlonzo.Code.Algebra.d1488 v0 v2) v3)))
               (MAlonzo.Code.Algebra.d1486
                  v0
                  (MAlonzo.Code.Algebra.d1484
                     v0 (MAlonzo.Code.Algebra.d1488 v0 v1)
                     (MAlonzo.Code.Algebra.d1484
                        v0 v2 (MAlonzo.Code.Algebra.d1488 v0 v3)))
                  (MAlonzo.Code.Algebra.d1484
                     v0 (MAlonzo.Code.Algebra.d1488 v0 v1)
                     (MAlonzo.Code.Algebra.d1484
                        v0 (MAlonzo.Code.Algebra.d1488 v0 v2) v3)))
               (MAlonzo.Code.Algebra.d1486
                  v0
                  (MAlonzo.Code.Algebra.d1484
                     v0
                     (MAlonzo.Code.Algebra.d1484
                        v0 (MAlonzo.Code.Algebra.d1488 v0 v1)
                        (MAlonzo.Code.Algebra.d1488 v0 v2))
                     v3)
                  (MAlonzo.Code.Algebra.d1484
                     v0
                     (MAlonzo.Code.Algebra.d1484
                        v0 (MAlonzo.Code.Algebra.d1488 v0 v1) v2)
                     (MAlonzo.Code.Algebra.d1488 v0 v3)))
               (MAlonzo.Code.Data.Product.d26
                  (MAlonzo.Code.Algebra.Properties.DistributiveLattice.du148
                     (MAlonzo.Code.Algebra.C687
                        (MAlonzo.Code.Algebra.d1484 v0) (MAlonzo.Code.Algebra.d1486 v0)
                        (MAlonzo.Code.Algebra.Structures.d3222
                           (MAlonzo.Code.Algebra.d1494 v0))))
                  (MAlonzo.Code.Algebra.d1488 v0 v1)
                  (MAlonzo.Code.Algebra.d1484
                     v0 v2 (MAlonzo.Code.Algebra.d1488 v0 v3))
                  (MAlonzo.Code.Algebra.d1484
                     v0 (MAlonzo.Code.Algebra.d1488 v0 v2) v3))
               (let v7
                      = coe
                          MAlonzo.Code.Relation.Binary.C143
                          (coe
                             MAlonzo.Code.Algebra.Structures.d2874
                             (coe
                                MAlonzo.Code.Algebra.Structures.d3038
                                (coe
                                   MAlonzo.Code.Algebra.Structures.d3222
                                   (coe MAlonzo.Code.Algebra.d1494 v0)))) in
                MAlonzo.Code.Relation.Binary.PreorderReasoning.du72
                  (MAlonzo.Code.Relation.Binary.du150 v7)
                  (MAlonzo.Code.Algebra.d1486
                     v0
                     (MAlonzo.Code.Algebra.d1484
                        v0 (MAlonzo.Code.Algebra.d1488 v0 v1)
                        (MAlonzo.Code.Algebra.d1484
                           v0 v2 (MAlonzo.Code.Algebra.d1488 v0 v3)))
                     (MAlonzo.Code.Algebra.d1484
                        v0 (MAlonzo.Code.Algebra.d1488 v0 v1)
                        (MAlonzo.Code.Algebra.d1484
                           v0 (MAlonzo.Code.Algebra.d1488 v0 v2) v3)))
                  (MAlonzo.Code.Algebra.d1486
                     v0
                     (MAlonzo.Code.Algebra.d1484
                        v0
                        (MAlonzo.Code.Algebra.d1484
                           v0 (MAlonzo.Code.Algebra.d1488 v0 v1) v2)
                        (MAlonzo.Code.Algebra.d1488 v0 v3))
                     (MAlonzo.Code.Algebra.d1484
                        v0
                        (MAlonzo.Code.Algebra.d1484
                           v0 (MAlonzo.Code.Algebra.d1488 v0 v1)
                           (MAlonzo.Code.Algebra.d1488 v0 v2))
                        v3))
                  (MAlonzo.Code.Algebra.d1486
                     v0
                     (MAlonzo.Code.Algebra.d1484
                        v0
                        (MAlonzo.Code.Algebra.d1484
                           v0 (MAlonzo.Code.Algebra.d1488 v0 v1)
                           (MAlonzo.Code.Algebra.d1488 v0 v2))
                        v3)
                     (MAlonzo.Code.Algebra.d1484
                        v0
                        (MAlonzo.Code.Algebra.d1484
                           v0 (MAlonzo.Code.Algebra.d1488 v0 v1) v2)
                        (MAlonzo.Code.Algebra.d1488 v0 v3)))
                  (MAlonzo.Code.Function.du176
                     (MAlonzo.Code.Relation.Binary.Core.d518
                        (MAlonzo.Code.Algebra.Structures.d2874
                           (MAlonzo.Code.Algebra.Structures.d3038
                              (MAlonzo.Code.Algebra.Structures.d3222
                                 (MAlonzo.Code.Algebra.d1494 v0))))
                        (MAlonzo.Code.Algebra.d1484
                           v0
                           (MAlonzo.Code.Algebra.d1484
                              v0 (MAlonzo.Code.Algebra.d1488 v0 v1) v2)
                           (MAlonzo.Code.Algebra.d1488 v0 v3))
                        (MAlonzo.Code.Algebra.d1484
                           v0 (MAlonzo.Code.Algebra.d1488 v0 v1)
                           (MAlonzo.Code.Algebra.d1484
                              v0 v2 (MAlonzo.Code.Algebra.d1488 v0 v3)))
                        (MAlonzo.Code.Algebra.Structures.d2878
                           (MAlonzo.Code.Algebra.Structures.d3038
                              (MAlonzo.Code.Algebra.Structures.d3222
                                 (MAlonzo.Code.Algebra.d1494 v0)))
                           (MAlonzo.Code.Algebra.d1488 v0 v1) v2
                           (MAlonzo.Code.Algebra.d1488 v0 v3)))
                     (MAlonzo.Code.Algebra.Structures.d2886
                        (MAlonzo.Code.Algebra.Structures.d3038
                           (MAlonzo.Code.Algebra.Structures.d3222
                              (MAlonzo.Code.Algebra.d1494 v0)))
                        (MAlonzo.Code.Algebra.d1484
                           v0 (MAlonzo.Code.Algebra.d1488 v0 v1)
                           (MAlonzo.Code.Algebra.d1484
                              v0 v2 (MAlonzo.Code.Algebra.d1488 v0 v3)))
                        (MAlonzo.Code.Algebra.d1484
                           v0
                           (MAlonzo.Code.Algebra.d1484
                              v0 (MAlonzo.Code.Algebra.d1488 v0 v1) v2)
                           (MAlonzo.Code.Algebra.d1488 v0 v3))
                        (MAlonzo.Code.Algebra.d1484
                           v0 (MAlonzo.Code.Algebra.d1488 v0 v1)
                           (MAlonzo.Code.Algebra.d1484
                              v0 (MAlonzo.Code.Algebra.d1488 v0 v2) v3))
                        (MAlonzo.Code.Algebra.d1484
                           v0
                           (MAlonzo.Code.Algebra.d1484
                              v0 (MAlonzo.Code.Algebra.d1488 v0 v1)
                              (MAlonzo.Code.Algebra.d1488 v0 v2))
                           v3))
                     (MAlonzo.Code.Relation.Binary.Core.d518
                        (MAlonzo.Code.Algebra.Structures.d2874
                           (MAlonzo.Code.Algebra.Structures.d3038
                              (MAlonzo.Code.Algebra.Structures.d3222
                                 (MAlonzo.Code.Algebra.d1494 v0))))
                        (MAlonzo.Code.Algebra.d1484
                           v0
                           (MAlonzo.Code.Algebra.d1484
                              v0 (MAlonzo.Code.Algebra.d1488 v0 v1)
                              (MAlonzo.Code.Algebra.d1488 v0 v2))
                           v3)
                        (MAlonzo.Code.Algebra.d1484
                           v0 (MAlonzo.Code.Algebra.d1488 v0 v1)
                           (MAlonzo.Code.Algebra.d1484
                              v0 (MAlonzo.Code.Algebra.d1488 v0 v2) v3))
                        (MAlonzo.Code.Algebra.Structures.d2878
                           (MAlonzo.Code.Algebra.Structures.d3038
                              (MAlonzo.Code.Algebra.Structures.d3222
                                 (MAlonzo.Code.Algebra.d1494 v0)))
                           (MAlonzo.Code.Algebra.d1488 v0 v1)
                           (MAlonzo.Code.Algebra.d1488 v0 v2) v3)))
                  (let v8
                         = coe
                             MAlonzo.Code.Relation.Binary.C143
                             (coe
                                MAlonzo.Code.Algebra.Structures.d2874
                                (coe
                                   MAlonzo.Code.Algebra.Structures.d3038
                                   (coe
                                      MAlonzo.Code.Algebra.Structures.d3222
                                      (coe MAlonzo.Code.Algebra.d1494 v0)))) in
                   MAlonzo.Code.Relation.Binary.PreorderReasoning.du72
                     (MAlonzo.Code.Relation.Binary.du150 v8)
                     (MAlonzo.Code.Algebra.d1486
                        v0
                        (MAlonzo.Code.Algebra.d1484
                           v0
                           (MAlonzo.Code.Algebra.d1484
                              v0 (MAlonzo.Code.Algebra.d1488 v0 v1) v2)
                           (MAlonzo.Code.Algebra.d1488 v0 v3))
                        (MAlonzo.Code.Algebra.d1484
                           v0
                           (MAlonzo.Code.Algebra.d1484
                              v0 (MAlonzo.Code.Algebra.d1488 v0 v1)
                              (MAlonzo.Code.Algebra.d1488 v0 v2))
                           v3))
                     (MAlonzo.Code.Algebra.d1486
                        v0
                        (MAlonzo.Code.Algebra.d1484
                           v0
                           (MAlonzo.Code.Algebra.d1484
                              v0 (MAlonzo.Code.Algebra.d1488 v0 v1)
                              (MAlonzo.Code.Algebra.d1488 v0 v2))
                           v3)
                        (MAlonzo.Code.Algebra.d1484
                           v0
                           (MAlonzo.Code.Algebra.d1484
                              v0 (MAlonzo.Code.Algebra.d1488 v0 v1) v2)
                           (MAlonzo.Code.Algebra.d1488 v0 v3)))
                     (MAlonzo.Code.Algebra.d1486
                        v0
                        (MAlonzo.Code.Algebra.d1484
                           v0
                           (MAlonzo.Code.Algebra.d1484
                              v0 (MAlonzo.Code.Algebra.d1488 v0 v1)
                              (MAlonzo.Code.Algebra.d1488 v0 v2))
                           v3)
                        (MAlonzo.Code.Algebra.d1484
                           v0
                           (MAlonzo.Code.Algebra.d1484
                              v0 (MAlonzo.Code.Algebra.d1488 v0 v1) v2)
                           (MAlonzo.Code.Algebra.d1488 v0 v3)))
                     (MAlonzo.Code.Algebra.Structures.d2882
                        (MAlonzo.Code.Algebra.Structures.d3038
                           (MAlonzo.Code.Algebra.Structures.d3222
                              (MAlonzo.Code.Algebra.d1494 v0)))
                        (MAlonzo.Code.Algebra.d1484
                           v0
                           (MAlonzo.Code.Algebra.d1484
                              v0 (MAlonzo.Code.Algebra.d1488 v0 v1) v2)
                           (MAlonzo.Code.Algebra.d1488 v0 v3))
                        (MAlonzo.Code.Algebra.d1484
                           v0
                           (MAlonzo.Code.Algebra.d1484
                              v0 (MAlonzo.Code.Algebra.d1488 v0 v1)
                              (MAlonzo.Code.Algebra.d1488 v0 v2))
                           v3))
                     (let v9
                            = coe
                                MAlonzo.Code.Relation.Binary.C143
                                (coe
                                   MAlonzo.Code.Algebra.Structures.d2874
                                   (coe
                                      MAlonzo.Code.Algebra.Structures.d3038
                                      (coe
                                         MAlonzo.Code.Algebra.Structures.d3222
                                         (coe MAlonzo.Code.Algebra.d1494 v0)))) in
                      let v10
                            = coe
                                MAlonzo.Code.Algebra.d1486 v0
                                (coe
                                   MAlonzo.Code.Algebra.d1484 v0
                                   (coe
                                      MAlonzo.Code.Algebra.d1484 v0
                                      (coe MAlonzo.Code.Algebra.d1488 v0 v1)
                                      (coe MAlonzo.Code.Algebra.d1488 v0 v2))
                                   v3)
                                (coe
                                   MAlonzo.Code.Algebra.d1484 v0
                                   (coe
                                      MAlonzo.Code.Algebra.d1484 v0
                                      (coe MAlonzo.Code.Algebra.d1488 v0 v1) v2)
                                   (coe MAlonzo.Code.Algebra.d1488 v0 v3)) in
                      MAlonzo.Code.Relation.Binary.PreorderReasoning.C56
                        (MAlonzo.Code.Relation.Binary.d38
                           (MAlonzo.Code.Relation.Binary.d92
                              (MAlonzo.Code.Relation.Binary.du150 v9))
                           v10 v10
                           (MAlonzo.Code.Relation.Binary.Core.d516
                              (MAlonzo.Code.Relation.Binary.d36
                                 (MAlonzo.Code.Relation.Binary.d92
                                    (MAlonzo.Code.Relation.Binary.du150 v9)))
                              v10))))))))
name536 = "Algebra.Properties.BooleanAlgebra.XorRing._.lem\8325"
d536 v0 v1 v2 v3 v4 v5 v6 v7 = du536 v2 v5 v6 v7
du536 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Relation.Binary.PreorderReasoning.d62
      (let v4
             = coe
                 MAlonzo.Code.Relation.Binary.C143
                 (coe
                    MAlonzo.Code.Algebra.Structures.d2874
                    (coe
                       MAlonzo.Code.Algebra.Structures.d3038
                       (coe
                          MAlonzo.Code.Algebra.Structures.d3222
                          (coe MAlonzo.Code.Algebra.d1494 v0)))) in
       MAlonzo.Code.Relation.Binary.PreorderReasoning.du72
         (MAlonzo.Code.Relation.Binary.du150 v4)
         (MAlonzo.Code.Algebra.d1486
            v0
            (MAlonzo.Code.Algebra.d1484
               v0
               (MAlonzo.Code.Algebra.d1484
                  v0 v1 (MAlonzo.Code.Algebra.d1488 v0 v2))
               (MAlonzo.Code.Algebra.d1488 v0 v3))
            (MAlonzo.Code.Algebra.d1486
               v0
               (MAlonzo.Code.Algebra.d1484
                  v0
                  (MAlonzo.Code.Algebra.d1484
                     v0 (MAlonzo.Code.Algebra.d1488 v0 v1)
                     (MAlonzo.Code.Algebra.d1488 v0 v2))
                  v3)
               (MAlonzo.Code.Algebra.d1484
                  v0
                  (MAlonzo.Code.Algebra.d1484
                     v0 (MAlonzo.Code.Algebra.d1488 v0 v1) v2)
                  (MAlonzo.Code.Algebra.d1488 v0 v3))))
         (MAlonzo.Code.Algebra.d1486
            v0
            (MAlonzo.Code.Algebra.d1486
               v0
               (MAlonzo.Code.Algebra.d1484
                  v0
                  (MAlonzo.Code.Algebra.d1484
                     v0 v1 (MAlonzo.Code.Algebra.d1488 v0 v2))
                  (MAlonzo.Code.Algebra.d1488 v0 v3))
               (MAlonzo.Code.Algebra.d1484
                  v0
                  (MAlonzo.Code.Algebra.d1484
                     v0 (MAlonzo.Code.Algebra.d1488 v0 v1)
                     (MAlonzo.Code.Algebra.d1488 v0 v2))
                  v3))
            (MAlonzo.Code.Algebra.d1484
               v0
               (MAlonzo.Code.Algebra.d1484
                  v0 (MAlonzo.Code.Algebra.d1488 v0 v1) v2)
               (MAlonzo.Code.Algebra.d1488 v0 v3)))
         (MAlonzo.Code.Algebra.d1486
            v0
            (MAlonzo.Code.Algebra.d1484
               v0
               (MAlonzo.Code.Algebra.d1484
                  v0 (MAlonzo.Code.Algebra.d1488 v0 v1)
                  (MAlonzo.Code.Algebra.d1488 v0 v2))
               v3)
            (MAlonzo.Code.Algebra.d1486
               v0
               (MAlonzo.Code.Algebra.d1484
                  v0
                  (MAlonzo.Code.Algebra.d1484
                     v0 v1 (MAlonzo.Code.Algebra.d1488 v0 v2))
                  (MAlonzo.Code.Algebra.d1488 v0 v3))
               (MAlonzo.Code.Algebra.d1484
                  v0
                  (MAlonzo.Code.Algebra.d1484
                     v0 (MAlonzo.Code.Algebra.d1488 v0 v1) v2)
                  (MAlonzo.Code.Algebra.d1488 v0 v3))))
         (MAlonzo.Code.Function.du158
            (MAlonzo.Code.Relation.Binary.Core.d518
               (MAlonzo.Code.Algebra.Structures.d2874
                  (MAlonzo.Code.Algebra.Structures.d3038
                     (MAlonzo.Code.Algebra.Structures.d3222
                        (MAlonzo.Code.Algebra.d1494 v0))))
               (MAlonzo.Code.Algebra.d1486
                  v0
                  (MAlonzo.Code.Algebra.d1486
                     v0
                     (MAlonzo.Code.Algebra.d1484
                        v0
                        (MAlonzo.Code.Algebra.d1484
                           v0 v1 (MAlonzo.Code.Algebra.d1488 v0 v2))
                        (MAlonzo.Code.Algebra.d1488 v0 v3))
                     (MAlonzo.Code.Algebra.d1484
                        v0
                        (MAlonzo.Code.Algebra.d1484
                           v0 (MAlonzo.Code.Algebra.d1488 v0 v1)
                           (MAlonzo.Code.Algebra.d1488 v0 v2))
                        v3))
                  (MAlonzo.Code.Algebra.d1484
                     v0
                     (MAlonzo.Code.Algebra.d1484
                        v0 (MAlonzo.Code.Algebra.d1488 v0 v1) v2)
                     (MAlonzo.Code.Algebra.d1488 v0 v3)))
               (MAlonzo.Code.Algebra.d1486
                  v0
                  (MAlonzo.Code.Algebra.d1484
                     v0
                     (MAlonzo.Code.Algebra.d1484
                        v0 v1 (MAlonzo.Code.Algebra.d1488 v0 v2))
                     (MAlonzo.Code.Algebra.d1488 v0 v3))
                  (MAlonzo.Code.Algebra.d1486
                     v0
                     (MAlonzo.Code.Algebra.d1484
                        v0
                        (MAlonzo.Code.Algebra.d1484
                           v0 (MAlonzo.Code.Algebra.d1488 v0 v1)
                           (MAlonzo.Code.Algebra.d1488 v0 v2))
                        v3)
                     (MAlonzo.Code.Algebra.d1484
                        v0
                        (MAlonzo.Code.Algebra.d1484
                           v0 (MAlonzo.Code.Algebra.d1488 v0 v1) v2)
                        (MAlonzo.Code.Algebra.d1488 v0 v3)))))
            (MAlonzo.Code.Algebra.Structures.d2884
               (MAlonzo.Code.Algebra.Structures.d3038
                  (MAlonzo.Code.Algebra.Structures.d3222
                     (MAlonzo.Code.Algebra.d1494 v0)))
               (MAlonzo.Code.Algebra.d1484
                  v0
                  (MAlonzo.Code.Algebra.d1484
                     v0 v1 (MAlonzo.Code.Algebra.d1488 v0 v2))
                  (MAlonzo.Code.Algebra.d1488 v0 v3))
               (MAlonzo.Code.Algebra.d1484
                  v0
                  (MAlonzo.Code.Algebra.d1484
                     v0 (MAlonzo.Code.Algebra.d1488 v0 v1)
                     (MAlonzo.Code.Algebra.d1488 v0 v2))
                  v3)
               (MAlonzo.Code.Algebra.d1484
                  v0
                  (MAlonzo.Code.Algebra.d1484
                     v0 (MAlonzo.Code.Algebra.d1488 v0 v1) v2)
                  (MAlonzo.Code.Algebra.d1488 v0 v3))))
         (let v5
                = coe
                    MAlonzo.Code.Relation.Binary.C143
                    (coe
                       MAlonzo.Code.Algebra.Structures.d2874
                       (coe
                          MAlonzo.Code.Algebra.Structures.d3038
                          (coe
                             MAlonzo.Code.Algebra.Structures.d3222
                             (coe MAlonzo.Code.Algebra.d1494 v0)))) in
          MAlonzo.Code.Relation.Binary.PreorderReasoning.du72
            (MAlonzo.Code.Relation.Binary.du150 v5)
            (MAlonzo.Code.Algebra.d1486
               v0
               (MAlonzo.Code.Algebra.d1486
                  v0
                  (MAlonzo.Code.Algebra.d1484
                     v0
                     (MAlonzo.Code.Algebra.d1484
                        v0 v1 (MAlonzo.Code.Algebra.d1488 v0 v2))
                     (MAlonzo.Code.Algebra.d1488 v0 v3))
                  (MAlonzo.Code.Algebra.d1484
                     v0
                     (MAlonzo.Code.Algebra.d1484
                        v0 (MAlonzo.Code.Algebra.d1488 v0 v1)
                        (MAlonzo.Code.Algebra.d1488 v0 v2))
                     v3))
               (MAlonzo.Code.Algebra.d1484
                  v0
                  (MAlonzo.Code.Algebra.d1484
                     v0 (MAlonzo.Code.Algebra.d1488 v0 v1) v2)
                  (MAlonzo.Code.Algebra.d1488 v0 v3)))
            (MAlonzo.Code.Algebra.d1486
               v0
               (MAlonzo.Code.Algebra.d1486
                  v0
                  (MAlonzo.Code.Algebra.d1484
                     v0
                     (MAlonzo.Code.Algebra.d1484
                        v0 (MAlonzo.Code.Algebra.d1488 v0 v1)
                        (MAlonzo.Code.Algebra.d1488 v0 v2))
                     v3)
                  (MAlonzo.Code.Algebra.d1484
                     v0
                     (MAlonzo.Code.Algebra.d1484
                        v0 v1 (MAlonzo.Code.Algebra.d1488 v0 v2))
                     (MAlonzo.Code.Algebra.d1488 v0 v3)))
               (MAlonzo.Code.Algebra.d1484
                  v0
                  (MAlonzo.Code.Algebra.d1484
                     v0 (MAlonzo.Code.Algebra.d1488 v0 v1) v2)
                  (MAlonzo.Code.Algebra.d1488 v0 v3)))
            (MAlonzo.Code.Algebra.d1486
               v0
               (MAlonzo.Code.Algebra.d1484
                  v0
                  (MAlonzo.Code.Algebra.d1484
                     v0 (MAlonzo.Code.Algebra.d1488 v0 v1)
                     (MAlonzo.Code.Algebra.d1488 v0 v2))
                  v3)
               (MAlonzo.Code.Algebra.d1486
                  v0
                  (MAlonzo.Code.Algebra.d1484
                     v0
                     (MAlonzo.Code.Algebra.d1484
                        v0 v1 (MAlonzo.Code.Algebra.d1488 v0 v2))
                     (MAlonzo.Code.Algebra.d1488 v0 v3))
                  (MAlonzo.Code.Algebra.d1484
                     v0
                     (MAlonzo.Code.Algebra.d1484
                        v0 (MAlonzo.Code.Algebra.d1488 v0 v1) v2)
                     (MAlonzo.Code.Algebra.d1488 v0 v3))))
            (MAlonzo.Code.Function.du176
               (MAlonzo.Code.Algebra.Structures.d2882
                  (MAlonzo.Code.Algebra.Structures.d3038
                     (MAlonzo.Code.Algebra.Structures.d3222
                        (MAlonzo.Code.Algebra.d1494 v0)))
                  (MAlonzo.Code.Algebra.d1484
                     v0
                     (MAlonzo.Code.Algebra.d1484
                        v0 v1 (MAlonzo.Code.Algebra.d1488 v0 v2))
                     (MAlonzo.Code.Algebra.d1488 v0 v3))
                  (MAlonzo.Code.Algebra.d1484
                     v0
                     (MAlonzo.Code.Algebra.d1484
                        v0 (MAlonzo.Code.Algebra.d1488 v0 v1)
                        (MAlonzo.Code.Algebra.d1488 v0 v2))
                     v3))
               (MAlonzo.Code.Algebra.Structures.d2886
                  (MAlonzo.Code.Algebra.Structures.d3038
                     (MAlonzo.Code.Algebra.Structures.d3222
                        (MAlonzo.Code.Algebra.d1494 v0)))
                  (MAlonzo.Code.Algebra.d1486
                     v0
                     (MAlonzo.Code.Algebra.d1484
                        v0
                        (MAlonzo.Code.Algebra.d1484
                           v0 v1 (MAlonzo.Code.Algebra.d1488 v0 v2))
                        (MAlonzo.Code.Algebra.d1488 v0 v3))
                     (MAlonzo.Code.Algebra.d1484
                        v0
                        (MAlonzo.Code.Algebra.d1484
                           v0 (MAlonzo.Code.Algebra.d1488 v0 v1)
                           (MAlonzo.Code.Algebra.d1488 v0 v2))
                        v3))
                  (MAlonzo.Code.Algebra.d1486
                     v0
                     (MAlonzo.Code.Algebra.d1484
                        v0
                        (MAlonzo.Code.Algebra.d1484
                           v0 (MAlonzo.Code.Algebra.d1488 v0 v1)
                           (MAlonzo.Code.Algebra.d1488 v0 v2))
                        v3)
                     (MAlonzo.Code.Algebra.d1484
                        v0
                        (MAlonzo.Code.Algebra.d1484
                           v0 v1 (MAlonzo.Code.Algebra.d1488 v0 v2))
                        (MAlonzo.Code.Algebra.d1488 v0 v3)))
                  (MAlonzo.Code.Algebra.d1484
                     v0
                     (MAlonzo.Code.Algebra.d1484
                        v0 (MAlonzo.Code.Algebra.d1488 v0 v1) v2)
                     (MAlonzo.Code.Algebra.d1488 v0 v3))
                  (MAlonzo.Code.Algebra.d1484
                     v0
                     (MAlonzo.Code.Algebra.d1484
                        v0 (MAlonzo.Code.Algebra.d1488 v0 v1) v2)
                     (MAlonzo.Code.Algebra.d1488 v0 v3)))
               (MAlonzo.Code.Relation.Binary.Core.d516
                  (MAlonzo.Code.Algebra.Structures.d2874
                     (MAlonzo.Code.Algebra.Structures.d3038
                        (MAlonzo.Code.Algebra.Structures.d3222
                           (MAlonzo.Code.Algebra.d1494 v0))))
                  (MAlonzo.Code.Algebra.d1484
                     v0
                     (MAlonzo.Code.Algebra.d1484
                        v0 (MAlonzo.Code.Algebra.d1488 v0 v1) v2)
                     (MAlonzo.Code.Algebra.d1488 v0 v3))))
            (let v6
                   = coe
                       MAlonzo.Code.Relation.Binary.C143
                       (coe
                          MAlonzo.Code.Algebra.Structures.d2874
                          (coe
                             MAlonzo.Code.Algebra.Structures.d3038
                             (coe
                                MAlonzo.Code.Algebra.Structures.d3222
                                (coe MAlonzo.Code.Algebra.d1494 v0)))) in
             MAlonzo.Code.Relation.Binary.PreorderReasoning.du72
               (MAlonzo.Code.Relation.Binary.du150 v6)
               (MAlonzo.Code.Algebra.d1486
                  v0
                  (MAlonzo.Code.Algebra.d1486
                     v0
                     (MAlonzo.Code.Algebra.d1484
                        v0
                        (MAlonzo.Code.Algebra.d1484
                           v0 (MAlonzo.Code.Algebra.d1488 v0 v1)
                           (MAlonzo.Code.Algebra.d1488 v0 v2))
                        v3)
                     (MAlonzo.Code.Algebra.d1484
                        v0
                        (MAlonzo.Code.Algebra.d1484
                           v0 v1 (MAlonzo.Code.Algebra.d1488 v0 v2))
                        (MAlonzo.Code.Algebra.d1488 v0 v3)))
                  (MAlonzo.Code.Algebra.d1484
                     v0
                     (MAlonzo.Code.Algebra.d1484
                        v0 (MAlonzo.Code.Algebra.d1488 v0 v1) v2)
                     (MAlonzo.Code.Algebra.d1488 v0 v3)))
               (MAlonzo.Code.Algebra.d1486
                  v0
                  (MAlonzo.Code.Algebra.d1484
                     v0
                     (MAlonzo.Code.Algebra.d1484
                        v0 (MAlonzo.Code.Algebra.d1488 v0 v1)
                        (MAlonzo.Code.Algebra.d1488 v0 v2))
                     v3)
                  (MAlonzo.Code.Algebra.d1486
                     v0
                     (MAlonzo.Code.Algebra.d1484
                        v0
                        (MAlonzo.Code.Algebra.d1484
                           v0 v1 (MAlonzo.Code.Algebra.d1488 v0 v2))
                        (MAlonzo.Code.Algebra.d1488 v0 v3))
                     (MAlonzo.Code.Algebra.d1484
                        v0
                        (MAlonzo.Code.Algebra.d1484
                           v0 (MAlonzo.Code.Algebra.d1488 v0 v1) v2)
                        (MAlonzo.Code.Algebra.d1488 v0 v3))))
               (MAlonzo.Code.Algebra.d1486
                  v0
                  (MAlonzo.Code.Algebra.d1484
                     v0
                     (MAlonzo.Code.Algebra.d1484
                        v0 (MAlonzo.Code.Algebra.d1488 v0 v1)
                        (MAlonzo.Code.Algebra.d1488 v0 v2))
                     v3)
                  (MAlonzo.Code.Algebra.d1486
                     v0
                     (MAlonzo.Code.Algebra.d1484
                        v0
                        (MAlonzo.Code.Algebra.d1484
                           v0 v1 (MAlonzo.Code.Algebra.d1488 v0 v2))
                        (MAlonzo.Code.Algebra.d1488 v0 v3))
                     (MAlonzo.Code.Algebra.d1484
                        v0
                        (MAlonzo.Code.Algebra.d1484
                           v0 (MAlonzo.Code.Algebra.d1488 v0 v1) v2)
                        (MAlonzo.Code.Algebra.d1488 v0 v3))))
               (MAlonzo.Code.Algebra.Structures.d2884
                  (MAlonzo.Code.Algebra.Structures.d3038
                     (MAlonzo.Code.Algebra.Structures.d3222
                        (MAlonzo.Code.Algebra.d1494 v0)))
                  (MAlonzo.Code.Algebra.d1484
                     v0
                     (MAlonzo.Code.Algebra.d1484
                        v0 (MAlonzo.Code.Algebra.d1488 v0 v1)
                        (MAlonzo.Code.Algebra.d1488 v0 v2))
                     v3)
                  (MAlonzo.Code.Algebra.d1484
                     v0
                     (MAlonzo.Code.Algebra.d1484
                        v0 v1 (MAlonzo.Code.Algebra.d1488 v0 v2))
                     (MAlonzo.Code.Algebra.d1488 v0 v3))
                  (MAlonzo.Code.Algebra.d1484
                     v0
                     (MAlonzo.Code.Algebra.d1484
                        v0 (MAlonzo.Code.Algebra.d1488 v0 v1) v2)
                     (MAlonzo.Code.Algebra.d1488 v0 v3)))
               (let v7
                      = coe
                          MAlonzo.Code.Relation.Binary.C143
                          (coe
                             MAlonzo.Code.Algebra.Structures.d2874
                             (coe
                                MAlonzo.Code.Algebra.Structures.d3038
                                (coe
                                   MAlonzo.Code.Algebra.Structures.d3222
                                   (coe MAlonzo.Code.Algebra.d1494 v0)))) in
                let v8
                      = coe
                          MAlonzo.Code.Algebra.d1486 v0
                          (coe
                             MAlonzo.Code.Algebra.d1484 v0
                             (coe
                                MAlonzo.Code.Algebra.d1484 v0
                                (coe MAlonzo.Code.Algebra.d1488 v0 v1)
                                (coe MAlonzo.Code.Algebra.d1488 v0 v2))
                             v3)
                          (coe
                             MAlonzo.Code.Algebra.d1486 v0
                             (coe
                                MAlonzo.Code.Algebra.d1484 v0
                                (coe
                                   MAlonzo.Code.Algebra.d1484 v0 v1
                                   (coe MAlonzo.Code.Algebra.d1488 v0 v2))
                                (coe MAlonzo.Code.Algebra.d1488 v0 v3))
                             (coe
                                MAlonzo.Code.Algebra.d1484 v0
                                (coe
                                   MAlonzo.Code.Algebra.d1484 v0
                                   (coe MAlonzo.Code.Algebra.d1488 v0 v1) v2)
                                (coe MAlonzo.Code.Algebra.d1488 v0 v3))) in
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
name538
  = "Algebra.Properties.BooleanAlgebra.XorRing.isCommutativeRing"
d538 v0 v1 v2 v3 v4 = du538 v2 v3 v4
du538 v0 v1 v2
  = coe
      MAlonzo.Code.Algebra.Structures.C1845
      (coe
         MAlonzo.Code.Algebra.Structures.C1479
         (coe
            MAlonzo.Code.Algebra.Structures.C579
            (coe
               MAlonzo.Code.Algebra.Structures.C465
               (coe
                  MAlonzo.Code.Algebra.Structures.C149
                  (coe
                     MAlonzo.Code.Algebra.Structures.C75
                     (coe
                        MAlonzo.Code.Algebra.Structures.d2874
                        (coe
                           MAlonzo.Code.Algebra.Structures.d3038
                           (coe
                              MAlonzo.Code.Algebra.Structures.d3222
                              (coe MAlonzo.Code.Algebra.d1494 v0))))
                     (coe du512 v0 v1 v2) (coe du420 v0 v1 v2))
                  (coe du434 v0 v1 v2))
               (coe du448 v0 v1 v2) (\ v3 v4 v5 -> v5))
            (coe du394 v0 v1 v2))
         (coe
            MAlonzo.Code.Algebra.Structures.C149
            (coe
               MAlonzo.Code.Algebra.Structures.C75
               (coe
                  MAlonzo.Code.Algebra.Structures.d2874
                  (coe
                     MAlonzo.Code.Algebra.Structures.d3038
                     (coe
                        MAlonzo.Code.Algebra.Structures.d3222
                        (coe MAlonzo.Code.Algebra.d1494 v0))))
               (coe
                  MAlonzo.Code.Algebra.Structures.d2884
                  (coe
                     MAlonzo.Code.Algebra.Structures.d3038
                     (coe
                        MAlonzo.Code.Algebra.Structures.d3222
                        (coe MAlonzo.Code.Algebra.d1494 v0))))
               (coe
                  MAlonzo.Code.Algebra.Structures.d2886
                  (coe
                     MAlonzo.Code.Algebra.Structures.d3038
                     (coe
                        MAlonzo.Code.Algebra.Structures.d3222
                        (coe MAlonzo.Code.Algebra.d1494 v0)))))
            (coe du196 v0))
         (coe du462 v0 v1 v2))
      (coe
         MAlonzo.Code.Algebra.Structures.d2882
         (coe
            MAlonzo.Code.Algebra.Structures.d3038
            (coe
               MAlonzo.Code.Algebra.Structures.d3222
               (coe MAlonzo.Code.Algebra.d1494 v0))))
name540
  = "Algebra.Properties.BooleanAlgebra.XorRing.commutativeRing"
d540 v0 v1 v2 v3 v4 = du540 v2 v3 v4
du540 v0 v1 v2
  = coe
      MAlonzo.Code.Algebra.C605 v1 (coe MAlonzo.Code.Algebra.d1486 v0)
      (\ v3 -> v3) (coe MAlonzo.Code.Algebra.d1492 v0)
      (coe MAlonzo.Code.Algebra.d1490 v0) (coe du538 v0 v1 v2)
name542 = "Algebra.Properties.BooleanAlgebra._\8853_"
d542 v0 v1 v2
  = coe
      MAlonzo.Code.Algebra.d1486 v0
      (coe MAlonzo.Code.Algebra.d1484 v0 v1 v2)
      (coe
         MAlonzo.Code.Algebra.d1488 v0
         (coe MAlonzo.Code.Algebra.d1486 v0 v1 v2))
name554
  = "Algebra.Properties.BooleanAlgebra.DefaultXorRing.commutativeRing"
d554 v0 v1 v2 = du554 v2
du554 v0
  = coe
      du540 v0
      (\ v1 v2 ->
         coe
           MAlonzo.Code.Algebra.d1486 v0
           (coe MAlonzo.Code.Algebra.d1484 v0 v1 v2)
           (coe
              MAlonzo.Code.Algebra.d1488 v0
              (coe MAlonzo.Code.Algebra.d1486 v0 v1 v2)))
      (\ v1 v2 ->
         coe
           MAlonzo.Code.Relation.Binary.Core.d516
           (coe
              MAlonzo.Code.Algebra.Structures.d2874
              (coe
                 MAlonzo.Code.Algebra.Structures.d3038
                 (coe
                    MAlonzo.Code.Algebra.Structures.d3222
                    (coe MAlonzo.Code.Algebra.d1494 v0))))
           (coe
              MAlonzo.Code.Algebra.d1486 v0
              (coe MAlonzo.Code.Algebra.d1484 v0 v1 v2)
              (coe
                 MAlonzo.Code.Algebra.d1488 v0
                 (coe MAlonzo.Code.Algebra.d1486 v0 v1 v2))))
name556
  = "Algebra.Properties.BooleanAlgebra.DefaultXorRing.isCommutativeRing"
d556 v0 v1 v2 = du556 v2
du556 v0
  = coe
      du538 v0
      (\ v1 v2 ->
         coe
           MAlonzo.Code.Algebra.d1486 v0
           (coe MAlonzo.Code.Algebra.d1484 v0 v1 v2)
           (coe
              MAlonzo.Code.Algebra.d1488 v0
              (coe MAlonzo.Code.Algebra.d1486 v0 v1 v2)))
      (\ v1 v2 ->
         coe
           MAlonzo.Code.Relation.Binary.Core.d516
           (coe
              MAlonzo.Code.Algebra.Structures.d2874
              (coe
                 MAlonzo.Code.Algebra.Structures.d3038
                 (coe
                    MAlonzo.Code.Algebra.Structures.d3222
                    (coe MAlonzo.Code.Algebra.d1494 v0))))
           (coe
              MAlonzo.Code.Algebra.d1486 v0
              (coe MAlonzo.Code.Algebra.d1484 v0 v1 v2)
              (coe
                 MAlonzo.Code.Algebra.d1488 v0
                 (coe MAlonzo.Code.Algebra.d1486 v0 v1 v2))))
name558
  = "Algebra.Properties.BooleanAlgebra.DefaultXorRing.\8853-annihilates-\172"
d558 v0 v1 v2 = du558 v2
du558 v0
  = coe
      du414 v0
      (\ v1 v2 ->
         coe
           MAlonzo.Code.Algebra.d1486 v0
           (coe MAlonzo.Code.Algebra.d1484 v0 v1 v2)
           (coe
              MAlonzo.Code.Algebra.d1488 v0
              (coe MAlonzo.Code.Algebra.d1486 v0 v1 v2)))
      (\ v1 v2 ->
         coe
           MAlonzo.Code.Relation.Binary.Core.d516
           (coe
              MAlonzo.Code.Algebra.Structures.d2874
              (coe
                 MAlonzo.Code.Algebra.Structures.d3038
                 (coe
                    MAlonzo.Code.Algebra.Structures.d3222
                    (coe MAlonzo.Code.Algebra.d1494 v0))))
           (coe
              MAlonzo.Code.Algebra.d1486 v0
              (coe MAlonzo.Code.Algebra.d1484 v0 v1 v2)
              (coe
                 MAlonzo.Code.Algebra.d1488 v0
                 (coe MAlonzo.Code.Algebra.d1486 v0 v1 v2))))
name560
  = "Algebra.Properties.BooleanAlgebra.DefaultXorRing.\8853-\172-distrib\691"
d560 v0 v1 v2 = du560 v2
du560 v0
  = coe
      du404 v0
      (\ v1 v2 ->
         coe
           MAlonzo.Code.Algebra.d1486 v0
           (coe MAlonzo.Code.Algebra.d1484 v0 v1 v2)
           (coe
              MAlonzo.Code.Algebra.d1488 v0
              (coe MAlonzo.Code.Algebra.d1486 v0 v1 v2)))
      (\ v1 v2 ->
         coe
           MAlonzo.Code.Relation.Binary.Core.d516
           (coe
              MAlonzo.Code.Algebra.Structures.d2874
              (coe
                 MAlonzo.Code.Algebra.Structures.d3038
                 (coe
                    MAlonzo.Code.Algebra.Structures.d3222
                    (coe MAlonzo.Code.Algebra.d1494 v0))))
           (coe
              MAlonzo.Code.Algebra.d1486 v0
              (coe MAlonzo.Code.Algebra.d1484 v0 v1 v2)
              (coe
                 MAlonzo.Code.Algebra.d1488 v0
                 (coe MAlonzo.Code.Algebra.d1486 v0 v1 v2))))
name562
  = "Algebra.Properties.BooleanAlgebra.DefaultXorRing.\8853-\172-distrib\737"
d562 v0 v1 v2 = du562 v2
du562 v0
  = coe
      du374 v0
      (\ v1 v2 ->
         coe
           MAlonzo.Code.Algebra.d1486 v0
           (coe MAlonzo.Code.Algebra.d1484 v0 v1 v2)
           (coe
              MAlonzo.Code.Algebra.d1488 v0
              (coe MAlonzo.Code.Algebra.d1486 v0 v1 v2)))
      (\ v1 v2 ->
         coe
           MAlonzo.Code.Relation.Binary.Core.d516
           (coe
              MAlonzo.Code.Algebra.Structures.d2874
              (coe
                 MAlonzo.Code.Algebra.Structures.d3038
                 (coe
                    MAlonzo.Code.Algebra.Structures.d3222
                    (coe MAlonzo.Code.Algebra.d1494 v0))))
           (coe
              MAlonzo.Code.Algebra.d1486 v0
              (coe MAlonzo.Code.Algebra.d1484 v0 v1 v2)
              (coe
                 MAlonzo.Code.Algebra.d1488 v0
                 (coe MAlonzo.Code.Algebra.d1486 v0 v1 v2))))