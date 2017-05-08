{-# LANGUAGE EmptyDataDecls, ExistentialQuantification,
             ScopedTypeVariables, NoMonomorphismRestriction, Rank2Types #-}
module MAlonzo.Code.Data.Nat.Properties.Simple where

import MAlonzo.RTE (coe, erased, addInt, subInt, mulInt, quotInt,
                    remInt, geqInt, ltInt, eqInt, eqFloat)
import qualified Control.Exception
import qualified Data.Text
import qualified Data.Text.IO
import qualified MAlonzo.RTE
import qualified System.Environment
import qualified System.IO
import qualified Data.Text

name14 = "Data.Nat.Properties.Simple.+-assoc"
d14 = erased
name24 = "Data.Nat.Properties.Simple.+-right-identity"
d24 = erased
name32 = "Data.Nat.Properties.Simple.+-suc"
d32 = erased
name44 = "Data.Nat.Properties.Simple.+-comm"
d44 = erased
name56 = "Data.Nat.Properties.Simple.+-*-suc"
d56 = erased
name70 = "Data.Nat.Properties.Simple.*-right-zero"
d70 = erased
name78 = "Data.Nat.Properties.Simple.*-comm"
d78 = erased
name94 = "Data.Nat.Properties.Simple.distrib\691-*-+"
d94 = erased
name112 = "Data.Nat.Properties.Simple.*-assoc"
d112 = erased