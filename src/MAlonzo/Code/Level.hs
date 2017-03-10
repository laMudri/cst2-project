{-# LANGUAGE EmptyDataDecls, ExistentialQuantification,
             ScopedTypeVariables, NoMonomorphismRestriction, Rank2Types #-}
module MAlonzo.Code.Level where

import MAlonzo.RTE (coe, erased, addInt, subInt, mulInt, quotInt,
                    remInt, geqInt, ltInt, eqInt, eqFloat)
import qualified Control.Exception
import qualified Data.Text
import qualified Data.Text.IO
import qualified MAlonzo.RTE
import qualified System.Environment
import qualified System.IO
import qualified Data.Text

name8 = "Level.Lift"
d8 a0 a1 a2 = ()
newtype T8 a0 = C20 a0
name18 = "Level.Lift.lower"
d18 v0
  = case coe v0 of
      C20 v1 -> coe v1
      _ -> coe MAlonzo.RTE.mazUnreachableError