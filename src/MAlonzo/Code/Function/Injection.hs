{-# LANGUAGE EmptyDataDecls, ExistentialQuantification,
             ScopedTypeVariables, NoMonomorphismRestriction, Rank2Types #-}
module MAlonzo.Code.Function.Injection where

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
import qualified MAlonzo.Code.Function.Equality

name16 = "Function.Injection.Injective"
d16 = erased
name30 = "Function.Injection._._._\8776_"
d30 = erased
name52 = "Function.Injection._._._\8776_"
d52 = erased
name88 = "Function.Injection.Injection"
d88 a0 a1 a2 a3 a4 a5 = ()
data T88 a0 a1 = C73 a0 a1
name106 = "Function.Injection.Injection.to"
d106 v0
  = case coe v0 of
      C73 v1 v2 -> coe v1
      _ -> coe MAlonzo.RTE.mazUnreachableError
name108 = "Function.Injection.Injection.injective"
d108 v0
  = case coe v0 of
      C73 v1 v2 -> coe v2
      _ -> coe MAlonzo.RTE.mazUnreachableError
name114 = "Function.Injection._\8611_"
d114 = erased
name126 = "Function.Injection.id"
d126 v0 v1 v2 = du126
du126
  = coe C73 MAlonzo.Code.Function.Equality.du62 (\ v0 v1 v2 -> v2)
name146 = "Function.Injection._\8728_"
d146 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 = du146 v9 v10
du146 v0 v1
  = coe
      C73
      (coe
         MAlonzo.Code.Function.Equality.du82 (coe d106 v0) (coe d106 v1))
      (\ v2 v3 ->
         coe
           MAlonzo.Code.Function.du38 (\ v4 -> coe d108 v1 v2 v3)
           (coe
              d108 v0 (coe MAlonzo.Code.Function.Equality.d38 (coe d106 v1) v2)
              (coe MAlonzo.Code.Function.Equality.d38 (coe d106 v1) v3)))