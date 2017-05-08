{-# LANGUAGE EmptyDataDecls, ExistentialQuantification,
             ScopedTypeVariables, NoMonomorphismRestriction, Rank2Types #-}
module MAlonzo.Code.Function.Inverse where

import MAlonzo.RTE (coe, erased, addInt, subInt, mulInt, quotInt,
                    remInt, geqInt, ltInt, eqInt, eqFloat)
import qualified Control.Exception
import qualified Data.Text
import qualified Data.Text.IO
import qualified MAlonzo.RTE
import qualified System.Environment
import qualified System.IO
import qualified Data.Text
import qualified MAlonzo.Code.Function.Bijection
import qualified MAlonzo.Code.Function.Equality
import qualified MAlonzo.Code.Function.Equivalence
import qualified MAlonzo.Code.Function.LeftInverse
import qualified MAlonzo.Code.Function.Surjection

name20 = "Function.Inverse._InverseOf_"
d20 a0 a1 a2 a3 a4 a5 a6 a7 = ()
data T20 a0 a1 = C109 a0 a1
name42 = "Function.Inverse._InverseOf_.left-inverse-of"
d42 v0
  = case coe v0 of
      C109 v1 v2 -> coe v1
      _ -> coe MAlonzo.RTE.mazUnreachableError
name44 = "Function.Inverse._InverseOf_.right-inverse-of"
d44 v0
  = case coe v0 of
      C109 v1 v2 -> coe v2
      _ -> coe MAlonzo.RTE.mazUnreachableError
name58 = "Function.Inverse.Inverse"
d58 a0 a1 a2 a3 a4 a5 = ()
data T58 a0 a1 a2 = C173 a0 a1 a2
name78 = "Function.Inverse.Inverse.to"
d78 v0
  = case coe v0 of
      C173 v1 v2 v3 -> coe v1
      _ -> coe MAlonzo.RTE.mazUnreachableError
name80 = "Function.Inverse.Inverse.from"
d80 v0
  = case coe v0 of
      C173 v1 v2 v3 -> coe v2
      _ -> coe MAlonzo.RTE.mazUnreachableError
name82 = "Function.Inverse.Inverse.inverse-of"
d82 v0
  = case coe v0 of
      C173 v1 v2 v3 -> coe v3
      _ -> coe MAlonzo.RTE.mazUnreachableError
name86 = "Function.Inverse.Inverse._.left-inverse-of"
d86 v0 = coe d42 (coe d82 v0)
name88 = "Function.Inverse.Inverse._.right-inverse-of"
d88 v0 = coe d44 (coe d82 v0)
name90 = "Function.Inverse.Inverse.left-inverse"
d90 v0
  = coe
      MAlonzo.Code.Function.LeftInverse.C195 (coe d78 v0) (coe d80 v0)
      (coe d42 (coe d82 v0))
name94 = "Function.Inverse.Inverse._.injection"
d94 v0 v1 v2 v3 v4 v5 v6 = du94 v4 v6
du94 v0 v1
  = coe
      MAlonzo.Code.Function.LeftInverse.du180 v0
      (coe
         MAlonzo.Code.Function.LeftInverse.C195 (coe d78 v1) (coe d80 v1)
         (coe d42 (coe d82 v1)))
name96 = "Function.Inverse.Inverse._.injective"
d96 v0 v1 v2 v3 v4 v5 v6 = du96 v4 v6
du96 v0 v1
  = coe
      MAlonzo.Code.Function.LeftInverse.du172 v0
      (coe
         MAlonzo.Code.Function.LeftInverse.C195 (coe d78 v1) (coe d80 v1)
         (coe d42 (coe d82 v1)))
name98 = "Function.Inverse.Inverse.bijection"
d98 v0 v1 v2 v3 v4 v5 v6 = du98 v4 v6
du98 v0 v1
  = coe
      MAlonzo.Code.Function.Bijection.C209 (coe d78 v1)
      (coe
         MAlonzo.Code.Function.Bijection.C73
         (coe
            MAlonzo.Code.Function.LeftInverse.du172 v0
            (coe
               MAlonzo.Code.Function.LeftInverse.C195 (coe d78 v1) (coe d80 v1)
               (coe d42 (coe d82 v1))))
         (coe
            MAlonzo.Code.Function.Surjection.C55 (coe d80 v1)
            (coe d44 (coe d82 v1))))
name102 = "Function.Inverse.Inverse._.equivalence"
d102 v0 v1 v2 v3 v4 v5 v6 = du102 v4 v6
du102 v0 v1
  = coe
      MAlonzo.Code.Function.Equivalence.C1
      (coe MAlonzo.Code.Function.Bijection.d82 (coe du98 v0 v1))
      (coe
         MAlonzo.Code.Function.Surjection.d38
         (coe
            MAlonzo.Code.Function.Bijection.d40
            (coe MAlonzo.Code.Function.Bijection.d84 (coe du98 v0 v1))))
name104 = "Function.Inverse.Inverse._.to-from"
d104 v0 v1 v2 v3 v4 v5 v6 = du104 v4 v5 v6
du104 v0 v1 v2
  = let v3 = coe du98 v0 v2 in
    let v4
          = coe
              MAlonzo.Code.Function.Surjection.C101
              (coe MAlonzo.Code.Function.Bijection.d82 v3)
              (coe
                 MAlonzo.Code.Function.Bijection.d40
                 (coe MAlonzo.Code.Function.Bijection.d84 v3)) in
    coe
      MAlonzo.Code.Function.LeftInverse.du188 v1 v0
      (coe
         MAlonzo.Code.Function.LeftInverse.C195
         (coe
            MAlonzo.Code.Function.Surjection.d38
            (coe MAlonzo.Code.Function.Surjection.d74 v4))
         (coe MAlonzo.Code.Function.Surjection.d72 v4)
         (coe
            MAlonzo.Code.Function.Surjection.d40
            (coe MAlonzo.Code.Function.Surjection.d74 v4)))
name106 = "Function.Inverse.Inverse._.right-inverse"
d106 v0 v1 v2 v3 v4 v5 v6 = du106 v4 v6
du106 v0 v1
  = coe
      MAlonzo.Code.Function.LeftInverse.C195
      (coe
         MAlonzo.Code.Function.Surjection.d38
         (coe
            MAlonzo.Code.Function.Bijection.d40
            (coe MAlonzo.Code.Function.Bijection.d84 (coe du98 v0 v1))))
      (coe MAlonzo.Code.Function.Bijection.d82 (coe du98 v0 v1))
      (coe
         MAlonzo.Code.Function.Surjection.d40
         (coe
            MAlonzo.Code.Function.Bijection.d40
            (coe MAlonzo.Code.Function.Bijection.d84 (coe du98 v0 v1))))
name108 = "Function.Inverse.Inverse._.surjection"
d108 v0 v1 v2 v3 v4 v5 v6 = du108 v4 v6
du108 v0 v1
  = coe
      MAlonzo.Code.Function.Surjection.C101
      (coe MAlonzo.Code.Function.Bijection.d82 (coe du98 v0 v1))
      (coe
         MAlonzo.Code.Function.Bijection.d40
         (coe MAlonzo.Code.Function.Bijection.d84 (coe du98 v0 v1)))
name110 = "Function.Inverse.Inverse._.surjective"
d110 v0 v1 v2 v3 v4 v5 v6 = du110 v4 v6
du110 v0 v1
  = coe
      MAlonzo.Code.Function.Bijection.d40
      (coe MAlonzo.Code.Function.Bijection.d84 (coe du98 v0 v1))
name112 = "Function.Inverse.Inverse._.to-from"
d112 v0 v1 v2 v3 v4 v5 v6 = du112 v4 v5 v6
du112 v0 v1 v2
  = let v3 = coe du98 v0 v2 in
    coe
      MAlonzo.Code.Function.LeftInverse.du188 v0 v1
      (coe MAlonzo.Code.Function.Bijection.du110 v3)
name118 = "Function.Inverse._\8596_"
d118 = erased
name132 = "Function.Inverse._\8596\775_"
d132 = erased
name152 = "Function.Inverse.fromBijection"
d152 v0 v1 v2 v3 v4 v5 v6 = du152 v6
du152 v0
  = coe
      C173 (coe MAlonzo.Code.Function.Bijection.d82 v0)
      (coe
         MAlonzo.Code.Function.Surjection.d38
         (coe
            MAlonzo.Code.Function.Bijection.d40
            (coe MAlonzo.Code.Function.Bijection.d84 v0)))
      (coe
         C109
         (coe
            MAlonzo.Code.Function.Bijection.du48
            (coe MAlonzo.Code.Function.Bijection.d82 v0)
            (coe MAlonzo.Code.Function.Bijection.d84 v0))
         (coe
            MAlonzo.Code.Function.Surjection.d40
            (coe
               MAlonzo.Code.Function.Bijection.d40
               (coe MAlonzo.Code.Function.Bijection.d84 v0))))
name188 = "Function.Inverse.map"
d188 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15
  = du188 v12 v13 v14 v15
du188 v0 v1 v2 v3
  = coe
      C173 (coe v0 (coe d78 v3)) (coe v1 (coe d80 v3))
      (coe v2 (coe d78 v3) (coe d80 v3) (coe d82 v3))
name282 = "Function.Inverse.zip"
d282 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17
     v18 v19 v20 v21 v22
  = du282 v18 v19 v20 v21 v22
du282 v0 v1 v2 v3 v4
  = coe
      C173 (coe v0 (coe d78 v3) (coe d78 v4))
      (coe v1 (coe d80 v3) (coe d80 v4))
      (coe
         v2 (coe d78 v3) (coe d80 v3) (coe d78 v4) (coe d80 v4) (coe d82 v3)
         (coe d82 v4))
name302 = "Function.Inverse.id"
d302 v0 v1 v2 = du302 v2
du302 v0
  = coe
      C173 MAlonzo.Code.Function.Equality.du62
      MAlonzo.Code.Function.Equality.du62
      (coe
         C109 (coe MAlonzo.Code.Function.LeftInverse.d106 (coe du310 v0))
         (coe MAlonzo.Code.Function.LeftInverse.d106 (coe du310 v0)))
name310 = "Function.Inverse._.id\8242"
d310 v0 v1 v2 = du310 v2
du310 v0 = coe MAlonzo.Code.Function.LeftInverse.du230 v0
name324 = "Function.Inverse._\8728_"
d324 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 = du324 v6 v7 v8 v9 v10
du324 v0 v1 v2 v3 v4
  = coe
      C173
      (coe MAlonzo.Code.Function.Equality.du82 (coe d78 v3) (coe d78 v4))
      (coe MAlonzo.Code.Function.Equality.du82 (coe d80 v4) (coe d80 v3))
      (coe
         C109
         (coe
            MAlonzo.Code.Function.LeftInverse.d106
            (coe
               MAlonzo.Code.Function.LeftInverse.du254 v0
               (coe
                  MAlonzo.Code.Function.LeftInverse.C195 (coe d78 v3) (coe d80 v3)
                  (coe d42 (coe d82 v3)))
               (coe
                  MAlonzo.Code.Function.LeftInverse.C195 (coe d78 v4) (coe d80 v4)
                  (coe d42 (coe d82 v4)))))
         (coe
            MAlonzo.Code.Function.LeftInverse.d106
            (coe
               MAlonzo.Code.Function.LeftInverse.du254 v2
               (coe
                  MAlonzo.Code.Function.LeftInverse.C195
                  (coe
                     MAlonzo.Code.Function.Surjection.d38
                     (coe
                        MAlonzo.Code.Function.Bijection.d40
                        (coe MAlonzo.Code.Function.Bijection.d84 (coe du98 v0 v4))))
                  (coe MAlonzo.Code.Function.Bijection.d82 (coe du98 v0 v4))
                  (coe
                     MAlonzo.Code.Function.Surjection.d40
                     (coe
                        MAlonzo.Code.Function.Bijection.d40
                        (coe MAlonzo.Code.Function.Bijection.d84 (coe du98 v0 v4)))))
               (coe
                  MAlonzo.Code.Function.LeftInverse.C195
                  (coe
                     MAlonzo.Code.Function.Surjection.d38
                     (coe
                        MAlonzo.Code.Function.Bijection.d40
                        (coe MAlonzo.Code.Function.Bijection.d84 (coe du98 v1 v3))))
                  (coe MAlonzo.Code.Function.Bijection.d82 (coe du98 v1 v3))
                  (coe
                     MAlonzo.Code.Function.Surjection.d40
                     (coe
                        MAlonzo.Code.Function.Bijection.d40
                        (coe MAlonzo.Code.Function.Bijection.d84 (coe du98 v1 v3))))))))
name342 = "Function.Inverse.sym"
d342 v0 v1 v2 v3 v4 v5 v6 = du342 v6
du342 v0
  = coe
      C173 (coe d80 v0) (coe d78 v0)
      (coe C109 (coe d44 (coe d82 v0)) (coe d42 (coe d82 v0)))