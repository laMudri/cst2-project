{-# LANGUAGE EmptyDataDecls, ExistentialQuantification,
             ScopedTypeVariables, NoMonomorphismRestriction, Rank2Types #-}
module MAlonzo.Code.Agda.Builtin.Bool where

import MAlonzo.RTE (coe, erased, addInt, subInt, mulInt, quotInt,
                    remInt, geqInt, ltInt, eqInt, eqFloat)
import qualified Control.Exception
import qualified Data.Text
import qualified Data.Text.IO
import qualified MAlonzo.RTE
import qualified System.Environment
import qualified System.IO
import qualified Data.Text

name6 = "Agda.Builtin.Bool.Bool"
d6 = ()
check8 :: Bool
check8 = False
check10 :: Bool
check10 = True
cover6 :: Bool -> ()
cover6 x
  = case x of
      False -> ()
      True -> ()
name8 = "Agda.Builtin.Bool.Bool.false"
d8 :: Bool
d8 = False
name10 = "Agda.Builtin.Bool.Bool.true"
d10 :: Bool
d10 = True