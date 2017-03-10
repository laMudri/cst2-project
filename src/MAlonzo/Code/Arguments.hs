{-# LANGUAGE EmptyDataDecls, ExistentialQuantification,
             ScopedTypeVariables, NoMonomorphismRestriction, Rank2Types #-}
module MAlonzo.Code.Arguments where

import MAlonzo.RTE (coe, erased, addInt, subInt, mulInt, quotInt,
                    remInt, geqInt, ltInt, eqInt, eqFloat)
import qualified Control.Exception
import qualified Data.Text
import qualified Data.Text.IO
import qualified MAlonzo.RTE
import qualified System.Environment
import qualified System.IO
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Builtin.IO
import qualified MAlonzo.Code.Agda.Builtin.List
import qualified MAlonzo.Code.Agda.Builtin.String
import qualified MAlonzo.Code.IO

name2 = "Arguments.primGetArgs"
d2 ::
  (MAlonzo.Code.Agda.Builtin.IO.AgdaIO () (MAlonzo.Code.Agda.Builtin.List.AgdaList () Data.Text.Text))
d2 = (fmap Data.Text.pack <$> System.Environment.getArgs)
name4 = "Arguments.getArgs"
d4 = coe MAlonzo.Code.IO.C14 d2