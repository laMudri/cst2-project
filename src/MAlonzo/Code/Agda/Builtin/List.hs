{-# LANGUAGE EmptyDataDecls, ExistentialQuantification,
             ScopedTypeVariables, NoMonomorphismRestriction, Rank2Types #-}
module MAlonzo.Code.Agda.Builtin.List where

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

type AgdaList a b = [b]
name10 = "Agda.Builtin.List.List"
d10 a0 a1 = ()
check16 ::
  (forall xa. (forall xA. (MAlonzo.Code.Agda.Builtin.List.AgdaList xa xA)))
check16 = []
check22 ::
  (forall xa. (forall xA. (xA -> ((MAlonzo.Code.Agda.Builtin.List.AgdaList xa xA) -> (MAlonzo.Code.Agda.Builtin.List.AgdaList xa xA)))))
check22 = (:)
cover10 :: MAlonzo.Code.Agda.Builtin.List.AgdaList a1 a2 -> ()
cover10 x
  = case x of
      [] -> ()
      (:) _ _ -> ()
name16 = "Agda.Builtin.List.List.[]"
d16 ::
  (forall xa. (forall xA. (MAlonzo.Code.Agda.Builtin.List.AgdaList xa xA)))
d16 = []
name22 = "Agda.Builtin.List.List._\8759_"
d22 ::
  (forall xa. (forall xA. (xA -> ((MAlonzo.Code.Agda.Builtin.List.AgdaList xa xA) -> (MAlonzo.Code.Agda.Builtin.List.AgdaList xa xA)))))
d22 = (:)