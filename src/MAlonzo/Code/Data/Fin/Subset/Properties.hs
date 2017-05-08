{-# LANGUAGE EmptyDataDecls, ExistentialQuantification,
             ScopedTypeVariables, NoMonomorphismRestriction, Rank2Types #-}
module MAlonzo.Code.Data.Fin.Subset.Properties where

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
import qualified MAlonzo.Code.Algebra.Properties.Lattice
import qualified MAlonzo.Code.Algebra.Structures
import qualified MAlonzo.Code.Data.Bool.Properties
import qualified MAlonzo.Code.Data.Fin
import qualified MAlonzo.Code.Data.Fin.Subset
import qualified MAlonzo.Code.Data.Sum
import qualified MAlonzo.Code.Data.Vec
import qualified MAlonzo.Code.Function
import qualified MAlonzo.Code.Function.Equality
import qualified MAlonzo.Code.Function.Equivalence
import qualified MAlonzo.Code.Relation.Binary
import qualified MAlonzo.Code.Relation.Binary.PropositionalEquality.Core

name16 = "Data.Fin.Subset.Properties.drop-there"
d16 v0 v1 v2 v3 v4 = du16 v4
du16 v0
  = case coe v0 of
      MAlonzo.Code.Data.Vec.C88 v1 v2 v3 v4 v5 v6 -> coe v6
      _ -> coe MAlonzo.RTE.mazUnreachableError
name30 = "Data.Fin.Subset.Properties.drop-\8759-\8838"
d30 v0 v1 v2 v3 v4 v5 v6 v7 = du30 v0 v1 v3 v5 v6 v7
du30 v0 v1 v2 v3 v4 v5
  = coe
      MAlonzo.Code.Function.du158 du16
      (coe
         v3 (coe MAlonzo.Code.Data.Fin.C14 v0 v4)
         (coe MAlonzo.Code.Data.Vec.C88 v0 v4 True v1 v2 v5))
name42 = "Data.Fin.Subset.Properties.drop-\8759-Empty"
d42 = erased
name54 = "Data.Fin.Subset.Properties.\8713\8869"
d54 = erased
name62 = "Data.Fin.Subset.Properties.\8869\8838"
d62 v0 v1 v2 v3 = du62
du62 = MAlonzo.RTE.mazUnreachableError
name76 = "Data.Fin.Subset.Properties.Empty-unique"
d76 = erased
name98 = "Data.Fin.Subset.Properties.\8712\8868"
d98 v0 v1 = du98 v1
du98 v0
  = case coe v0 of
      MAlonzo.Code.Data.Fin.C8 v1
        -> coe
             MAlonzo.Code.Data.Vec.C74 v1
             (coe
                MAlonzo.Code.Algebra.d1490 MAlonzo.Code.Data.Bool.Properties.d364)
             (coe
                MAlonzo.Code.Data.Vec.du166 v1
                (coe
                   MAlonzo.Code.Algebra.d1490 MAlonzo.Code.Data.Bool.Properties.d364))
      MAlonzo.Code.Data.Fin.C14 v1 v2
        -> coe
             MAlonzo.Code.Data.Vec.C88 v1 v2 True
             (coe
                MAlonzo.Code.Algebra.d1490 MAlonzo.Code.Data.Bool.Properties.d364)
             (coe
                MAlonzo.Code.Algebra.d1490
                (coe MAlonzo.Code.Data.Fin.Subset.d42 v1))
             (coe du98 v2)
      _ -> coe MAlonzo.RTE.mazUnreachableError
name106 = "Data.Fin.Subset.Properties.\8838\8868"
d106 v0 v1 v2 = du106 v2
du106 v0 = let v1 = coe du98 v0 in \ v2 -> coe v1
name114
  = "Data.Fin.Subset.Properties.x\8712\8261y\8262\8660x\8801y"
d114 v0 v1 v2 = du114 v1
du114 v0
  = coe
      MAlonzo.Code.Function.Equivalence.du56 erased
      (\ v1 -> coe du148 v0)
name130 = "Data.Fin.Subset.Properties._.to"
d130 = erased
name148 = "Data.Fin.Subset.Properties._.x\8712\8261x\8262"
d148 v0 v1 v2 v3 v4 = du148 v4
du148 v0
  = case coe v0 of
      MAlonzo.Code.Data.Fin.C8 v1
        -> coe
             MAlonzo.Code.Data.Vec.C74 v1 True
             (coe
                MAlonzo.Code.Algebra.d1492
                (coe MAlonzo.Code.Data.Fin.Subset.d42 v1))
      MAlonzo.Code.Data.Fin.C14 v1 v2
        -> coe
             MAlonzo.Code.Data.Vec.C88 v1 v2 True False
             (coe MAlonzo.Code.Data.Fin.Subset.du110 v2) (coe du148 v2)
      _ -> coe MAlonzo.RTE.mazUnreachableError
name164 = "Data.Fin.Subset.Properties.\8746\8660\8846"
d164 v0 v1 v2 v3 = du164 v1 v2
du164 v0 v1
  = coe
      MAlonzo.Code.Function.Equivalence.du56 (coe du178 v0 v1)
      (coe du242 v0 v1)
name178 = "Data.Fin.Subset.Properties._.to"
d178 v0 v1 v2 v3 v4 v5 v6 v7 v8 = du178 v5 v6 v8
du178 v0 v1 v2
  = case coe v0 of
      MAlonzo.Code.Data.Vec.C22 v3 v4 v5
        -> let v6
                 = case coe v1 of
                     MAlonzo.Code.Data.Vec.C22 v6 v7 v8
                       -> case coe v2 of
                            MAlonzo.Code.Data.Vec.C88 v9 v10 v11 v12 v13 v14
                              -> coe
                                   MAlonzo.Code.Data.Sum.du92
                                   (coe MAlonzo.Code.Data.Vec.C88 v3 v10 True v4 v5)
                                   (coe MAlonzo.Code.Data.Vec.C88 v3 v10 True v7 v8)
                                   (coe du178 v5 v8 v14)
                            _ -> coe MAlonzo.RTE.mazUnreachableError
                     _ -> coe MAlonzo.RTE.mazUnreachableError in
           case coe v4 of
             False
               -> case coe v1 of
                    MAlonzo.Code.Data.Vec.C22 v7 v8 v9
                      -> case coe v8 of
                           True
                             -> case coe v2 of
                                  MAlonzo.Code.Data.Vec.C74 v10 v11 v12
                                    -> coe Right (coe MAlonzo.Code.Data.Vec.C74 v3 v8 v9)
                                  _ -> coe v6
                           _ -> coe v6
                    _ -> coe MAlonzo.RTE.mazUnreachableError
             True
               -> case coe v1 of
                    MAlonzo.Code.Data.Vec.C22 v7 v8 v9
                      -> case coe v2 of
                           MAlonzo.Code.Data.Vec.C74 v10 v11 v12
                             -> coe Left (coe MAlonzo.Code.Data.Vec.C74 v3 v4 v5)
                           _ -> coe v6
                    _ -> coe MAlonzo.RTE.mazUnreachableError
             _ -> coe MAlonzo.RTE.mazUnreachableError
      _ -> coe MAlonzo.RTE.mazUnreachableError
name206 = "Data.Fin.Subset.Properties._.\8838\8746\737"
d206 v0 v1 v2 v3 v4 v5 v6 v7 v8 = du206 v6 v8
du206 v0 v1
  = case coe v0 of
      MAlonzo.Code.Data.Vec.C22 v2 v3 v4
        -> case coe v1 of
             MAlonzo.Code.Data.Vec.C74 v5 v6 v7
               -> coe
                    MAlonzo.Code.Data.Vec.C74 v2
                    (coe
                       MAlonzo.Code.Algebra.d1484 MAlonzo.Code.Data.Bool.Properties.d364
                       True v3)
                    (coe
                       MAlonzo.Code.Data.Vec.du150
                       (coe
                          MAlonzo.Code.Data.Vec.du150
                          (coe
                             MAlonzo.Code.Data.Vec.du166 v2
                             (coe
                                MAlonzo.Code.Algebra.d1484 MAlonzo.Code.Data.Bool.Properties.d364))
                          v7)
                       v4)
             MAlonzo.Code.Data.Vec.C88 v5 v6 v7 v8 v9 v10
               -> coe
                    MAlonzo.Code.Data.Vec.C88 v2 v6 True
                    (coe
                       MAlonzo.Code.Algebra.d1484 MAlonzo.Code.Data.Bool.Properties.d364
                       v8 v3)
                    (coe
                       MAlonzo.Code.Algebra.d1484
                       (coe MAlonzo.Code.Data.Fin.Subset.d42 v2) v9 v4)
                    (coe du206 v4 v10)
             _ -> coe MAlonzo.RTE.mazUnreachableError
      _ -> coe MAlonzo.RTE.mazUnreachableError
name224 = "Data.Fin.Subset.Properties._.\8838\8746\691"
d224 v0 v1 v2 v3 v4 v5 v6 v7 = du224 v5
du224 v0 = coe du206 v0
name242 = "Data.Fin.Subset.Properties._.from"
d242 v0 v1 v2 v3 v4 v5 v6 v7 v8 = du242 v5 v6 v8
du242 v0 v1 v2
  = case coe v2 of
      Left v3 -> coe du206 v1 v3
      Right v3 -> coe du224 v0 v3
      _ -> coe MAlonzo.RTE.mazUnreachableError
name264 = "Data.Fin.Subset.Properties.NaturalPoset.BA.poset"
d264 v0
  = let v1 = coe MAlonzo.Code.Data.Fin.Subset.d42 v0 in
    let v2
          = coe
              MAlonzo.Code.Algebra.C687 (coe MAlonzo.Code.Algebra.d1484 v1)
              (coe MAlonzo.Code.Algebra.d1486 v1)
              (coe
                 MAlonzo.Code.Algebra.Structures.d3222
                 (coe MAlonzo.Code.Algebra.d1494 v1)) in
    coe
      MAlonzo.Code.Algebra.Properties.Lattice.du136
      (coe
         MAlonzo.Code.Algebra.C655 (coe MAlonzo.Code.Algebra.d1412 v2)
         (coe MAlonzo.Code.Algebra.d1414 v2)
         (coe
            MAlonzo.Code.Algebra.Structures.d3038
            (coe MAlonzo.Code.Algebra.d1416 v2)))
name334 = "Data.Fin.Subset.Properties.NaturalPoset.Po._\8776_"
d334 = erased
name336 = "Data.Fin.Subset.Properties.NaturalPoset.Po._\8804_"
d336 = erased
name338 = "Data.Fin.Subset.Properties.NaturalPoset.Po.Carrier"
d338 = erased
name340 = "Data.Fin.Subset.Properties.NaturalPoset.Po.antisym"
d340 = erased
name342
  = "Data.Fin.Subset.Properties.NaturalPoset.Po.isEquivalence"
d342 v0
  = coe
      MAlonzo.Code.Relation.Binary.d36
      (coe
         MAlonzo.Code.Relation.Binary.d268
         (coe
            MAlonzo.Code.Relation.Binary.d322
            (let v1 = coe MAlonzo.Code.Data.Fin.Subset.d42 v0 in
             let v2
                   = coe
                       MAlonzo.Code.Algebra.C687 (coe MAlonzo.Code.Algebra.d1484 v1)
                       (coe MAlonzo.Code.Algebra.d1486 v1)
                       (coe
                          MAlonzo.Code.Algebra.Structures.d3222
                          (coe MAlonzo.Code.Algebra.d1494 v1)) in
             MAlonzo.Code.Algebra.Properties.Lattice.du136
               (MAlonzo.Code.Algebra.C655
                  (MAlonzo.Code.Algebra.d1412 v2) (MAlonzo.Code.Algebra.d1414 v2)
                  (MAlonzo.Code.Algebra.Structures.d3038
                     (MAlonzo.Code.Algebra.d1416 v2))))))
name344
  = "Data.Fin.Subset.Properties.NaturalPoset.Po.isPartialOrder"
d344 v0
  = coe
      MAlonzo.Code.Relation.Binary.d322
      (let v1 = coe MAlonzo.Code.Data.Fin.Subset.d42 v0 in
       let v2
             = coe
                 MAlonzo.Code.Algebra.C687 (coe MAlonzo.Code.Algebra.d1484 v1)
                 (coe MAlonzo.Code.Algebra.d1486 v1)
                 (coe
                    MAlonzo.Code.Algebra.Structures.d3222
                    (coe MAlonzo.Code.Algebra.d1494 v1)) in
       MAlonzo.Code.Algebra.Properties.Lattice.du136
         (MAlonzo.Code.Algebra.C655
            (MAlonzo.Code.Algebra.d1412 v2) (MAlonzo.Code.Algebra.d1414 v2)
            (MAlonzo.Code.Algebra.Structures.d3038
               (MAlonzo.Code.Algebra.d1416 v2))))
name346 = "Data.Fin.Subset.Properties.NaturalPoset.Po.isPreorder"
d346 v0
  = coe
      MAlonzo.Code.Relation.Binary.d268
      (coe
         MAlonzo.Code.Relation.Binary.d322
         (let v1 = coe MAlonzo.Code.Data.Fin.Subset.d42 v0 in
          let v2
                = coe
                    MAlonzo.Code.Algebra.C687 (coe MAlonzo.Code.Algebra.d1484 v1)
                    (coe MAlonzo.Code.Algebra.d1486 v1)
                    (coe
                       MAlonzo.Code.Algebra.Structures.d3222
                       (coe MAlonzo.Code.Algebra.d1494 v1)) in
          MAlonzo.Code.Algebra.Properties.Lattice.du136
            (MAlonzo.Code.Algebra.C655
               (MAlonzo.Code.Algebra.d1412 v2) (MAlonzo.Code.Algebra.d1414 v2)
               (MAlonzo.Code.Algebra.Structures.d3038
                  (MAlonzo.Code.Algebra.d1416 v2)))))
name348 = "Data.Fin.Subset.Properties.NaturalPoset.Po.preorder"
d348 v0
  = coe
      MAlonzo.Code.Relation.Binary.C125
      (coe
         MAlonzo.Code.Relation.Binary.d268
         (coe
            MAlonzo.Code.Relation.Binary.d322
            (let v1 = coe MAlonzo.Code.Data.Fin.Subset.d42 v0 in
             let v2
                   = coe
                       MAlonzo.Code.Algebra.C687 (coe MAlonzo.Code.Algebra.d1484 v1)
                       (coe MAlonzo.Code.Algebra.d1486 v1)
                       (coe
                          MAlonzo.Code.Algebra.Structures.d3222
                          (coe MAlonzo.Code.Algebra.d1494 v1)) in
             MAlonzo.Code.Algebra.Properties.Lattice.du136
               (MAlonzo.Code.Algebra.C655
                  (MAlonzo.Code.Algebra.d1412 v2) (MAlonzo.Code.Algebra.d1414 v2)
                  (MAlonzo.Code.Algebra.Structures.d3038
                     (MAlonzo.Code.Algebra.d1416 v2))))))
name350 = "Data.Fin.Subset.Properties.NaturalPoset.Po.refl"
d350 = erased
name352 = "Data.Fin.Subset.Properties.NaturalPoset.Po.reflexive"
d352 = erased
name354 = "Data.Fin.Subset.Properties.NaturalPoset.Po.trans"
d354 = erased
name356
  = "Data.Fin.Subset.Properties.NaturalPoset.Po.\8764-resp-\8776"
d356 v0
  = let v1
          = let v1 = coe MAlonzo.Code.Data.Fin.Subset.d42 v0 in
            let v2
                  = coe
                      MAlonzo.Code.Algebra.C687 (coe MAlonzo.Code.Algebra.d1484 v1)
                      (coe MAlonzo.Code.Algebra.d1486 v1)
                      (coe
                         MAlonzo.Code.Algebra.Structures.d3222
                         (coe MAlonzo.Code.Algebra.d1494 v1)) in
            coe
              MAlonzo.Code.Algebra.Properties.Lattice.du136
              (coe
                 MAlonzo.Code.Algebra.C655 (coe MAlonzo.Code.Algebra.d1412 v2)
                 (coe MAlonzo.Code.Algebra.d1414 v2)
                 (coe
                    MAlonzo.Code.Algebra.Structures.d3038
                    (coe MAlonzo.Code.Algebra.d1416 v2))) in
    let v2 = coe MAlonzo.Code.Relation.Binary.d322 v1 in
    coe
      MAlonzo.Code.Relation.Binary.du54
      (coe MAlonzo.Code.Relation.Binary.d268 v2)
name360 = "Data.Fin.Subset.Properties.NaturalPoset.Po.Eq.refl"
d360 = erased
name362 = "Data.Fin.Subset.Properties.NaturalPoset.Po.Eq.reflexive"
d362 = erased
name364 = "Data.Fin.Subset.Properties.NaturalPoset.Po.Eq.sym"
d364 = erased
name366 = "Data.Fin.Subset.Properties.NaturalPoset.Po.Eq.trans"
d366 = erased
name374
  = "Data.Fin.Subset.Properties.NaturalPoset.orders-equivalent"
d374 v0 v1 v2 = du374 v1 v2
du374 v0 v1
  = coe
      MAlonzo.Code.Function.Equivalence.du56 erased
      (\ v2 v3 v4 -> coe du418 v0 v1 v4)
name386 = "Data.Fin.Subset.Properties.NaturalPoset._.to"
d386 = erased
name418 = "Data.Fin.Subset.Properties.NaturalPoset._.from"
d418 v0 v1 v2 v3 v4 v5 v6 v7 v8 = du418 v4 v5 v8
du418 v0 v1 v2
  = case coe v0 of
      MAlonzo.Code.Data.Vec.C14 -> coe seq v1 v2
      MAlonzo.Code.Data.Vec.C22 v3 v4 v5
        -> case coe v1 of
             MAlonzo.Code.Data.Vec.C22 v6 v7 v8
               -> case coe v2 of
                    MAlonzo.Code.Data.Vec.C74 v9 v10 v11
                      -> coe MAlonzo.Code.Data.Vec.C74 v3 v7 v8
                    MAlonzo.Code.Data.Vec.C88 v9 v10 v11 v12 v13 v14
                      -> coe
                           MAlonzo.Code.Data.Vec.C88 v3 v10 True v7 v8 (coe du418 v5 v8 v14)
                    _ -> coe MAlonzo.RTE.mazUnreachableError
             _ -> coe MAlonzo.RTE.mazUnreachableError
      _ -> coe MAlonzo.RTE.mazUnreachableError
name438 = "Data.Fin.Subset.Properties.poset"
d438 v0 = du438
du438
  = coe
      MAlonzo.Code.Relation.Binary.C345
      (coe
         MAlonzo.Code.Relation.Binary.C327
         (coe
            MAlonzo.Code.Relation.Binary.C17
            MAlonzo.Code.Relation.Binary.PropositionalEquality.Core.du50
            (\ v0 v1 v2 ->
               coe
                 MAlonzo.Code.Function.Equality.d38
                 (coe MAlonzo.Code.Function.Equivalence.d36 (coe du374 v0 v1))
                 erased)
            (\ v0 v1 v2 v3 v4 ->
               coe
                 MAlonzo.Code.Function.Equality.d38
                 (coe MAlonzo.Code.Function.Equivalence.d36 (coe du374 v0 v2))
                 erased))
         erased)
name452 = "Data.Fin.Subset.Properties._.E.from"
d452 v0 v1 v2 = du452 v1 v2
du452 v0 v1
  = coe MAlonzo.Code.Function.Equivalence.d36 (coe du374 v0 v1)
name454 = "Data.Fin.Subset.Properties._.E.to"
d454 v0 v1 v2 = du454 v1 v2
du454 v0 v1
  = coe MAlonzo.Code.Function.Equivalence.d34 (coe du374 v0 v1)