{-# LANGUAGE EmptyDataDecls, ExistentialQuantification,
             ScopedTypeVariables, NoMonomorphismRestriction, Rank2Types #-}
module MAlonzo.Code.Algebra.Properties.Group where

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
import qualified MAlonzo.Code.Relation.Binary
import qualified MAlonzo.Code.Relation.Binary.Core
import qualified MAlonzo.Code.Relation.Binary.PreorderReasoning

name86 = "Algebra.Properties.Group._.Identity"
d86 = erased
name118 = "Algebra.Properties.Group._._\8718"
d118 v0 v1 v2 = du118 v2
du118 v0
  = let v1
          = coe
              MAlonzo.Code.Relation.Binary.C143
              (coe
                 MAlonzo.Code.Algebra.Structures.d140
                 (coe
                    MAlonzo.Code.Algebra.Structures.d294
                    (coe
                       MAlonzo.Code.Algebra.Structures.d820
                       (coe MAlonzo.Code.Algebra.d300 v0)))) in
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
name120 = "Algebra.Properties.Group._._\8764\10216_\10217_"
d120 v0 v1 v2 = du120 v2
du120 v0
  = let v1
          = coe
              MAlonzo.Code.Relation.Binary.C143
              (coe
                 MAlonzo.Code.Algebra.Structures.d140
                 (coe
                    MAlonzo.Code.Algebra.Structures.d294
                    (coe
                       MAlonzo.Code.Algebra.Structures.d820
                       (coe MAlonzo.Code.Algebra.d300 v0)))) in
    coe
      MAlonzo.Code.Relation.Binary.PreorderReasoning.du72
      (coe MAlonzo.Code.Relation.Binary.du150 v1)
name136 = "Algebra.Properties.Group.\8315\185-involutive"
d136 v0 v1 v2 v3 = du136 v2 v3
du136 v0 v1
  = coe
      MAlonzo.Code.Relation.Binary.PreorderReasoning.d62
      (let v2
             = coe
                 MAlonzo.Code.Relation.Binary.C143
                 (coe
                    MAlonzo.Code.Algebra.Structures.d140
                    (coe
                       MAlonzo.Code.Algebra.Structures.d294
                       (coe
                          MAlonzo.Code.Algebra.Structures.d820
                          (coe MAlonzo.Code.Algebra.d300 v0)))) in
       MAlonzo.Code.Relation.Binary.PreorderReasoning.du72
         (MAlonzo.Code.Relation.Binary.du150 v2)
         (MAlonzo.Code.Algebra.d298 v0 (MAlonzo.Code.Algebra.d298 v0 v1))
         (MAlonzo.Code.Algebra.d294
            v0 (MAlonzo.Code.Algebra.d298 v0 (MAlonzo.Code.Algebra.d298 v0 v1))
            (MAlonzo.Code.Algebra.d296 v0))
         v1
         (MAlonzo.Code.Function.du158
            (MAlonzo.Code.Relation.Binary.Core.d518
               (MAlonzo.Code.Algebra.Structures.d140
                  (MAlonzo.Code.Algebra.Structures.d294
                     (MAlonzo.Code.Algebra.Structures.d820
                        (MAlonzo.Code.Algebra.d300 v0))))
               (MAlonzo.Code.Algebra.d294
                  v0 (MAlonzo.Code.Algebra.d298 v0 (MAlonzo.Code.Algebra.d298 v0 v1))
                  (MAlonzo.Code.Algebra.d296 v0))
               (MAlonzo.Code.Algebra.d298 v0 (MAlonzo.Code.Algebra.d298 v0 v1)))
            (MAlonzo.Code.Data.Product.d28
               (MAlonzo.Code.Algebra.Structures.d296
                  (MAlonzo.Code.Algebra.Structures.d820
                     (MAlonzo.Code.Algebra.d300 v0)))
               (MAlonzo.Code.Algebra.d298 v0 (MAlonzo.Code.Algebra.d298 v0 v1))))
         (let v3
                = coe
                    MAlonzo.Code.Relation.Binary.C143
                    (coe
                       MAlonzo.Code.Algebra.Structures.d140
                       (coe
                          MAlonzo.Code.Algebra.Structures.d294
                          (coe
                             MAlonzo.Code.Algebra.Structures.d820
                             (coe MAlonzo.Code.Algebra.d300 v0)))) in
          MAlonzo.Code.Relation.Binary.PreorderReasoning.du72
            (MAlonzo.Code.Relation.Binary.du150 v3)
            (MAlonzo.Code.Algebra.d294
               v0 (MAlonzo.Code.Algebra.d298 v0 (MAlonzo.Code.Algebra.d298 v0 v1))
               (MAlonzo.Code.Algebra.d296 v0))
            (MAlonzo.Code.Algebra.d294
               v0 (MAlonzo.Code.Algebra.d298 v0 (MAlonzo.Code.Algebra.d298 v0 v1))
               (MAlonzo.Code.Algebra.d294
                  v0 (MAlonzo.Code.Algebra.d298 v0 v1) v1))
            v1
            (MAlonzo.Code.Function.du176
               (MAlonzo.Code.Relation.Binary.Core.d516
                  (MAlonzo.Code.Algebra.Structures.d140
                     (MAlonzo.Code.Algebra.Structures.d294
                        (MAlonzo.Code.Algebra.Structures.d820
                           (MAlonzo.Code.Algebra.d300 v0))))
                  (MAlonzo.Code.Algebra.d298 v0 (MAlonzo.Code.Algebra.d298 v0 v1)))
               (MAlonzo.Code.Algebra.Structures.d144
                  (MAlonzo.Code.Algebra.Structures.d294
                     (MAlonzo.Code.Algebra.Structures.d820
                        (MAlonzo.Code.Algebra.d300 v0)))
                  (MAlonzo.Code.Algebra.d298 v0 (MAlonzo.Code.Algebra.d298 v0 v1))
                  (MAlonzo.Code.Algebra.d298 v0 (MAlonzo.Code.Algebra.d298 v0 v1))
                  (MAlonzo.Code.Algebra.d296 v0)
                  (MAlonzo.Code.Algebra.d294
                     v0 (MAlonzo.Code.Algebra.d298 v0 v1) v1))
               (MAlonzo.Code.Relation.Binary.Core.d518
                  (MAlonzo.Code.Algebra.Structures.d140
                     (MAlonzo.Code.Algebra.Structures.d294
                        (MAlonzo.Code.Algebra.Structures.d820
                           (MAlonzo.Code.Algebra.d300 v0))))
                  (MAlonzo.Code.Algebra.d294 v0 (MAlonzo.Code.Algebra.d298 v0 v1) v1)
                  (MAlonzo.Code.Algebra.d296 v0)
                  (MAlonzo.Code.Data.Product.d26
                     (MAlonzo.Code.Algebra.Structures.d822
                        (MAlonzo.Code.Algebra.d300 v0))
                     v1)))
            (let v4
                   = coe
                       MAlonzo.Code.Relation.Binary.C143
                       (coe
                          MAlonzo.Code.Algebra.Structures.d140
                          (coe
                             MAlonzo.Code.Algebra.Structures.d294
                             (coe
                                MAlonzo.Code.Algebra.Structures.d820
                                (coe MAlonzo.Code.Algebra.d300 v0)))) in
             MAlonzo.Code.Relation.Binary.PreorderReasoning.du72
               (MAlonzo.Code.Relation.Binary.du150 v4)
               (MAlonzo.Code.Algebra.d294
                  v0 (MAlonzo.Code.Algebra.d298 v0 (MAlonzo.Code.Algebra.d298 v0 v1))
                  (MAlonzo.Code.Algebra.d294
                     v0 (MAlonzo.Code.Algebra.d298 v0 v1) v1))
               (MAlonzo.Code.Algebra.d294
                  v0
                  (MAlonzo.Code.Algebra.d294
                     v0 (MAlonzo.Code.Algebra.d298 v0 (MAlonzo.Code.Algebra.d298 v0 v1))
                     (MAlonzo.Code.Algebra.d298 v0 v1))
                  v1)
               v1
               (MAlonzo.Code.Function.du158
                  (MAlonzo.Code.Relation.Binary.Core.d518
                     (MAlonzo.Code.Algebra.Structures.d140
                        (MAlonzo.Code.Algebra.Structures.d294
                           (MAlonzo.Code.Algebra.Structures.d820
                              (MAlonzo.Code.Algebra.d300 v0))))
                     (MAlonzo.Code.Algebra.d294
                        v0
                        (MAlonzo.Code.Algebra.d294
                           v0 (MAlonzo.Code.Algebra.d298 v0 (MAlonzo.Code.Algebra.d298 v0 v1))
                           (MAlonzo.Code.Algebra.d298 v0 v1))
                        v1)
                     (MAlonzo.Code.Algebra.d294
                        v0 (MAlonzo.Code.Algebra.d298 v0 (MAlonzo.Code.Algebra.d298 v0 v1))
                        (MAlonzo.Code.Algebra.d294
                           v0 (MAlonzo.Code.Algebra.d298 v0 v1) v1)))
                  (MAlonzo.Code.Algebra.Structures.d142
                     (MAlonzo.Code.Algebra.Structures.d294
                        (MAlonzo.Code.Algebra.Structures.d820
                           (MAlonzo.Code.Algebra.d300 v0)))
                     (MAlonzo.Code.Algebra.d298 v0 (MAlonzo.Code.Algebra.d298 v0 v1))
                     (MAlonzo.Code.Algebra.d298 v0 v1) v1))
               (let v5
                      = coe
                          MAlonzo.Code.Relation.Binary.C143
                          (coe
                             MAlonzo.Code.Algebra.Structures.d140
                             (coe
                                MAlonzo.Code.Algebra.Structures.d294
                                (coe
                                   MAlonzo.Code.Algebra.Structures.d820
                                   (coe MAlonzo.Code.Algebra.d300 v0)))) in
                MAlonzo.Code.Relation.Binary.PreorderReasoning.du72
                  (MAlonzo.Code.Relation.Binary.du150 v5)
                  (MAlonzo.Code.Algebra.d294
                     v0
                     (MAlonzo.Code.Algebra.d294
                        v0 (MAlonzo.Code.Algebra.d298 v0 (MAlonzo.Code.Algebra.d298 v0 v1))
                        (MAlonzo.Code.Algebra.d298 v0 v1))
                     v1)
                  (MAlonzo.Code.Algebra.d294 v0 (MAlonzo.Code.Algebra.d296 v0) v1) v1
                  (MAlonzo.Code.Function.du176
                     (MAlonzo.Code.Data.Product.d26
                        (MAlonzo.Code.Algebra.Structures.d822
                           (MAlonzo.Code.Algebra.d300 v0))
                        (MAlonzo.Code.Algebra.d298 v0 v1))
                     (MAlonzo.Code.Algebra.Structures.d144
                        (MAlonzo.Code.Algebra.Structures.d294
                           (MAlonzo.Code.Algebra.Structures.d820
                              (MAlonzo.Code.Algebra.d300 v0)))
                        (MAlonzo.Code.Algebra.d294
                           v0 (MAlonzo.Code.Algebra.d298 v0 (MAlonzo.Code.Algebra.d298 v0 v1))
                           (MAlonzo.Code.Algebra.d298 v0 v1))
                        (MAlonzo.Code.Algebra.d296 v0) v1 v1)
                     (MAlonzo.Code.Relation.Binary.Core.d516
                        (MAlonzo.Code.Algebra.Structures.d140
                           (MAlonzo.Code.Algebra.Structures.d294
                              (MAlonzo.Code.Algebra.Structures.d820
                                 (MAlonzo.Code.Algebra.d300 v0))))
                        v1))
                  (let v6
                         = coe
                             MAlonzo.Code.Relation.Binary.C143
                             (coe
                                MAlonzo.Code.Algebra.Structures.d140
                                (coe
                                   MAlonzo.Code.Algebra.Structures.d294
                                   (coe
                                      MAlonzo.Code.Algebra.Structures.d820
                                      (coe MAlonzo.Code.Algebra.d300 v0)))) in
                   MAlonzo.Code.Relation.Binary.PreorderReasoning.du72
                     (MAlonzo.Code.Relation.Binary.du150 v6)
                     (MAlonzo.Code.Algebra.d294 v0 (MAlonzo.Code.Algebra.d296 v0) v1) v1
                     v1
                     (MAlonzo.Code.Data.Product.d26
                        (MAlonzo.Code.Algebra.Structures.d296
                           (MAlonzo.Code.Algebra.Structures.d820
                              (MAlonzo.Code.Algebra.d300 v0)))
                        v1)
                     (let v7
                            = coe
                                MAlonzo.Code.Relation.Binary.C143
                                (coe
                                   MAlonzo.Code.Algebra.Structures.d140
                                   (coe
                                      MAlonzo.Code.Algebra.Structures.d294
                                      (coe
                                         MAlonzo.Code.Algebra.Structures.d820
                                         (coe MAlonzo.Code.Algebra.d300 v0)))) in
                      MAlonzo.Code.Relation.Binary.PreorderReasoning.C56
                        (MAlonzo.Code.Relation.Binary.d38
                           (MAlonzo.Code.Relation.Binary.d92
                              (MAlonzo.Code.Relation.Binary.du150 v7))
                           v1 v1
                           (MAlonzo.Code.Relation.Binary.Core.d516
                              (MAlonzo.Code.Relation.Binary.d36
                                 (MAlonzo.Code.Relation.Binary.d92
                                    (MAlonzo.Code.Relation.Binary.du150 v7)))
                              v1))))))))
name144 = "Algebra.Properties.Group.left-helper"
d144 v0 v1 v2 v3 v4 = du144 v2 v3 v4
du144 v0 v1 v2
  = coe
      MAlonzo.Code.Relation.Binary.PreorderReasoning.d62
      (let v3
             = coe
                 MAlonzo.Code.Relation.Binary.C143
                 (coe
                    MAlonzo.Code.Algebra.Structures.d140
                    (coe
                       MAlonzo.Code.Algebra.Structures.d294
                       (coe
                          MAlonzo.Code.Algebra.Structures.d820
                          (coe MAlonzo.Code.Algebra.d300 v0)))) in
       MAlonzo.Code.Relation.Binary.PreorderReasoning.du72
         (MAlonzo.Code.Relation.Binary.du150 v3) v1
         (MAlonzo.Code.Algebra.d294 v0 v1 (MAlonzo.Code.Algebra.d296 v0))
         (MAlonzo.Code.Algebra.d294
            v0 (MAlonzo.Code.Algebra.d294 v0 v1 v2)
            (MAlonzo.Code.Algebra.d298 v0 v2))
         (MAlonzo.Code.Relation.Binary.Core.d518
            (MAlonzo.Code.Algebra.Structures.d140
               (MAlonzo.Code.Algebra.Structures.d294
                  (MAlonzo.Code.Algebra.Structures.d820
                     (MAlonzo.Code.Algebra.d300 v0))))
            (MAlonzo.Code.Algebra.d294 v0 v1 (MAlonzo.Code.Algebra.d296 v0)) v1
            (MAlonzo.Code.Data.Product.d28
               (MAlonzo.Code.Algebra.Structures.d296
                  (MAlonzo.Code.Algebra.Structures.d820
                     (MAlonzo.Code.Algebra.d300 v0)))
               v1))
         (let v4
                = coe
                    MAlonzo.Code.Relation.Binary.C143
                    (coe
                       MAlonzo.Code.Algebra.Structures.d140
                       (coe
                          MAlonzo.Code.Algebra.Structures.d294
                          (coe
                             MAlonzo.Code.Algebra.Structures.d820
                             (coe MAlonzo.Code.Algebra.d300 v0)))) in
          MAlonzo.Code.Relation.Binary.PreorderReasoning.du72
            (MAlonzo.Code.Relation.Binary.du150 v4)
            (MAlonzo.Code.Algebra.d294 v0 v1 (MAlonzo.Code.Algebra.d296 v0))
            (MAlonzo.Code.Algebra.d294
               v0 v1
               (MAlonzo.Code.Algebra.d294
                  v0 v2 (MAlonzo.Code.Algebra.d298 v0 v2)))
            (MAlonzo.Code.Algebra.d294
               v0 (MAlonzo.Code.Algebra.d294 v0 v1 v2)
               (MAlonzo.Code.Algebra.d298 v0 v2))
            (MAlonzo.Code.Function.du176
               (MAlonzo.Code.Relation.Binary.Core.d516
                  (MAlonzo.Code.Algebra.Structures.d140
                     (MAlonzo.Code.Algebra.Structures.d294
                        (MAlonzo.Code.Algebra.Structures.d820
                           (MAlonzo.Code.Algebra.d300 v0))))
                  v1)
               (MAlonzo.Code.Algebra.Structures.d144
                  (MAlonzo.Code.Algebra.Structures.d294
                     (MAlonzo.Code.Algebra.Structures.d820
                        (MAlonzo.Code.Algebra.d300 v0)))
                  v1 v1 (MAlonzo.Code.Algebra.d296 v0)
                  (MAlonzo.Code.Algebra.d294
                     v0 v2 (MAlonzo.Code.Algebra.d298 v0 v2)))
               (MAlonzo.Code.Relation.Binary.Core.d518
                  (MAlonzo.Code.Algebra.Structures.d140
                     (MAlonzo.Code.Algebra.Structures.d294
                        (MAlonzo.Code.Algebra.Structures.d820
                           (MAlonzo.Code.Algebra.d300 v0))))
                  (MAlonzo.Code.Algebra.d294 v0 v2 (MAlonzo.Code.Algebra.d298 v0 v2))
                  (MAlonzo.Code.Algebra.d296 v0)
                  (MAlonzo.Code.Data.Product.d28
                     (MAlonzo.Code.Algebra.Structures.d822
                        (MAlonzo.Code.Algebra.d300 v0))
                     v2)))
            (let v5
                   = coe
                       MAlonzo.Code.Relation.Binary.C143
                       (coe
                          MAlonzo.Code.Algebra.Structures.d140
                          (coe
                             MAlonzo.Code.Algebra.Structures.d294
                             (coe
                                MAlonzo.Code.Algebra.Structures.d820
                                (coe MAlonzo.Code.Algebra.d300 v0)))) in
             MAlonzo.Code.Relation.Binary.PreorderReasoning.du72
               (MAlonzo.Code.Relation.Binary.du150 v5)
               (MAlonzo.Code.Algebra.d294
                  v0 v1
                  (MAlonzo.Code.Algebra.d294
                     v0 v2 (MAlonzo.Code.Algebra.d298 v0 v2)))
               (MAlonzo.Code.Algebra.d294
                  v0 (MAlonzo.Code.Algebra.d294 v0 v1 v2)
                  (MAlonzo.Code.Algebra.d298 v0 v2))
               (MAlonzo.Code.Algebra.d294
                  v0 (MAlonzo.Code.Algebra.d294 v0 v1 v2)
                  (MAlonzo.Code.Algebra.d298 v0 v2))
               (MAlonzo.Code.Relation.Binary.Core.d518
                  (MAlonzo.Code.Algebra.Structures.d140
                     (MAlonzo.Code.Algebra.Structures.d294
                        (MAlonzo.Code.Algebra.Structures.d820
                           (MAlonzo.Code.Algebra.d300 v0))))
                  (MAlonzo.Code.Algebra.d294
                     v0 (MAlonzo.Code.Algebra.d294 v0 v1 v2)
                     (MAlonzo.Code.Algebra.d298 v0 v2))
                  (MAlonzo.Code.Algebra.d294
                     v0 v1
                     (MAlonzo.Code.Algebra.d294
                        v0 v2 (MAlonzo.Code.Algebra.d298 v0 v2)))
                  (MAlonzo.Code.Algebra.Structures.d142
                     (MAlonzo.Code.Algebra.Structures.d294
                        (MAlonzo.Code.Algebra.Structures.d820
                           (MAlonzo.Code.Algebra.d300 v0)))
                     v1 v2 (MAlonzo.Code.Algebra.d298 v0 v2)))
               (let v6
                      = coe
                          MAlonzo.Code.Relation.Binary.C143
                          (coe
                             MAlonzo.Code.Algebra.Structures.d140
                             (coe
                                MAlonzo.Code.Algebra.Structures.d294
                                (coe
                                   MAlonzo.Code.Algebra.Structures.d820
                                   (coe MAlonzo.Code.Algebra.d300 v0)))) in
                let v7
                      = coe
                          MAlonzo.Code.Algebra.d294 v0
                          (coe MAlonzo.Code.Algebra.d294 v0 v1 v2)
                          (coe MAlonzo.Code.Algebra.d298 v0 v2) in
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
name154 = "Algebra.Properties.Group.right-helper"
d154 v0 v1 v2 v3 v4 = du154 v2 v3 v4
du154 v0 v1 v2
  = coe
      MAlonzo.Code.Relation.Binary.PreorderReasoning.d62
      (let v3
             = coe
                 MAlonzo.Code.Relation.Binary.C143
                 (coe
                    MAlonzo.Code.Algebra.Structures.d140
                    (coe
                       MAlonzo.Code.Algebra.Structures.d294
                       (coe
                          MAlonzo.Code.Algebra.Structures.d820
                          (coe MAlonzo.Code.Algebra.d300 v0)))) in
       MAlonzo.Code.Relation.Binary.PreorderReasoning.du72
         (MAlonzo.Code.Relation.Binary.du150 v3) v2
         (MAlonzo.Code.Algebra.d294 v0 (MAlonzo.Code.Algebra.d296 v0) v2)
         (MAlonzo.Code.Algebra.d294
            v0 (MAlonzo.Code.Algebra.d298 v0 v1)
            (MAlonzo.Code.Algebra.d294 v0 v1 v2))
         (MAlonzo.Code.Relation.Binary.Core.d518
            (MAlonzo.Code.Algebra.Structures.d140
               (MAlonzo.Code.Algebra.Structures.d294
                  (MAlonzo.Code.Algebra.Structures.d820
                     (MAlonzo.Code.Algebra.d300 v0))))
            (MAlonzo.Code.Algebra.d294 v0 (MAlonzo.Code.Algebra.d296 v0) v2) v2
            (MAlonzo.Code.Data.Product.d26
               (MAlonzo.Code.Algebra.Structures.d296
                  (MAlonzo.Code.Algebra.Structures.d820
                     (MAlonzo.Code.Algebra.d300 v0)))
               v2))
         (let v4
                = coe
                    MAlonzo.Code.Relation.Binary.C143
                    (coe
                       MAlonzo.Code.Algebra.Structures.d140
                       (coe
                          MAlonzo.Code.Algebra.Structures.d294
                          (coe
                             MAlonzo.Code.Algebra.Structures.d820
                             (coe MAlonzo.Code.Algebra.d300 v0)))) in
          MAlonzo.Code.Relation.Binary.PreorderReasoning.du72
            (MAlonzo.Code.Relation.Binary.du150 v4)
            (MAlonzo.Code.Algebra.d294 v0 (MAlonzo.Code.Algebra.d296 v0) v2)
            (MAlonzo.Code.Algebra.d294
               v0
               (MAlonzo.Code.Algebra.d294 v0 (MAlonzo.Code.Algebra.d298 v0 v1) v1)
               v2)
            (MAlonzo.Code.Algebra.d294
               v0 (MAlonzo.Code.Algebra.d298 v0 v1)
               (MAlonzo.Code.Algebra.d294 v0 v1 v2))
            (MAlonzo.Code.Function.du176
               (MAlonzo.Code.Relation.Binary.Core.d518
                  (MAlonzo.Code.Algebra.Structures.d140
                     (MAlonzo.Code.Algebra.Structures.d294
                        (MAlonzo.Code.Algebra.Structures.d820
                           (MAlonzo.Code.Algebra.d300 v0))))
                  (MAlonzo.Code.Algebra.d294 v0 (MAlonzo.Code.Algebra.d298 v0 v1) v1)
                  (MAlonzo.Code.Algebra.d296 v0)
                  (MAlonzo.Code.Data.Product.d26
                     (MAlonzo.Code.Algebra.Structures.d822
                        (MAlonzo.Code.Algebra.d300 v0))
                     v1))
               (MAlonzo.Code.Algebra.Structures.d144
                  (MAlonzo.Code.Algebra.Structures.d294
                     (MAlonzo.Code.Algebra.Structures.d820
                        (MAlonzo.Code.Algebra.d300 v0)))
                  (MAlonzo.Code.Algebra.d296 v0)
                  (MAlonzo.Code.Algebra.d294 v0 (MAlonzo.Code.Algebra.d298 v0 v1) v1)
                  v2 v2)
               (MAlonzo.Code.Relation.Binary.Core.d516
                  (MAlonzo.Code.Algebra.Structures.d140
                     (MAlonzo.Code.Algebra.Structures.d294
                        (MAlonzo.Code.Algebra.Structures.d820
                           (MAlonzo.Code.Algebra.d300 v0))))
                  v2))
            (let v5
                   = coe
                       MAlonzo.Code.Relation.Binary.C143
                       (coe
                          MAlonzo.Code.Algebra.Structures.d140
                          (coe
                             MAlonzo.Code.Algebra.Structures.d294
                             (coe
                                MAlonzo.Code.Algebra.Structures.d820
                                (coe MAlonzo.Code.Algebra.d300 v0)))) in
             MAlonzo.Code.Relation.Binary.PreorderReasoning.du72
               (MAlonzo.Code.Relation.Binary.du150 v5)
               (MAlonzo.Code.Algebra.d294
                  v0
                  (MAlonzo.Code.Algebra.d294 v0 (MAlonzo.Code.Algebra.d298 v0 v1) v1)
                  v2)
               (MAlonzo.Code.Algebra.d294
                  v0 (MAlonzo.Code.Algebra.d298 v0 v1)
                  (MAlonzo.Code.Algebra.d294 v0 v1 v2))
               (MAlonzo.Code.Algebra.d294
                  v0 (MAlonzo.Code.Algebra.d298 v0 v1)
                  (MAlonzo.Code.Algebra.d294 v0 v1 v2))
               (MAlonzo.Code.Algebra.Structures.d142
                  (MAlonzo.Code.Algebra.Structures.d294
                     (MAlonzo.Code.Algebra.Structures.d820
                        (MAlonzo.Code.Algebra.d300 v0)))
                  (MAlonzo.Code.Algebra.d298 v0 v1) v1 v2)
               (let v6
                      = coe
                          MAlonzo.Code.Relation.Binary.C143
                          (coe
                             MAlonzo.Code.Algebra.Structures.d140
                             (coe
                                MAlonzo.Code.Algebra.Structures.d294
                                (coe
                                   MAlonzo.Code.Algebra.Structures.d820
                                   (coe MAlonzo.Code.Algebra.d300 v0)))) in
                let v7
                      = coe
                          MAlonzo.Code.Algebra.d294 v0 (coe MAlonzo.Code.Algebra.d298 v0 v1)
                          (coe MAlonzo.Code.Algebra.d294 v0 v1 v2) in
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
name164 = "Algebra.Properties.Group.left-identity-unique"
d164 v0 v1 v2 v3 v4 v5 = du164 v2 v3 v4 v5
du164 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Relation.Binary.PreorderReasoning.d62
      (let v4
             = coe
                 MAlonzo.Code.Relation.Binary.C143
                 (coe
                    MAlonzo.Code.Algebra.Structures.d140
                    (coe
                       MAlonzo.Code.Algebra.Structures.d294
                       (coe
                          MAlonzo.Code.Algebra.Structures.d820
                          (coe MAlonzo.Code.Algebra.d300 v0)))) in
       MAlonzo.Code.Relation.Binary.PreorderReasoning.du72
         (MAlonzo.Code.Relation.Binary.du150 v4) v1
         (MAlonzo.Code.Algebra.d294
            v0 (MAlonzo.Code.Algebra.d294 v0 v1 v2)
            (MAlonzo.Code.Algebra.d298 v0 v2))
         (MAlonzo.Code.Algebra.d296 v0) (du144 v0 v1 v2)
         (let v5
                = coe
                    MAlonzo.Code.Relation.Binary.C143
                    (coe
                       MAlonzo.Code.Algebra.Structures.d140
                       (coe
                          MAlonzo.Code.Algebra.Structures.d294
                          (coe
                             MAlonzo.Code.Algebra.Structures.d820
                             (coe MAlonzo.Code.Algebra.d300 v0)))) in
          MAlonzo.Code.Relation.Binary.PreorderReasoning.du72
            (MAlonzo.Code.Relation.Binary.du150 v5)
            (MAlonzo.Code.Algebra.d294
               v0 (MAlonzo.Code.Algebra.d294 v0 v1 v2)
               (MAlonzo.Code.Algebra.d298 v0 v2))
            (MAlonzo.Code.Algebra.d294 v0 v2 (MAlonzo.Code.Algebra.d298 v0 v2))
            (MAlonzo.Code.Algebra.d296 v0)
            (MAlonzo.Code.Function.du176
               v3
               (MAlonzo.Code.Algebra.Structures.d144
                  (MAlonzo.Code.Algebra.Structures.d294
                     (MAlonzo.Code.Algebra.Structures.d820
                        (MAlonzo.Code.Algebra.d300 v0)))
                  (MAlonzo.Code.Algebra.d294 v0 v1 v2) v2
                  (MAlonzo.Code.Algebra.d298 v0 v2)
                  (MAlonzo.Code.Algebra.d298 v0 v2))
               (MAlonzo.Code.Relation.Binary.Core.d516
                  (MAlonzo.Code.Algebra.Structures.d140
                     (MAlonzo.Code.Algebra.Structures.d294
                        (MAlonzo.Code.Algebra.Structures.d820
                           (MAlonzo.Code.Algebra.d300 v0))))
                  (MAlonzo.Code.Algebra.d298 v0 v2)))
            (let v6
                   = coe
                       MAlonzo.Code.Relation.Binary.C143
                       (coe
                          MAlonzo.Code.Algebra.Structures.d140
                          (coe
                             MAlonzo.Code.Algebra.Structures.d294
                             (coe
                                MAlonzo.Code.Algebra.Structures.d820
                                (coe MAlonzo.Code.Algebra.d300 v0)))) in
             MAlonzo.Code.Relation.Binary.PreorderReasoning.du72
               (MAlonzo.Code.Relation.Binary.du150 v6)
               (MAlonzo.Code.Algebra.d294 v0 v2 (MAlonzo.Code.Algebra.d298 v0 v2))
               (MAlonzo.Code.Algebra.d296 v0) (MAlonzo.Code.Algebra.d296 v0)
               (MAlonzo.Code.Data.Product.d28
                  (MAlonzo.Code.Algebra.Structures.d822
                     (MAlonzo.Code.Algebra.d300 v0))
                  v2)
               (let v7
                      = coe
                          MAlonzo.Code.Relation.Binary.C143
                          (coe
                             MAlonzo.Code.Algebra.Structures.d140
                             (coe
                                MAlonzo.Code.Algebra.Structures.d294
                                (coe
                                   MAlonzo.Code.Algebra.Structures.d820
                                   (coe MAlonzo.Code.Algebra.d300 v0)))) in
                let v8 = coe MAlonzo.Code.Algebra.d296 v0 in
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
name176 = "Algebra.Properties.Group.right-identity-unique"
d176 v0 v1 v2 v3 v4 v5 = du176 v2 v3 v4 v5
du176 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Relation.Binary.PreorderReasoning.d62
      (let v4
             = coe
                 MAlonzo.Code.Relation.Binary.C143
                 (coe
                    MAlonzo.Code.Algebra.Structures.d140
                    (coe
                       MAlonzo.Code.Algebra.Structures.d294
                       (coe
                          MAlonzo.Code.Algebra.Structures.d820
                          (coe MAlonzo.Code.Algebra.d300 v0)))) in
       MAlonzo.Code.Relation.Binary.PreorderReasoning.du72
         (MAlonzo.Code.Relation.Binary.du150 v4) v2
         (MAlonzo.Code.Algebra.d294
            v0 (MAlonzo.Code.Algebra.d298 v0 v1)
            (MAlonzo.Code.Algebra.d294 v0 v1 v2))
         (MAlonzo.Code.Algebra.d296 v0) (du154 v0 v1 v2)
         (let v5
                = coe
                    MAlonzo.Code.Relation.Binary.C143
                    (coe
                       MAlonzo.Code.Algebra.Structures.d140
                       (coe
                          MAlonzo.Code.Algebra.Structures.d294
                          (coe
                             MAlonzo.Code.Algebra.Structures.d820
                             (coe MAlonzo.Code.Algebra.d300 v0)))) in
          MAlonzo.Code.Relation.Binary.PreorderReasoning.du72
            (MAlonzo.Code.Relation.Binary.du150 v5)
            (MAlonzo.Code.Algebra.d294
               v0 (MAlonzo.Code.Algebra.d298 v0 v1)
               (MAlonzo.Code.Algebra.d294 v0 v1 v2))
            (MAlonzo.Code.Algebra.d294 v0 (MAlonzo.Code.Algebra.d298 v0 v1) v1)
            (MAlonzo.Code.Algebra.d296 v0)
            (MAlonzo.Code.Function.du176
               (MAlonzo.Code.Relation.Binary.Core.d516
                  (MAlonzo.Code.Algebra.Structures.d140
                     (MAlonzo.Code.Algebra.Structures.d294
                        (MAlonzo.Code.Algebra.Structures.d820
                           (MAlonzo.Code.Algebra.d300 v0))))
                  (MAlonzo.Code.Algebra.d298 v0 v1))
               (MAlonzo.Code.Algebra.Structures.d144
                  (MAlonzo.Code.Algebra.Structures.d294
                     (MAlonzo.Code.Algebra.Structures.d820
                        (MAlonzo.Code.Algebra.d300 v0)))
                  (MAlonzo.Code.Algebra.d298 v0 v1) (MAlonzo.Code.Algebra.d298 v0 v1)
                  (MAlonzo.Code.Algebra.d294 v0 v1 v2) v1)
               v3)
            (let v6
                   = coe
                       MAlonzo.Code.Relation.Binary.C143
                       (coe
                          MAlonzo.Code.Algebra.Structures.d140
                          (coe
                             MAlonzo.Code.Algebra.Structures.d294
                             (coe
                                MAlonzo.Code.Algebra.Structures.d820
                                (coe MAlonzo.Code.Algebra.d300 v0)))) in
             MAlonzo.Code.Relation.Binary.PreorderReasoning.du72
               (MAlonzo.Code.Relation.Binary.du150 v6)
               (MAlonzo.Code.Algebra.d294 v0 (MAlonzo.Code.Algebra.d298 v0 v1) v1)
               (MAlonzo.Code.Algebra.d296 v0) (MAlonzo.Code.Algebra.d296 v0)
               (MAlonzo.Code.Data.Product.d26
                  (MAlonzo.Code.Algebra.Structures.d822
                     (MAlonzo.Code.Algebra.d300 v0))
                  v1)
               (let v7
                      = coe
                          MAlonzo.Code.Relation.Binary.C143
                          (coe
                             MAlonzo.Code.Algebra.Structures.d140
                             (coe
                                MAlonzo.Code.Algebra.Structures.d294
                                (coe
                                   MAlonzo.Code.Algebra.Structures.d820
                                   (coe MAlonzo.Code.Algebra.d300 v0)))) in
                let v8 = coe MAlonzo.Code.Algebra.d296 v0 in
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
name186 = "Algebra.Properties.Group.identity-unique"
d186 v0 v1 v2 v3 v4 = du186 v2 v3 v4
du186 v0 v1 v2
  = coe du164 v0 v1 v1 (coe MAlonzo.Code.Data.Product.d28 v2 v1)
name196 = "Algebra.Properties.Group.left-inverse-unique"
d196 v0 v1 v2 v3 v4 v5 = du196 v2 v3 v4 v5
du196 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Relation.Binary.PreorderReasoning.d62
      (let v4
             = coe
                 MAlonzo.Code.Relation.Binary.C143
                 (coe
                    MAlonzo.Code.Algebra.Structures.d140
                    (coe
                       MAlonzo.Code.Algebra.Structures.d294
                       (coe
                          MAlonzo.Code.Algebra.Structures.d820
                          (coe MAlonzo.Code.Algebra.d300 v0)))) in
       MAlonzo.Code.Relation.Binary.PreorderReasoning.du72
         (MAlonzo.Code.Relation.Binary.du150 v4) v1
         (MAlonzo.Code.Algebra.d294
            v0 (MAlonzo.Code.Algebra.d294 v0 v1 v2)
            (MAlonzo.Code.Algebra.d298 v0 v2))
         (MAlonzo.Code.Algebra.d298 v0 v2) (du144 v0 v1 v2)
         (let v5
                = coe
                    MAlonzo.Code.Relation.Binary.C143
                    (coe
                       MAlonzo.Code.Algebra.Structures.d140
                       (coe
                          MAlonzo.Code.Algebra.Structures.d294
                          (coe
                             MAlonzo.Code.Algebra.Structures.d820
                             (coe MAlonzo.Code.Algebra.d300 v0)))) in
          MAlonzo.Code.Relation.Binary.PreorderReasoning.du72
            (MAlonzo.Code.Relation.Binary.du150 v5)
            (MAlonzo.Code.Algebra.d294
               v0 (MAlonzo.Code.Algebra.d294 v0 v1 v2)
               (MAlonzo.Code.Algebra.d298 v0 v2))
            (MAlonzo.Code.Algebra.d294
               v0 (MAlonzo.Code.Algebra.d296 v0)
               (MAlonzo.Code.Algebra.d298 v0 v2))
            (MAlonzo.Code.Algebra.d298 v0 v2)
            (MAlonzo.Code.Function.du176
               v3
               (MAlonzo.Code.Algebra.Structures.d144
                  (MAlonzo.Code.Algebra.Structures.d294
                     (MAlonzo.Code.Algebra.Structures.d820
                        (MAlonzo.Code.Algebra.d300 v0)))
                  (MAlonzo.Code.Algebra.d294 v0 v1 v2) (MAlonzo.Code.Algebra.d296 v0)
                  (MAlonzo.Code.Algebra.d298 v0 v2)
                  (MAlonzo.Code.Algebra.d298 v0 v2))
               (MAlonzo.Code.Relation.Binary.Core.d516
                  (MAlonzo.Code.Algebra.Structures.d140
                     (MAlonzo.Code.Algebra.Structures.d294
                        (MAlonzo.Code.Algebra.Structures.d820
                           (MAlonzo.Code.Algebra.d300 v0))))
                  (MAlonzo.Code.Algebra.d298 v0 v2)))
            (let v6
                   = coe
                       MAlonzo.Code.Relation.Binary.C143
                       (coe
                          MAlonzo.Code.Algebra.Structures.d140
                          (coe
                             MAlonzo.Code.Algebra.Structures.d294
                             (coe
                                MAlonzo.Code.Algebra.Structures.d820
                                (coe MAlonzo.Code.Algebra.d300 v0)))) in
             MAlonzo.Code.Relation.Binary.PreorderReasoning.du72
               (MAlonzo.Code.Relation.Binary.du150 v6)
               (MAlonzo.Code.Algebra.d294
                  v0 (MAlonzo.Code.Algebra.d296 v0)
                  (MAlonzo.Code.Algebra.d298 v0 v2))
               (MAlonzo.Code.Algebra.d298 v0 v2) (MAlonzo.Code.Algebra.d298 v0 v2)
               (MAlonzo.Code.Data.Product.d26
                  (MAlonzo.Code.Algebra.Structures.d296
                     (MAlonzo.Code.Algebra.Structures.d820
                        (MAlonzo.Code.Algebra.d300 v0)))
                  (MAlonzo.Code.Algebra.d298 v0 v2))
               (let v7
                      = coe
                          MAlonzo.Code.Relation.Binary.C143
                          (coe
                             MAlonzo.Code.Algebra.Structures.d140
                             (coe
                                MAlonzo.Code.Algebra.Structures.d294
                                (coe
                                   MAlonzo.Code.Algebra.Structures.d820
                                   (coe MAlonzo.Code.Algebra.d300 v0)))) in
                let v8 = coe MAlonzo.Code.Algebra.d298 v0 v2 in
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
name208 = "Algebra.Properties.Group.right-inverse-unique"
d208 v0 v1 v2 v3 v4 v5 = du208 v2 v3 v4 v5
du208 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Relation.Binary.PreorderReasoning.d62
      (let v4
             = coe
                 MAlonzo.Code.Relation.Binary.C143
                 (coe
                    MAlonzo.Code.Algebra.Structures.d140
                    (coe
                       MAlonzo.Code.Algebra.Structures.d294
                       (coe
                          MAlonzo.Code.Algebra.Structures.d820
                          (coe MAlonzo.Code.Algebra.d300 v0)))) in
       MAlonzo.Code.Relation.Binary.PreorderReasoning.du72
         (MAlonzo.Code.Relation.Binary.du150 v4) v2
         (MAlonzo.Code.Algebra.d298 v0 (MAlonzo.Code.Algebra.d298 v0 v2))
         (MAlonzo.Code.Algebra.d298 v0 v1)
         (MAlonzo.Code.Relation.Binary.Core.d518
            (MAlonzo.Code.Algebra.Structures.d140
               (MAlonzo.Code.Algebra.Structures.d294
                  (MAlonzo.Code.Algebra.Structures.d820
                     (MAlonzo.Code.Algebra.d300 v0))))
            (MAlonzo.Code.Algebra.d298 v0 (MAlonzo.Code.Algebra.d298 v0 v2)) v2
            (du136 v0 v2))
         (let v5
                = coe
                    MAlonzo.Code.Relation.Binary.C143
                    (coe
                       MAlonzo.Code.Algebra.Structures.d140
                       (coe
                          MAlonzo.Code.Algebra.Structures.d294
                          (coe
                             MAlonzo.Code.Algebra.Structures.d820
                             (coe MAlonzo.Code.Algebra.d300 v0)))) in
          MAlonzo.Code.Relation.Binary.PreorderReasoning.du72
            (MAlonzo.Code.Relation.Binary.du150 v5)
            (MAlonzo.Code.Algebra.d298 v0 (MAlonzo.Code.Algebra.d298 v0 v2))
            (MAlonzo.Code.Algebra.d298 v0 v1) (MAlonzo.Code.Algebra.d298 v0 v1)
            (MAlonzo.Code.Algebra.Structures.d824
               (MAlonzo.Code.Algebra.d300 v0) (MAlonzo.Code.Algebra.d298 v0 v2) v1
               (MAlonzo.Code.Relation.Binary.Core.d518
                  (MAlonzo.Code.Algebra.Structures.d140
                     (MAlonzo.Code.Algebra.Structures.d294
                        (MAlonzo.Code.Algebra.Structures.d820
                           (MAlonzo.Code.Algebra.d300 v0))))
                  v1 (MAlonzo.Code.Algebra.d298 v0 v2) (du196 v0 v1 v2 v3)))
            (let v6
                   = coe
                       MAlonzo.Code.Relation.Binary.C143
                       (coe
                          MAlonzo.Code.Algebra.Structures.d140
                          (coe
                             MAlonzo.Code.Algebra.Structures.d294
                             (coe
                                MAlonzo.Code.Algebra.Structures.d820
                                (coe MAlonzo.Code.Algebra.d300 v0)))) in
             let v7 = coe MAlonzo.Code.Algebra.d298 v0 v1 in
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