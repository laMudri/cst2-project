{-# LANGUAGE EmptyDataDecls, ExistentialQuantification,
             ScopedTypeVariables, NoMonomorphismRestriction, Rank2Types #-}
module MAlonzo.Code.Data.Char where

import MAlonzo.RTE (coe, erased, addInt, subInt, mulInt, quotInt,
                    remInt, geqInt, ltInt, eqInt, eqFloat)
import qualified Control.Exception
import qualified Data.Text
import qualified Data.Text.IO
import qualified MAlonzo.RTE
import qualified System.Environment
import qualified System.IO
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Builtin.Bool
import qualified MAlonzo.Code.Agda.Builtin.Char
import qualified MAlonzo.Code.Data.Char.Base
import qualified MAlonzo.Code.Data.Nat.Properties
import qualified MAlonzo.Code.Relation.Binary.On
import qualified MAlonzo.Code.Relation.Binary.PropositionalEquality
import qualified MAlonzo.Code.Relation.Nullary
import qualified MAlonzo.Code.Relation.Nullary.Decidable

name4 = "Data.Char._\8799_"
d4 v0 v1
  = let v2 = coe MAlonzo.Code.Agda.Builtin.Char.d32 v0 v1 in
    case coe v2 of
      False -> coe MAlonzo.Code.Relation.Nullary.C26
      True -> coe MAlonzo.Code.Relation.Nullary.C22 erased
      _ -> coe MAlonzo.RTE.mazUnreachableError
name26 = "Data.Char._.whatever"
d26
  = error
      "MAlonzo Runtime Error: postulate evaluated: Data.Char.whatever"
name28 = "Data.Char._==_"
d28 v0 v1
  = coe MAlonzo.Code.Relation.Nullary.Decidable.du10 (coe d4 v0 v1)
name42 = "Data.Char.setoid"
d42 = MAlonzo.Code.Relation.Binary.PropositionalEquality.du112
name44 = "Data.Char.decSetoid"
d44
  = coe MAlonzo.Code.Relation.Binary.PropositionalEquality.du120 d4
name46 = "Data.Char.strictTotalOrder"
d46
  = coe
      MAlonzo.Code.Relation.Binary.On.du718
      MAlonzo.Code.Data.Nat.Properties.d740
      MAlonzo.Code.Data.Char.Base.d8