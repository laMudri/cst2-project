{-# LANGUAGE EmptyDataDecls, ExistentialQuantification,
             ScopedTypeVariables, NoMonomorphismRestriction, Rank2Types #-}
module MAlonzo.Code.Algebra.Properties.DistributiveLattice where

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
import qualified MAlonzo.Code.Algebra.Properties.Lattice
import qualified MAlonzo.Code.Algebra.Structures
import qualified MAlonzo.Code.Data.Product
import qualified MAlonzo.Code.Function
import qualified MAlonzo.Code.Function.Equality
import qualified MAlonzo.Code.Function.Equivalence
import qualified MAlonzo.Code.Relation.Binary
import qualified MAlonzo.Code.Relation.Binary.Core
import qualified MAlonzo.Code.Relation.Binary.PreorderReasoning

name58
  = "Algebra.Properties.DistributiveLattice.L.isOrderTheoreticLattice"
d58 v0 v1 v2 = du58 v2
du58 v0
  = coe
      MAlonzo.Code.Algebra.Properties.Lattice.du172
      (coe
         MAlonzo.Code.Algebra.C655 (coe MAlonzo.Code.Algebra.d1412 v0)
         (coe MAlonzo.Code.Algebra.d1414 v0)
         (coe
            MAlonzo.Code.Algebra.Structures.d3038
            (coe MAlonzo.Code.Algebra.d1416 v0)))
name60
  = "Algebra.Properties.DistributiveLattice.L.orderTheoreticLattice"
d60 v0 v1 v2 = du60 v2
du60 v0
  = coe
      MAlonzo.Code.Algebra.Properties.Lattice.du224
      (coe
         MAlonzo.Code.Algebra.C655 (coe MAlonzo.Code.Algebra.d1412 v0)
         (coe MAlonzo.Code.Algebra.d1414 v0)
         (coe
            MAlonzo.Code.Algebra.Structures.d3038
            (coe MAlonzo.Code.Algebra.d1416 v0)))
name62 = "Algebra.Properties.DistributiveLattice.L.poset"
d62 v0 v1 v2 = du62 v2
du62 v0
  = coe
      MAlonzo.Code.Algebra.Properties.Lattice.du136
      (coe
         MAlonzo.Code.Algebra.C655 (coe MAlonzo.Code.Algebra.d1412 v0)
         (coe MAlonzo.Code.Algebra.d1414 v0)
         (coe
            MAlonzo.Code.Algebra.Structures.d3038
            (coe MAlonzo.Code.Algebra.d1416 v0)))
name64
  = "Algebra.Properties.DistributiveLattice.L.replace-equality"
d64 v0 v1 v2 = du64 v2
du64 v0 v1 v2
  = coe
      MAlonzo.Code.Algebra.Properties.Lattice.du232
      (coe
         MAlonzo.Code.Algebra.C655 (coe MAlonzo.Code.Algebra.d1412 v0)
         (coe MAlonzo.Code.Algebra.d1414 v0)
         (coe
            MAlonzo.Code.Algebra.Structures.d3038
            (coe MAlonzo.Code.Algebra.d1416 v0)))
      v2
name66
  = "Algebra.Properties.DistributiveLattice.L.\8743-idempotent"
d66 v0 v1 v2 = du66 v2
du66 v0
  = coe
      MAlonzo.Code.Algebra.Properties.Lattice.du124
      (coe
         MAlonzo.Code.Algebra.C655 (coe MAlonzo.Code.Algebra.d1412 v0)
         (coe MAlonzo.Code.Algebra.d1414 v0)
         (coe
            MAlonzo.Code.Algebra.Structures.d3038
            (coe MAlonzo.Code.Algebra.d1416 v0)))
name68
  = "Algebra.Properties.DistributiveLattice.L.\8743-\8744-isLattice"
d68 v0 v1 v2 = du68 v2
du68 v0
  = coe
      MAlonzo.Code.Algebra.Properties.Lattice.du132
      (coe
         MAlonzo.Code.Algebra.C655 (coe MAlonzo.Code.Algebra.d1412 v0)
         (coe MAlonzo.Code.Algebra.d1414 v0)
         (coe
            MAlonzo.Code.Algebra.Structures.d3038
            (coe MAlonzo.Code.Algebra.d1416 v0)))
name70
  = "Algebra.Properties.DistributiveLattice.L.\8743-\8744-lattice"
d70 v0 v1 v2 = du70 v2
du70 v0
  = coe
      MAlonzo.Code.Algebra.Properties.Lattice.du134
      (coe
         MAlonzo.Code.Algebra.C655 (coe MAlonzo.Code.Algebra.d1412 v0)
         (coe MAlonzo.Code.Algebra.d1414 v0)
         (coe
            MAlonzo.Code.Algebra.Structures.d3038
            (coe MAlonzo.Code.Algebra.d1416 v0)))
name72
  = "Algebra.Properties.DistributiveLattice.L.\8744-idempotent"
d72 v0 v1 v2 = du72 v2
du72 v0
  = coe
      MAlonzo.Code.Algebra.Properties.Lattice.du128
      (coe
         MAlonzo.Code.Algebra.C655 (coe MAlonzo.Code.Algebra.d1412 v0)
         (coe MAlonzo.Code.Algebra.d1414 v0)
         (coe
            MAlonzo.Code.Algebra.Structures.d3038
            (coe MAlonzo.Code.Algebra.d1416 v0)))
name78
  = "Algebra.Properties.DistributiveLattice._._DistributesOver_"
d78 = erased
name132 = "Algebra.Properties.DistributiveLattice._._\8718"
d132 v0 v1 v2 = du132 v2
du132 v0
  = let v1
          = coe
              MAlonzo.Code.Relation.Binary.C143
              (coe
                 MAlonzo.Code.Algebra.Structures.d2874
                 (coe
                    MAlonzo.Code.Algebra.Structures.d3038
                    (coe MAlonzo.Code.Algebra.d1416 v0))) in
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
name134
  = "Algebra.Properties.DistributiveLattice._._\8764\10216_\10217_"
d134 v0 v1 v2 = du134 v2
du134 v0
  = let v1
          = coe
              MAlonzo.Code.Relation.Binary.C143
              (coe
                 MAlonzo.Code.Algebra.Structures.d2874
                 (coe
                    MAlonzo.Code.Algebra.Structures.d3038
                    (coe MAlonzo.Code.Algebra.d1416 v0))) in
    coe
      MAlonzo.Code.Relation.Binary.PreorderReasoning.du72
      (coe MAlonzo.Code.Relation.Binary.du150 v1)
name148
  = "Algebra.Properties.DistributiveLattice.\8744-\8743-distrib"
d148 v0 v1 v2 = du148 v2
du148 v0
  = coe
      MAlonzo.Code.Data.Product.C30 (coe du154 v0)
      (coe
         MAlonzo.Code.Algebra.Structures.d3040
         (coe MAlonzo.Code.Algebra.d1416 v0))
name154
  = "Algebra.Properties.DistributiveLattice._.\8744-\8743-distrib\737"
d154 v0 v1 v2 v3 v4 v5 = du154 v2 v3 v4 v5
du154 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Relation.Binary.PreorderReasoning.d62
      (let v4
             = coe
                 MAlonzo.Code.Relation.Binary.C143
                 (coe
                    MAlonzo.Code.Algebra.Structures.d2874
                    (coe
                       MAlonzo.Code.Algebra.Structures.d3038
                       (coe MAlonzo.Code.Algebra.d1416 v0))) in
       MAlonzo.Code.Relation.Binary.PreorderReasoning.du72
         (MAlonzo.Code.Relation.Binary.du150 v4)
         (MAlonzo.Code.Algebra.d1412
            v0 v1 (MAlonzo.Code.Algebra.d1414 v0 v2 v3))
         (MAlonzo.Code.Algebra.d1412
            v0 (MAlonzo.Code.Algebra.d1414 v0 v2 v3) v1)
         (MAlonzo.Code.Algebra.d1414
            v0 (MAlonzo.Code.Algebra.d1412 v0 v1 v2)
            (MAlonzo.Code.Algebra.d1412 v0 v1 v3))
         (MAlonzo.Code.Algebra.Structures.d2876
            (MAlonzo.Code.Algebra.Structures.d3038
               (MAlonzo.Code.Algebra.d1416 v0))
            v1 (MAlonzo.Code.Algebra.d1414 v0 v2 v3))
         (let v5
                = coe
                    MAlonzo.Code.Relation.Binary.C143
                    (coe
                       MAlonzo.Code.Algebra.Structures.d2874
                       (coe
                          MAlonzo.Code.Algebra.Structures.d3038
                          (coe MAlonzo.Code.Algebra.d1416 v0))) in
          MAlonzo.Code.Relation.Binary.PreorderReasoning.du72
            (MAlonzo.Code.Relation.Binary.du150 v5)
            (MAlonzo.Code.Algebra.d1412
               v0 (MAlonzo.Code.Algebra.d1414 v0 v2 v3) v1)
            (MAlonzo.Code.Algebra.d1414
               v0 (MAlonzo.Code.Algebra.d1412 v0 v2 v1)
               (MAlonzo.Code.Algebra.d1412 v0 v3 v1))
            (MAlonzo.Code.Algebra.d1414
               v0 (MAlonzo.Code.Algebra.d1412 v0 v1 v2)
               (MAlonzo.Code.Algebra.d1412 v0 v1 v3))
            (MAlonzo.Code.Algebra.Structures.d3040
               (MAlonzo.Code.Algebra.d1416 v0) v1 v2 v3)
            (let v6
                   = coe
                       MAlonzo.Code.Relation.Binary.C143
                       (coe
                          MAlonzo.Code.Algebra.Structures.d2874
                          (coe
                             MAlonzo.Code.Algebra.Structures.d3038
                             (coe MAlonzo.Code.Algebra.d1416 v0))) in
             MAlonzo.Code.Relation.Binary.PreorderReasoning.du72
               (MAlonzo.Code.Relation.Binary.du150 v6)
               (MAlonzo.Code.Algebra.d1414
                  v0 (MAlonzo.Code.Algebra.d1412 v0 v2 v1)
                  (MAlonzo.Code.Algebra.d1412 v0 v3 v1))
               (MAlonzo.Code.Algebra.d1414
                  v0 (MAlonzo.Code.Algebra.d1412 v0 v1 v2)
                  (MAlonzo.Code.Algebra.d1412 v0 v1 v3))
               (MAlonzo.Code.Algebra.d1414
                  v0 (MAlonzo.Code.Algebra.d1412 v0 v1 v2)
                  (MAlonzo.Code.Algebra.d1412 v0 v1 v3))
               (MAlonzo.Code.Function.du176
                  (MAlonzo.Code.Algebra.Structures.d2876
                     (MAlonzo.Code.Algebra.Structures.d3038
                        (MAlonzo.Code.Algebra.d1416 v0))
                     v2 v1)
                  (MAlonzo.Code.Algebra.Structures.d2886
                     (MAlonzo.Code.Algebra.Structures.d3038
                        (MAlonzo.Code.Algebra.d1416 v0))
                     (MAlonzo.Code.Algebra.d1412 v0 v2 v1)
                     (MAlonzo.Code.Algebra.d1412 v0 v1 v2)
                     (MAlonzo.Code.Algebra.d1412 v0 v3 v1)
                     (MAlonzo.Code.Algebra.d1412 v0 v1 v3))
                  (MAlonzo.Code.Algebra.Structures.d2876
                     (MAlonzo.Code.Algebra.Structures.d3038
                        (MAlonzo.Code.Algebra.d1416 v0))
                     v3 v1))
               (let v7
                      = coe
                          MAlonzo.Code.Relation.Binary.C143
                          (coe
                             MAlonzo.Code.Algebra.Structures.d2874
                             (coe
                                MAlonzo.Code.Algebra.Structures.d3038
                                (coe MAlonzo.Code.Algebra.d1416 v0))) in
                let v8
                      = coe
                          MAlonzo.Code.Algebra.d1414 v0
                          (coe MAlonzo.Code.Algebra.d1412 v0 v1 v2)
                          (coe MAlonzo.Code.Algebra.d1412 v0 v1 v3) in
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
name162
  = "Algebra.Properties.DistributiveLattice.\8743-\8744-distrib"
d162 v0 v1 v2 = du162 v2
du162 v0
  = coe MAlonzo.Code.Data.Product.C30 (coe du168 v0) (coe du176 v0)
name168
  = "Algebra.Properties.DistributiveLattice._.\8743-\8744-distrib\737"
d168 v0 v1 v2 v3 v4 v5 = du168 v2 v3 v4 v5
du168 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Relation.Binary.PreorderReasoning.d62
      (let v4
             = coe
                 MAlonzo.Code.Relation.Binary.C143
                 (coe
                    MAlonzo.Code.Algebra.Structures.d2874
                    (coe
                       MAlonzo.Code.Algebra.Structures.d3038
                       (coe MAlonzo.Code.Algebra.d1416 v0))) in
       MAlonzo.Code.Relation.Binary.PreorderReasoning.du72
         (MAlonzo.Code.Relation.Binary.du150 v4)
         (MAlonzo.Code.Algebra.d1414
            v0 v1 (MAlonzo.Code.Algebra.d1412 v0 v2 v3))
         (MAlonzo.Code.Algebra.d1414
            v0
            (MAlonzo.Code.Algebra.d1414
               v0 v1 (MAlonzo.Code.Algebra.d1412 v0 v1 v2))
            (MAlonzo.Code.Algebra.d1412 v0 v2 v3))
         (MAlonzo.Code.Algebra.d1412
            v0 (MAlonzo.Code.Algebra.d1414 v0 v1 v2)
            (MAlonzo.Code.Algebra.d1414 v0 v1 v3))
         (MAlonzo.Code.Function.du176
            (MAlonzo.Code.Relation.Binary.Core.d518
               (MAlonzo.Code.Algebra.Structures.d2874
                  (MAlonzo.Code.Algebra.Structures.d3038
                     (MAlonzo.Code.Algebra.d1416 v0)))
               (MAlonzo.Code.Algebra.d1414
                  v0 v1 (MAlonzo.Code.Algebra.d1412 v0 v1 v2))
               v1
               (MAlonzo.Code.Data.Product.d28
                  (MAlonzo.Code.Algebra.Structures.d2888
                     (MAlonzo.Code.Algebra.Structures.d3038
                        (MAlonzo.Code.Algebra.d1416 v0)))
                  v1 v2))
            (MAlonzo.Code.Algebra.Structures.d2886
               (MAlonzo.Code.Algebra.Structures.d3038
                  (MAlonzo.Code.Algebra.d1416 v0))
               v1
               (MAlonzo.Code.Algebra.d1414
                  v0 v1 (MAlonzo.Code.Algebra.d1412 v0 v1 v2))
               (MAlonzo.Code.Algebra.d1412 v0 v2 v3)
               (MAlonzo.Code.Algebra.d1412 v0 v2 v3))
            (MAlonzo.Code.Relation.Binary.Core.d516
               (MAlonzo.Code.Algebra.Structures.d2874
                  (MAlonzo.Code.Algebra.Structures.d3038
                     (MAlonzo.Code.Algebra.d1416 v0)))
               (MAlonzo.Code.Algebra.d1412 v0 v2 v3)))
         (let v5
                = coe
                    MAlonzo.Code.Relation.Binary.C143
                    (coe
                       MAlonzo.Code.Algebra.Structures.d2874
                       (coe
                          MAlonzo.Code.Algebra.Structures.d3038
                          (coe MAlonzo.Code.Algebra.d1416 v0))) in
          MAlonzo.Code.Relation.Binary.PreorderReasoning.du72
            (MAlonzo.Code.Relation.Binary.du150 v5)
            (MAlonzo.Code.Algebra.d1414
               v0
               (MAlonzo.Code.Algebra.d1414
                  v0 v1 (MAlonzo.Code.Algebra.d1412 v0 v1 v2))
               (MAlonzo.Code.Algebra.d1412 v0 v2 v3))
            (MAlonzo.Code.Algebra.d1414
               v0
               (MAlonzo.Code.Algebra.d1414
                  v0 v1 (MAlonzo.Code.Algebra.d1412 v0 v2 v1))
               (MAlonzo.Code.Algebra.d1412 v0 v2 v3))
            (MAlonzo.Code.Algebra.d1412
               v0 (MAlonzo.Code.Algebra.d1414 v0 v1 v2)
               (MAlonzo.Code.Algebra.d1414 v0 v1 v3))
            (MAlonzo.Code.Function.du176
               (MAlonzo.Code.Function.du176
                  (MAlonzo.Code.Relation.Binary.Core.d516
                     (MAlonzo.Code.Algebra.Structures.d2874
                        (MAlonzo.Code.Algebra.Structures.d3038
                           (MAlonzo.Code.Algebra.d1416 v0)))
                     v1)
                  (MAlonzo.Code.Algebra.Structures.d2886
                     (MAlonzo.Code.Algebra.Structures.d3038
                        (MAlonzo.Code.Algebra.d1416 v0))
                     v1 v1 (MAlonzo.Code.Algebra.d1412 v0 v1 v2)
                     (MAlonzo.Code.Algebra.d1412 v0 v2 v1))
                  (MAlonzo.Code.Algebra.Structures.d2876
                     (MAlonzo.Code.Algebra.Structures.d3038
                        (MAlonzo.Code.Algebra.d1416 v0))
                     v1 v2))
               (MAlonzo.Code.Algebra.Structures.d2886
                  (MAlonzo.Code.Algebra.Structures.d3038
                     (MAlonzo.Code.Algebra.d1416 v0))
                  (MAlonzo.Code.Algebra.d1414
                     v0 v1 (MAlonzo.Code.Algebra.d1412 v0 v1 v2))
                  (MAlonzo.Code.Algebra.d1414
                     v0 v1 (MAlonzo.Code.Algebra.d1412 v0 v2 v1))
                  (MAlonzo.Code.Algebra.d1412 v0 v2 v3)
                  (MAlonzo.Code.Algebra.d1412 v0 v2 v3))
               (MAlonzo.Code.Relation.Binary.Core.d516
                  (MAlonzo.Code.Algebra.Structures.d2874
                     (MAlonzo.Code.Algebra.Structures.d3038
                        (MAlonzo.Code.Algebra.d1416 v0)))
                  (MAlonzo.Code.Algebra.d1412 v0 v2 v3)))
            (let v6
                   = coe
                       MAlonzo.Code.Relation.Binary.C143
                       (coe
                          MAlonzo.Code.Algebra.Structures.d2874
                          (coe
                             MAlonzo.Code.Algebra.Structures.d3038
                             (coe MAlonzo.Code.Algebra.d1416 v0))) in
             MAlonzo.Code.Relation.Binary.PreorderReasoning.du72
               (MAlonzo.Code.Relation.Binary.du150 v6)
               (MAlonzo.Code.Algebra.d1414
                  v0
                  (MAlonzo.Code.Algebra.d1414
                     v0 v1 (MAlonzo.Code.Algebra.d1412 v0 v2 v1))
                  (MAlonzo.Code.Algebra.d1412 v0 v2 v3))
               (MAlonzo.Code.Algebra.d1414
                  v0 v1
                  (MAlonzo.Code.Algebra.d1414
                     v0 (MAlonzo.Code.Algebra.d1412 v0 v2 v1)
                     (MAlonzo.Code.Algebra.d1412 v0 v2 v3)))
               (MAlonzo.Code.Algebra.d1412
                  v0 (MAlonzo.Code.Algebra.d1414 v0 v1 v2)
                  (MAlonzo.Code.Algebra.d1414 v0 v1 v3))
               (MAlonzo.Code.Algebra.Structures.d2884
                  (MAlonzo.Code.Algebra.Structures.d3038
                     (MAlonzo.Code.Algebra.d1416 v0))
                  v1 (MAlonzo.Code.Algebra.d1412 v0 v2 v1)
                  (MAlonzo.Code.Algebra.d1412 v0 v2 v3))
               (let v7
                      = coe
                          MAlonzo.Code.Relation.Binary.C143
                          (coe
                             MAlonzo.Code.Algebra.Structures.d2874
                             (coe
                                MAlonzo.Code.Algebra.Structures.d3038
                                (coe MAlonzo.Code.Algebra.d1416 v0))) in
                MAlonzo.Code.Relation.Binary.PreorderReasoning.du72
                  (MAlonzo.Code.Relation.Binary.du150 v7)
                  (MAlonzo.Code.Algebra.d1414
                     v0 v1
                     (MAlonzo.Code.Algebra.d1414
                        v0 (MAlonzo.Code.Algebra.d1412 v0 v2 v1)
                        (MAlonzo.Code.Algebra.d1412 v0 v2 v3)))
                  (MAlonzo.Code.Algebra.d1414
                     v0 v1
                     (MAlonzo.Code.Algebra.d1412
                        v0 v2 (MAlonzo.Code.Algebra.d1414 v0 v1 v3)))
                  (MAlonzo.Code.Algebra.d1412
                     v0 (MAlonzo.Code.Algebra.d1414 v0 v1 v2)
                     (MAlonzo.Code.Algebra.d1414 v0 v1 v3))
                  (MAlonzo.Code.Function.du176
                     (MAlonzo.Code.Relation.Binary.Core.d516
                        (MAlonzo.Code.Algebra.Structures.d2874
                           (MAlonzo.Code.Algebra.Structures.d3038
                              (MAlonzo.Code.Algebra.d1416 v0)))
                        v1)
                     (MAlonzo.Code.Algebra.Structures.d2886
                        (MAlonzo.Code.Algebra.Structures.d3038
                           (MAlonzo.Code.Algebra.d1416 v0))
                        v1 v1
                        (MAlonzo.Code.Algebra.d1414
                           v0 (MAlonzo.Code.Algebra.d1412 v0 v2 v1)
                           (MAlonzo.Code.Algebra.d1412 v0 v2 v3))
                        (MAlonzo.Code.Algebra.d1412
                           v0 v2 (MAlonzo.Code.Algebra.d1414 v0 v1 v3)))
                     (MAlonzo.Code.Relation.Binary.Core.d518
                        (MAlonzo.Code.Algebra.Structures.d2874
                           (MAlonzo.Code.Algebra.Structures.d3038
                              (MAlonzo.Code.Algebra.d1416 v0)))
                        (MAlonzo.Code.Algebra.d1412
                           v0 v2 (MAlonzo.Code.Algebra.d1414 v0 v1 v3))
                        (MAlonzo.Code.Algebra.d1414
                           v0 (MAlonzo.Code.Algebra.d1412 v0 v2 v1)
                           (MAlonzo.Code.Algebra.d1412 v0 v2 v3))
                        (MAlonzo.Code.Data.Product.d26 (du148 v0) v2 v1 v3)))
                  (let v8
                         = coe
                             MAlonzo.Code.Relation.Binary.C143
                             (coe
                                MAlonzo.Code.Algebra.Structures.d2874
                                (coe
                                   MAlonzo.Code.Algebra.Structures.d3038
                                   (coe MAlonzo.Code.Algebra.d1416 v0))) in
                   MAlonzo.Code.Relation.Binary.PreorderReasoning.du72
                     (MAlonzo.Code.Relation.Binary.du150 v8)
                     (MAlonzo.Code.Algebra.d1414
                        v0 v1
                        (MAlonzo.Code.Algebra.d1412
                           v0 v2 (MAlonzo.Code.Algebra.d1414 v0 v1 v3)))
                     (MAlonzo.Code.Algebra.d1414
                        v0
                        (MAlonzo.Code.Algebra.d1412
                           v0 v1 (MAlonzo.Code.Algebra.d1414 v0 v1 v3))
                        (MAlonzo.Code.Algebra.d1412
                           v0 v2 (MAlonzo.Code.Algebra.d1414 v0 v1 v3)))
                     (MAlonzo.Code.Algebra.d1412
                        v0 (MAlonzo.Code.Algebra.d1414 v0 v1 v2)
                        (MAlonzo.Code.Algebra.d1414 v0 v1 v3))
                     (MAlonzo.Code.Function.du176
                        (MAlonzo.Code.Relation.Binary.Core.d518
                           (MAlonzo.Code.Algebra.Structures.d2874
                              (MAlonzo.Code.Algebra.Structures.d3038
                                 (MAlonzo.Code.Algebra.d1416 v0)))
                           (MAlonzo.Code.Algebra.d1412
                              v0 v1 (MAlonzo.Code.Algebra.d1414 v0 v1 v3))
                           v1
                           (MAlonzo.Code.Data.Product.d26
                              (MAlonzo.Code.Algebra.Structures.d2888
                                 (MAlonzo.Code.Algebra.Structures.d3038
                                    (MAlonzo.Code.Algebra.d1416 v0)))
                              v1 v3))
                        (MAlonzo.Code.Algebra.Structures.d2886
                           (MAlonzo.Code.Algebra.Structures.d3038
                              (MAlonzo.Code.Algebra.d1416 v0))
                           v1
                           (MAlonzo.Code.Algebra.d1412
                              v0 v1 (MAlonzo.Code.Algebra.d1414 v0 v1 v3))
                           (MAlonzo.Code.Algebra.d1412
                              v0 v2 (MAlonzo.Code.Algebra.d1414 v0 v1 v3))
                           (MAlonzo.Code.Algebra.d1412
                              v0 v2 (MAlonzo.Code.Algebra.d1414 v0 v1 v3)))
                        (MAlonzo.Code.Relation.Binary.Core.d516
                           (MAlonzo.Code.Algebra.Structures.d2874
                              (MAlonzo.Code.Algebra.Structures.d3038
                                 (MAlonzo.Code.Algebra.d1416 v0)))
                           (MAlonzo.Code.Algebra.d1412
                              v0 v2 (MAlonzo.Code.Algebra.d1414 v0 v1 v3))))
                     (let v9
                            = coe
                                MAlonzo.Code.Relation.Binary.C143
                                (coe
                                   MAlonzo.Code.Algebra.Structures.d2874
                                   (coe
                                      MAlonzo.Code.Algebra.Structures.d3038
                                      (coe MAlonzo.Code.Algebra.d1416 v0))) in
                      MAlonzo.Code.Relation.Binary.PreorderReasoning.du72
                        (MAlonzo.Code.Relation.Binary.du150 v9)
                        (MAlonzo.Code.Algebra.d1414
                           v0
                           (MAlonzo.Code.Algebra.d1412
                              v0 v1 (MAlonzo.Code.Algebra.d1414 v0 v1 v3))
                           (MAlonzo.Code.Algebra.d1412
                              v0 v2 (MAlonzo.Code.Algebra.d1414 v0 v1 v3)))
                        (MAlonzo.Code.Algebra.d1412
                           v0 (MAlonzo.Code.Algebra.d1414 v0 v1 v2)
                           (MAlonzo.Code.Algebra.d1414 v0 v1 v3))
                        (MAlonzo.Code.Algebra.d1412
                           v0 (MAlonzo.Code.Algebra.d1414 v0 v1 v2)
                           (MAlonzo.Code.Algebra.d1414 v0 v1 v3))
                        (MAlonzo.Code.Function.du158
                           (MAlonzo.Code.Relation.Binary.Core.d518
                              (MAlonzo.Code.Algebra.Structures.d2874
                                 (MAlonzo.Code.Algebra.Structures.d3038
                                    (MAlonzo.Code.Algebra.d1416 v0)))
                              (MAlonzo.Code.Algebra.d1412
                                 v0 (MAlonzo.Code.Algebra.d1414 v0 v1 v2)
                                 (MAlonzo.Code.Algebra.d1414 v0 v1 v3))
                              (MAlonzo.Code.Algebra.d1414
                                 v0
                                 (MAlonzo.Code.Algebra.d1412
                                    v0 v1 (MAlonzo.Code.Algebra.d1414 v0 v1 v3))
                                 (MAlonzo.Code.Algebra.d1412
                                    v0 v2 (MAlonzo.Code.Algebra.d1414 v0 v1 v3))))
                           (MAlonzo.Code.Data.Product.d28
                              (du148 v0) (MAlonzo.Code.Algebra.d1414 v0 v1 v3) v1 v2))
                        (let v10
                               = coe
                                   MAlonzo.Code.Relation.Binary.C143
                                   (coe
                                      MAlonzo.Code.Algebra.Structures.d2874
                                      (coe
                                         MAlonzo.Code.Algebra.Structures.d3038
                                         (coe MAlonzo.Code.Algebra.d1416 v0))) in
                         let v11
                               = coe
                                   MAlonzo.Code.Algebra.d1412 v0
                                   (coe MAlonzo.Code.Algebra.d1414 v0 v1 v2)
                                   (coe MAlonzo.Code.Algebra.d1414 v0 v1 v3) in
                         MAlonzo.Code.Relation.Binary.PreorderReasoning.C56
                           (MAlonzo.Code.Relation.Binary.d38
                              (MAlonzo.Code.Relation.Binary.d92
                                 (MAlonzo.Code.Relation.Binary.du150 v10))
                              v11 v11
                              (MAlonzo.Code.Relation.Binary.Core.d516
                                 (MAlonzo.Code.Relation.Binary.d36
                                    (MAlonzo.Code.Relation.Binary.d92
                                       (MAlonzo.Code.Relation.Binary.du150 v10)))
                                 v11)))))))))
name176
  = "Algebra.Properties.DistributiveLattice._.\8743-\8744-distrib\691"
d176 v0 v1 v2 v3 v4 v5 = du176 v2 v3 v4 v5
du176 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Relation.Binary.PreorderReasoning.d62
      (let v4
             = coe
                 MAlonzo.Code.Relation.Binary.C143
                 (coe
                    MAlonzo.Code.Algebra.Structures.d2874
                    (coe
                       MAlonzo.Code.Algebra.Structures.d3038
                       (coe MAlonzo.Code.Algebra.d1416 v0))) in
       MAlonzo.Code.Relation.Binary.PreorderReasoning.du72
         (MAlonzo.Code.Relation.Binary.du150 v4)
         (MAlonzo.Code.Algebra.d1414
            v0 (MAlonzo.Code.Algebra.d1412 v0 v2 v3) v1)
         (MAlonzo.Code.Algebra.d1414
            v0 v1 (MAlonzo.Code.Algebra.d1412 v0 v2 v3))
         (MAlonzo.Code.Algebra.d1412
            v0 (MAlonzo.Code.Algebra.d1414 v0 v2 v1)
            (MAlonzo.Code.Algebra.d1414 v0 v3 v1))
         (MAlonzo.Code.Algebra.Structures.d2882
            (MAlonzo.Code.Algebra.Structures.d3038
               (MAlonzo.Code.Algebra.d1416 v0))
            (MAlonzo.Code.Algebra.d1412 v0 v2 v3) v1)
         (let v5
                = coe
                    MAlonzo.Code.Relation.Binary.C143
                    (coe
                       MAlonzo.Code.Algebra.Structures.d2874
                       (coe
                          MAlonzo.Code.Algebra.Structures.d3038
                          (coe MAlonzo.Code.Algebra.d1416 v0))) in
          MAlonzo.Code.Relation.Binary.PreorderReasoning.du72
            (MAlonzo.Code.Relation.Binary.du150 v5)
            (MAlonzo.Code.Algebra.d1414
               v0 v1 (MAlonzo.Code.Algebra.d1412 v0 v2 v3))
            (MAlonzo.Code.Algebra.d1412
               v0 (MAlonzo.Code.Algebra.d1414 v0 v1 v2)
               (MAlonzo.Code.Algebra.d1414 v0 v1 v3))
            (MAlonzo.Code.Algebra.d1412
               v0 (MAlonzo.Code.Algebra.d1414 v0 v2 v1)
               (MAlonzo.Code.Algebra.d1414 v0 v3 v1))
            (du168 v0 v1 v2 v3)
            (let v6
                   = coe
                       MAlonzo.Code.Relation.Binary.C143
                       (coe
                          MAlonzo.Code.Algebra.Structures.d2874
                          (coe
                             MAlonzo.Code.Algebra.Structures.d3038
                             (coe MAlonzo.Code.Algebra.d1416 v0))) in
             MAlonzo.Code.Relation.Binary.PreorderReasoning.du72
               (MAlonzo.Code.Relation.Binary.du150 v6)
               (MAlonzo.Code.Algebra.d1412
                  v0 (MAlonzo.Code.Algebra.d1414 v0 v1 v2)
                  (MAlonzo.Code.Algebra.d1414 v0 v1 v3))
               (MAlonzo.Code.Algebra.d1412
                  v0 (MAlonzo.Code.Algebra.d1414 v0 v2 v1)
                  (MAlonzo.Code.Algebra.d1414 v0 v3 v1))
               (MAlonzo.Code.Algebra.d1412
                  v0 (MAlonzo.Code.Algebra.d1414 v0 v2 v1)
                  (MAlonzo.Code.Algebra.d1414 v0 v3 v1))
               (MAlonzo.Code.Function.du176
                  (MAlonzo.Code.Algebra.Structures.d2882
                     (MAlonzo.Code.Algebra.Structures.d3038
                        (MAlonzo.Code.Algebra.d1416 v0))
                     v1 v2)
                  (MAlonzo.Code.Algebra.Structures.d2880
                     (MAlonzo.Code.Algebra.Structures.d3038
                        (MAlonzo.Code.Algebra.d1416 v0))
                     (MAlonzo.Code.Algebra.d1414 v0 v1 v2)
                     (MAlonzo.Code.Algebra.d1414 v0 v2 v1)
                     (MAlonzo.Code.Algebra.d1414 v0 v1 v3)
                     (MAlonzo.Code.Algebra.d1414 v0 v3 v1))
                  (MAlonzo.Code.Algebra.Structures.d2882
                     (MAlonzo.Code.Algebra.Structures.d3038
                        (MAlonzo.Code.Algebra.d1416 v0))
                     v1 v3))
               (let v7
                      = coe
                          MAlonzo.Code.Relation.Binary.C143
                          (coe
                             MAlonzo.Code.Algebra.Structures.d2874
                             (coe
                                MAlonzo.Code.Algebra.Structures.d3038
                                (coe MAlonzo.Code.Algebra.d1416 v0))) in
                let v8
                      = coe
                          MAlonzo.Code.Algebra.d1412 v0
                          (coe MAlonzo.Code.Algebra.d1414 v0 v2 v1)
                          (coe MAlonzo.Code.Algebra.d1414 v0 v3 v1) in
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
name184
  = "Algebra.Properties.DistributiveLattice.\8743-\8744-isDistributiveLattice"
d184 v0 v1 v2 = du184 v2
du184 v0
  = coe
      MAlonzo.Code.Algebra.Structures.C2083
      (coe
         MAlonzo.Code.Algebra.Properties.Lattice.du132
         (coe
            MAlonzo.Code.Algebra.C655 (coe MAlonzo.Code.Algebra.d1412 v0)
            (coe MAlonzo.Code.Algebra.d1414 v0)
            (coe
               MAlonzo.Code.Algebra.Structures.d3038
               (coe MAlonzo.Code.Algebra.d1416 v0))))
      (coe MAlonzo.Code.Data.Product.d28 (coe du162 v0))
name186
  = "Algebra.Properties.DistributiveLattice.\8743-\8744-distributiveLattice"
d186 v0 v1 v2 = du186 v2
du186 v0
  = coe
      MAlonzo.Code.Algebra.C687 (coe MAlonzo.Code.Algebra.d1414 v0)
      (coe MAlonzo.Code.Algebra.d1412 v0) (coe du184 v0)
name194 = "Algebra.Properties.DistributiveLattice.replace-equality"
d194 v0 v1 v2 v3 v4 = du194 v2 v4
du194 v0 v1
  = coe
      MAlonzo.Code.Algebra.C687 (coe MAlonzo.Code.Algebra.d1412 v0)
      (coe MAlonzo.Code.Algebra.d1414 v0)
      (coe
         MAlonzo.Code.Algebra.Structures.C2083
         (coe
            MAlonzo.Code.Algebra.d1358
            (coe
               MAlonzo.Code.Algebra.Properties.Lattice.du232
               (coe
                  MAlonzo.Code.Algebra.C655 (coe MAlonzo.Code.Algebra.d1412 v0)
                  (coe MAlonzo.Code.Algebra.d1414 v0)
                  (coe
                     MAlonzo.Code.Algebra.Structures.d3038
                     (coe MAlonzo.Code.Algebra.d1416 v0)))
               v1))
         (\ v2 v3 v4 ->
            coe
              MAlonzo.Code.Function.Equality.d38
              (coe
                 MAlonzo.Code.Function.Equivalence.d34
                 (coe
                    v1
                    (coe
                       MAlonzo.Code.Algebra.d1412 v0
                       (coe MAlonzo.Code.Algebra.d1414 v0 v3 v4) v2)
                    (coe
                       MAlonzo.Code.Algebra.d1414 v0
                       (coe MAlonzo.Code.Algebra.d1412 v0 v3 v2)
                       (coe MAlonzo.Code.Algebra.d1412 v0 v4 v2))))
              (coe
                 MAlonzo.Code.Algebra.Structures.d3040
                 (coe MAlonzo.Code.Algebra.d1416 v0) v2 v3 v4)))
name212 = "Algebra.Properties.DistributiveLattice._.E.to"
d212 v0 v1 v2 v3 v4 = du212 v2 v3 v4
du212 v0 v1 v2
  = coe MAlonzo.Code.Function.Equivalence.d34 (coe v0 v1 v2)