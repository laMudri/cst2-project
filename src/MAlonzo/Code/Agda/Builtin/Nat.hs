{-# LANGUAGE EmptyDataDecls, ExistentialQuantification,
             ScopedTypeVariables, NoMonomorphismRestriction, Rank2Types #-}
module MAlonzo.Code.Agda.Builtin.Nat where

import MAlonzo.RTE (coe, erased, addInt, subInt, mulInt, quotInt,
                    remInt, geqInt, ltInt, eqInt, eqFloat)
import qualified Control.Exception
import qualified Data.Text
import qualified Data.Text.IO
import qualified MAlonzo.RTE
import qualified System.Environment
import qualified System.IO
import qualified Data.Text

name6 = "Agda.Builtin.Nat.Nat"
d6 = ()
name14 = "Agda.Builtin.Nat._+_"
d14 = ((+) :: Integer -> Integer -> Integer)
name22 = "Agda.Builtin.Nat._-_"
d22 = ((\ x y -> max 0 (x - y)) :: Integer -> Integer -> Integer)
name32 = "Agda.Builtin.Nat._*_"
d32 = ((*) :: Integer -> Integer -> Integer)
name40 = "Agda.Builtin.Nat._==_"
d40 = ((==) :: Integer -> Integer -> Bool)
name46 = "Agda.Builtin.Nat._<_"
d46 = ((<) :: Integer -> Integer -> Bool)
name52 = "Agda.Builtin.Nat.div-helper"
d52
  = ((\ k m n j -> k + div (max 0 $ n + m - j) (m + 1)) :: Integer -> Integer -> Integer -> Integer -> Integer)
name74 = "Agda.Builtin.Nat.mod-helper"
d74
  = ((\ k m n j -> if n > j then mod (n - j - 1) (m + 1) else (k + n)) :: Integer -> Integer -> Integer -> Integer -> Integer)