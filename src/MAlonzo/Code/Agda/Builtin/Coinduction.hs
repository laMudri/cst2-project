{-# LANGUAGE EmptyDataDecls, ExistentialQuantification,
             ScopedTypeVariables, NoMonomorphismRestriction, Rank2Types #-}
module MAlonzo.Code.Agda.Builtin.Coinduction where

import MAlonzo.RTE (coe, erased, addInt, subInt, mulInt, quotInt,
                    remInt, geqInt, ltInt, eqInt, eqFloat)
import qualified Control.Exception
import qualified Data.Text
import qualified Data.Text.IO
import qualified MAlonzo.RTE
import qualified System.Environment
import qualified System.IO
import qualified Data.Text

name10 = "Agda.Builtin.Coinduction.\8734"
d10 a0 a1 = ()
newtype T10 a0 = C16 a0
name16 = "Agda.Builtin.Coinduction.\9839_"
d16 :: forall a. a -> a
d16 x0 = x0
name22 = "Agda.Builtin.Coinduction.\9837"
d22 :: forall a. a -> a
d22 x0 = x0