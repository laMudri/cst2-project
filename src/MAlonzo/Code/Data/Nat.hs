{-# LANGUAGE EmptyDataDecls, ExistentialQuantification,
             ScopedTypeVariables, NoMonomorphismRestriction, Rank2Types #-}
module MAlonzo.Code.Data.Nat where

import MAlonzo.RTE (coe, erased, addInt, subInt, mulInt, quotInt,
                    remInt, geqInt, ltInt, eqInt, eqFloat)
import qualified Control.Exception
import qualified Data.Text
import qualified Data.Text.IO
import qualified MAlonzo.RTE
import qualified System.Environment
import qualified System.IO
import qualified Data.Text
import qualified MAlonzo.Code.Data.Nat.Base
import qualified MAlonzo.Code.Data.Sum
import qualified MAlonzo.Code.Relation.Binary
import qualified MAlonzo.Code.Relation.Binary.Core
import qualified MAlonzo.Code.Relation.Binary.PreorderReasoning
import qualified MAlonzo.Code.Relation.Binary.PropositionalEquality.Core
import qualified MAlonzo.Code.Relation.Nullary.Decidable

name8 = "Data.Nat.eq?"
d8 v0 v1 v2 = du8 v2
du8 v0
  = coe
      MAlonzo.Code.Relation.Nullary.Decidable.du128 v0
      MAlonzo.Code.Data.Nat.Base.d224
name12 = "Data.Nat.decTotalOrder"
d12
  = coe
      MAlonzo.Code.Relation.Binary.C841
      (coe
         MAlonzo.Code.Relation.Binary.C789
         (coe
            MAlonzo.Code.Relation.Binary.C725
            (coe
               MAlonzo.Code.Relation.Binary.C327
               (coe
                  MAlonzo.Code.Relation.Binary.C17
                  MAlonzo.Code.Relation.Binary.PropositionalEquality.Core.du50 d18
                  d36)
               erased)
            d42)
         MAlonzo.Code.Data.Nat.Base.d224 MAlonzo.Code.Data.Nat.Base.d258)
name18 = "Data.Nat._.refl\8242"
d18 v0 v1 v2 = du18 v0
du18 v0
  = case coe v0 of
      0 -> coe MAlonzo.Code.Data.Nat.Base.C10 (0 :: Integer)
      _ -> let v1 = coe subInt v0 (1 :: Integer) in
           coe MAlonzo.Code.Data.Nat.Base.C18 v1 v1 (coe du18 v1)
name22 = "Data.Nat._.antisym"
d22 = erased
name36 = "Data.Nat._.trans"
d36 v0 v1 v2 v3 v4 = du36 v2 v3 v4
du36 v0 v1 v2
  = case coe v1 of
      MAlonzo.Code.Data.Nat.Base.C10 v3
        -> coe MAlonzo.Code.Data.Nat.Base.C10 v0
      MAlonzo.Code.Data.Nat.Base.C18 v3 v4 v5
        -> case coe v2 of
             MAlonzo.Code.Data.Nat.Base.C18 v6 v7 v8
               -> coe MAlonzo.Code.Data.Nat.Base.C18 v3 v7 (coe du36 v7 v5 v8)
             _ -> coe MAlonzo.RTE.mazUnreachableError
      _ -> coe MAlonzo.RTE.mazUnreachableError
name42 = "Data.Nat._.total"
d42 v0 v1
  = case coe v0 of
      0 -> coe Left (coe MAlonzo.Code.Data.Nat.Base.C10 v1)
      _ -> let v2 = coe subInt v0 (1 :: Integer) in
           case coe v1 of
             0 -> coe Right (coe MAlonzo.Code.Data.Nat.Base.C10 v0)
             _ -> let v3 = coe subInt v1 (1 :: Integer) in
                  let v4 = coe d42 v2 v3 in
                  case coe v4 of
                    Left v5 -> coe Left (coe MAlonzo.Code.Data.Nat.Base.C18 v2 v3 v5)
                    Right v5 -> coe Right (coe MAlonzo.Code.Data.Nat.Base.C18 v3 v2 v5)
                    _ -> coe MAlonzo.RTE.mazUnreachableError
name68 = "Data.Nat.\8804-Reasoning._._IsRelatedTo_"
d68 a0 a1 = ()
name70 = "Data.Nat.\8804-Reasoning._._\8718"
d70 v0
  = coe
      MAlonzo.Code.Relation.Binary.PreorderReasoning.C56
      (coe
         MAlonzo.Code.Relation.Binary.d38
         (coe
            MAlonzo.Code.Relation.Binary.d268
            (coe
               MAlonzo.Code.Relation.Binary.d842
               (coe
                  MAlonzo.Code.Relation.Binary.d970
                  (coe MAlonzo.Code.Relation.Binary.d1052 d12))))
         v0 v0
         (coe
            MAlonzo.Code.Relation.Binary.Core.d516
            (coe
               MAlonzo.Code.Relation.Binary.d36
               (coe
                  MAlonzo.Code.Relation.Binary.d268
                  (coe
                     MAlonzo.Code.Relation.Binary.d842
                     (coe
                        MAlonzo.Code.Relation.Binary.d970
                        (coe MAlonzo.Code.Relation.Binary.d1052 d12)))))
            v0))
name72 = "Data.Nat.\8804-Reasoning._._\8776\10216\10217_"
d72 v0 v1 v2 = du72 v2
du72 v0 = coe v0
name74 = "Data.Nat.\8804-Reasoning._._\8776\10216_\10217_"
d74
  = let v0
          = coe
              MAlonzo.Code.Relation.Binary.C345
              (coe
                 MAlonzo.Code.Relation.Binary.d842
                 (coe
                    MAlonzo.Code.Relation.Binary.d970
                    (coe MAlonzo.Code.Relation.Binary.d1052 d12))) in
    coe
      MAlonzo.Code.Relation.Binary.PreorderReasoning.du84
      (coe
         MAlonzo.Code.Relation.Binary.C125
         (coe
            MAlonzo.Code.Relation.Binary.d268
            (coe MAlonzo.Code.Relation.Binary.d322 v0)))
name76 = "Data.Nat.\8804-Reasoning._._\8764\10216_\10217_"
d76
  = let v0
          = coe
              MAlonzo.Code.Relation.Binary.C345
              (coe
                 MAlonzo.Code.Relation.Binary.d842
                 (coe
                    MAlonzo.Code.Relation.Binary.d970
                    (coe MAlonzo.Code.Relation.Binary.d1052 d12))) in
    coe
      MAlonzo.Code.Relation.Binary.PreorderReasoning.du72
      (coe
         MAlonzo.Code.Relation.Binary.C125
         (coe
            MAlonzo.Code.Relation.Binary.d268
            (coe MAlonzo.Code.Relation.Binary.d322 v0)))
name78 = "Data.Nat.\8804-Reasoning._.begin_"
d78 v0 v1 = du78
du78 = MAlonzo.Code.Relation.Binary.PreorderReasoning.d62
name92 = "Data.Nat.\8804-Reasoning._<\10216_\10217_"
d92 v0 v1 v2 v3 v4
  = let v5
          = coe
              MAlonzo.Code.Relation.Binary.C345
              (coe
                 MAlonzo.Code.Relation.Binary.d842
                 (coe
                    MAlonzo.Code.Relation.Binary.d970
                    (coe MAlonzo.Code.Relation.Binary.d1052 d12))) in
    coe
      MAlonzo.Code.Relation.Binary.PreorderReasoning.du72
      (coe
         MAlonzo.Code.Relation.Binary.C125
         (coe
            MAlonzo.Code.Relation.Binary.d268
            (coe MAlonzo.Code.Relation.Binary.d322 v5)))
      (coe addInt (1 :: Integer) v0) v1 v2 v3 v4