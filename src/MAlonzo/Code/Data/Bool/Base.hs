{-# LANGUAGE EmptyDataDecls, ExistentialQuantification,
             ScopedTypeVariables, NoMonomorphismRestriction, Rank2Types #-}
module MAlonzo.Code.Data.Bool.Base where

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
import qualified MAlonzo.Code.Relation.Nullary

name6 = "Data.Bool.Base.not"
d6 v0
  = case coe v0 of
      False -> coe True
      True -> coe False
      _ -> coe MAlonzo.RTE.mazUnreachableError
name8 = "Data.Bool.Base.T"
d8 = erased
name14 = "Data.Bool.Base.if_then_else_"
d14 v0 v1 v2 v3 v4 = du14 v2 v3 v4
du14 v0 v1 v2
  = case coe v0 of
      False -> coe v2
      True -> coe v1
      _ -> coe MAlonzo.RTE.mazUnreachableError
name24 = "Data.Bool.Base._\8743_"
d24 v0 v1
  = case coe v0 of
      False -> coe v0
      True -> coe v1
      _ -> coe MAlonzo.RTE.mazUnreachableError
name30 = "Data.Bool.Base._\8744_"
d30 v0 v1
  = case coe v0 of
      False -> coe v1
      True -> coe v0
      _ -> coe MAlonzo.RTE.mazUnreachableError
name36 = "Data.Bool.Base._xor_"
d36 v0 v1
  = case coe v0 of
      False -> coe v1
      True -> coe d6 v1
      _ -> coe MAlonzo.RTE.mazUnreachableError
name42 = "Data.Bool.Base._\8799_"
d42 v0 v1
  = case coe v0 of
      False
        -> case coe v1 of
             False -> coe MAlonzo.Code.Relation.Nullary.C22 erased
             True -> coe MAlonzo.Code.Relation.Nullary.C26
             _ -> coe MAlonzo.RTE.mazUnreachableError
      True
        -> case coe v1 of
             False -> coe MAlonzo.Code.Relation.Nullary.C26
             True -> coe MAlonzo.Code.Relation.Nullary.C22 erased
             _ -> coe MAlonzo.RTE.mazUnreachableError
      _ -> coe MAlonzo.RTE.mazUnreachableError
name193 = "Data.Bool.Base..absurdlambda"
d193 = erased
name197 = "Data.Bool.Base..absurdlambda"
d197 = erased