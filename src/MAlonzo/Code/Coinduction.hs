{-# LANGUAGE EmptyDataDecls, ExistentialQuantification,
             ScopedTypeVariables, NoMonomorphismRestriction, Rank2Types #-}
module MAlonzo.Code.Coinduction where

import MAlonzo.RTE (coe, erased, addInt, subInt, mulInt, quotInt,
                    remInt, geqInt, ltInt, eqInt, eqFloat)
import qualified Control.Exception
import qualified Data.Text
import qualified Data.Text.IO
import qualified MAlonzo.RTE
import qualified System.Environment
import qualified System.IO
import qualified Data.Text

name6 = "Coinduction.Rec"
d6 a0 a1 = ()
newtype T6 a0 = C14 a0
name20 = "Coinduction.unfold"
d20 v0
  = case coe v0 of
      C14 v1 -> coe v1
      _ -> coe MAlonzo.RTE.mazUnreachableError