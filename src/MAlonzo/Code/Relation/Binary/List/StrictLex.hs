{-# LANGUAGE EmptyDataDecls, ExistentialQuantification,
             ScopedTypeVariables, NoMonomorphismRestriction, Rank2Types #-}
module MAlonzo.Code.Relation.Binary.List.StrictLex where

import MAlonzo.RTE (coe, erased, addInt, subInt, mulInt, quotInt,
                    remInt, geqInt, ltInt, eqInt, eqFloat)
import qualified Control.Exception
import qualified Data.Text
import qualified Data.Text.IO
import qualified MAlonzo.RTE
import qualified System.Environment
import qualified System.IO
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Builtin.List
import qualified MAlonzo.Code.Data.Empty
import qualified MAlonzo.Code.Data.Product
import qualified MAlonzo.Code.Data.Sum
import qualified MAlonzo.Code.Relation.Binary
import qualified MAlonzo.Code.Relation.Binary.Consequences
import qualified MAlonzo.Code.Relation.Binary.Core
import qualified MAlonzo.Code.Relation.Binary.List.Pointwise
import qualified MAlonzo.Code.Relation.Nullary

name20 = "Relation.Binary.List.StrictLex._.Lex"
d20 a0 a1 a2 a3 a4 a5 = ()
data T20 a0 a1 a2 a3 a4 a5
  = C28 a0 | C34 a0 a1 | C46 a0 a1 a2 a3 a4 | C60 a0 a1 a2 a3 a4 a5
name66 = "Relation.Binary.List.StrictLex._.Lex-<"
d66 = erased
name72 = "Relation.Binary.List.StrictLex._.\172[]<[]"
d72 = erased
name78 = "Relation.Binary.List.StrictLex._.Lex-\8804"
d78 = erased
name94 = "Relation.Binary.List.StrictLex._.\172\8804-this"
d94 = erased
name124 = "Relation.Binary.List.StrictLex._.\172\8804-next"
d124 = erased
name144 = "Relation.Binary.List.StrictLex._.\8804-reflexive"
d144 v0 v1 v2 v3 v4 v5 = du144 v5
du144 v0
  = case coe v0 of
      MAlonzo.Code.Relation.Binary.List.Pointwise.C34 -> coe C28 erased
      MAlonzo.Code.Relation.Binary.List.Pointwise.C48 v1 v2 v3 v4 v5 v6
        -> coe C60 v1 v2 v3 v4 v5 (coe du144 v6)
      _ -> coe MAlonzo.RTE.mazUnreachableError
name162 = "Relation.Binary.List.StrictLex._.<-irreflexive"
d162 = erased
name190 = "Relation.Binary.List.StrictLex._.transitive"
d190 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 = du190 v4 v5 v6
du190 v0 v1 v2 = coe du208 v0 v1 v2
name208 = "Relation.Binary.List.StrictLex._._.trans"
d208 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14
  = du208 v4 v5 v6 v13 v14
du208 v0 v1 v2 v3 v4
  = case coe v3 of
      C28 v5
        -> case coe v4 of
             C28 v6 -> coe v3
             C34 v6 v7 -> coe v4
             _ -> coe MAlonzo.RTE.mazUnreachableError
      C34 v5 v6
        -> case coe v4 of
             C46 v7 v8 v9 v10 v11 -> coe C34 v9 v10
             C60 v7 v8 v9 v10 v11 v12 -> coe C34 v9 v10
             _ -> coe MAlonzo.RTE.mazUnreachableError
      C46 v5 v6 v7 v8 v9
        -> case coe v4 of
             C46 v10 v11 v12 v13 v14
               -> coe C46 v5 v6 v12 v13 (coe v2 v5 v7 v12 v9 v14)
             C60 v10 v11 v12 v13 v14 v15
               -> coe
                    C46 v5 v6 v12 v13
                    (coe MAlonzo.Code.Data.Product.d26 v1 v5 v7 v12 v14 v9)
             _ -> coe MAlonzo.RTE.mazUnreachableError
      C60 v5 v6 v7 v8 v9 v10
        -> case coe v4 of
             C46 v11 v12 v13 v14 v15
               -> coe
                    C46 v5 v6 v13 v14
                    (coe
                       MAlonzo.Code.Data.Product.d28 v1 v13 v7 v5
                       (coe MAlonzo.Code.Relation.Binary.Core.d518 v0 v5 v7 v9) v15)
             C60 v11 v12 v13 v14 v15 v16
               -> coe
                    C60 v5 v6 v13 v14
                    (coe MAlonzo.Code.Relation.Binary.Core.d520 v0 v5 v7 v13 v9 v15)
                    (coe du208 v0 v1 v2 v10 v16)
             _ -> coe MAlonzo.RTE.mazUnreachableError
      _ -> coe MAlonzo.RTE.mazUnreachableError
name250 = "Relation.Binary.List.StrictLex._.antisymmetric"
d250 v0 v1 v2 v3 v4 v5 v6 v7 v8 = du250
du250 = du268
name268 = "Relation.Binary.List.StrictLex._._.as"
d268 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 = du268 v11 v12
du268 v0 v1
  = case coe v0 of
      C28 v2
        -> case coe v1 of
             C28 v3 -> coe MAlonzo.Code.Relation.Binary.List.Pointwise.C34
             _ -> coe MAlonzo.RTE.mazUnreachableError
      C46 v2 v3 v4 v5 v6
        -> case coe v1 of
             C46 v7 v8 v9 v10 v11
               -> coe MAlonzo.Code.Data.Empty.d10 () erased erased
             C60 v7 v8 v9 v10 v11 v12
               -> coe MAlonzo.Code.Data.Empty.d10 () erased erased
             _ -> coe MAlonzo.RTE.mazUnreachableError
      C60 v2 v3 v4 v5 v6 v7
        -> case coe v1 of
             C46 v8 v9 v10 v11 v12
               -> coe MAlonzo.Code.Data.Empty.d10 () erased erased
             C60 v8 v9 v10 v11 v12 v13
               -> coe
                    MAlonzo.Code.Relation.Binary.List.Pointwise.C48 v2 v3 v4 v5 v6
                    (coe du268 v7 v13)
             _ -> coe MAlonzo.RTE.mazUnreachableError
      _ -> coe MAlonzo.RTE.mazUnreachableError
name298 = "Relation.Binary.List.StrictLex._.<-asymmetric"
d298 = erased
name314 = "Relation.Binary.List.StrictLex._._.irrefl"
d314 = erased
name316 = "Relation.Binary.List.StrictLex._._.asym"
d316 = erased
name350 = "Relation.Binary.List.StrictLex._.respects\8322"
d350 v0 v1 v2 v3 v4 v5 = du350 v4 v5
du350 v0 v1
  = coe
      MAlonzo.Code.Data.Product.C30
      (\ v2 v3 v4 v5 v6 -> coe du368 v0 v1 v5 v6)
      (\ v2 v3 v4 v5 v6 -> coe du406 v0 v1 v5 v6)
name368 = "Relation.Binary.List.StrictLex._._.resp\185"
d368 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 = du368 v4 v5 v9 v10
du368 v0 v1 v2 v3
  = case coe v2 of
      MAlonzo.Code.Relation.Binary.List.Pointwise.C34 -> coe v3
      MAlonzo.Code.Relation.Binary.List.Pointwise.C48 v4 v5 v6 v7 v8 v9
        -> case coe v3 of
             C34 v10 v11 -> coe C34 v6 v7
             C46 v10 v11 v12 v13 v14
               -> coe
                    C46 v10 v11 v6 v7
                    (coe MAlonzo.Code.Data.Product.d26 v1 v10 v4 v6 v8 v14)
             C60 v10 v11 v12 v13 v14 v15
               -> coe
                    C60 v10 v11 v6 v7
                    (coe MAlonzo.Code.Relation.Binary.Core.d520 v0 v10 v4 v6 v14 v8)
                    (coe du368 v0 v1 v9 v15)
             _ -> coe MAlonzo.RTE.mazUnreachableError
      _ -> coe MAlonzo.RTE.mazUnreachableError
name402 = "Relation.Binary.List.StrictLex._._._.Eq.trans"
d402 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15
  = du402 v10
du402 v0 = coe MAlonzo.Code.Relation.Binary.Core.d520 v0
name406 = "Relation.Binary.List.StrictLex._._.resp\178"
d406 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 = du406 v4 v5 v9 v10
du406 v0 v1 v2 v3
  = case coe v2 of
      MAlonzo.Code.Relation.Binary.List.Pointwise.C34 -> coe v3
      MAlonzo.Code.Relation.Binary.List.Pointwise.C48 v4 v5 v6 v7 v8 v9
        -> case coe v3 of
             C46 v10 v11 v12 v13 v14
               -> coe
                    C46 v6 v7 v12 v13
                    (coe MAlonzo.Code.Data.Product.d28 v1 v12 v4 v6 v8 v14)
             C60 v10 v11 v12 v13 v14 v15
               -> coe
                    C60 v6 v7 v12 v13
                    (coe
                       MAlonzo.Code.Relation.Binary.Core.d520 v0 v6 v4 v12
                       (coe MAlonzo.Code.Relation.Binary.Core.d518 v0 v4 v6 v8) v14)
                    (coe du406 v0 v1 v9 v15)
             _ -> coe MAlonzo.RTE.mazUnreachableError
      _ -> coe MAlonzo.RTE.mazUnreachableError
name434 = "Relation.Binary.List.StrictLex._._._.Eq.sym"
d434 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15
  = du434 v10
du434 v0 = coe MAlonzo.Code.Relation.Binary.Core.d518 v0
name436 = "Relation.Binary.List.StrictLex._._._.Eq.trans"
d436 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15
  = du436 v10
du436 v0 = coe MAlonzo.Code.Relation.Binary.Core.d520 v0
name456 = "Relation.Binary.List.StrictLex._.decidable"
d456 v0 v1 v2 v3 v4 v5 v6 v7 v8 = du456 v4 v5 v6 v7 v8
du456 v0 v1 v2 v3 v4
  = let v5
          = case coe v3 of
              []
                -> case coe v4 of
                     (:) v5 v6 -> coe MAlonzo.Code.Relation.Nullary.C22 (coe C34 v5 v6)
                     _ -> coe MAlonzo.RTE.mazUnreachableError
              (:) v5 v6
                -> case coe v4 of
                     [] -> coe MAlonzo.Code.Relation.Nullary.C26
                     (:) v7 v8
                       -> let v9 = coe v2 v5 v7 in
                          case coe v9 of
                            MAlonzo.Code.Relation.Nullary.C22 v10
                              -> coe MAlonzo.Code.Relation.Nullary.C22 (coe C46 v5 v6 v7 v8 v10)
                            MAlonzo.Code.Relation.Nullary.C26
                              -> let v11 = coe v1 v5 v7 in
                                 case coe v11 of
                                   MAlonzo.Code.Relation.Nullary.C22 v12
                                     -> let v13 = coe du456 v0 v1 v2 v6 v8 in
                                        case coe v13 of
                                          MAlonzo.Code.Relation.Nullary.C22 v14
                                            -> coe
                                                 MAlonzo.Code.Relation.Nullary.C22
                                                 (coe C60 v5 v6 v7 v8 v12 v14)
                                          MAlonzo.Code.Relation.Nullary.C26
                                            -> coe MAlonzo.Code.Relation.Nullary.C26
                                          _ -> coe MAlonzo.RTE.mazUnreachableError
                                   MAlonzo.Code.Relation.Nullary.C26
                                     -> coe MAlonzo.Code.Relation.Nullary.C26
                                   _ -> coe MAlonzo.RTE.mazUnreachableError
                            _ -> coe MAlonzo.RTE.mazUnreachableError
                     _ -> coe MAlonzo.RTE.mazUnreachableError
              _ -> coe MAlonzo.RTE.mazUnreachableError in
    case coe v0 of
      MAlonzo.Code.Relation.Nullary.C22 v6
        -> case coe v3 of
             []
               -> case coe v4 of
                    [] -> coe MAlonzo.Code.Relation.Nullary.C22 (coe C28 v6)
                    _ -> coe v5
             (:) v7 v8
               -> case coe v4 of
                    [] -> coe MAlonzo.Code.Relation.Nullary.C26
                    (:) v9 v10
                      -> let v11 = coe v2 v7 v9 in
                         case coe v11 of
                           MAlonzo.Code.Relation.Nullary.C22 v12
                             -> coe MAlonzo.Code.Relation.Nullary.C22 (coe C46 v7 v8 v9 v10 v12)
                           MAlonzo.Code.Relation.Nullary.C26
                             -> let v13 = coe v1 v7 v9 in
                                case coe v13 of
                                  MAlonzo.Code.Relation.Nullary.C22 v14
                                    -> let v15 = coe du456 v0 v1 v2 v8 v10 in
                                       case coe v15 of
                                         MAlonzo.Code.Relation.Nullary.C22 v16
                                           -> coe
                                                MAlonzo.Code.Relation.Nullary.C22
                                                (coe C60 v7 v8 v9 v10 v14 v16)
                                         MAlonzo.Code.Relation.Nullary.C26
                                           -> coe MAlonzo.Code.Relation.Nullary.C26
                                         _ -> coe MAlonzo.RTE.mazUnreachableError
                                  MAlonzo.Code.Relation.Nullary.C26
                                    -> coe MAlonzo.Code.Relation.Nullary.C26
                                  _ -> coe MAlonzo.RTE.mazUnreachableError
                           _ -> coe MAlonzo.RTE.mazUnreachableError
                    _ -> coe MAlonzo.RTE.mazUnreachableError
             _ -> coe MAlonzo.RTE.mazUnreachableError
      MAlonzo.Code.Relation.Nullary.C26
        -> case coe v3 of
             []
               -> case coe v4 of
                    [] -> coe MAlonzo.Code.Relation.Nullary.C26
                    _ -> coe v5
             (:) v7 v8
               -> case coe v4 of
                    [] -> coe MAlonzo.Code.Relation.Nullary.C26
                    (:) v9 v10
                      -> let v11 = coe v2 v7 v9 in
                         case coe v11 of
                           MAlonzo.Code.Relation.Nullary.C22 v12
                             -> coe MAlonzo.Code.Relation.Nullary.C22 (coe C46 v7 v8 v9 v10 v12)
                           MAlonzo.Code.Relation.Nullary.C26
                             -> let v13 = coe v1 v7 v9 in
                                case coe v13 of
                                  MAlonzo.Code.Relation.Nullary.C22 v14
                                    -> let v15 = coe du456 v0 v1 v2 v8 v10 in
                                       case coe v15 of
                                         MAlonzo.Code.Relation.Nullary.C22 v16
                                           -> coe
                                                MAlonzo.Code.Relation.Nullary.C22
                                                (coe C60 v7 v8 v9 v10 v14 v16)
                                         MAlonzo.Code.Relation.Nullary.C26
                                           -> coe MAlonzo.Code.Relation.Nullary.C26
                                         _ -> coe MAlonzo.RTE.mazUnreachableError
                                  MAlonzo.Code.Relation.Nullary.C26
                                    -> coe MAlonzo.Code.Relation.Nullary.C26
                                  _ -> coe MAlonzo.RTE.mazUnreachableError
                           _ -> coe MAlonzo.RTE.mazUnreachableError
                    _ -> coe MAlonzo.RTE.mazUnreachableError
             _ -> coe MAlonzo.RTE.mazUnreachableError
      _ -> coe MAlonzo.RTE.mazUnreachableError
name632 = "Relation.Binary.List.StrictLex._.<-decidable"
d632 v0 v1 v2 = du632
du632 = coe du456 MAlonzo.Code.Relation.Nullary.C26
name638 = "Relation.Binary.List.StrictLex._.\8804-decidable"
d638 v0 v1 v2 = du638
du638 = coe du456 (coe MAlonzo.Code.Relation.Nullary.C22 erased)
name644 = "Relation.Binary.List.StrictLex._.\8804-total"
d644 v0 v1 v2 v3 v4 = du644 v3 v4
du644 v0 v1 = coe du658 v0 v1
name658 = "Relation.Binary.List.StrictLex._._.total"
d658 v0 v1 v2 v3 v4 v5 v6 = du658 v3 v4 v5 v6
du658 v0 v1 v2 v3
  = case coe v2 of
      []
        -> case coe v3 of
             [] -> coe Left (coe C28 erased)
             (:) v4 v5 -> coe Left (coe C34 v4 v5)
             _ -> coe MAlonzo.RTE.mazUnreachableError
      (:) v4 v5
        -> case coe v3 of
             [] -> coe Right (coe C34 v4 v5)
             (:) v6 v7
               -> let v8 = coe v1 v4 v6 in
                  case coe v8 of
                    MAlonzo.Code.Relation.Binary.Core.C400 v9
                      -> coe Left (coe C46 v4 v5 v6 v7 v9)
                    MAlonzo.Code.Relation.Binary.Core.C408 v10
                      -> let v12 = coe du658 v0 v1 v5 v7 in
                         case coe v12 of
                           Left v13 -> coe Left (coe C60 v4 v5 v6 v7 v10 v13)
                           Right v13 -> coe Right (coe C60 v6 v7 v4 v5 (coe v0 v4 v6 v10) v13)
                           _ -> coe MAlonzo.RTE.mazUnreachableError
                    MAlonzo.Code.Relation.Binary.Core.C416 v11
                      -> coe Right (coe C46 v6 v7 v4 v5 v11)
                    _ -> coe MAlonzo.RTE.mazUnreachableError
             _ -> coe MAlonzo.RTE.mazUnreachableError
      _ -> coe MAlonzo.RTE.mazUnreachableError
name742 = "Relation.Binary.List.StrictLex._.<-compare"
d742 v0 v1 v2 v3 v4 = du742 v3 v4
du742 v0 v1 = coe du756 v0 v1
name756 = "Relation.Binary.List.StrictLex._._.cmp"
d756 v0 v1 v2 v3 v4 v5 v6 = du756 v3 v4 v5 v6
du756 v0 v1 v2 v3
  = case coe v2 of
      []
        -> case coe v3 of
             []
               -> coe
                    MAlonzo.Code.Relation.Binary.Core.C408
                    MAlonzo.Code.Relation.Binary.List.Pointwise.C34
             (:) v4 v5
               -> coe MAlonzo.Code.Relation.Binary.Core.C400 (coe C34 v4 v5)
             _ -> coe MAlonzo.RTE.mazUnreachableError
      (:) v4 v5
        -> case coe v3 of
             [] -> coe MAlonzo.Code.Relation.Binary.Core.C416 (coe C34 v4 v5)
             (:) v6 v7
               -> let v8 = coe v1 v4 v6 in
                  case coe v8 of
                    MAlonzo.Code.Relation.Binary.Core.C400 v9
                      -> coe
                           MAlonzo.Code.Relation.Binary.Core.C400 (coe C46 v4 v5 v6 v7 v9)
                    MAlonzo.Code.Relation.Binary.Core.C408 v10
                      -> let v12 = coe du756 v0 v1 v5 v7 in
                         case coe v12 of
                           MAlonzo.Code.Relation.Binary.Core.C400 v13
                             -> coe
                                  MAlonzo.Code.Relation.Binary.Core.C400
                                  (coe C60 v4 v5 v6 v7 v10 v13)
                           MAlonzo.Code.Relation.Binary.Core.C408 v14
                             -> coe
                                  MAlonzo.Code.Relation.Binary.Core.C408
                                  (coe
                                     MAlonzo.Code.Relation.Binary.List.Pointwise.C48 v4 v5 v6 v7 v10
                                     v14)
                           MAlonzo.Code.Relation.Binary.Core.C416 v15
                             -> coe
                                  MAlonzo.Code.Relation.Binary.Core.C416
                                  (coe C60 v6 v7 v4 v5 (coe v0 v4 v6 v10) v15)
                           _ -> coe MAlonzo.RTE.mazUnreachableError
                    MAlonzo.Code.Relation.Binary.Core.C416 v11
                      -> coe
                           MAlonzo.Code.Relation.Binary.Core.C416 (coe C46 v6 v7 v4 v5 v11)
                    _ -> coe MAlonzo.RTE.mazUnreachableError
             _ -> coe MAlonzo.RTE.mazUnreachableError
      _ -> coe MAlonzo.RTE.mazUnreachableError
name888 = "Relation.Binary.List.StrictLex._.\8804-isPreorder"
d888 v0 v1 v2 v3 v4 v5 = du888 v3 v4 v5
du888 v0 v1 v2
  = coe
      MAlonzo.Code.Relation.Binary.C17
      (coe MAlonzo.Code.Relation.Binary.List.Pointwise.du484 v0)
      (\ v3 v4 v5 -> coe du144 v5) (\ v3 v4 v5 -> coe du190 v0 v2 v1)
name904 = "Relation.Binary.List.StrictLex._.\8804-isPartialOrder"
d904 v0 v1 v2 v3 = du904 v3
du904 v0
  = coe
      MAlonzo.Code.Relation.Binary.C327
      (coe
         du888 (coe MAlonzo.Code.Relation.Binary.d570 v0)
         (coe MAlonzo.Code.Relation.Binary.d574 v0)
         (coe MAlonzo.Code.Relation.Binary.d576 v0))
      (\ v1 v2 -> du250)
name940 = "Relation.Binary.List.StrictLex._.\8804-isTotalOrder"
d940 v0 v1 v2 v3 = du940 v3
du940 v0
  = coe
      MAlonzo.Code.Relation.Binary.C725
      (coe
         du904
         (coe
            MAlonzo.Code.Relation.Binary.C513
            (coe MAlonzo.Code.Relation.Binary.d1164 v0)
            (coe MAlonzo.Code.Relation.Binary.d1166 v0)
            (coe MAlonzo.Code.Relation.Binary.du1190 () v0)))
      (coe
         du644
         (coe
            MAlonzo.Code.Relation.Binary.Core.d518
            (coe
               MAlonzo.Code.Relation.Binary.d182
               (coe MAlonzo.Code.Relation.Binary.du1174 v0)))
         (coe MAlonzo.Code.Relation.Binary.d1168 v0))
name954 = "Relation.Binary.List.StrictLex._._._.<-resp-\8776"
d954 v0 v1 v2 v3 = du954 v3
du954 v0 = coe MAlonzo.Code.Relation.Binary.du1190 () v0
name978 = "Relation.Binary.List.StrictLex._._._.Eq.sym"
d978 v0 v1 v2 v3 = du978 v3
du978 v0
  = coe
      MAlonzo.Code.Relation.Binary.Core.d518
      (coe
         MAlonzo.Code.Relation.Binary.d182
         (coe MAlonzo.Code.Relation.Binary.du1174 v0))
name986 = "Relation.Binary.List.StrictLex._.\8804-isDecTotalOrder"
d986 v0 v1 v2 v3 = du986 v3
du986 v0
  = coe
      MAlonzo.Code.Relation.Binary.C789 (coe du940 v0)
      (coe
         MAlonzo.Code.Relation.Binary.List.Pointwise.du390
         (coe MAlonzo.Code.Relation.Binary.du1170 v0))
      (coe
         du638 (coe MAlonzo.Code.Relation.Binary.du1170 v0)
         (coe
            MAlonzo.Code.Relation.Binary.Consequences.du588
            (coe MAlonzo.Code.Relation.Binary.d1168 v0)))
name998 = "Relation.Binary.List.StrictLex._._._._\8799_"
d998 v0 v1 v2 v3 = du998 v3
du998 v0 = coe MAlonzo.Code.Relation.Binary.du1170 v0
name1032
  = "Relation.Binary.List.StrictLex._.<-isStrictPartialOrder"
d1032 v0 v1 v2 v3 = du1032 v3
du1032 v0
  = coe
      MAlonzo.Code.Relation.Binary.C513
      (coe
         MAlonzo.Code.Relation.Binary.List.Pointwise.du484
         (coe MAlonzo.Code.Relation.Binary.d570 v0))
      (\ v1 v2 v3 ->
         coe
           du190 (coe MAlonzo.Code.Relation.Binary.d570 v0)
           (coe MAlonzo.Code.Relation.Binary.d576 v0)
           (coe MAlonzo.Code.Relation.Binary.d574 v0))
      (coe
         du350 (coe MAlonzo.Code.Relation.Binary.d570 v0)
         (coe MAlonzo.Code.Relation.Binary.d576 v0))
name1064 = "Relation.Binary.List.StrictLex._.<-isStrictTotalOrder"
d1064 v0 v1 v2 v3 = du1064 v3
du1064 v0
  = coe
      MAlonzo.Code.Relation.Binary.C903
      (coe
         MAlonzo.Code.Relation.Binary.List.Pointwise.du484
         (coe MAlonzo.Code.Relation.Binary.d1164 v0))
      (\ v1 v2 v3 ->
         coe
           du190 (coe MAlonzo.Code.Relation.Binary.d1164 v0)
           (coe MAlonzo.Code.Relation.Binary.du1190 () v0)
           (coe MAlonzo.Code.Relation.Binary.d1166 v0))
      (coe
         du742
         (coe
            MAlonzo.Code.Relation.Binary.Core.d518
            (coe
               MAlonzo.Code.Relation.Binary.d182
               (coe MAlonzo.Code.Relation.Binary.du1174 v0)))
         (coe MAlonzo.Code.Relation.Binary.d1168 v0))
name1078 = "Relation.Binary.List.StrictLex._._._.<-resp-\8776"
d1078 v0 v1 v2 v3 = du1078 v3
du1078 v0 = coe MAlonzo.Code.Relation.Binary.du1190 () v0
name1102 = "Relation.Binary.List.StrictLex._._._.Eq.sym"
d1102 v0 v1 v2 v3 = du1102 v3
du1102 v0
  = coe
      MAlonzo.Code.Relation.Binary.Core.d518
      (coe
         MAlonzo.Code.Relation.Binary.d182
         (coe MAlonzo.Code.Relation.Binary.du1174 v0))
name1106 = "Relation.Binary.List.StrictLex.\8804-preorder"
d1106 v0
  = coe
      MAlonzo.Code.Relation.Binary.C125
      (coe
         du888
         (coe
            MAlonzo.Code.Relation.Binary.d36
            (coe MAlonzo.Code.Relation.Binary.d92 v0))
         (coe
            MAlonzo.Code.Relation.Binary.d40
            (coe MAlonzo.Code.Relation.Binary.d92 v0))
         (coe
            MAlonzo.Code.Relation.Binary.du54
            (coe MAlonzo.Code.Relation.Binary.d92 v0)))
name1132 = "Relation.Binary.List.StrictLex._._.\8764-resp-\8776"
d1132 v0
  = coe
      MAlonzo.Code.Relation.Binary.du54
      (coe MAlonzo.Code.Relation.Binary.d92 v0)
name1144 = "Relation.Binary.List.StrictLex.\8804-partialOrder"
d1144 v0
  = coe
      MAlonzo.Code.Relation.Binary.C345
      (coe du904 (coe MAlonzo.Code.Relation.Binary.d616 v0))
name1182 = "Relation.Binary.List.StrictLex.\8804-decTotalOrder"
d1182 v0
  = coe
      MAlonzo.Code.Relation.Binary.C841
      (coe du986 (coe MAlonzo.Code.Relation.Binary.d1226 v0))
name1246 = "Relation.Binary.List.StrictLex.<-strictPartialOrder"
d1246 v0
  = coe
      MAlonzo.Code.Relation.Binary.C535
      (coe du1032 (coe MAlonzo.Code.Relation.Binary.d616 v0))
name1284 = "Relation.Binary.List.StrictLex.<-strictTotalOrder"
d1284 v0
  = coe
      MAlonzo.Code.Relation.Binary.C1165
      (coe du1064 (coe MAlonzo.Code.Relation.Binary.d1226 v0))
name29503 = "Relation.Binary.List.StrictLex._..absurdlambda"
d29503 = erased
name34267 = "Relation.Binary.List.StrictLex._._..absurdlambda"
d34267 = erased
name34485 = "Relation.Binary.List.StrictLex._._..absurdlambda"
d34485 = erased
name34783 = "Relation.Binary.List.StrictLex._._..absurdlambda"
d34783 = erased
name34909 = "Relation.Binary.List.StrictLex._._..absurdlambda"
d34909 = erased