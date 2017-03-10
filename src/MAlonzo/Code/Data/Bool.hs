{-# LANGUAGE EmptyDataDecls, ExistentialQuantification,
             ScopedTypeVariables, NoMonomorphismRestriction, Rank2Types #-}
module MAlonzo.Code.Data.Bool where

import MAlonzo.RTE (coe, erased, addInt, subInt, mulInt, quotInt,
                    remInt, geqInt, ltInt, eqInt, eqFloat)
import qualified Control.Exception
import qualified Data.Text
import qualified Data.Text.IO
import qualified MAlonzo.RTE
import qualified System.Environment
import qualified System.IO
import qualified Data.Text
import qualified MAlonzo.Code.Data.Bool.Base
import qualified MAlonzo.Code.Relation.Binary.PropositionalEquality

name4 = "Data.Bool.decSetoid"
d4
  = coe
      MAlonzo.Code.Relation.Binary.PropositionalEquality.du120
      MAlonzo.Code.Data.Bool.Base.d42