{-# LANGUAGE EmptyDataDecls, ExistentialQuantification,
             ScopedTypeVariables, NoMonomorphismRestriction, Rank2Types #-}
module MAlonzo.Code.Data.Maybe.Base where

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
import qualified MAlonzo.Code.Agda.Primitive
import qualified MAlonzo.Code.Data.Bool.Base
import qualified MAlonzo.Code.Function
import qualified MAlonzo.Code.Level
import qualified MAlonzo.Code.Relation.Nullary

type AgdaMaybe a b = Maybe b
name10 = "Data.Maybe.Base.Maybe"
d10 a0 a1 = ()
check18 ::
  (forall xa. (forall xA. (xA -> (MAlonzo.Code.Data.Maybe.Base.AgdaMaybe xa xA))))
check18 = Just
check20 ::
  (forall xa. (forall xA. (MAlonzo.Code.Data.Maybe.Base.AgdaMaybe xa xA)))
check20 = Nothing
cover10 :: MAlonzo.Code.Data.Maybe.Base.AgdaMaybe a1 a2 -> ()
cover10 x
  = case x of
      Just _ -> ()
      Nothing -> ()
name18 = "Data.Maybe.Base.Maybe.just"
d18 ::
  (forall xa. (forall xA. (xA -> (MAlonzo.Code.Data.Maybe.Base.AgdaMaybe xa xA))))
d18 = Just
name20 = "Data.Maybe.Base.Maybe.nothing"
d20 ::
  (forall xa. (forall xA. (MAlonzo.Code.Data.Maybe.Base.AgdaMaybe xa xA)))
d20 = Nothing
name22 = "Data.Maybe.Base.boolToMaybe"
d22 v0
  = case coe v0 of
      False -> coe Nothing
      True -> coe Just erased
      _ -> coe MAlonzo.RTE.mazUnreachableError
name28 = "Data.Maybe.Base.is-just"
d28 v0 v1 v2 = du28 v2
du28 v0
  = case coe v0 of
      Just v1 -> coe True
      Nothing -> coe False
      _ -> coe MAlonzo.RTE.mazUnreachableError
name34 = "Data.Maybe.Base.is-nothing"
d34 v0 v1 = du34
du34
  = coe
      MAlonzo.Code.Function.du38 (\ v0 -> MAlonzo.Code.Data.Bool.Base.d6)
      du28
name40 = "Data.Maybe.Base.decToMaybe"
d40 v0 v1 v2 = du40 v2
du40 v0
  = case coe v0 of
      MAlonzo.Code.Relation.Nullary.C22 v1 -> coe Just v1
      MAlonzo.Code.Relation.Nullary.C26 -> coe Nothing
      _ -> coe MAlonzo.RTE.mazUnreachableError
name56 = "Data.Maybe.Base.maybe"
d56 v0 v1 v2 v3 v4 v5 v6 = du56 v4 v5 v6
du56 v0 v1 v2
  = case coe v2 of
      Just v3 -> coe v0 v3
      Nothing -> coe v1
      _ -> coe MAlonzo.RTE.mazUnreachableError
name76 = "Data.Maybe.Base.maybe\8242"
d76 v0 v1 v2 v3 = du76
du76 = du56
name82 = "Data.Maybe.Base.From-just"
d82 = erased
name94 = "Data.Maybe.Base.from-just"
d94 v0
  = case coe v0 of
      Just v1 -> coe v1
      Nothing -> coe MAlonzo.Code.Level.C20 erased
      _ -> coe MAlonzo.RTE.mazUnreachableError
name106 = "Data.Maybe.Base.map"
d106 v0 v1 v2 v3 v4 = du106 v4
du106 v0
  = coe
      du56 (coe MAlonzo.Code.Function.du38 (\ v1 -> Just) v0) Nothing
name118 = "Data.Maybe.Base.Any"
d118 a0 a1 a2 a3 a4 = ()
data T118 a0 a1 = C132 a0 a1
name142 = "Data.Maybe.Base.All"
d142 a0 a1 a2 a3 a4 = ()
data T142 a0 a1 = C156 a0 a1 | C158
name164 = "Data.Maybe.Base.Is-just"
d164 = erased
name172 = "Data.Maybe.Base.Is-nothing"
d172 = erased
name182 = "Data.Maybe.Base.to-witness"
d182 v0 v1 v2 v3 = du182 v3
du182 v0
  = case coe v0 of
      C132 v1 v2 -> coe v1
      _ -> coe MAlonzo.RTE.mazUnreachableError
name192 = "Data.Maybe.Base.to-witness-T"
d192 v0 v1 v2 v3 = du192 v2
du192 v0
  = case coe v0 of
      Just v1 -> coe v1
      _ -> coe MAlonzo.RTE.mazUnreachableError