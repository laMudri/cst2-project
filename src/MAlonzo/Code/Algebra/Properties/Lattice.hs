{-# LANGUAGE EmptyDataDecls, ExistentialQuantification,
             ScopedTypeVariables, NoMonomorphismRestriction, Rank2Types #-}
module MAlonzo.Code.Algebra.Properties.Lattice where

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
import qualified MAlonzo.Code.Function.Equality
import qualified MAlonzo.Code.Function.Equivalence
import qualified MAlonzo.Code.Relation.Binary
import qualified MAlonzo.Code.Relation.Binary.Core
import qualified MAlonzo.Code.Relation.Binary.Lattice
import qualified MAlonzo.Code.Relation.Binary.PreorderReasoning

name108 = "Algebra.Properties.Lattice._._\8718"
d108 v0 v1 v2 = du108 v2
du108 v0
  = let v1
          = coe
              MAlonzo.Code.Relation.Binary.C143
              (coe
                 MAlonzo.Code.Algebra.Structures.d2874
                 (coe MAlonzo.Code.Algebra.d1358 v0)) in
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
name110 = "Algebra.Properties.Lattice._._\8764\10216_\10217_"
d110 v0 v1 v2 = du110 v2
du110 v0
  = let v1
          = coe
              MAlonzo.Code.Relation.Binary.C143
              (coe
                 MAlonzo.Code.Algebra.Structures.d2874
                 (coe MAlonzo.Code.Algebra.d1358 v0)) in
    coe
      MAlonzo.Code.Relation.Binary.PreorderReasoning.du72
      (coe MAlonzo.Code.Relation.Binary.du150 v1)
name124 = "Algebra.Properties.Lattice.\8743-idempotent"
d124 v0 v1 v2 v3 = du124 v2 v3
du124 v0 v1
  = coe
      MAlonzo.Code.Relation.Binary.PreorderReasoning.d62
      (let v2
             = coe
                 MAlonzo.Code.Relation.Binary.C143
                 (coe
                    MAlonzo.Code.Algebra.Structures.d2874
                    (coe MAlonzo.Code.Algebra.d1358 v0)) in
       MAlonzo.Code.Relation.Binary.PreorderReasoning.du72
         (MAlonzo.Code.Relation.Binary.du150 v2)
         (MAlonzo.Code.Algebra.d1356 v0 v1 v1)
         (MAlonzo.Code.Algebra.d1356
            v0 v1
            (MAlonzo.Code.Algebra.d1354
               v0 v1 (MAlonzo.Code.Algebra.d1356 v0 v1 v1)))
         v1
         (MAlonzo.Code.Function.du176
            (MAlonzo.Code.Relation.Binary.Core.d516
               (MAlonzo.Code.Algebra.Structures.d2874
                  (MAlonzo.Code.Algebra.d1358 v0))
               v1)
            (MAlonzo.Code.Algebra.Structures.d2886
               (MAlonzo.Code.Algebra.d1358 v0) v1 v1 v1
               (MAlonzo.Code.Algebra.d1354
                  v0 v1 (MAlonzo.Code.Algebra.d1356 v0 v1 v1)))
            (MAlonzo.Code.Relation.Binary.Core.d518
               (MAlonzo.Code.Algebra.Structures.d2874
                  (MAlonzo.Code.Algebra.d1358 v0))
               (MAlonzo.Code.Algebra.d1354
                  v0 v1 (MAlonzo.Code.Algebra.d1356 v0 v1 v1))
               v1
               (MAlonzo.Code.Data.Product.d26
                  (MAlonzo.Code.Algebra.Structures.d2888
                     (MAlonzo.Code.Algebra.d1358 v0))
                  v1 v1)))
         (let v3
                = coe
                    MAlonzo.Code.Relation.Binary.C143
                    (coe
                       MAlonzo.Code.Algebra.Structures.d2874
                       (coe MAlonzo.Code.Algebra.d1358 v0)) in
          MAlonzo.Code.Relation.Binary.PreorderReasoning.du72
            (MAlonzo.Code.Relation.Binary.du150 v3)
            (MAlonzo.Code.Algebra.d1356
               v0 v1
               (MAlonzo.Code.Algebra.d1354
                  v0 v1 (MAlonzo.Code.Algebra.d1356 v0 v1 v1)))
            v1 v1
            (MAlonzo.Code.Data.Product.d28
               (MAlonzo.Code.Algebra.Structures.d2888
                  (MAlonzo.Code.Algebra.d1358 v0))
               v1 (MAlonzo.Code.Algebra.d1356 v0 v1 v1))
            (let v4
                   = coe
                       MAlonzo.Code.Relation.Binary.C143
                       (coe
                          MAlonzo.Code.Algebra.Structures.d2874
                          (coe MAlonzo.Code.Algebra.d1358 v0)) in
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
name128 = "Algebra.Properties.Lattice.\8744-idempotent"
d128 v0 v1 v2 v3 = du128 v2 v3
du128 v0 v1
  = coe
      MAlonzo.Code.Relation.Binary.PreorderReasoning.d62
      (let v2
             = coe
                 MAlonzo.Code.Relation.Binary.C143
                 (coe
                    MAlonzo.Code.Algebra.Structures.d2874
                    (coe MAlonzo.Code.Algebra.d1358 v0)) in
       MAlonzo.Code.Relation.Binary.PreorderReasoning.du72
         (MAlonzo.Code.Relation.Binary.du150 v2)
         (MAlonzo.Code.Algebra.d1354 v0 v1 v1)
         (MAlonzo.Code.Algebra.d1354
            v0 v1 (MAlonzo.Code.Algebra.d1356 v0 v1 v1))
         v1
         (MAlonzo.Code.Function.du176
            (MAlonzo.Code.Relation.Binary.Core.d516
               (MAlonzo.Code.Algebra.Structures.d2874
                  (MAlonzo.Code.Algebra.d1358 v0))
               v1)
            (MAlonzo.Code.Algebra.Structures.d2880
               (MAlonzo.Code.Algebra.d1358 v0) v1 v1 v1
               (MAlonzo.Code.Algebra.d1356 v0 v1 v1))
            (MAlonzo.Code.Relation.Binary.Core.d518
               (MAlonzo.Code.Algebra.Structures.d2874
                  (MAlonzo.Code.Algebra.d1358 v0))
               (MAlonzo.Code.Algebra.d1356 v0 v1 v1) v1 (du124 v0 v1)))
         (let v3
                = coe
                    MAlonzo.Code.Relation.Binary.C143
                    (coe
                       MAlonzo.Code.Algebra.Structures.d2874
                       (coe MAlonzo.Code.Algebra.d1358 v0)) in
          MAlonzo.Code.Relation.Binary.PreorderReasoning.du72
            (MAlonzo.Code.Relation.Binary.du150 v3)
            (MAlonzo.Code.Algebra.d1354
               v0 v1 (MAlonzo.Code.Algebra.d1356 v0 v1 v1))
            v1 v1
            (MAlonzo.Code.Data.Product.d26
               (MAlonzo.Code.Algebra.Structures.d2888
                  (MAlonzo.Code.Algebra.d1358 v0))
               v1 v1)
            (let v4
                   = coe
                       MAlonzo.Code.Relation.Binary.C143
                       (coe
                          MAlonzo.Code.Algebra.Structures.d2874
                          (coe MAlonzo.Code.Algebra.d1358 v0)) in
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
name132 = "Algebra.Properties.Lattice.\8743-\8744-isLattice"
d132 v0 v1 v2 = du132 v2
du132 v0
  = coe
      MAlonzo.Code.Algebra.Structures.C1999
      (coe
         MAlonzo.Code.Algebra.Structures.d2874
         (coe MAlonzo.Code.Algebra.d1358 v0))
      (coe
         MAlonzo.Code.Algebra.Structures.d2882
         (coe MAlonzo.Code.Algebra.d1358 v0))
      (coe
         MAlonzo.Code.Algebra.Structures.d2884
         (coe MAlonzo.Code.Algebra.d1358 v0))
      (coe
         MAlonzo.Code.Algebra.Structures.d2886
         (coe MAlonzo.Code.Algebra.d1358 v0))
      (coe
         MAlonzo.Code.Algebra.Structures.d2876
         (coe MAlonzo.Code.Algebra.d1358 v0))
      (coe
         MAlonzo.Code.Algebra.Structures.d2878
         (coe MAlonzo.Code.Algebra.d1358 v0))
      (coe
         MAlonzo.Code.Algebra.Structures.d2880
         (coe MAlonzo.Code.Algebra.d1358 v0))
      (coe
         MAlonzo.Code.Data.Product.du250
         (coe
            MAlonzo.Code.Algebra.Structures.d2888
            (coe MAlonzo.Code.Algebra.d1358 v0)))
name134 = "Algebra.Properties.Lattice.\8743-\8744-lattice"
d134 v0 v1 v2 = du134 v2
du134 v0
  = coe
      MAlonzo.Code.Algebra.C655 (coe MAlonzo.Code.Algebra.d1356 v0)
      (coe MAlonzo.Code.Algebra.d1354 v0) (coe du132 v0)
name136 = "Algebra.Properties.Lattice.poset"
d136 v0 v1 v2 = du136 v2
du136 v0
  = coe
      MAlonzo.Code.Relation.Binary.C345
      (coe
         MAlonzo.Code.Relation.Binary.C327
         (coe
            MAlonzo.Code.Relation.Binary.C17
            (coe
               MAlonzo.Code.Algebra.Structures.d2874
               (coe MAlonzo.Code.Algebra.d1358 v0))
            (\ v1 v2 v3 ->
               coe
                 MAlonzo.Code.Relation.Binary.PreorderReasoning.d62
                 (let v4
                        = coe
                            MAlonzo.Code.Relation.Binary.C143
                            (coe
                               MAlonzo.Code.Algebra.Structures.d2874
                               (coe MAlonzo.Code.Algebra.d1358 v0)) in
                  MAlonzo.Code.Relation.Binary.PreorderReasoning.du72
                    (MAlonzo.Code.Relation.Binary.du150 v4) v1
                    (MAlonzo.Code.Algebra.d1356 v0 v1 v1)
                    (MAlonzo.Code.Algebra.d1356 v0 v1 v2)
                    (MAlonzo.Code.Function.du158
                       (MAlonzo.Code.Relation.Binary.Core.d518
                          (MAlonzo.Code.Algebra.Structures.d2874
                             (MAlonzo.Code.Algebra.d1358 v0))
                          (MAlonzo.Code.Algebra.d1356 v0 v1 v1) v1)
                       (du124 v0 v1))
                    (let v5
                           = coe
                               MAlonzo.Code.Relation.Binary.C143
                               (coe
                                  MAlonzo.Code.Algebra.Structures.d2874
                                  (coe MAlonzo.Code.Algebra.d1358 v0)) in
                     MAlonzo.Code.Relation.Binary.PreorderReasoning.du72
                       (MAlonzo.Code.Relation.Binary.du150 v5)
                       (MAlonzo.Code.Algebra.d1356 v0 v1 v1)
                       (MAlonzo.Code.Algebra.d1356 v0 v1 v2)
                       (MAlonzo.Code.Algebra.d1356 v0 v1 v2)
                       (MAlonzo.Code.Algebra.Structures.d2886
                          (MAlonzo.Code.Algebra.d1358 v0) v1 v1 v1 v2
                          (MAlonzo.Code.Relation.Binary.Core.d516
                             (MAlonzo.Code.Algebra.Structures.d2874
                                (MAlonzo.Code.Algebra.d1358 v0))
                             v1)
                          v3)
                       (let v6
                              = coe
                                  MAlonzo.Code.Relation.Binary.C143
                                  (coe
                                     MAlonzo.Code.Algebra.Structures.d2874
                                     (coe MAlonzo.Code.Algebra.d1358 v0)) in
                        let v7 = coe MAlonzo.Code.Algebra.d1356 v0 v1 v2 in
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
            (\ v1 v2 v3 v4 v5 ->
               coe
                 MAlonzo.Code.Relation.Binary.PreorderReasoning.d62
                 (let v6
                        = coe
                            MAlonzo.Code.Relation.Binary.C143
                            (coe
                               MAlonzo.Code.Algebra.Structures.d2874
                               (coe MAlonzo.Code.Algebra.d1358 v0)) in
                  MAlonzo.Code.Relation.Binary.PreorderReasoning.du72
                    (MAlonzo.Code.Relation.Binary.du150 v6) v1
                    (MAlonzo.Code.Algebra.d1356 v0 v1 v2)
                    (MAlonzo.Code.Algebra.d1356 v0 v1 v3) v4
                    (let v7
                           = coe
                               MAlonzo.Code.Relation.Binary.C143
                               (coe
                                  MAlonzo.Code.Algebra.Structures.d2874
                                  (coe MAlonzo.Code.Algebra.d1358 v0)) in
                     MAlonzo.Code.Relation.Binary.PreorderReasoning.du72
                       (MAlonzo.Code.Relation.Binary.du150 v7)
                       (MAlonzo.Code.Algebra.d1356 v0 v1 v2)
                       (MAlonzo.Code.Algebra.d1356
                          v0 v1 (MAlonzo.Code.Algebra.d1356 v0 v2 v3))
                       (MAlonzo.Code.Algebra.d1356 v0 v1 v3)
                       (MAlonzo.Code.Algebra.Structures.d2886
                          (MAlonzo.Code.Algebra.d1358 v0) v1 v1 v2
                          (MAlonzo.Code.Algebra.d1356 v0 v2 v3)
                          (MAlonzo.Code.Relation.Binary.Core.d516
                             (MAlonzo.Code.Algebra.Structures.d2874
                                (MAlonzo.Code.Algebra.d1358 v0))
                             v1)
                          v5)
                       (let v8
                              = coe
                                  MAlonzo.Code.Relation.Binary.C143
                                  (coe
                                     MAlonzo.Code.Algebra.Structures.d2874
                                     (coe MAlonzo.Code.Algebra.d1358 v0)) in
                        MAlonzo.Code.Relation.Binary.PreorderReasoning.du72
                          (MAlonzo.Code.Relation.Binary.du150 v8)
                          (MAlonzo.Code.Algebra.d1356
                             v0 v1 (MAlonzo.Code.Algebra.d1356 v0 v2 v3))
                          (MAlonzo.Code.Algebra.d1356
                             v0 (MAlonzo.Code.Algebra.d1356 v0 v1 v2) v3)
                          (MAlonzo.Code.Algebra.d1356 v0 v1 v3)
                          (MAlonzo.Code.Relation.Binary.Core.d518
                             (MAlonzo.Code.Algebra.Structures.d2874
                                (MAlonzo.Code.Algebra.d1358 v0))
                             (MAlonzo.Code.Algebra.d1356
                                v0 (MAlonzo.Code.Algebra.d1356 v0 v1 v2) v3)
                             (MAlonzo.Code.Algebra.d1356
                                v0 v1 (MAlonzo.Code.Algebra.d1356 v0 v2 v3))
                             (MAlonzo.Code.Algebra.Structures.d2884
                                (MAlonzo.Code.Algebra.d1358 v0) v1 v2 v3))
                          (let v9
                                 = coe
                                     MAlonzo.Code.Relation.Binary.C143
                                     (coe
                                        MAlonzo.Code.Algebra.Structures.d2874
                                        (coe MAlonzo.Code.Algebra.d1358 v0)) in
                           MAlonzo.Code.Relation.Binary.PreorderReasoning.du72
                             (MAlonzo.Code.Relation.Binary.du150 v9)
                             (MAlonzo.Code.Algebra.d1356
                                v0 (MAlonzo.Code.Algebra.d1356 v0 v1 v2) v3)
                             (MAlonzo.Code.Algebra.d1356 v0 v1 v3)
                             (MAlonzo.Code.Algebra.d1356 v0 v1 v3)
                             (MAlonzo.Code.Algebra.Structures.d2886
                                (MAlonzo.Code.Algebra.d1358 v0)
                                (MAlonzo.Code.Algebra.d1356 v0 v1 v2) v1 v3 v3
                                (MAlonzo.Code.Relation.Binary.Core.d518
                                   (MAlonzo.Code.Algebra.Structures.d2874
                                      (MAlonzo.Code.Algebra.d1358 v0))
                                   v1 (MAlonzo.Code.Algebra.d1356 v0 v1 v2) v4)
                                (MAlonzo.Code.Relation.Binary.Core.d516
                                   (MAlonzo.Code.Algebra.Structures.d2874
                                      (MAlonzo.Code.Algebra.d1358 v0))
                                   v3))
                             (let v10
                                    = coe
                                        MAlonzo.Code.Relation.Binary.C143
                                        (coe
                                           MAlonzo.Code.Algebra.Structures.d2874
                                           (coe MAlonzo.Code.Algebra.d1358 v0)) in
                              let v11 = coe MAlonzo.Code.Algebra.d1356 v0 v1 v3 in
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
         (\ v1 v2 v3 v4 ->
            coe
              MAlonzo.Code.Relation.Binary.PreorderReasoning.d62
              (let v5
                     = coe
                         MAlonzo.Code.Relation.Binary.C143
                         (coe
                            MAlonzo.Code.Algebra.Structures.d2874
                            (coe MAlonzo.Code.Algebra.d1358 v0)) in
               MAlonzo.Code.Relation.Binary.PreorderReasoning.du72
                 (MAlonzo.Code.Relation.Binary.du150 v5) v1
                 (MAlonzo.Code.Algebra.d1356 v0 v1 v2) v2 v3
                 (let v6
                        = coe
                            MAlonzo.Code.Relation.Binary.C143
                            (coe
                               MAlonzo.Code.Algebra.Structures.d2874
                               (coe MAlonzo.Code.Algebra.d1358 v0)) in
                  MAlonzo.Code.Relation.Binary.PreorderReasoning.du72
                    (MAlonzo.Code.Relation.Binary.du150 v6)
                    (MAlonzo.Code.Algebra.d1356 v0 v1 v2)
                    (MAlonzo.Code.Algebra.d1356 v0 v2 v1) v2
                    (MAlonzo.Code.Algebra.Structures.d2882
                       (MAlonzo.Code.Algebra.d1358 v0) v1 v2)
                    (let v7
                           = coe
                               MAlonzo.Code.Relation.Binary.C143
                               (coe
                                  MAlonzo.Code.Algebra.Structures.d2874
                                  (coe MAlonzo.Code.Algebra.d1358 v0)) in
                     MAlonzo.Code.Relation.Binary.PreorderReasoning.du72
                       (MAlonzo.Code.Relation.Binary.du150 v7)
                       (MAlonzo.Code.Algebra.d1356 v0 v2 v1) v2 v2
                       (MAlonzo.Code.Relation.Binary.Core.d518
                          (MAlonzo.Code.Algebra.Structures.d2874
                             (MAlonzo.Code.Algebra.d1358 v0))
                          v2 (MAlonzo.Code.Algebra.d1356 v0 v2 v1) v4)
                       (let v8
                              = coe
                                  MAlonzo.Code.Relation.Binary.C143
                                  (coe
                                     MAlonzo.Code.Algebra.Structures.d2874
                                     (coe MAlonzo.Code.Algebra.d1358 v0)) in
                        MAlonzo.Code.Relation.Binary.PreorderReasoning.C56
                          (MAlonzo.Code.Relation.Binary.d38
                             (MAlonzo.Code.Relation.Binary.d92
                                (MAlonzo.Code.Relation.Binary.du150 v8))
                             v2 v2
                             (MAlonzo.Code.Relation.Binary.Core.d516
                                (MAlonzo.Code.Relation.Binary.d36
                                   (MAlonzo.Code.Relation.Binary.d92
                                      (MAlonzo.Code.Relation.Binary.du150 v8)))
                                v2))))))))
name168 = "Algebra.Properties.Lattice._._\8804_"
d168 = erased
name170 = "Algebra.Properties.Lattice._.isPartialOrder"
d170 v0 v1 v2 = du170 v2
du170 v0 = coe MAlonzo.Code.Relation.Binary.d322 (coe du136 v0)
name172 = "Algebra.Properties.Lattice.isOrderTheoreticLattice"
d172 v0 v1 v2 = du172 v2
du172 v0
  = coe
      MAlonzo.Code.Relation.Binary.Lattice.C381
      (coe MAlonzo.Code.Relation.Binary.d322 (coe du136 v0))
      (\ v1 v2 ->
         coe
           MAlonzo.Code.Data.Product.C30
           (coe
              MAlonzo.Code.Relation.Binary.Core.d518
              (coe
                 MAlonzo.Code.Algebra.Structures.d2874
                 (coe MAlonzo.Code.Algebra.d1358 v0))
              (coe
                 MAlonzo.Code.Algebra.d1356 v0 v1
                 (coe MAlonzo.Code.Algebra.d1354 v0 v1 v2))
              v1 (coe du178 v0 v1 v2))
           (coe
              MAlonzo.Code.Data.Product.C30
              (coe
                 MAlonzo.Code.Relation.Binary.PreorderReasoning.d62
                 (let v3
                        = coe
                            MAlonzo.Code.Relation.Binary.C143
                            (coe
                               MAlonzo.Code.Algebra.Structures.d2874
                               (coe MAlonzo.Code.Algebra.d1358 v0)) in
                  MAlonzo.Code.Relation.Binary.PreorderReasoning.du72
                    (MAlonzo.Code.Relation.Binary.du150 v3) v2
                    (MAlonzo.Code.Algebra.d1356
                       v0 v2 (MAlonzo.Code.Algebra.d1354 v0 v2 v1))
                    (MAlonzo.Code.Algebra.d1356
                       v0 v2 (MAlonzo.Code.Algebra.d1354 v0 v1 v2))
                    (MAlonzo.Code.Relation.Binary.Core.d518
                       (MAlonzo.Code.Algebra.Structures.d2874
                          (MAlonzo.Code.Algebra.d1358 v0))
                       (MAlonzo.Code.Algebra.d1356
                          v0 v2 (MAlonzo.Code.Algebra.d1354 v0 v2 v1))
                       v2 (du178 v0 v2 v1))
                    (let v4
                           = coe
                               MAlonzo.Code.Relation.Binary.C143
                               (coe
                                  MAlonzo.Code.Algebra.Structures.d2874
                                  (coe MAlonzo.Code.Algebra.d1358 v0)) in
                     MAlonzo.Code.Relation.Binary.PreorderReasoning.du72
                       (MAlonzo.Code.Relation.Binary.du150 v4)
                       (MAlonzo.Code.Algebra.d1356
                          v0 v2 (MAlonzo.Code.Algebra.d1354 v0 v2 v1))
                       (MAlonzo.Code.Algebra.d1356
                          v0 v2 (MAlonzo.Code.Algebra.d1354 v0 v1 v2))
                       (MAlonzo.Code.Algebra.d1356
                          v0 v2 (MAlonzo.Code.Algebra.d1354 v0 v1 v2))
                       (MAlonzo.Code.Algebra.Structures.d2886
                          (MAlonzo.Code.Algebra.d1358 v0) v2 v2
                          (MAlonzo.Code.Algebra.d1354 v0 v2 v1)
                          (MAlonzo.Code.Algebra.d1354 v0 v1 v2)
                          (MAlonzo.Code.Relation.Binary.Core.d516
                             (MAlonzo.Code.Algebra.Structures.d2874
                                (MAlonzo.Code.Algebra.d1358 v0))
                             v2)
                          (MAlonzo.Code.Algebra.Structures.d2876
                             (MAlonzo.Code.Algebra.d1358 v0) v2 v1))
                       (let v5
                              = coe
                                  MAlonzo.Code.Relation.Binary.C143
                                  (coe
                                     MAlonzo.Code.Algebra.Structures.d2874
                                     (coe MAlonzo.Code.Algebra.d1358 v0)) in
                        let v6
                              = coe
                                  MAlonzo.Code.Algebra.d1356 v0 v2
                                  (coe MAlonzo.Code.Algebra.d1354 v0 v1 v2) in
                        MAlonzo.Code.Relation.Binary.PreorderReasoning.C56
                          (MAlonzo.Code.Relation.Binary.d38
                             (MAlonzo.Code.Relation.Binary.d92
                                (MAlonzo.Code.Relation.Binary.du150 v5))
                             v6 v6
                             (MAlonzo.Code.Relation.Binary.Core.d516
                                (MAlonzo.Code.Relation.Binary.d36
                                   (MAlonzo.Code.Relation.Binary.d92
                                      (MAlonzo.Code.Relation.Binary.du150 v5)))
                                v6))))))
              (\ v3 v4 v5 ->
                 coe
                   du196 v0 (coe MAlonzo.Code.Algebra.d1354 v0 v1 v2) v3
                   (coe
                      MAlonzo.Code.Relation.Binary.PreorderReasoning.d62
                      (let v6
                             = coe
                                 MAlonzo.Code.Relation.Binary.C143
                                 (coe
                                    MAlonzo.Code.Algebra.Structures.d2874
                                    (coe MAlonzo.Code.Algebra.d1358 v0)) in
                       MAlonzo.Code.Relation.Binary.PreorderReasoning.du72
                         (MAlonzo.Code.Relation.Binary.du150 v6)
                         (MAlonzo.Code.Algebra.d1354
                            v0 (MAlonzo.Code.Algebra.d1354 v0 v1 v2) v3)
                         (MAlonzo.Code.Algebra.d1354
                            v0 v1 (MAlonzo.Code.Algebra.d1354 v0 v2 v3))
                         v3
                         (MAlonzo.Code.Algebra.Structures.d2878
                            (MAlonzo.Code.Algebra.d1358 v0) v1 v2 v3)
                         (let v7
                                = coe
                                    MAlonzo.Code.Relation.Binary.C143
                                    (coe
                                       MAlonzo.Code.Algebra.Structures.d2874
                                       (coe MAlonzo.Code.Algebra.d1358 v0)) in
                          MAlonzo.Code.Relation.Binary.PreorderReasoning.du72
                            (MAlonzo.Code.Relation.Binary.du150 v7)
                            (MAlonzo.Code.Algebra.d1354
                               v0 v1 (MAlonzo.Code.Algebra.d1354 v0 v2 v3))
                            (MAlonzo.Code.Algebra.d1354 v0 v1 v3) v3
                            (MAlonzo.Code.Algebra.Structures.d2880
                               (MAlonzo.Code.Algebra.d1358 v0) v1 v1
                               (MAlonzo.Code.Algebra.d1354 v0 v2 v3) v3
                               (MAlonzo.Code.Relation.Binary.Core.d516
                                  (MAlonzo.Code.Algebra.Structures.d2874
                                     (MAlonzo.Code.Algebra.d1358 v0))
                                  v1)
                               (du184 v0 v2 v3 v5))
                            (let v8
                                   = coe
                                       MAlonzo.Code.Relation.Binary.C143
                                       (coe
                                          MAlonzo.Code.Algebra.Structures.d2874
                                          (coe MAlonzo.Code.Algebra.d1358 v0)) in
                             MAlonzo.Code.Relation.Binary.PreorderReasoning.du72
                               (MAlonzo.Code.Relation.Binary.du150 v8)
                               (MAlonzo.Code.Algebra.d1354 v0 v1 v3) v3 v3 (du184 v0 v1 v3 v4)
                               (let v9
                                      = coe
                                          MAlonzo.Code.Relation.Binary.C143
                                          (coe
                                             MAlonzo.Code.Algebra.Structures.d2874
                                             (coe MAlonzo.Code.Algebra.d1358 v0)) in
                                MAlonzo.Code.Relation.Binary.PreorderReasoning.C56
                                  (MAlonzo.Code.Relation.Binary.d38
                                     (MAlonzo.Code.Relation.Binary.d92
                                        (MAlonzo.Code.Relation.Binary.du150 v9))
                                     v3 v3
                                     (MAlonzo.Code.Relation.Binary.Core.d516
                                        (MAlonzo.Code.Relation.Binary.d36
                                           (MAlonzo.Code.Relation.Binary.d92
                                              (MAlonzo.Code.Relation.Binary.du150 v9)))
                                        v3))))))))))
      (\ v1 v2 ->
         coe
           MAlonzo.Code.Data.Product.C30
           (coe
              MAlonzo.Code.Relation.Binary.PreorderReasoning.d62
              (let v3
                     = coe
                         MAlonzo.Code.Relation.Binary.C143
                         (coe
                            MAlonzo.Code.Algebra.Structures.d2874
                            (coe MAlonzo.Code.Algebra.d1358 v0)) in
               MAlonzo.Code.Relation.Binary.PreorderReasoning.du72
                 (MAlonzo.Code.Relation.Binary.du150 v3)
                 (MAlonzo.Code.Algebra.d1356 v0 v1 v2)
                 (MAlonzo.Code.Algebra.d1356
                    v0 (MAlonzo.Code.Algebra.d1356 v0 v1 v1) v2)
                 (MAlonzo.Code.Algebra.d1356
                    v0 (MAlonzo.Code.Algebra.d1356 v0 v1 v2) v1)
                 (MAlonzo.Code.Algebra.Structures.d2886
                    (MAlonzo.Code.Algebra.d1358 v0) v1
                    (MAlonzo.Code.Algebra.d1356 v0 v1 v1) v2 v2
                    (MAlonzo.Code.Relation.Binary.Core.d518
                       (MAlonzo.Code.Algebra.Structures.d2874
                          (MAlonzo.Code.Algebra.d1358 v0))
                       (MAlonzo.Code.Algebra.d1356 v0 v1 v1) v1 (du124 v0 v1))
                    (MAlonzo.Code.Relation.Binary.Core.d516
                       (MAlonzo.Code.Algebra.Structures.d2874
                          (MAlonzo.Code.Algebra.d1358 v0))
                       v2))
                 (let v4
                        = coe
                            MAlonzo.Code.Relation.Binary.C143
                            (coe
                               MAlonzo.Code.Algebra.Structures.d2874
                               (coe MAlonzo.Code.Algebra.d1358 v0)) in
                  MAlonzo.Code.Relation.Binary.PreorderReasoning.du72
                    (MAlonzo.Code.Relation.Binary.du150 v4)
                    (MAlonzo.Code.Algebra.d1356
                       v0 (MAlonzo.Code.Algebra.d1356 v0 v1 v1) v2)
                    (MAlonzo.Code.Algebra.d1356
                       v0 v1 (MAlonzo.Code.Algebra.d1356 v0 v1 v2))
                    (MAlonzo.Code.Algebra.d1356
                       v0 (MAlonzo.Code.Algebra.d1356 v0 v1 v2) v1)
                    (MAlonzo.Code.Algebra.Structures.d2884
                       (MAlonzo.Code.Algebra.d1358 v0) v1 v1 v2)
                    (let v5
                           = coe
                               MAlonzo.Code.Relation.Binary.C143
                               (coe
                                  MAlonzo.Code.Algebra.Structures.d2874
                                  (coe MAlonzo.Code.Algebra.d1358 v0)) in
                     MAlonzo.Code.Relation.Binary.PreorderReasoning.du72
                       (MAlonzo.Code.Relation.Binary.du150 v5)
                       (MAlonzo.Code.Algebra.d1356
                          v0 v1 (MAlonzo.Code.Algebra.d1356 v0 v1 v2))
                       (MAlonzo.Code.Algebra.d1356
                          v0 (MAlonzo.Code.Algebra.d1356 v0 v1 v2) v1)
                       (MAlonzo.Code.Algebra.d1356
                          v0 (MAlonzo.Code.Algebra.d1356 v0 v1 v2) v1)
                       (MAlonzo.Code.Algebra.Structures.d2882
                          (MAlonzo.Code.Algebra.d1358 v0) v1
                          (MAlonzo.Code.Algebra.d1356 v0 v1 v2))
                       (let v6
                              = coe
                                  MAlonzo.Code.Relation.Binary.C143
                                  (coe
                                     MAlonzo.Code.Algebra.Structures.d2874
                                     (coe MAlonzo.Code.Algebra.d1358 v0)) in
                        let v7
                              = coe
                                  MAlonzo.Code.Algebra.d1356 v0
                                  (coe MAlonzo.Code.Algebra.d1356 v0 v1 v2) v1 in
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
           (coe
              MAlonzo.Code.Data.Product.C30
              (coe
                 MAlonzo.Code.Relation.Binary.PreorderReasoning.d62
                 (let v3
                        = coe
                            MAlonzo.Code.Relation.Binary.C143
                            (coe
                               MAlonzo.Code.Algebra.Structures.d2874
                               (coe MAlonzo.Code.Algebra.d1358 v0)) in
                  MAlonzo.Code.Relation.Binary.PreorderReasoning.du72
                    (MAlonzo.Code.Relation.Binary.du150 v3)
                    (MAlonzo.Code.Algebra.d1356 v0 v1 v2)
                    (MAlonzo.Code.Algebra.d1356
                       v0 v1 (MAlonzo.Code.Algebra.d1356 v0 v2 v2))
                    (MAlonzo.Code.Algebra.d1356
                       v0 (MAlonzo.Code.Algebra.d1356 v0 v1 v2) v2)
                    (MAlonzo.Code.Algebra.Structures.d2886
                       (MAlonzo.Code.Algebra.d1358 v0) v1 v1 v2
                       (MAlonzo.Code.Algebra.d1356 v0 v2 v2)
                       (MAlonzo.Code.Relation.Binary.Core.d516
                          (MAlonzo.Code.Algebra.Structures.d2874
                             (MAlonzo.Code.Algebra.d1358 v0))
                          v1)
                       (MAlonzo.Code.Relation.Binary.Core.d518
                          (MAlonzo.Code.Algebra.Structures.d2874
                             (MAlonzo.Code.Algebra.d1358 v0))
                          (MAlonzo.Code.Algebra.d1356 v0 v2 v2) v2 (du124 v0 v2)))
                    (let v4
                           = coe
                               MAlonzo.Code.Relation.Binary.C143
                               (coe
                                  MAlonzo.Code.Algebra.Structures.d2874
                                  (coe MAlonzo.Code.Algebra.d1358 v0)) in
                     MAlonzo.Code.Relation.Binary.PreorderReasoning.du72
                       (MAlonzo.Code.Relation.Binary.du150 v4)
                       (MAlonzo.Code.Algebra.d1356
                          v0 v1 (MAlonzo.Code.Algebra.d1356 v0 v2 v2))
                       (MAlonzo.Code.Algebra.d1356
                          v0 (MAlonzo.Code.Algebra.d1356 v0 v1 v2) v2)
                       (MAlonzo.Code.Algebra.d1356
                          v0 (MAlonzo.Code.Algebra.d1356 v0 v1 v2) v2)
                       (MAlonzo.Code.Relation.Binary.Core.d518
                          (MAlonzo.Code.Algebra.Structures.d2874
                             (MAlonzo.Code.Algebra.d1358 v0))
                          (MAlonzo.Code.Algebra.d1356
                             v0 (MAlonzo.Code.Algebra.d1356 v0 v1 v2) v2)
                          (MAlonzo.Code.Algebra.d1356
                             v0 v1 (MAlonzo.Code.Algebra.d1356 v0 v2 v2))
                          (MAlonzo.Code.Algebra.Structures.d2884
                             (MAlonzo.Code.Algebra.d1358 v0) v1 v2 v2))
                       (let v5
                              = coe
                                  MAlonzo.Code.Relation.Binary.C143
                                  (coe
                                     MAlonzo.Code.Algebra.Structures.d2874
                                     (coe MAlonzo.Code.Algebra.d1358 v0)) in
                        let v6
                              = coe
                                  MAlonzo.Code.Algebra.d1356 v0
                                  (coe MAlonzo.Code.Algebra.d1356 v0 v1 v2) v2 in
                        MAlonzo.Code.Relation.Binary.PreorderReasoning.C56
                          (MAlonzo.Code.Relation.Binary.d38
                             (MAlonzo.Code.Relation.Binary.d92
                                (MAlonzo.Code.Relation.Binary.du150 v5))
                             v6 v6
                             (MAlonzo.Code.Relation.Binary.Core.d516
                                (MAlonzo.Code.Relation.Binary.d36
                                   (MAlonzo.Code.Relation.Binary.d92
                                      (MAlonzo.Code.Relation.Binary.du150 v5)))
                                v6))))))
              (\ v3 v4 v5 ->
                 coe
                   MAlonzo.Code.Relation.Binary.PreorderReasoning.d62
                   (let v6
                          = coe
                              MAlonzo.Code.Relation.Binary.C143
                              (coe
                                 MAlonzo.Code.Algebra.Structures.d2874
                                 (coe MAlonzo.Code.Algebra.d1358 v0)) in
                    MAlonzo.Code.Relation.Binary.PreorderReasoning.du72
                      (MAlonzo.Code.Relation.Binary.du150 v6) v3
                      (MAlonzo.Code.Algebra.d1356 v0 v3 v2)
                      (MAlonzo.Code.Algebra.d1356
                         v0 v3 (MAlonzo.Code.Algebra.d1356 v0 v1 v2))
                      v5
                      (let v7
                             = coe
                                 MAlonzo.Code.Relation.Binary.C143
                                 (coe
                                    MAlonzo.Code.Algebra.Structures.d2874
                                    (coe MAlonzo.Code.Algebra.d1358 v0)) in
                       MAlonzo.Code.Relation.Binary.PreorderReasoning.du72
                         (MAlonzo.Code.Relation.Binary.du150 v7)
                         (MAlonzo.Code.Algebra.d1356 v0 v3 v2)
                         (MAlonzo.Code.Algebra.d1356
                            v0 (MAlonzo.Code.Algebra.d1356 v0 v3 v1) v2)
                         (MAlonzo.Code.Algebra.d1356
                            v0 v3 (MAlonzo.Code.Algebra.d1356 v0 v1 v2))
                         (MAlonzo.Code.Algebra.Structures.d2886
                            (MAlonzo.Code.Algebra.d1358 v0) v3
                            (MAlonzo.Code.Algebra.d1356 v0 v3 v1) v2 v2 v4
                            (MAlonzo.Code.Relation.Binary.Core.d516
                               (MAlonzo.Code.Algebra.Structures.d2874
                                  (MAlonzo.Code.Algebra.d1358 v0))
                               v2))
                         (let v8
                                = coe
                                    MAlonzo.Code.Relation.Binary.C143
                                    (coe
                                       MAlonzo.Code.Algebra.Structures.d2874
                                       (coe MAlonzo.Code.Algebra.d1358 v0)) in
                          MAlonzo.Code.Relation.Binary.PreorderReasoning.du72
                            (MAlonzo.Code.Relation.Binary.du150 v8)
                            (MAlonzo.Code.Algebra.d1356
                               v0 (MAlonzo.Code.Algebra.d1356 v0 v3 v1) v2)
                            (MAlonzo.Code.Algebra.d1356
                               v0 v3 (MAlonzo.Code.Algebra.d1356 v0 v1 v2))
                            (MAlonzo.Code.Algebra.d1356
                               v0 v3 (MAlonzo.Code.Algebra.d1356 v0 v1 v2))
                            (MAlonzo.Code.Algebra.Structures.d2884
                               (MAlonzo.Code.Algebra.d1358 v0) v3 v1 v2)
                            (let v9
                                   = coe
                                       MAlonzo.Code.Relation.Binary.C143
                                       (coe
                                          MAlonzo.Code.Algebra.Structures.d2874
                                          (coe MAlonzo.Code.Algebra.d1358 v0)) in
                             let v10
                                   = coe
                                       MAlonzo.Code.Algebra.d1356 v0 v3
                                       (coe MAlonzo.Code.Algebra.d1356 v0 v1 v2) in
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
name178 = "Algebra.Properties.Lattice._.\8743-absorbs-\8744"
d178 v0 v1 v2 = du178 v2
du178 v0
  = coe
      MAlonzo.Code.Data.Product.d28
      (coe
         MAlonzo.Code.Algebra.Structures.d2888
         (coe MAlonzo.Code.Algebra.d1358 v0))
name184 = "Algebra.Properties.Lattice._.complete"
d184 v0 v1 v2 v3 v4 v5 = du184 v2 v3 v4 v5
du184 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Relation.Binary.PreorderReasoning.d62
      (let v4
             = coe
                 MAlonzo.Code.Relation.Binary.C143
                 (coe
                    MAlonzo.Code.Algebra.Structures.d2874
                    (coe MAlonzo.Code.Algebra.d1358 v0)) in
       MAlonzo.Code.Relation.Binary.PreorderReasoning.du72
         (MAlonzo.Code.Relation.Binary.du150 v4)
         (MAlonzo.Code.Algebra.d1354 v0 v1 v2)
         (MAlonzo.Code.Algebra.d1354
            v0 (MAlonzo.Code.Algebra.d1356 v0 v1 v2) v2)
         v2
         (MAlonzo.Code.Algebra.Structures.d2880
            (MAlonzo.Code.Algebra.d1358 v0) v1
            (MAlonzo.Code.Algebra.d1356 v0 v1 v2) v2 v2 v3
            (MAlonzo.Code.Relation.Binary.Core.d516
               (MAlonzo.Code.Algebra.Structures.d2874
                  (MAlonzo.Code.Algebra.d1358 v0))
               v2))
         (let v5
                = coe
                    MAlonzo.Code.Relation.Binary.C143
                    (coe
                       MAlonzo.Code.Algebra.Structures.d2874
                       (coe MAlonzo.Code.Algebra.d1358 v0)) in
          MAlonzo.Code.Relation.Binary.PreorderReasoning.du72
            (MAlonzo.Code.Relation.Binary.du150 v5)
            (MAlonzo.Code.Algebra.d1354
               v0 (MAlonzo.Code.Algebra.d1356 v0 v1 v2) v2)
            (MAlonzo.Code.Algebra.d1354
               v0 (MAlonzo.Code.Algebra.d1356 v0 v2 v1) v2)
            v2
            (MAlonzo.Code.Algebra.Structures.d2880
               (MAlonzo.Code.Algebra.d1358 v0)
               (MAlonzo.Code.Algebra.d1356 v0 v1 v2)
               (MAlonzo.Code.Algebra.d1356 v0 v2 v1) v2 v2
               (MAlonzo.Code.Algebra.Structures.d2882
                  (MAlonzo.Code.Algebra.d1358 v0) v1 v2)
               (MAlonzo.Code.Relation.Binary.Core.d516
                  (MAlonzo.Code.Algebra.Structures.d2874
                     (MAlonzo.Code.Algebra.d1358 v0))
                  v2))
            (let v6
                   = coe
                       MAlonzo.Code.Relation.Binary.C143
                       (coe
                          MAlonzo.Code.Algebra.Structures.d2874
                          (coe MAlonzo.Code.Algebra.d1358 v0)) in
             MAlonzo.Code.Relation.Binary.PreorderReasoning.du72
               (MAlonzo.Code.Relation.Binary.du150 v6)
               (MAlonzo.Code.Algebra.d1354
                  v0 (MAlonzo.Code.Algebra.d1356 v0 v2 v1) v2)
               (MAlonzo.Code.Algebra.d1354
                  v0 v2 (MAlonzo.Code.Algebra.d1356 v0 v2 v1))
               v2
               (MAlonzo.Code.Algebra.Structures.d2876
                  (MAlonzo.Code.Algebra.d1358 v0)
                  (MAlonzo.Code.Algebra.d1356 v0 v2 v1) v2)
               (let v7
                      = coe
                          MAlonzo.Code.Relation.Binary.C143
                          (coe
                             MAlonzo.Code.Algebra.Structures.d2874
                             (coe MAlonzo.Code.Algebra.d1358 v0)) in
                MAlonzo.Code.Relation.Binary.PreorderReasoning.du72
                  (MAlonzo.Code.Relation.Binary.du150 v7)
                  (MAlonzo.Code.Algebra.d1354
                     v0 v2 (MAlonzo.Code.Algebra.d1356 v0 v2 v1))
                  v2 v2
                  (MAlonzo.Code.Data.Product.d26
                     (MAlonzo.Code.Algebra.Structures.d2888
                        (MAlonzo.Code.Algebra.d1358 v0))
                     v2 v1)
                  (let v8
                         = coe
                             MAlonzo.Code.Relation.Binary.C143
                             (coe
                                MAlonzo.Code.Algebra.Structures.d2874
                                (coe MAlonzo.Code.Algebra.d1358 v0)) in
                   MAlonzo.Code.Relation.Binary.PreorderReasoning.C56
                     (MAlonzo.Code.Relation.Binary.d38
                        (MAlonzo.Code.Relation.Binary.d92
                           (MAlonzo.Code.Relation.Binary.du150 v8))
                        v2 v2
                        (MAlonzo.Code.Relation.Binary.Core.d516
                           (MAlonzo.Code.Relation.Binary.d36
                              (MAlonzo.Code.Relation.Binary.d92
                                 (MAlonzo.Code.Relation.Binary.du150 v8)))
                           v2)))))))
name196 = "Algebra.Properties.Lattice._.sound"
d196 v0 v1 v2 v3 v4 v5 = du196 v2 v3 v4 v5
du196 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Relation.Binary.PreorderReasoning.d62
      (let v4
             = coe
                 MAlonzo.Code.Relation.Binary.C143
                 (coe
                    MAlonzo.Code.Algebra.Structures.d2874
                    (coe MAlonzo.Code.Algebra.d1358 v0)) in
       MAlonzo.Code.Relation.Binary.PreorderReasoning.du72
         (MAlonzo.Code.Relation.Binary.du150 v4) v1
         (MAlonzo.Code.Algebra.d1356
            v0 v1 (MAlonzo.Code.Algebra.d1354 v0 v1 v2))
         (MAlonzo.Code.Algebra.d1356 v0 v1 v2)
         (MAlonzo.Code.Relation.Binary.Core.d518
            (MAlonzo.Code.Algebra.Structures.d2874
               (MAlonzo.Code.Algebra.d1358 v0))
            (MAlonzo.Code.Algebra.d1356
               v0 v1 (MAlonzo.Code.Algebra.d1354 v0 v1 v2))
            v1 (du178 v0 v1 v2))
         (let v5
                = coe
                    MAlonzo.Code.Relation.Binary.C143
                    (coe
                       MAlonzo.Code.Algebra.Structures.d2874
                       (coe MAlonzo.Code.Algebra.d1358 v0)) in
          MAlonzo.Code.Relation.Binary.PreorderReasoning.du72
            (MAlonzo.Code.Relation.Binary.du150 v5)
            (MAlonzo.Code.Algebra.d1356
               v0 v1 (MAlonzo.Code.Algebra.d1354 v0 v1 v2))
            (MAlonzo.Code.Algebra.d1356 v0 v1 v2)
            (MAlonzo.Code.Algebra.d1356 v0 v1 v2)
            (MAlonzo.Code.Algebra.Structures.d2886
               (MAlonzo.Code.Algebra.d1358 v0) v1 v1
               (MAlonzo.Code.Algebra.d1354 v0 v1 v2) v2
               (MAlonzo.Code.Relation.Binary.Core.d516
                  (MAlonzo.Code.Algebra.Structures.d2874
                     (MAlonzo.Code.Algebra.d1358 v0))
                  v1)
               v3)
            (let v6
                   = coe
                       MAlonzo.Code.Relation.Binary.C143
                       (coe
                          MAlonzo.Code.Algebra.Structures.d2874
                          (coe MAlonzo.Code.Algebra.d1358 v0)) in
             let v7 = coe MAlonzo.Code.Algebra.d1356 v0 v1 v2 in
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
name224 = "Algebra.Properties.Lattice.orderTheoreticLattice"
d224 v0 v1 v2 = du224 v2
du224 v0
  = coe
      MAlonzo.Code.Relation.Binary.Lattice.C489
      (coe MAlonzo.Code.Algebra.d1354 v0)
      (coe MAlonzo.Code.Algebra.d1356 v0) (coe du172 v0)
name232 = "Algebra.Properties.Lattice.replace-equality"
d232 v0 v1 v2 v3 v4 = du232 v2 v4
du232 v0 v1
  = coe
      MAlonzo.Code.Algebra.C655 (coe MAlonzo.Code.Algebra.d1354 v0)
      (coe MAlonzo.Code.Algebra.d1356 v0)
      (coe
         MAlonzo.Code.Algebra.Structures.C1999
         (coe
            MAlonzo.Code.Relation.Binary.Core.C889
            (\ v2 ->
               coe
                 MAlonzo.Code.Function.Equality.d38
                 (coe MAlonzo.Code.Function.Equivalence.d34 (coe v1 v2 v2))
                 (coe
                    MAlonzo.Code.Relation.Binary.Core.d516
                    (coe
                       MAlonzo.Code.Algebra.Structures.d2874
                       (coe MAlonzo.Code.Algebra.d1358 v0))
                    v2))
            (\ v2 v3 v4 ->
               coe
                 MAlonzo.Code.Function.Equality.d38
                 (coe MAlonzo.Code.Function.Equivalence.d34 (coe v1 v3 v2))
                 (coe
                    MAlonzo.Code.Relation.Binary.Core.d518
                    (coe
                       MAlonzo.Code.Algebra.Structures.d2874
                       (coe MAlonzo.Code.Algebra.d1358 v0))
                    v2 v3
                    (coe
                       MAlonzo.Code.Function.Equality.d38
                       (coe MAlonzo.Code.Function.Equivalence.d36 (coe v1 v2 v3)) v4)))
            (\ v2 v3 v4 v5 v6 ->
               coe
                 MAlonzo.Code.Function.Equality.d38
                 (coe MAlonzo.Code.Function.Equivalence.d34 (coe v1 v2 v4))
                 (coe
                    MAlonzo.Code.Relation.Binary.Core.d520
                    (coe
                       MAlonzo.Code.Algebra.Structures.d2874
                       (coe MAlonzo.Code.Algebra.d1358 v0))
                    v2 v3 v4
                    (coe
                       MAlonzo.Code.Function.Equality.d38
                       (coe MAlonzo.Code.Function.Equivalence.d36 (coe v1 v2 v3)) v5)
                    (coe
                       MAlonzo.Code.Function.Equality.d38
                       (coe MAlonzo.Code.Function.Equivalence.d36 (coe v1 v3 v4)) v6))))
         (\ v2 v3 ->
            coe
              MAlonzo.Code.Function.Equality.d38
              (coe
                 MAlonzo.Code.Function.Equivalence.d34
                 (coe
                    v1 (coe MAlonzo.Code.Algebra.d1354 v0 v2 v3)
                    (coe MAlonzo.Code.Algebra.d1354 v0 v3 v2)))
              (coe
                 MAlonzo.Code.Algebra.Structures.d2876
                 (coe MAlonzo.Code.Algebra.d1358 v0) v2 v3))
         (\ v2 v3 v4 ->
            coe
              MAlonzo.Code.Function.Equality.d38
              (coe
                 MAlonzo.Code.Function.Equivalence.d34
                 (coe
                    v1
                    (coe
                       MAlonzo.Code.Algebra.d1354 v0
                       (coe MAlonzo.Code.Algebra.d1354 v0 v2 v3) v4)
                    (coe
                       MAlonzo.Code.Algebra.d1354 v0 v2
                       (coe MAlonzo.Code.Algebra.d1354 v0 v3 v4))))
              (coe
                 MAlonzo.Code.Algebra.Structures.d2878
                 (coe MAlonzo.Code.Algebra.d1358 v0) v2 v3 v4))
         (\ v2 v3 v4 v5 v6 v7 ->
            coe
              MAlonzo.Code.Function.Equality.d38
              (coe
                 MAlonzo.Code.Function.Equivalence.d34
                 (coe
                    v1 (coe MAlonzo.Code.Algebra.d1354 v0 v2 v4)
                    (coe MAlonzo.Code.Algebra.d1354 v0 v3 v5)))
              (coe
                 MAlonzo.Code.Algebra.Structures.d2880
                 (coe MAlonzo.Code.Algebra.d1358 v0) v2 v3 v4 v5
                 (coe
                    MAlonzo.Code.Function.Equality.d38
                    (coe MAlonzo.Code.Function.Equivalence.d36 (coe v1 v2 v3)) v6)
                 (coe
                    MAlonzo.Code.Function.Equality.d38
                    (coe MAlonzo.Code.Function.Equivalence.d36 (coe v1 v4 v5)) v7)))
         (\ v2 v3 ->
            coe
              MAlonzo.Code.Function.Equality.d38
              (coe
                 MAlonzo.Code.Function.Equivalence.d34
                 (coe
                    v1 (coe MAlonzo.Code.Algebra.d1356 v0 v2 v3)
                    (coe MAlonzo.Code.Algebra.d1356 v0 v3 v2)))
              (coe
                 MAlonzo.Code.Algebra.Structures.d2882
                 (coe MAlonzo.Code.Algebra.d1358 v0) v2 v3))
         (\ v2 v3 v4 ->
            coe
              MAlonzo.Code.Function.Equality.d38
              (coe
                 MAlonzo.Code.Function.Equivalence.d34
                 (coe
                    v1
                    (coe
                       MAlonzo.Code.Algebra.d1356 v0
                       (coe MAlonzo.Code.Algebra.d1356 v0 v2 v3) v4)
                    (coe
                       MAlonzo.Code.Algebra.d1356 v0 v2
                       (coe MAlonzo.Code.Algebra.d1356 v0 v3 v4))))
              (coe
                 MAlonzo.Code.Algebra.Structures.d2884
                 (coe MAlonzo.Code.Algebra.d1358 v0) v2 v3 v4))
         (\ v2 v3 v4 v5 v6 v7 ->
            coe
              MAlonzo.Code.Function.Equality.d38
              (coe
                 MAlonzo.Code.Function.Equivalence.d34
                 (coe
                    v1 (coe MAlonzo.Code.Algebra.d1356 v0 v2 v4)
                    (coe MAlonzo.Code.Algebra.d1356 v0 v3 v5)))
              (coe
                 MAlonzo.Code.Algebra.Structures.d2886
                 (coe MAlonzo.Code.Algebra.d1358 v0) v2 v3 v4 v5
                 (coe
                    MAlonzo.Code.Function.Equality.d38
                    (coe MAlonzo.Code.Function.Equivalence.d36 (coe v1 v2 v3)) v6)
                 (coe
                    MAlonzo.Code.Function.Equality.d38
                    (coe MAlonzo.Code.Function.Equivalence.d36 (coe v1 v4 v5)) v7)))
         (coe
            MAlonzo.Code.Data.Product.C30
            (\ v2 v3 ->
               coe
                 MAlonzo.Code.Function.Equality.d38
                 (coe
                    MAlonzo.Code.Function.Equivalence.d34
                    (coe
                       v1
                       (coe
                          MAlonzo.Code.Algebra.d1354 v0 v2
                          (coe MAlonzo.Code.Algebra.d1356 v0 v2 v3))
                       v2))
                 (coe
                    MAlonzo.Code.Data.Product.d26
                    (coe
                       MAlonzo.Code.Algebra.Structures.d2888
                       (coe MAlonzo.Code.Algebra.d1358 v0))
                    v2 v3))
            (\ v2 v3 ->
               coe
                 MAlonzo.Code.Function.Equality.d38
                 (coe
                    MAlonzo.Code.Function.Equivalence.d34
                    (coe
                       v1
                       (coe
                          MAlonzo.Code.Algebra.d1356 v0 v2
                          (coe MAlonzo.Code.Algebra.d1354 v0 v2 v3))
                       v2))
                 (coe
                    MAlonzo.Code.Data.Product.d28
                    (coe
                       MAlonzo.Code.Algebra.Structures.d2888
                       (coe MAlonzo.Code.Algebra.d1358 v0))
                    v2 v3))))
name248 = "Algebra.Properties.Lattice._.E.from"
d248 v0 v1 v2 v3 v4 = du248 v2 v3 v4
du248 v0 v1 v2
  = coe MAlonzo.Code.Function.Equivalence.d36 (coe v0 v1 v2)
name250 = "Algebra.Properties.Lattice._.E.to"
d250 v0 v1 v2 v3 v4 = du250 v2 v3 v4
du250 v0 v1 v2
  = coe MAlonzo.Code.Function.Equivalence.d34 (coe v0 v1 v2)