{-# LANGUAGE EmptyDataDecls, ExistentialQuantification,
             ScopedTypeVariables, NoMonomorphismRestriction, Rank2Types #-}
module MAlonzo.Code.Function.Related where

import MAlonzo.RTE (coe, erased, addInt, subInt, mulInt, quotInt,
                    remInt, geqInt, ltInt, eqInt, eqFloat)
import qualified Control.Exception
import qualified Data.Text
import qualified Data.Text.IO
import qualified MAlonzo.RTE
import qualified System.Environment
import qualified System.IO
import qualified Data.Text
import qualified MAlonzo.Code.Function
import qualified MAlonzo.Code.Function.Bijection
import qualified MAlonzo.Code.Function.Equality
import qualified MAlonzo.Code.Function.Equivalence
import qualified MAlonzo.Code.Function.Injection
import qualified MAlonzo.Code.Function.Inverse
import qualified MAlonzo.Code.Function.LeftInverse
import qualified MAlonzo.Code.Function.Surjection
import qualified MAlonzo.Code.Relation.Binary
import qualified MAlonzo.Code.Relation.Binary.Core
import qualified MAlonzo.Code.Relation.Binary.PropositionalEquality
import qualified MAlonzo.Code.Relation.Binary.PropositionalEquality.Core

name12 = "Function.Related._\8592_"
d12 a0 a1 a2 a3 = ()
newtype T12 a0 = C26 a0
name24 = "Function.Related._\8592_.app-\8592"
d24 v0
  = case coe v0 of
      C26 v1 -> coe v1
      _ -> coe MAlonzo.RTE.mazUnreachableError
name36 = "Function.Related._\8610_"
d36 a0 a1 a2 a3 = ()
newtype T36 a0 = C50 a0
name48 = "Function.Related._\8610_.app-\8610"
d48 v0
  = case coe v0 of
      C50 v1 -> coe v1
      _ -> coe MAlonzo.RTE.mazUnreachableError
name52 = "Function.Related.Kind"
d52 = ()
data T52 = C54 | C56 | C58 | C60 | C62 | C64 | C66 | C68
name74 = "Function.Related._\8764[_]_"
d74 = erased
name112 = "Function.Related.Related"
d112 = erased
name130 = "Function.Related.\8596\8658"
d130 v0 v1 v2 v3 v4 = du130 v0
du130 v0
  = case coe v0 of
      C54
        -> coe
             MAlonzo.Code.Function.du38
             (\ v1 -> MAlonzo.Code.Function.Equality.d38)
             MAlonzo.Code.Function.Inverse.d78
      C56
        -> coe
             MAlonzo.Code.Function.du58 C26
             (coe
                MAlonzo.Code.Function.du38
                (\ v1 -> MAlonzo.Code.Function.Equality.d38)
                MAlonzo.Code.Function.Inverse.d80)
      C58
        -> let v1
                 = coe MAlonzo.Code.Relation.Binary.PropositionalEquality.du112 in
           coe
             (\ v2 ->
                coe
                  MAlonzo.Code.Function.Equivalence.C1
                  (coe
                     MAlonzo.Code.Function.Bijection.d82
                     (coe MAlonzo.Code.Function.Inverse.du98 v1 v2))
                  (coe
                     MAlonzo.Code.Function.Surjection.d38
                     (coe
                        MAlonzo.Code.Function.Bijection.d40
                        (coe
                           MAlonzo.Code.Function.Bijection.d84
                           (coe MAlonzo.Code.Function.Inverse.du98 v1 v2)))))
      C60
        -> let v1
                 = coe MAlonzo.Code.Relation.Binary.PropositionalEquality.du112 in
           coe
             (\ v2 ->
                coe
                  MAlonzo.Code.Function.LeftInverse.du180 v1
                  (coe
                     MAlonzo.Code.Function.LeftInverse.C195
                     (coe MAlonzo.Code.Function.Inverse.d78 v2)
                     (coe MAlonzo.Code.Function.Inverse.d80 v2)
                     (coe
                        MAlonzo.Code.Function.Inverse.d42
                        (coe MAlonzo.Code.Function.Inverse.d82 v2))))
      C62
        -> coe
             MAlonzo.Code.Function.du58 C50
             (coe
                MAlonzo.Code.Function.du38
                (\ v1 ->
                   let v2
                         = coe MAlonzo.Code.Relation.Binary.PropositionalEquality.du112 in
                   \ v3 ->
                     MAlonzo.Code.Function.LeftInverse.du180
                       v2
                       (MAlonzo.Code.Function.LeftInverse.C195
                          (MAlonzo.Code.Function.Inverse.d78 v3)
                          (MAlonzo.Code.Function.Inverse.d80 v3)
                          (MAlonzo.Code.Function.Inverse.d42
                             (MAlonzo.Code.Function.Inverse.d82 v3))))
                MAlonzo.Code.Function.Inverse.du342)
      C64
        -> coe
             (\ v1 ->
                coe
                  MAlonzo.Code.Function.LeftInverse.C195
                  (coe MAlonzo.Code.Function.Inverse.d78 v1)
                  (coe MAlonzo.Code.Function.Inverse.d80 v1)
                  (coe
                     MAlonzo.Code.Function.Inverse.d42
                     (coe MAlonzo.Code.Function.Inverse.d82 v1)))
      C66
        -> let v1
                 = coe MAlonzo.Code.Relation.Binary.PropositionalEquality.du112 in
           coe
             (\ v2 ->
                coe
                  MAlonzo.Code.Function.Surjection.C101
                  (coe
                     MAlonzo.Code.Function.Bijection.d82
                     (coe MAlonzo.Code.Function.Inverse.du98 v1 v2))
                  (coe
                     MAlonzo.Code.Function.Bijection.d40
                     (coe
                        MAlonzo.Code.Function.Bijection.d84
                        (coe MAlonzo.Code.Function.Inverse.du98 v1 v2))))
      C68 -> coe (\ v1 -> coe v1)
      _ -> coe MAlonzo.RTE.mazUnreachableError
name140 = "Function.Related.\8801\8658"
d140 v0 v1 v2 v3 v4 = du140 v0
du140 v0
  = coe
      du130 v0
      (coe
         MAlonzo.Code.Function.Inverse.du302
         MAlonzo.Code.Relation.Binary.PropositionalEquality.du112)
name142 = "Function.Related.Symmetric-kind"
d142 = ()
data T142 = C144 | C146
name148 = "Function.Related.\8970_\8971"
d148 v0
  = case coe v0 of
      C144 -> coe C58
      C146 -> coe C68
      _ -> coe MAlonzo.RTE.mazUnreachableError
name150 = "Function.Related.Forward-kind"
d150 = ()
data T150 = C152 | C154 | C156 | C158 | C160 | C162
name164 = "Function.Related.\8970_\8971\8594"
d164 v0
  = case coe v0 of
      C152 -> coe C54
      C154 -> coe C58
      C156 -> coe C60
      C158 -> coe C64
      C160 -> coe C66
      C162 -> coe C68
      _ -> coe MAlonzo.RTE.mazUnreachableError
name176 = "Function.Related.\8658\8594"
d176 v0 v1 v2 v3 v4 = du176 v0
du176 v0
  = case coe v0 of
      C152 -> coe (\ v1 -> coe v1)
      C154
        -> coe
             MAlonzo.Code.Function.du38
             (\ v1 -> MAlonzo.Code.Function.Equality.d38)
             MAlonzo.Code.Function.Equivalence.d34
      C156
        -> coe
             MAlonzo.Code.Function.du38
             (\ v1 -> MAlonzo.Code.Function.Equality.d38)
             MAlonzo.Code.Function.Injection.d106
      C158
        -> coe
             MAlonzo.Code.Function.du38
             (\ v1 -> MAlonzo.Code.Function.Equality.d38)
             MAlonzo.Code.Function.LeftInverse.d102
      C160
        -> coe
             MAlonzo.Code.Function.du38
             (\ v1 -> MAlonzo.Code.Function.Equality.d38)
             MAlonzo.Code.Function.Surjection.d72
      C162
        -> coe
             MAlonzo.Code.Function.du38
             (\ v1 -> MAlonzo.Code.Function.Equality.d38)
             MAlonzo.Code.Function.Inverse.d78
      _ -> coe MAlonzo.RTE.mazUnreachableError
name178 = "Function.Related.Backward-kind"
d178 = ()
data T178 = C180 | C182 | C184 | C186 | C188 | C190
name192 = "Function.Related.\8970_\8971\8592"
d192 v0
  = case coe v0 of
      C180 -> coe C56
      C182 -> coe C58
      C184 -> coe C62
      C186 -> coe C64
      C188 -> coe C66
      C190 -> coe C68
      _ -> coe MAlonzo.RTE.mazUnreachableError
name204 = "Function.Related.\8658\8592"
d204 v0 v1 v2 v3 v4 = du204 v0
du204 v0
  = case coe v0 of
      C180 -> coe d24
      C182
        -> coe
             MAlonzo.Code.Function.du38
             (\ v1 -> MAlonzo.Code.Function.Equality.d38)
             MAlonzo.Code.Function.Equivalence.d36
      C184
        -> coe
             MAlonzo.Code.Function.du38
             (\ v1 -> MAlonzo.Code.Function.Equality.d38)
             (coe
                MAlonzo.Code.Function.du38
                (\ v1 -> MAlonzo.Code.Function.Injection.d106) d48)
      C186
        -> coe
             MAlonzo.Code.Function.du38
             (\ v1 -> MAlonzo.Code.Function.Equality.d38)
             MAlonzo.Code.Function.LeftInverse.d104
      C188
        -> coe
             MAlonzo.Code.Function.du38
             (\ v1 -> MAlonzo.Code.Function.Equality.d38)
             (\ v1 ->
                coe
                  MAlonzo.Code.Function.Surjection.d38
                  (coe MAlonzo.Code.Function.Surjection.d74 v1))
      C190
        -> coe
             MAlonzo.Code.Function.du38
             (\ v1 -> MAlonzo.Code.Function.Equality.d38)
             MAlonzo.Code.Function.Inverse.d80
      _ -> coe MAlonzo.RTE.mazUnreachableError
name206 = "Function.Related.Equivalence-kind"
d206 = ()
data T206 = C208 | C210 | C212 | C214
name216 = "Function.Related.\8970_\8971\8660"
d216 v0
  = case coe v0 of
      C208 -> coe C58
      C210 -> coe C64
      C212 -> coe C66
      C214 -> coe C68
      _ -> coe MAlonzo.RTE.mazUnreachableError
name228 = "Function.Related.\8658\8660"
d228 v0 v1 v2 v3 v4 = du228 v0
du228 v0
  = case coe v0 of
      C208 -> coe (\ v1 -> coe v1)
      C210
        -> coe
             (\ v1 ->
                coe
                  MAlonzo.Code.Function.Equivalence.C1
                  (coe MAlonzo.Code.Function.LeftInverse.d102 v1)
                  (coe MAlonzo.Code.Function.LeftInverse.d104 v1))
      C212
        -> coe
             (\ v1 ->
                coe
                  MAlonzo.Code.Function.Equivalence.C1
                  (coe MAlonzo.Code.Function.Surjection.d72 v1)
                  (coe
                     MAlonzo.Code.Function.Surjection.d38
                     (coe MAlonzo.Code.Function.Surjection.d74 v1)))
      C214
        -> let v1
                 = coe MAlonzo.Code.Relation.Binary.PropositionalEquality.du112 in
           coe
             (\ v2 ->
                coe
                  MAlonzo.Code.Function.Equivalence.C1
                  (coe
                     MAlonzo.Code.Function.Bijection.d82
                     (coe MAlonzo.Code.Function.Inverse.du98 v1 v2))
                  (coe
                     MAlonzo.Code.Function.Surjection.d38
                     (coe
                        MAlonzo.Code.Function.Bijection.d40
                        (coe
                           MAlonzo.Code.Function.Bijection.d84
                           (coe MAlonzo.Code.Function.Inverse.du98 v1 v2)))))
      _ -> coe MAlonzo.RTE.mazUnreachableError
name230 = "Function.Related.\8660\8970_\8971"
d230 v0
  = case coe v0 of
      C144 -> coe C208
      C146 -> coe C214
      _ -> coe MAlonzo.RTE.mazUnreachableError
name232 = "Function.Related.\8594\8970_\8971"
d232 v0
  = case coe v0 of
      C208 -> coe C154
      C210 -> coe C158
      C212 -> coe C160
      C214 -> coe C162
      _ -> coe MAlonzo.RTE.mazUnreachableError
name234 = "Function.Related.\8592\8970_\8971"
d234 v0
  = case coe v0 of
      C208 -> coe C182
      C210 -> coe C186
      C212 -> coe C188
      C214 -> coe C190
      _ -> coe MAlonzo.RTE.mazUnreachableError
name236 = "Function.Related._op"
d236 v0
  = case coe v0 of
      C54 -> coe C56
      C56 -> coe C54
      C58 -> coe v0
      C60 -> coe C62
      C62 -> coe C60
      C64 -> coe C66
      C66 -> coe C64
      C68 -> coe v0
      _ -> coe MAlonzo.RTE.mazUnreachableError
name248 = "Function.Related.reverse"
d248 v0 v1 v2 v3 v4 = du248 v0
du248 v0
  = case coe v0 of
      C54 -> coe C26
      C56 -> coe d24
      C58 -> coe MAlonzo.Code.Function.Equivalence.du192
      C60 -> coe C50
      C62 -> coe d48
      C64 -> coe MAlonzo.Code.Function.Surjection.du106
      C66
        -> coe
             (\ v1 ->
                coe
                  MAlonzo.Code.Function.LeftInverse.C195
                  (coe
                     MAlonzo.Code.Function.Surjection.d38
                     (coe MAlonzo.Code.Function.Surjection.d74 v1))
                  (coe MAlonzo.Code.Function.Surjection.d72 v1)
                  (coe
                     MAlonzo.Code.Function.Surjection.d40
                     (coe MAlonzo.Code.Function.Surjection.d74 v1)))
      C68 -> coe MAlonzo.Code.Function.Inverse.du342
      _ -> coe MAlonzo.RTE.mazUnreachableError
name256 = "Function.Related.EquationalReasoning.refl"
d256 v0 v1 v2 = du256 v0
du256 v0
  = case coe v0 of
      C54 -> coe (\ v1 -> coe v1)
      C56 -> coe C26 (\ v1 -> v1)
      C58 -> coe MAlonzo.Code.Function.Equivalence.du158
      C60 -> coe MAlonzo.Code.Function.Injection.du126
      C62 -> coe C50 MAlonzo.Code.Function.Injection.du126
      C64
        -> coe
             MAlonzo.Code.Function.LeftInverse.du230
             MAlonzo.Code.Relation.Binary.PropositionalEquality.du112
      C66
        -> coe
             MAlonzo.Code.Function.Surjection.du146
             MAlonzo.Code.Relation.Binary.PropositionalEquality.du112
      C68
        -> coe
             MAlonzo.Code.Function.Inverse.du302
             MAlonzo.Code.Relation.Binary.PropositionalEquality.du112
      _ -> coe MAlonzo.RTE.mazUnreachableError
name266 = "Function.Related.EquationalReasoning.trans"
d266 v0 v1 v2 v3 v4 v5 v6 = du266 v0
du266 v0
  = case coe v0 of
      C54 -> coe MAlonzo.Code.Function.du138 MAlonzo.Code.Function.du58
      C56
        -> coe
             (\ v1 v2 ->
                coe
                  C26
                  (coe MAlonzo.Code.Function.du38 (\ v3 -> coe d24 v1) (coe d24 v2)))
      C58
        -> coe
             MAlonzo.Code.Function.du138 MAlonzo.Code.Function.Equivalence.du174
      C60
        -> coe
             MAlonzo.Code.Function.du138 MAlonzo.Code.Function.Injection.du146
      C62
        -> coe
             (\ v1 v2 ->
                coe
                  C50
                  (coe
                     MAlonzo.Code.Function.Injection.du146 (coe d48 v1) (coe d48 v2)))
      C64
        -> coe
             MAlonzo.Code.Function.du138
             (coe
                MAlonzo.Code.Function.LeftInverse.du254
                MAlonzo.Code.Relation.Binary.PropositionalEquality.du112)
      C66
        -> coe
             MAlonzo.Code.Function.du138
             (coe
                MAlonzo.Code.Function.Surjection.du174
                MAlonzo.Code.Relation.Binary.PropositionalEquality.du112)
      C68
        -> coe
             MAlonzo.Code.Function.du138
             (coe
                MAlonzo.Code.Function.Inverse.du324
                MAlonzo.Code.Relation.Binary.PropositionalEquality.du112
                MAlonzo.Code.Relation.Binary.PropositionalEquality.du112
                MAlonzo.Code.Relation.Binary.PropositionalEquality.du112)
      _ -> coe MAlonzo.RTE.mazUnreachableError
name282 = "Function.Related.EquationalReasoning.sym"
d282 v0 v1 v2 v3 v4 = du282 v0
du282 v0
  = case coe v0 of
      C144 -> coe MAlonzo.Code.Function.Equivalence.du192
      C146 -> coe MAlonzo.Code.Function.Inverse.du342
      _ -> coe MAlonzo.RTE.mazUnreachableError
name298
  = "Function.Related.EquationalReasoning._\8764\10216_\10217_"
d298 v0 v1 v2 v3 v4 v5 v6 v7 v8 = du298 v0 v7 v8
du298 v0 v1 v2 = coe du266 v0 v1 v2
name318
  = "Function.Related.EquationalReasoning._\8596\10216_\10217_"
d318 v0 v1 v2 v3 v4 v5 v6 v7 v8 = du318 v0 v7 v8
du318 v0 v1 v2 = coe du298 v0 (coe du130 v0 v1) v2
name336
  = "Function.Related.EquationalReasoning._\8596\10216\10217_"
d336 v0 v1 v2 v3 v4 v5 = du336 v5
du336 v0 = coe v0
name354
  = "Function.Related.EquationalReasoning._\8801\10216_\10217_"
d354 v0 v1 v2 v3 v4 v5 v6 v7 = du354 v0 v7
du354 v0 v1 = coe du298 v0 (coe du140 v0) v1
name368 = "Function.Related.EquationalReasoning._\8718"
d368 v0 v1 v2 = du368 v0
du368 v0 = coe du256 v0
name374 = "Function.Related.setoid"
d374 v0 v1 = du374 v0
du374 v0
  = coe
      MAlonzo.Code.Relation.Binary.C143
      (coe
         MAlonzo.Code.Relation.Binary.Core.C889
         (\ v1 -> coe du368 (coe d148 v0)) (\ v1 v2 -> coe du282 v0)
         (\ v1 v2 v3 v4 v5 -> coe du298 (coe d148 v0) v4 v5))
name386 = "Function.Related.preorder"
d386 v0 v1 = du386 v0
du386 v0
  = coe
      MAlonzo.Code.Relation.Binary.C125
      (coe
         MAlonzo.Code.Relation.Binary.C17
         (coe MAlonzo.Code.Relation.Binary.d136 (coe du374 C146))
         (\ v1 v2 -> coe du130 v0) (\ v1 v2 v3 v4 v5 -> coe du298 v0 v4 v5))
name402 = "Function.Related.InducedRelation\8321"
d402 = erased
name418 = "Function.Related.InducedPreorder\8321"
d418 v0 v1 v2 v3 v4 = du418 v0 v4
du418 v0 v1
  = coe
      MAlonzo.Code.Relation.Binary.C125
      (coe
         MAlonzo.Code.Relation.Binary.C17
         MAlonzo.Code.Relation.Binary.PropositionalEquality.Core.du50
         (\ v2 v3 ->
            coe
              MAlonzo.Code.Function.du38
              (\ v4 ->
                 coe
                   MAlonzo.Code.Relation.Binary.d38
                   (coe MAlonzo.Code.Relation.Binary.d92 (coe du386 v0)) (coe v1 v2)
                   (coe v1 v3))
              (coe
                 MAlonzo.Code.Function.du38
                 (\ v4 ->
                    let v5 = coe du374 C146 in
                    \ v6 ->
                      MAlonzo.Code.Relation.Binary.Core.du522
                        (MAlonzo.Code.Relation.Binary.d136 v5) (v1 v2))
                 erased))
         (\ v2 v3 v4 ->
            coe
              MAlonzo.Code.Relation.Binary.d40
              (coe MAlonzo.Code.Relation.Binary.d92 (coe du386 v0)) (coe v1 v2)
              (coe v1 v3) (coe v1 v4)))
name442 = "Function.Related._._.reflexive"
d442 v0 v1 v2 v3 v4 = du442 v0
du442 v0
  = coe
      MAlonzo.Code.Relation.Binary.d38
      (coe MAlonzo.Code.Relation.Binary.d92 (coe du386 v0))
name444 = "Function.Related._._.trans"
d444 v0 v1 v2 v3 v4 = du444 v0
du444 v0
  = coe
      MAlonzo.Code.Relation.Binary.d40
      (coe MAlonzo.Code.Relation.Binary.d92 (coe du386 v0))
name464 = "Function.Related.InducedEquivalence\8321"
d464 v0 v1 v2 v3 v4 = du464 v0 v4
du464 v0 v1
  = coe
      MAlonzo.Code.Relation.Binary.C143
      (coe
         MAlonzo.Code.Relation.Binary.Core.C889
         (\ v2 ->
            coe
              MAlonzo.Code.Relation.Binary.Core.d516
              (coe MAlonzo.Code.Relation.Binary.d136 (coe du374 v0)) (coe v1 v2))
         (\ v2 v3 ->
            coe
              MAlonzo.Code.Relation.Binary.Core.d518
              (coe MAlonzo.Code.Relation.Binary.d136 (coe du374 v0)) (coe v1 v2)
              (coe v1 v3))
         (\ v2 v3 v4 ->
            coe
              MAlonzo.Code.Relation.Binary.Core.d520
              (coe MAlonzo.Code.Relation.Binary.d136 (coe du374 v0)) (coe v1 v2)
              (coe v1 v3) (coe v1 v4)))
name488 = "Function.Related._._.refl"
d488 v0 v1 v2 v3 v4 = du488 v0
du488 v0
  = coe
      MAlonzo.Code.Relation.Binary.Core.d516
      (coe MAlonzo.Code.Relation.Binary.d136 (coe du374 v0))
name492 = "Function.Related._._.sym"
d492 v0 v1 v2 v3 v4 = du492 v0
du492 v0
  = coe
      MAlonzo.Code.Relation.Binary.Core.d518
      (coe MAlonzo.Code.Relation.Binary.d136 (coe du374 v0))
name494 = "Function.Related._._.trans"
d494 v0 v1 v2 v3 v4 = du494 v0
du494 v0
  = coe
      MAlonzo.Code.Relation.Binary.Core.d520
      (coe MAlonzo.Code.Relation.Binary.d136 (coe du374 v0))
name506 = "Function.Related.InducedRelation\8322"
d506 = erased
name528 = "Function.Related.InducedPreorder\8322"
d528 v0 v1 v2 v3 v4 v5 v6 = du528 v0 v6
du528 v0 v1
  = coe
      MAlonzo.Code.Relation.Binary.C125
      (coe
         MAlonzo.Code.Relation.Binary.C17
         MAlonzo.Code.Relation.Binary.PropositionalEquality.Core.du50
         (\ v2 v3 v4 v5 ->
            coe
              MAlonzo.Code.Function.du158
              (coe
                 MAlonzo.Code.Relation.Binary.d38
                 (coe MAlonzo.Code.Relation.Binary.d92 (coe du386 v0))
                 (coe v1 v5 v2) (coe v1 v5 v3))
              (coe
                 MAlonzo.Code.Function.du158
                 (let v6 = coe du374 C146 in
                  \ v7 ->
                    MAlonzo.Code.Relation.Binary.Core.du522
                      (MAlonzo.Code.Relation.Binary.d136 v6) (v1 v5 v2))
                 erased))
         (\ v2 v3 v4 v5 v6 v7 ->
            coe
              MAlonzo.Code.Relation.Binary.d40
              (coe MAlonzo.Code.Relation.Binary.d92 (coe du386 v0))
              (coe v1 v7 v2) (coe v1 v7 v3) (coe v1 v7 v4) (coe v5 v7)
              (coe v6 v7)))
name552 = "Function.Related._._.reflexive"
d552 v0 v1 v2 v3 v4 v5 v6 = du552 v0
du552 v0
  = coe
      MAlonzo.Code.Relation.Binary.d38
      (coe MAlonzo.Code.Relation.Binary.d92 (coe du386 v0))
name554 = "Function.Related._._.trans"
d554 v0 v1 v2 v3 v4 v5 v6 = du554 v0
du554 v0
  = coe
      MAlonzo.Code.Relation.Binary.d40
      (coe MAlonzo.Code.Relation.Binary.d92 (coe du386 v0))
name586 = "Function.Related.InducedEquivalence\8322"
d586 v0 v1 v2 v3 v4 v5 v6 = du586 v0 v6
du586 v0 v1
  = coe
      MAlonzo.Code.Relation.Binary.C143
      (coe
         MAlonzo.Code.Relation.Binary.Core.C889
         (\ v2 v3 ->
            coe
              MAlonzo.Code.Relation.Binary.Core.d516
              (coe MAlonzo.Code.Relation.Binary.d136 (coe du374 v0))
              (coe v1 v3 v2))
         (\ v2 v3 v4 v5 ->
            coe
              MAlonzo.Code.Relation.Binary.Core.d518
              (coe MAlonzo.Code.Relation.Binary.d136 (coe du374 v0))
              (coe v1 v5 v2) (coe v1 v5 v3) (coe v4 v5))
         (\ v2 v3 v4 v5 v6 v7 ->
            coe
              MAlonzo.Code.Relation.Binary.Core.d520
              (coe MAlonzo.Code.Relation.Binary.d136 (coe du374 v0))
              (coe v1 v7 v2) (coe v1 v7 v3) (coe v1 v7 v4) (coe v5 v7)
              (coe v6 v7)))
name610 = "Function.Related._._.refl"
d610 v0 v1 v2 v3 v4 v5 v6 = du610 v0
du610 v0
  = coe
      MAlonzo.Code.Relation.Binary.Core.d516
      (coe MAlonzo.Code.Relation.Binary.d136 (coe du374 v0))
name614 = "Function.Related._._.sym"
d614 v0 v1 v2 v3 v4 v5 v6 = du614 v0
du614 v0
  = coe
      MAlonzo.Code.Relation.Binary.Core.d518
      (coe MAlonzo.Code.Relation.Binary.d136 (coe du374 v0))
name616 = "Function.Related._._.trans"
d616 v0 v1 v2 v3 v4 v5 v6 = du616 v0
du616 v0
  = coe
      MAlonzo.Code.Relation.Binary.Core.d520
      (coe MAlonzo.Code.Relation.Binary.d136 (coe du374 v0))