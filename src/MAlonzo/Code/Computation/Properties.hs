{-# LANGUAGE EmptyDataDecls, ExistentialQuantification,
             ScopedTypeVariables, NoMonomorphismRestriction, Rank2Types #-}
module MAlonzo.Code.Computation.Properties where

import MAlonzo.RTE (coe, erased, addInt, subInt, mulInt, quotInt,
                    remInt, geqInt, ltInt, eqInt, eqFloat)
import qualified Control.Exception
import qualified Data.Text
import qualified Data.Text.IO
import qualified MAlonzo.RTE
import qualified System.Environment
import qualified System.IO
import qualified Data.Text
import qualified MAlonzo.Code.Computation

name14 = "Computation.Properties.StronglyNormalizing-result"
d14 v0 v1 v2 v3 v4 v5 = du14 v4 v5
du14 v0 v1
  = case coe v1 of
      MAlonzo.Code.Computation.C94 v2 -> coe v0
      MAlonzo.Code.Computation.C104 v2 v3 v4 v5 -> coe du14 v3 v5
      _ -> coe MAlonzo.RTE.mazUnreachableError
name22 = "Computation.Properties.StronglyNormalizing-function"
d22 v0 v1 v2 v3 v4 v5 = du22 v4 v5
du22 v0 v1 = coe du14 v1 (coe v0 v1)