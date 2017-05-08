{-# LANGUAGE EmptyDataDecls, ExistentialQuantification,
             ScopedTypeVariables, NoMonomorphismRestriction, Rank2Types #-}
module MAlonzo.Code.Function.Surjection where

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
import qualified MAlonzo.Code.Function.LeftInverse

name18 = "Function.Surjection.Surjective"
d18 a0 a1 a2 a3 a4 a5 a6 = ()
data T18 a0 a1 = C55 a0 a1
name38 = "Function.Surjection.Surjective.from"
d38 v0
  = case coe v0 of
      C55 v1 v2 -> coe v1
      _ -> coe MAlonzo.RTE.mazUnreachableError
name40 = "Function.Surjection.Surjective.right-inverse-of"
d40 v0
  = case coe v0 of
      C55 v1 v2 -> coe v2
      _ -> coe MAlonzo.RTE.mazUnreachableError
name54 = "Function.Surjection.Surjection"
d54 a0 a1 a2 a3 a4 a5 = ()
data T54 a0 a1 = C101 a0 a1
name72 = "Function.Surjection.Surjection.to"
d72 v0
  = case coe v0 of
      C101 v1 v2 -> coe v1
      _ -> coe MAlonzo.RTE.mazUnreachableError
name74 = "Function.Surjection.Surjection.surjective"
d74 v0
  = case coe v0 of
      C101 v1 v2 -> coe v2
      _ -> coe MAlonzo.RTE.mazUnreachableError
name78 = "Function.Surjection.Surjection._.from"
d78 v0 = coe d38 (coe d74 v0)
name80 = "Function.Surjection.Surjection._.right-inverse-of"
d80 v0 = coe d40 (coe d74 v0)
name82 = "Function.Surjection.Surjection.right-inverse"
d82 v0
  = coe
      MAlonzo.Code.Function.LeftInverse.C195 (coe d38 (coe d74 v0))
      (coe d72 v0) (coe d40 (coe d74 v0))
name86 = "Function.Surjection.Surjection._.to-from"
d86 v0 v1 v2 v3 v4 v5 v6 = du86 v4 v5 v6
du86 v0 v1 v2
  = coe
      MAlonzo.Code.Function.LeftInverse.du188 v1 v0
      (coe
         MAlonzo.Code.Function.LeftInverse.C195 (coe d38 (coe d74 v2))
         (coe d72 v2) (coe d40 (coe d74 v2)))
name88 = "Function.Surjection.Surjection.injective"
d88 v0 v1 v2 v3 v4 v5 v6 v7 v8 = du88 v5 v6 v7 v8
du88 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Function.LeftInverse.du172 v0
      (coe
         MAlonzo.Code.Function.LeftInverse.C195 (coe d38 (coe d74 v1))
         (coe d72 v1) (coe d40 (coe d74 v1)))
      v2 v3
name90 = "Function.Surjection.Surjection.injection"
d90 v0 v1 v2 v3 v4 v5 v6 = du90 v5 v6
du90 v0 v1
  = coe
      MAlonzo.Code.Function.LeftInverse.du180 v0
      (coe
         MAlonzo.Code.Function.LeftInverse.C195 (coe d38 (coe d74 v1))
         (coe d72 v1) (coe d40 (coe d74 v1)))
name92 = "Function.Surjection.Surjection.equivalence"
d92 v0
  = coe
      MAlonzo.Code.Function.Equivalence.C1 (coe d72 v0)
      (coe d38 (coe d74 v0))
name106 = "Function.Surjection.fromRightInverse"
d106 v0 v1 v2 v3 v4 v5 v6 = du106 v6
du106 v0
  = coe
      C101 (coe MAlonzo.Code.Function.LeftInverse.d104 v0)
      (coe
         C55 (coe MAlonzo.Code.Function.LeftInverse.d102 v0)
         (coe MAlonzo.Code.Function.LeftInverse.d106 v0))
name134 = "Function.Surjection._\8608_"
d134 = erased
name146 = "Function.Surjection.id"
d146 v0 v1 v2 = du146 v2
du146 v0
  = coe
      C101 MAlonzo.Code.Function.Equality.du62
      (coe
         C55 (coe MAlonzo.Code.Function.LeftInverse.d102 (coe du154 v0))
         (coe MAlonzo.Code.Function.LeftInverse.d106 (coe du154 v0)))
name154 = "Function.Surjection._.id\8242"
d154 v0 v1 v2 = du154 v2
du154 v0 = coe MAlonzo.Code.Function.LeftInverse.du230 v0
name174 = "Function.Surjection._\8728_"
d174 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 = du174 v8 v9 v10
du174 v0 v1 v2
  = coe
      C101
      (coe MAlonzo.Code.Function.Equality.du82 (coe d72 v1) (coe d72 v2))
      (coe
         C55
         (coe MAlonzo.Code.Function.LeftInverse.d102 (coe du184 v0 v1 v2))
         (coe MAlonzo.Code.Function.LeftInverse.d106 (coe du184 v0 v1 v2)))
name184 = "Function.Surjection._.g\8728f"
d184 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 = du184 v8 v9 v10
du184 v0 v1 v2
  = coe
      MAlonzo.Code.Function.LeftInverse.du254 v0
      (coe
         MAlonzo.Code.Function.LeftInverse.C195 (coe d38 (coe d74 v2))
         (coe d72 v2) (coe d40 (coe d74 v2)))
      (coe
         MAlonzo.Code.Function.LeftInverse.C195 (coe d38 (coe d74 v1))
         (coe d72 v1) (coe d40 (coe d74 v1)))