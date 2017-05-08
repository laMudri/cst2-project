{-# LANGUAGE EmptyDataDecls, ExistentialQuantification,
             ScopedTypeVariables, NoMonomorphismRestriction, Rank2Types #-}
module MAlonzo.Code.Foreign.Haskell where

import MAlonzo.RTE (coe, erased, addInt, subInt, mulInt, quotInt,
                    remInt, geqInt, ltInt, eqInt, eqFloat)
import qualified Control.Exception
import qualified Data.Text
import qualified Data.Text.IO
import qualified MAlonzo.RTE
import qualified System.Environment
import qualified System.IO
import qualified Data.Text

name4 = "Foreign.Haskell.Unit"
d4 = ()
check6 :: ()
check6 = ()
cover4 :: () -> ()
cover4 x
  = case x of
      () -> ()
name6 = "Foreign.Haskell.Unit.unit"
d6 :: ()
d6 = ()