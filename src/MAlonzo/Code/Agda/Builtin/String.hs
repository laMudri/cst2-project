{-# LANGUAGE EmptyDataDecls, ExistentialQuantification,
             ScopedTypeVariables, NoMonomorphismRestriction, Rank2Types #-}
module MAlonzo.Code.Agda.Builtin.String where

import MAlonzo.RTE (coe, erased, addInt, subInt, mulInt, quotInt,
                    remInt, geqInt, ltInt, eqInt, eqFloat)
import qualified Control.Exception
import qualified Data.Text
import qualified Data.Text.IO
import qualified MAlonzo.RTE
import qualified System.Environment
import qualified System.IO
import qualified Data.Text

name6 = "Agda.Builtin.String.String"
d6
  = error
      "MAlonzo Runtime Error: postulate evaluated: Agda.Builtin.String.String"
name8 = "Agda.Builtin.String.primStringToList"
d8 = Data.Text.unpack
name10 = "Agda.Builtin.String.primStringFromList"
d10 = Data.Text.pack
name12 = "Agda.Builtin.String.primStringAppend"
d12
  = ((Data.Text.append) :: Data.Text.Text->Data.Text.Text->Data.Text.Text)
name14 = "Agda.Builtin.String.primStringEquality"
d14
  = (\ x y -> ((==) :: Data.Text.Text -> Data.Text.Text -> Bool) ( x) ( y))
name16 = "Agda.Builtin.String.primShowChar"
d16 = (Data.Text.pack . show :: Char -> Data.Text.Text)
name18 = "Agda.Builtin.String.primShowString"
d18 = id