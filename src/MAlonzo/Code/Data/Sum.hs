{-# LANGUAGE EmptyDataDecls, ExistentialQuantification,
             ScopedTypeVariables, NoMonomorphismRestriction, Rank2Types #-}
module MAlonzo.Code.Data.Sum where

import MAlonzo.RTE (coe, erased, addInt, subInt, mulInt, quotInt,
                    remInt, geqInt, ltInt, eqInt, eqFloat)
import qualified Control.Exception
import qualified Data.Text
import qualified Data.Text.IO
import qualified MAlonzo.RTE
import qualified System.Environment
import qualified System.IO
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Primitive
import qualified MAlonzo.Code.Data.Maybe.Base
import qualified MAlonzo.Code.Function

type AgdaEither a b c d = Either c d
name12 = "Data.Sum._\8846_"
d12 a0 a1 a2 a3 = ()
check24 ::
  (forall xa. (forall xb. (forall xA. (forall xB. (xA -> (MAlonzo.Code.Data.Sum.AgdaEither xa xb xA xB))))))
check24 = Left
check28 ::
  (forall xa. (forall xb. (forall xA. (forall xB. (xB -> (MAlonzo.Code.Data.Sum.AgdaEither xa xb xA xB))))))
check28 = Right
cover12 :: MAlonzo.Code.Data.Sum.AgdaEither a1 a2 a3 a4 -> ()
cover12 x
  = case x of
      Left _ -> ()
      Right _ -> ()
name24 = "Data.Sum._\8846_.inj\8321"
d24 ::
  (forall xa. (forall xb. (forall xA. (forall xB. (xA -> (MAlonzo.Code.Data.Sum.AgdaEither xa xb xA xB))))))
d24 = Left
name28 = "Data.Sum._\8846_.inj\8322"
d28 ::
  (forall xa. (forall xb. (forall xA. (forall xB. (xB -> (MAlonzo.Code.Data.Sum.AgdaEither xa xb xA xB))))))
d28 = Right
name48 = "Data.Sum.[_,_]"
d48 v0 v1 v2 v3 v4 v5 v6 v7 v8 = du48 v6 v7 v8
du48 v0 v1 v2
  = case coe v2 of
      Left v3 -> coe v0 v3
      Right v3 -> coe v1 v3
      _ -> coe MAlonzo.RTE.mazUnreachableError
name74 = "Data.Sum.[_,_]\8242"
d74 v0 v1 v2 v3 v4 v5 = du74
du74 = du48
name92 = "Data.Sum.map"
d92 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 = du92 v8 v9
du92 v0 v1
  = coe
      du48 (coe MAlonzo.Code.Function.du38 (\ v2 -> Left) v0)
      (coe MAlonzo.Code.Function.du38 (\ v2 -> Right) v1)
name110 = "Data.Sum._-\8846-_"
d110 = erased
name124 = "Data.Sum.isInj\8321"
d124 v0 v1 v2 v3 v4 = du124 v4
du124 v0
  = case coe v0 of
      Left v1 -> coe Just v1
      Right v1 -> coe Nothing
      _ -> coe MAlonzo.RTE.mazUnreachableError
name138 = "Data.Sum.isInj\8322"
d138 v0 v1 v2 v3 v4 = du138 v4
du138 v0
  = case coe v0 of
      Left v1 -> coe Nothing
      Right v1 -> coe Just v1
      _ -> coe MAlonzo.RTE.mazUnreachableError