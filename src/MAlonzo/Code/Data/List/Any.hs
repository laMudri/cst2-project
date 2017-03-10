{-# LANGUAGE EmptyDataDecls, ExistentialQuantification,
             ScopedTypeVariables, NoMonomorphismRestriction, Rank2Types #-}
module MAlonzo.Code.Data.List.Any where

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
import qualified MAlonzo.Code.Data.Fin
import qualified MAlonzo.Code.Data.List.Base
import qualified MAlonzo.Code.Data.Product
import qualified MAlonzo.Code.Function
import qualified MAlonzo.Code.Function.Related
import qualified MAlonzo.Code.Relation.Binary
import qualified MAlonzo.Code.Relation.Binary.Core
import qualified MAlonzo.Code.Relation.Binary.List.Pointwise
import qualified MAlonzo.Code.Relation.Binary.PreorderReasoning
import qualified MAlonzo.Code.Relation.Binary.PropositionalEquality
import qualified MAlonzo.Code.Relation.Nullary
import qualified MAlonzo.Code.Relation.Nullary.Decidable

name14 = "Data.List.Any.Any"
d14 a0 a1 a2 a3 a4 = ()
data T14 a0 a1 a2 = C30 a0 a1 a2 | C38 a0 a1 a2
name52 = "Data.List.Any.map"
d52 v0 v1 v2 v3 v4 v5 v6 v7 v8 = du52 v6 v8
du52 v0 v1
  = case coe v1 of
      C30 v2 v3 v4 -> coe C30 v2 v3 (coe v0 v2 v4)
      C38 v2 v3 v4 -> coe C38 v2 v3 (coe du52 v0 v4)
      _ -> coe MAlonzo.RTE.mazUnreachableError
name74 = "Data.List.Any.tail"
d74 v0 v1 v2 v3 v4 v5 v6 v7 = du74 v7
du74 v0
  = case coe v0 of
      C30 v1 v2 v3 -> coe MAlonzo.Code.Data.Empty.d10 () erased erased
      C38 v1 v2 v3 -> coe v3
      _ -> coe MAlonzo.RTE.mazUnreachableError
name92 = "Data.List.Any.any"
d92 v0 v1 v2 v3 v4 v5 = du92 v4 v5
du92 v0 v1
  = case coe v1 of
      [] -> coe MAlonzo.Code.Relation.Nullary.C26
      (:) v2 v3
        -> let v4 = coe v0 v2 in
           case coe v4 of
             MAlonzo.Code.Relation.Nullary.C22 v5
               -> coe MAlonzo.Code.Relation.Nullary.C22 (coe C30 v2 v3 v5)
             MAlonzo.Code.Relation.Nullary.C26
               -> coe
                    MAlonzo.Code.Relation.Nullary.Decidable.du98 (coe C38 v2 v3) du74
                    (coe du92 v0 v3)
             _ -> coe MAlonzo.RTE.mazUnreachableError
      _ -> coe MAlonzo.RTE.mazUnreachableError
name132 = "Data.List.Any.index"
d132 v0 v1 v2 v3 v4 v5 = du132 v5
du132 v0
  = case coe v0 of
      C30 v1 v2 v3
        -> coe
             MAlonzo.Code.Data.Fin.C8
             (coe
                MAlonzo.Code.Data.List.Base.du144
                (\ v4 v5 -> coe addInt (1 :: Integer) v5) (0 :: Integer) v2)
      C38 v1 v2 v3
        -> coe
             MAlonzo.Code.Data.Fin.C14
             (coe MAlonzo.Code.Data.List.Base.du226 v2) (coe du132 v3)
      _ -> coe MAlonzo.RTE.mazUnreachableError
name170 = "Data.List.Any.Membership.LS._\8776_"
d170 = erased
name194 = "Data.List.Any.Membership.lift-resp"
d194 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 = du194 v5 v8 v9
du194 v0 v1 v2
  = case coe v1 of
      MAlonzo.Code.Relation.Binary.List.Pointwise.C48 v3 v4 v5 v6 v7 v8
        -> case coe v2 of
             C30 v9 v10 v11 -> coe C30 v5 v6 (coe v0 v3 v5 v7 v11)
             C38 v9 v10 v11 -> coe C38 v5 v6 (coe du194 v0 v8 v11)
             _ -> coe MAlonzo.RTE.mazUnreachableError
      _ -> coe MAlonzo.RTE.mazUnreachableError
name214 = "Data.List.Any.Membership._\8712_"
d214 = erased
name220 = "Data.List.Any.Membership._\8713_"
d220 = erased
name226 = "Data.List.Any.Membership._\8838_"
d226 = erased
name234 = "Data.List.Any.Membership._\8840_"
d234 = erased
name242 = "Data.List.Any.Membership.\8712-resp-\8776"
d242 v0 v1 v2 v3 v4 v5 = du242 v2 v3 v4 v5
du242 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Function.du138
      (coe
         MAlonzo.Code.Relation.Binary.Core.d520
         (coe MAlonzo.Code.Relation.Binary.d136 v0) v1 v2 v3)
name246 = "Data.List.Any.Membership.\8712-resp-list-\8776"
d246 v0 v1 v2 v3 v4 v5 = du246 v2 v3
du246 v0 v1 = coe du194 (coe du242 v0 v1)
name248 = "Data.List.Any.Membership.\8838-preorder"
d248 v0 v1 v2 = du248 v2
du248 v0
  = coe
      MAlonzo.Code.Relation.Binary.C125
      (coe
         MAlonzo.Code.Relation.Binary.C17
         (coe
            MAlonzo.Code.Relation.Binary.d136
            (coe MAlonzo.Code.Relation.Binary.List.Pointwise.du634 v0))
         (\ v1 v2 v3 v4 -> coe du246 v0 v4 v3)
         (\ v1 v2 v3 v4 v5 v6 ->
            coe MAlonzo.Code.Function.du38 (\ v7 -> coe v5 v6) (coe v4 v6)))
name254
  = "Data.List.Any.Membership.\8838-Reasoning._._IsRelatedTo_"
d254 a0 a1 a2 a3 a4 = ()
name256 = "Data.List.Any.Membership.\8838-Reasoning._._\8718"
d256 v0 v1 v2 v3 = du256 v2 v3
du256 v0 v1
  = coe
      MAlonzo.Code.Relation.Binary.PreorderReasoning.C56
      (coe
         MAlonzo.Code.Relation.Binary.d38
         (coe MAlonzo.Code.Relation.Binary.d92 (coe du248 v0)) v1 v1
         (coe
            MAlonzo.Code.Relation.Binary.Core.d516
            (coe
               MAlonzo.Code.Relation.Binary.d36
               (coe MAlonzo.Code.Relation.Binary.d92 (coe du248 v0)))
            v1))
name258
  = "Data.List.Any.Membership.\8838-Reasoning._._\8776\10216_\10217_"
d258 v0 v1 v2 = du258 v2
du258 v0
  = coe
      MAlonzo.Code.Relation.Binary.PreorderReasoning.du84 (coe du248 v0)
name260
  = "Data.List.Any.Membership.\8838-Reasoning._._\8776\10216\10217_"
d260 v0 v1 v2 = du260 v2
du260 v0 = coe v0
name262
  = "Data.List.Any.Membership.\8838-Reasoning._._\8764\10216_\10217_"
d262 v0 v1 v2 = du262 v2
du262 v0
  = coe
      MAlonzo.Code.Relation.Binary.PreorderReasoning.du72 (coe du248 v0)
name264 = "Data.List.Any.Membership.\8838-Reasoning._.begin_"
d264 v0 v1 = du264
du264 = MAlonzo.Code.Relation.Binary.PreorderReasoning.d62
name278
  = "Data.List.Any.Membership.\8838-Reasoning._\8712\10216_\10217_"
d278 v0 v1 v2 v3 v4 v5 = du278 v1 v4 v5
du278 v0 v1 v2
  = coe MAlonzo.Code.Relation.Binary.PreorderReasoning.d62 v2 v0 v1
name294 = "Data.List.Any.Membership.map-with-\8712"
d294 v0 v1 v2 v3 v4 v5 v6 = du294 v2 v5 v6
du294 v0 v1 v2
  = case coe v1 of
      [] -> coe v1
      (:) v3 v4
        -> coe
             (:)
             (coe
                v2 v3
                (coe
                   C30 v3 v4
                   (coe
                      MAlonzo.Code.Relation.Binary.Core.d516
                      (coe MAlonzo.Code.Relation.Binary.d136 v0) v3)))
             (coe
                du294 v0 v4
                (\ v5 ->
                   coe
                     MAlonzo.Code.Function.du38 (\ v6 -> coe v2 v5) (coe C38 v3 v4)))
      _ -> coe MAlonzo.RTE.mazUnreachableError
name312 = "Data.List.Any.Membership.find"
d312 v0 v1 v2 v3 v4 v5 v6 = du312 v2 v6
du312 v0 v1
  = case coe v1 of
      C30 v2 v3 v4
        -> coe
             MAlonzo.Code.Data.Product.C30 v2
             (coe
                MAlonzo.Code.Data.Product.C30
                (coe
                   C30 v2 v3
                   (coe
                      MAlonzo.Code.Relation.Binary.Core.d516
                      (coe MAlonzo.Code.Relation.Binary.d136 v0) v2))
                v4)
      C38 v2 v3 v4
        -> coe
             MAlonzo.Code.Data.Product.du188 (\ v5 -> v5)
             (\ v5 ->
                coe
                  MAlonzo.Code.Data.Product.du188 (coe C38 v2 v3) (\ v6 v7 -> v7))
             (coe du312 v0 v4)
      _ -> coe MAlonzo.RTE.mazUnreachableError
name326 = "Data.List.Any.Membership.lose"
d326 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 = du326 v5 v7 v8 v9
du326 v0 v1 v2 v3
  = coe
      du52 (\ v4 -> coe MAlonzo.Code.Function.du138 (coe v1 v0 v4) v3) v2
name342 = "Data.List.Any.Membership-\8801.M._\8712_"
d342 = erased
name344 = "Data.List.Any.Membership-\8801.M._\8713_"
d344 = erased
name346 = "Data.List.Any.Membership-\8801.M._\8838_"
d346 = erased
name348 = "Data.List.Any.Membership-\8801.M._\8840_"
d348 = erased
name350 = "Data.List.Any.Membership-\8801.M.find"
d350 v0 v1 = du350
du350 v0 v1 v2 v3
  = coe
      du312 MAlonzo.Code.Relation.Binary.PropositionalEquality.du112 v3
name354 = "Data.List.Any.Membership-\8801.M.lose"
d354 v0 v1 = du354
du354 v0 v1 v2 v3 v4 v5 v6 = coe du326 v2 v4 v5 v6
name356 = "Data.List.Any.Membership-\8801.M.map-with-\8712"
d356 v0 v1 = du356
du356 v0 v1 v2 v3
  = coe
      du294 MAlonzo.Code.Relation.Binary.PropositionalEquality.du112 v2
      v3
name358 = "Data.List.Any.Membership-\8801.M.\8712-resp-list-\8776"
d358 v0 v1 = du358
du358 v0 v1 v2
  = coe
      du246 MAlonzo.Code.Relation.Binary.PropositionalEquality.du112 v0
name360 = "Data.List.Any.Membership-\8801.M.\8712-resp-\8776"
d360 = erased
name398 = "Data.List.Any.Membership-\8801.lose"
d398 v0 v1 v2 v3 v4 v5 = du398 v4
du398 v0 = coe du326 v0 (\ v1 v2 v3 v4 -> v4)
name404 = "Data.List.Any.Membership-\8801.\8838-preorder"
d404 v0 v1 = du404
du404
  = coe
      MAlonzo.Code.Relation.Binary.C125
      (coe
         MAlonzo.Code.Relation.Binary.C17
         (coe
            MAlonzo.Code.Relation.Binary.d136
            MAlonzo.Code.Relation.Binary.PropositionalEquality.du112)
         (\ v0 v1 v2 v3 v4 -> v4)
         (\ v0 v1 v2 v3 v4 v5 ->
            coe MAlonzo.Code.Function.du38 (\ v6 -> coe v4 v5) (coe v3 v5)))
name410 = "Data.List.Any.Membership-\8801.[_]-Order"
d410 v0 v1 v2 = du410 v0
du410 v0 = coe MAlonzo.Code.Function.Related.du528 v0 erased
name418 = "Data.List.Any.Membership-\8801.[_]-Equality"
d418 v0 v1 v2 = du418 v0
du418 v0 = coe MAlonzo.Code.Function.Related.du586 v0 erased
name428 = "Data.List.Any.Membership-\8801._\8764[_]_"
d428 = erased
name448 = "Data.List.Any.Membership-\8801.bag-=\8658"
d448 v0 v1 v2 v3 v4 v5 v6 = du448 v0 v5 v6
du448 v0 v1 v2
  = coe MAlonzo.Code.Function.Related.du130 v0 (coe v1 v2)
name460
  = "Data.List.Any.Membership-\8801.\8838-Reasoning.PR._IsRelatedTo_"
d460 a0 a1 a2 a3 = ()
name462
  = "Data.List.Any.Membership-\8801.\8838-Reasoning.PR._\8718"
d462 v0 v1 v2 = du462 v2
du462 v0
  = coe
      MAlonzo.Code.Relation.Binary.PreorderReasoning.C56
      (coe
         MAlonzo.Code.Relation.Binary.d38
         (coe MAlonzo.Code.Relation.Binary.d92 du404) v0 v0
         (coe
            MAlonzo.Code.Relation.Binary.Core.d516
            (coe
               MAlonzo.Code.Relation.Binary.d36
               (coe MAlonzo.Code.Relation.Binary.d92 du404))
            v0))
name464
  = "Data.List.Any.Membership-\8801.\8838-Reasoning.PR._\8764\10216_\10217_"
d464 v0 v1 = du464
du464
  = coe MAlonzo.Code.Relation.Binary.PreorderReasoning.du72 du404
name466
  = "Data.List.Any.Membership-\8801.\8838-Reasoning.PR._\8776\10216_\10217_"
d466 v0 v1 = du466
du466
  = coe MAlonzo.Code.Relation.Binary.PreorderReasoning.du84 du404
name468
  = "Data.List.Any.Membership-\8801.\8838-Reasoning.PR._\8776\10216\10217_"
d468 v0 v1 v2 = du468 v2
du468 v0 = coe v0
name470
  = "Data.List.Any.Membership-\8801.\8838-Reasoning.PR.begin_"
d470 v0 v1 = du470
du470 = MAlonzo.Code.Relation.Binary.PreorderReasoning.d62
name488
  = "Data.List.Any.Membership-\8801.\8838-Reasoning._\8712\10216_\10217_"
d488 v0 v1 v2 v3 v4 v5 v6 = du488 v2 v5 v6
du488 v0 v1 v2
  = coe MAlonzo.Code.Relation.Binary.PreorderReasoning.d62 v2 v0 v1
name508
  = "Data.List.Any.Membership-\8801.\8838-Reasoning._\8764\10216_\10217_"
d508 v0 v1 v2 v3 v4 v5 v6 v7 = du508 v0 v3 v4 v5 v6 v7
du508 v0 v1 v2 v3 v4 v5
  = coe
      MAlonzo.Code.Relation.Binary.PreorderReasoning.du72 du404 v1 v2 v3
      (\ v6 -> coe MAlonzo.Code.Function.Related.du176 v0 (coe v4 v6)) v5
name526 = "Data.List.Any.satisfied"
d526 v0 v1 v2 v3 v4 = du526
du526
  = coe
      MAlonzo.Code.Function.du38
      (\ v0 ->
         coe
           MAlonzo.Code.Data.Product.du188 (\ v1 -> v1)
           (\ v1 -> MAlonzo.Code.Data.Product.d28))
      (coe
         du312 MAlonzo.Code.Relation.Binary.PropositionalEquality.du112)
name1129 = "Data.List.Any..absurdlambda"
d1129 = erased