{-# LANGUAGE EmptyDataDecls, ExistentialQuantification,
             ScopedTypeVariables, NoMonomorphismRestriction, Rank2Types #-}
module MAlonzo.Code.Category.Monad.Identity where

import MAlonzo.RTE (coe, erased, addInt, subInt, mulInt, quotInt,
                    remInt, geqInt, ltInt, eqInt, eqFloat)
import qualified Control.Exception
import qualified Data.Text
import qualified Data.Text.IO
import qualified MAlonzo.RTE
import qualified System.Environment
import qualified System.IO
import qualified Data.Text
import qualified MAlonzo.Code.Category.Monad.Indexed

name8 = "Category.Monad.Identity.Identity"
d8 = erased
name14 = "Category.Monad.Identity.IdentityMonad"
d14 v0 = du14
du14
  = coe
      MAlonzo.Code.Category.Monad.Indexed.C1 (\ v0 v1 v2 -> v2)
      (\ v0 v1 v2 v3 v4 v5 v6 -> coe v6 v5)