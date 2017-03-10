{-# LANGUAGE EmptyDataDecls, ExistentialQuantification,
             ScopedTypeVariables, NoMonomorphismRestriction, Rank2Types #-}
module MAlonzo.Code.Data.Empty where

import MAlonzo.RTE (coe, erased, addInt, subInt, mulInt, quotInt,
                    remInt, geqInt, ltInt, eqInt, eqFloat)
import qualified Control.Exception
import qualified Data.Text
import qualified Data.Text.IO
import qualified MAlonzo.RTE
import qualified System.Environment
import qualified System.IO
import qualified Data.Text

data AgdaEmpty
name4 = "Data.Empty.\8869"
d4 = ()
cover4 :: MAlonzo.Code.Data.Empty.AgdaEmpty -> ()
cover4 x = ()
name10 = "Data.Empty.\8869-elim"
d10 = MAlonzo.RTE.mazUnreachableError