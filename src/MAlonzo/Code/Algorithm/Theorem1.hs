{-# LANGUAGE EmptyDataDecls, ExistentialQuantification,
             ScopedTypeVariables, NoMonomorphismRestriction, Rank2Types #-}
module MAlonzo.Code.Algorithm.Theorem1 where

import MAlonzo.RTE (coe, erased, addInt, subInt, mulInt, quotInt,
                    remInt, geqInt, ltInt, eqInt, eqFloat)
import qualified Control.Exception
import qualified Data.Text
import qualified Data.Text.IO
import qualified MAlonzo.RTE
import qualified System.Environment
import qualified System.IO
import qualified Data.Text
import qualified MAlonzo.Code.Algorithm
import qualified MAlonzo.Code.App
import qualified MAlonzo.Code.Computation.Properties.Decidable
import qualified MAlonzo.Code.Data.List.Base
import qualified MAlonzo.Code.Data.Nat
import qualified MAlonzo.Code.Data.Nat.Base
import qualified MAlonzo.Code.Data.Product
import qualified MAlonzo.Code.Function
import qualified MAlonzo.Code.Graph.Cycle
import qualified MAlonzo.Code.Graph.Definitions
import qualified MAlonzo.Code.QQueue
import qualified MAlonzo.Code.Relation.Binary
import qualified MAlonzo.Code.Relation.Binary.Core
import qualified MAlonzo.Code.Relation.Binary.PreorderReasoning
import qualified MAlonzo.Code.Relation.Nullary
import qualified MAlonzo.Code.Star
import qualified MAlonzo.Code.Star.Properties
import qualified MAlonzo.Code.Sum

name28 = "_._ClosedOnG"
d28 = erased
name96 = "Algorithm.Theorem1._._\8605S_"
d96 = erased
name108 = "Algorithm.Theorem1._.IS\8320"
d108 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 = du108 v4 v6 v8
du108 v0 v1 v2 = coe MAlonzo.Code.Algorithm.du600 v0 v1 v2
name110 = "Algorithm.Theorem1._.I\8320"
d110 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 = du110 v4 v6 v8
du110 v0 v1 v2 = coe MAlonzo.Code.Algorithm.du412 v0 v1 v2
name132 = "Algorithm.Theorem1._.\963"
d132 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 = du132 v1 v4 v5 v6 v7
du132 v0 v1 v2 v3 v4
  = coe MAlonzo.Code.Algorithm.du368 v0 v1 v2 v3 v4
name134 = "Algorithm.Theorem1._.\963S"
d134 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 = du134 v1 v4 v5 v6 v7 v8
du134 v0 v1 v2 v3 v4 v5
  = coe MAlonzo.Code.Algorithm.du558 v0 v1 v2 v3 v4 v5
name482 = "Algorithm.Theorem1._._\8776_"
d482 = erased
name526 = "Algorithm.Theorem1._.Carrier"
d526 = erased
name646 = "Algorithm.Theorem1._.\8721"
d646 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 = du646 v4
du646 v0 = coe MAlonzo.Code.Sum.du94 v0
name664 = "Algorithm.Theorem1._._\8712Q_"
d664 = erased
name668 = "Algorithm.Theorem1._.Has-items"
d668 = erased
name670 = "Algorithm.Theorem1._.Has-items?"
d670 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 = du670 v6
du670 v0 = coe MAlonzo.Code.QQueue.du96 v0
name730 = "Algorithm.Theorem1._.path-weight"
d730 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 = du730 v4 v7
du730 v0 v1 v2 v3 v4
  = coe MAlonzo.Code.Graph.Definitions.du218 v0 v1 v3 v4
name732 = "Algorithm.Theorem1._.shortest-distance"
d732 = erased
name778 = "Algorithm.Theorem1._.all-P"
d778 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 = du778 v0 v1 v2 v4 v7 v8
du778 v0 v1 v2 v3 v4 v5
  = coe MAlonzo.Code.Graph.Cycle.d326 v0 v2 v1 v3 v4 v5
name798 = "Algorithm.Theorem1._.bound-norm"
d798 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12
  = coe
      MAlonzo.Code.Computation.Properties.Decidable.du118
      (coe d4315 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10)
      (coe MAlonzo.Code.Algorithm.du600 v4 v6 v8) v11
name804 = "Algorithm.Theorem1.max-steps"
d804 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 = du804 v0 v1 v2 v4 v7 v8 v9
du804 v0 v1 v2 v3 v4 v5 v6
  = coe
      MAlonzo.Code.App.d4 v1
      (coe
         MAlonzo.Code.Function.du38
         (\ v7 -> MAlonzo.Code.Data.List.Base.du226)
         (coe MAlonzo.Code.Graph.Cycle.d326 v0 v2 v1 v3 v4 v5 v6))
name810 = "Algorithm.Theorem1.max-steps-bound-l"
d810 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12
  = coe
      d4317 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10
      (coe MAlonzo.Code.Data.Product.d26 v11)
      (coe MAlonzo.Code.Data.Product.d28 v11) v12
name822 = "Algorithm.Theorem1.max-steps-bound"
d822 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12
  = coe
      MAlonzo.Code.Relation.Binary.PreorderReasoning.d62
      (let v13
             = coe
                 MAlonzo.Code.Relation.Binary.C345
                 (coe
                    MAlonzo.Code.Relation.Binary.d842
                    (coe
                       MAlonzo.Code.Relation.Binary.d970
                       (coe
                          MAlonzo.Code.Relation.Binary.d1052 MAlonzo.Code.Data.Nat.d12))) in
       MAlonzo.Code.Relation.Binary.PreorderReasoning.du84
         (MAlonzo.Code.Relation.Binary.C125
            (MAlonzo.Code.Relation.Binary.d268
               (MAlonzo.Code.Relation.Binary.d322 v13)))
         (MAlonzo.Code.Star.du18
            (MAlonzo.Code.Algorithm.du600 v4 v6 v8) v11 v12)
         (MAlonzo.Code.Star.du18
            v11 (MAlonzo.Code.Algorithm.du600 v4 v6 v8)
            (MAlonzo.Code.Star.Properties.du752
               (MAlonzo.Code.Algorithm.du600 v4 v6 v8) v11 v12))
         (du804 v0 v1 v2 v4 v7 v8 v9) erased
         (let v14
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
                  (MAlonzo.Code.Relation.Binary.d322 v14)))
            (MAlonzo.Code.Star.du18
               v11 (MAlonzo.Code.Algorithm.du600 v4 v6 v8)
               (MAlonzo.Code.Star.Properties.du752
                  (MAlonzo.Code.Algorithm.du600 v4 v6 v8) v11 v12))
            (du804 v0 v1 v2 v4 v7 v8 v9) (du804 v0 v1 v2 v4 v7 v8 v9)
            (d810
               v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11
               (MAlonzo.Code.Star.Properties.du752
                  (MAlonzo.Code.Algorithm.du600 v4 v6 v8) v11 v12))
            (let v15 = coe du804 v0 v1 v2 v4 v7 v8 v9 in
             MAlonzo.Code.Relation.Binary.PreorderReasoning.C56
               (MAlonzo.Code.Relation.Binary.d38
                  (MAlonzo.Code.Relation.Binary.d268
                     (MAlonzo.Code.Relation.Binary.d842
                        (MAlonzo.Code.Relation.Binary.d970
                           (MAlonzo.Code.Relation.Binary.d1052 MAlonzo.Code.Data.Nat.d12))))
                  v15 v15
                  (MAlonzo.Code.Relation.Binary.Core.d516
                     (MAlonzo.Code.Relation.Binary.d36
                        (MAlonzo.Code.Relation.Binary.d268
                           (MAlonzo.Code.Relation.Binary.d842
                              (MAlonzo.Code.Relation.Binary.d970
                                 (MAlonzo.Code.Relation.Binary.d1052 MAlonzo.Code.Data.Nat.d12)))))
                     v15)))))
name830 = "Algorithm.Theorem1.strongly-normalizing"
d830 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10
  = coe
      MAlonzo.Code.Computation.Properties.Decidable.du118
      (coe d4315 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10)
      (coe MAlonzo.Code.Algorithm.du600 v4 v6 v8)
      (coe du804 v0 v1 v2 v4 v7 v8 v9)
name836 = "Algorithm.Theorem1.L\8804P\8342q"
d836 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12
  = case coe v12 of
      0 -> coe
             MAlonzo.Code.Data.Nat.Base.C10
             (coe
                MAlonzo.Code.Data.List.Base.du226
                (coe MAlonzo.Code.Graph.Cycle.d326 v0 v2 v1 v4 v7 v8 v9 v11))
      _ -> let v13 = coe subInt v12 (1 :: Integer) in
           let v14
                 = coe
                     MAlonzo.Code.Algorithm.du558 v1 v4 v5 v6 v7 v8 v13
                     (coe MAlonzo.Code.Algorithm.du600 v4 v6 v8) in
           let v15 = coe MAlonzo.Code.Data.Product.d26 v14 in
           let v16
                 = coe
                     MAlonzo.Code.QQueue.du96 v6
                     (coe
                        MAlonzo.Code.Algorithm.d286
                        (coe MAlonzo.Code.Data.Product.d26 v14)) in
           let v17 = coe MAlonzo.Code.Data.Product.d28 v14 in
           case coe v16 of
             MAlonzo.Code.Relation.Nullary.C22 v18
               -> let v19
                        = coe
                            MAlonzo.Code.Data.Nat.Base.d258
                            (coe
                               addInt (1 :: Integer) (coe MAlonzo.Code.Algorithm.d450 v17 v11))
                            (coe
                               MAlonzo.Code.Data.List.Base.du226
                               (coe MAlonzo.Code.Graph.Cycle.d326 v0 v2 v1 v4 v7 v8 v9 v11)) in
                  case coe v19 of
                    MAlonzo.Code.Relation.Nullary.C22 v20
                      -> coe
                           d4319 v0 v1 v2 v3 v4 v5 v6 v7 v8 v17 v9 v11 v20 v15 v18 v13 erased
                           v10
                    MAlonzo.Code.Relation.Nullary.C26
                      -> coe
                           d4321 v0 v1 v2 v3 v4 v5 v6 v7 v8 v17 v9 v11 erased v15 v18 v13
                           erased v10
                    _ -> coe MAlonzo.RTE.mazUnreachableError
             MAlonzo.Code.Relation.Nullary.C26
               -> coe d836 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v13
             _ -> coe MAlonzo.RTE.mazUnreachableError
name996 = "Algorithm.Theorem1.vertex-finished"
d996
  = error
      "MAlonzo Runtime Error: postulate evaluated: Algorithm.Theorem1.vertex-finished"
name1000 = "Algorithm.Theorem1.terminates"
d1000
  = error
      "MAlonzo Runtime Error: postulate evaluated: Algorithm.Theorem1.terminates"
name1002 = "Algorithm.Theorem1.result"
d1002 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10
  = coe
      MAlonzo.Code.Algorithm.d282
      (coe
         MAlonzo.Code.Algorithm.du368 v1 v4 v5 v6 v7
         (coe
            MAlonzo.Code.Data.Product.d26
            (coe d1000 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10))
         (coe MAlonzo.Code.Algorithm.du412 v4 v6 v8))
name1006 = "Algorithm.Theorem1.k-correct"
d1006 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11
  = coe d4323 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11
name1012 = "Algorithm.Theorem1.correct"
d1012 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11
  = coe d4325 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11
name4315 = "Algorithm.Theorem1.unsolved#meta.56"
d4315
  = error
      "MAlonzo Runtime Error: postulate evaluated: Algorithm.Theorem1.unsolved#meta.56"
name4317 = "Algorithm.Theorem1.unsolved#meta.80"
d4317
  = error
      "MAlonzo Runtime Error: postulate evaluated: Algorithm.Theorem1.unsolved#meta.80"
name4319 = "Algorithm.Theorem1.unsolved#meta.178"
d4319
  = error
      "MAlonzo Runtime Error: postulate evaluated: Algorithm.Theorem1.unsolved#meta.178"
name4321 = "Algorithm.Theorem1.unsolved#meta.179"
d4321
  = error
      "MAlonzo Runtime Error: postulate evaluated: Algorithm.Theorem1.unsolved#meta.179"
name4323 = "Algorithm.Theorem1.unsolved#meta.218"
d4323
  = error
      "MAlonzo Runtime Error: postulate evaluated: Algorithm.Theorem1.unsolved#meta.218"
name4325 = "Algorithm.Theorem1.unsolved#meta.225"
d4325
  = error
      "MAlonzo Runtime Error: postulate evaluated: Algorithm.Theorem1.unsolved#meta.225"