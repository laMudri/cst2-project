{-# LANGUAGE EmptyDataDecls, ExistentialQuantification,
             ScopedTypeVariables, NoMonomorphismRestriction, Rank2Types #-}
module MAlonzo.Code.Function.Bijection where

import MAlonzo.RTE (coe, erased, addInt, subInt, mulInt, quotInt,
                    remInt, geqInt, ltInt, eqInt, eqFloat)
import qualified Control.Exception
import qualified Data.Text
import qualified Data.Text.IO
import qualified MAlonzo.RTE
import qualified System.Environment
import qualified System.IO
import qualified Data.Text
import qualified MAlonzo.Code.Function.Equality
import qualified MAlonzo.Code.Function.Equivalence
import qualified MAlonzo.Code.Function.Injection
import qualified MAlonzo.Code.Function.LeftInverse
import qualified MAlonzo.Code.Function.Surjection

name18 = "Function.Bijection.Bijective"
d18 a0 a1 a2 a3 a4 a5 a6 = ()
data T18 a0 a1 = C73 a0 a1
name38 = "Function.Bijection.Bijective.injective"
d38 v0
  = case coe v0 of
      C73 v1 v2 -> coe v1
      _ -> coe MAlonzo.RTE.mazUnreachableError
name40 = "Function.Bijection.Bijective.surjective"
d40 v0
  = case coe v0 of
      C73 v1 v2 -> coe v2
      _ -> coe MAlonzo.RTE.mazUnreachableError
name44 = "Function.Bijection.Bijective._.from"
d44 v0 = coe MAlonzo.Code.Function.Surjection.d38 (coe d40 v0)
name46 = "Function.Bijection.Bijective._.right-inverse-of"
d46 v0 = coe MAlonzo.Code.Function.Surjection.d40 (coe d40 v0)
name48 = "Function.Bijection.Bijective.left-inverse-of"
d48 v0 v1 v2 v3 v4 v5 v6 v7 v8 = du48 v6 v7 v8
du48 v0 v1 v2
  = coe
      d38 v1
      (coe
         MAlonzo.Code.Function.Equality.d38
         (coe MAlonzo.Code.Function.Surjection.d38 (coe d40 v1))
         (coe MAlonzo.Code.Function.Equality.d38 v0 v2))
      v2
      (coe
         MAlonzo.Code.Function.Surjection.d40 (coe d40 v1)
         (coe MAlonzo.Code.Function.Equality.d38 v0 v2))
name64 = "Function.Bijection.Bijection"
d64 a0 a1 a2 a3 a4 a5 = ()
data T64 a0 a1 = C209 a0 a1
name82 = "Function.Bijection.Bijection.to"
d82 v0
  = case coe v0 of
      C209 v1 v2 -> coe v1
      _ -> coe MAlonzo.RTE.mazUnreachableError
name84 = "Function.Bijection.Bijection.bijective"
d84 v0
  = case coe v0 of
      C209 v1 v2 -> coe v2
      _ -> coe MAlonzo.RTE.mazUnreachableError
name88 = "Function.Bijection.Bijection._.from"
d88 v0
  = coe MAlonzo.Code.Function.Surjection.d38 (coe d40 (coe d84 v0))
name90 = "Function.Bijection.Bijection._.injective"
d90 v0 = coe d38 (coe d84 v0)
name92 = "Function.Bijection.Bijection._.left-inverse-of"
d92 v0 v1 v2 v3 v4 v5 v6 = du92 v6
du92 v0 = coe du48 (coe d82 v0) (coe d84 v0)
name94 = "Function.Bijection.Bijection._.right-inverse-of"
d94 v0
  = coe MAlonzo.Code.Function.Surjection.d40 (coe d40 (coe d84 v0))
name96 = "Function.Bijection.Bijection._.surjective"
d96 v0 = coe d40 (coe d84 v0)
name98 = "Function.Bijection.Bijection.injection"
d98 v0
  = coe
      MAlonzo.Code.Function.Injection.C73 (coe d82 v0)
      (coe d38 (coe d84 v0))
name100 = "Function.Bijection.Bijection.surjection"
d100 v0
  = coe
      MAlonzo.Code.Function.Surjection.C101 (coe d82 v0)
      (coe d40 (coe d84 v0))
name104 = "Function.Bijection.Bijection._.equivalence"
d104 v0
  = coe
      MAlonzo.Code.Function.Equivalence.C1 (coe d82 v0)
      (coe MAlonzo.Code.Function.Surjection.d38 (coe d40 (coe d84 v0)))
name106 = "Function.Bijection.Bijection._.to-from"
d106 v0 v1 v2 v3 v4 v5 v6 = du106 v4 v5 v6
du106 v0 v1 v2
  = let v3
          = coe
              MAlonzo.Code.Function.Surjection.C101 (coe d82 v2)
              (coe d40 (coe d84 v2)) in
    coe
      MAlonzo.Code.Function.LeftInverse.du188 v1 v0
      (coe
         MAlonzo.Code.Function.LeftInverse.C195
         (coe
            MAlonzo.Code.Function.Surjection.d38
            (coe MAlonzo.Code.Function.Surjection.d74 v3))
         (coe MAlonzo.Code.Function.Surjection.d72 v3)
         (coe
            MAlonzo.Code.Function.Surjection.d40
            (coe MAlonzo.Code.Function.Surjection.d74 v3)))
name108 = "Function.Bijection.Bijection._.right-inverse"
d108 v0
  = coe
      MAlonzo.Code.Function.LeftInverse.C195
      (coe MAlonzo.Code.Function.Surjection.d38 (coe d40 (coe d84 v0)))
      (coe d82 v0)
      (coe MAlonzo.Code.Function.Surjection.d40 (coe d40 (coe d84 v0)))
name110 = "Function.Bijection.Bijection.left-inverse"
d110 v0 v1 v2 v3 v4 v5 v6 = du110 v6
du110 v0
  = coe
      MAlonzo.Code.Function.LeftInverse.C195 (coe d82 v0)
      (coe MAlonzo.Code.Function.Surjection.d38 (coe d40 (coe d84 v0)))
      (coe du48 (coe d82 v0) (coe d84 v0))
name114 = "Function.Bijection.Bijection._.to-from"
d114 v0 v1 v2 v3 v4 v5 v6 = du114 v4 v5 v6
du114 v0 v1 v2
  = coe MAlonzo.Code.Function.LeftInverse.du188 v0 v1 (coe du110 v2)
name122 = "Function.Bijection.id"
d122 v0 v1 v2 = du122 v2
du122 v0
  = coe
      C209 MAlonzo.Code.Function.Equality.du62
      (coe
         C73
         (coe
            MAlonzo.Code.Function.Injection.d108
            MAlonzo.Code.Function.Injection.du126)
         (coe
            MAlonzo.Code.Function.Surjection.d74
            (coe MAlonzo.Code.Function.Surjection.du146 v0)))
name144 = "Function.Bijection._\8728_"
d144 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 = du144 v8 v9 v10
du144 v0 v1 v2
  = coe
      C209
      (coe MAlonzo.Code.Function.Equality.du82 (coe d82 v1) (coe d82 v2))
      (coe
         C73
         (coe
            MAlonzo.Code.Function.Injection.d108
            (coe
               MAlonzo.Code.Function.Injection.du146
               (coe
                  MAlonzo.Code.Function.Injection.C73 (coe d82 v1)
                  (coe d38 (coe d84 v1)))
               (coe
                  MAlonzo.Code.Function.Injection.C73 (coe d82 v2)
                  (coe d38 (coe d84 v2)))))
         (coe
            MAlonzo.Code.Function.Surjection.d74
            (coe
               MAlonzo.Code.Function.Surjection.du174 v0
               (coe
                  MAlonzo.Code.Function.Surjection.C101 (coe d82 v1)
                  (coe d40 (coe d84 v1)))
               (coe
                  MAlonzo.Code.Function.Surjection.C101 (coe d82 v2)
                  (coe d40 (coe d84 v2))))))