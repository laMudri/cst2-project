{-# LANGUAGE EmptyDataDecls, ExistentialQuantification,
             ScopedTypeVariables, NoMonomorphismRestriction, Rank2Types #-}
module MAlonzo.Code.Data.String where

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
import qualified MAlonzo.Code.Agda.Builtin.String
import qualified MAlonzo.Code.Data.Char
import qualified MAlonzo.Code.Data.Colist
import qualified MAlonzo.Code.Data.String.Base
import qualified MAlonzo.Code.Data.Vec
import qualified MAlonzo.Code.Function
import qualified MAlonzo.Code.Relation.Binary.List.StrictLex
import qualified MAlonzo.Code.Relation.Binary.On
import qualified MAlonzo.Code.Relation.Binary.PropositionalEquality
import qualified MAlonzo.Code.Relation.Nullary
import qualified MAlonzo.Code.Relation.Nullary.Decidable

name4 = "Data.String.Costring"
d4 = erased
name8 = "Data.String.toVec"
d8 v0
  = coe
      MAlonzo.Code.Data.Vec.du542
      (coe MAlonzo.Code.Data.String.Base.d8 v0)
name12 = "Data.String.toCostring"
d12
  = coe
      MAlonzo.Code.Function.du38
      (\ v0 -> coe MAlonzo.Code.Data.Colist.du164 ())
      MAlonzo.Code.Data.String.Base.d8
name14 = "Data.String._\8799_"
d14 v0 v1
  = let v2 = coe MAlonzo.Code.Agda.Builtin.String.d14 v0 v1 in
    case coe v2 of
      False -> coe MAlonzo.Code.Relation.Nullary.C26
      True -> coe MAlonzo.Code.Relation.Nullary.C22 erased
      _ -> coe MAlonzo.RTE.mazUnreachableError
name36 = "Data.String._.whatever"
d36
  = error
      "MAlonzo Runtime Error: postulate evaluated: Data.String.whatever"
name38 = "Data.String._==_"
d38 v0 v1
  = coe MAlonzo.Code.Relation.Nullary.Decidable.du10 (coe d14 v0 v1)
name52 = "Data.String.setoid"
d52 = MAlonzo.Code.Relation.Binary.PropositionalEquality.du112
name54 = "Data.String.decSetoid"
d54
  = coe MAlonzo.Code.Relation.Binary.PropositionalEquality.du120 d14
name56 = "Data.String.strictTotalOrder"
d56
  = coe
      MAlonzo.Code.Relation.Binary.On.du718
      (coe
         MAlonzo.Code.Relation.Binary.List.StrictLex.d1284
         MAlonzo.Code.Data.Char.d46)
      MAlonzo.Code.Data.String.Base.d8