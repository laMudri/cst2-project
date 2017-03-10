{-# LANGUAGE EmptyDataDecls, ExistentialQuantification,
             ScopedTypeVariables, NoMonomorphismRestriction, Rank2Types #-}
module MAlonzo.Code.Computation where

import MAlonzo.RTE (coe, erased, addInt, subInt, mulInt, quotInt,
                    remInt, geqInt, ltInt, eqInt, eqFloat)
import qualified Control.Exception
import qualified Data.Text
import qualified Data.Text.IO
import qualified MAlonzo.RTE
import qualified System.Environment
import qualified System.IO
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Builtin.Coinduction

name10 = "Computation.Computation"
d10 a0 a1 a2 a3 a4 = ()
data T10 a0 a1 a2 a3 = C24 a0 | C30 a0 a1 a2 a3
name42 = "Computation.Terminates"
d42 a0 a1 a2 a3 a4 a5 = ()
data T42 a0 a1 a2 a3 a4 = C58 a0 | C68 a0 a1 a2 a3 a4
name59 = "Computation._.\9839-2"
d59 v0 v1 v2 v3 v4 v5 v6 v7 = du59 v7
du59 v0 = coe MAlonzo.Code.Agda.Builtin.Coinduction.d16 v0
name78 = "Computation.StronglyNormalizing"
d78 a0 a1 a2 a3 a4 = ()
data T78 a0 a1 a2 a3 = C94 a0 | C104 a0 a1 a2 a3
name118 = "Computation.Terminates-result"
d118 v0 v1 v2 v3 v4 v5 v6 = du118 v4 v6
du118 v0 v1
  = case coe v1 of
      C58 v2 -> coe v0
      C68 v2 v3 v4 v5 v6 -> coe du118 v3 v6
      _ -> coe MAlonzo.RTE.mazUnreachableError
name142 = "Computation.normalize"
d142 v0 v1 v2 v3 v4 v5 v6 = du142 v5 v6
du142 v0 v1 = coe du118 v1 (coe v0 v1)