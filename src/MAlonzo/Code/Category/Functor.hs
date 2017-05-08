{-# LANGUAGE EmptyDataDecls, ExistentialQuantification,
             ScopedTypeVariables, NoMonomorphismRestriction, Rank2Types #-}
module MAlonzo.Code.Category.Functor where

import MAlonzo.RTE (coe, erased, addInt, subInt, mulInt, quotInt,
                    remInt, geqInt, ltInt, eqInt, eqFloat)
import qualified Control.Exception
import qualified Data.Text
import qualified Data.Text.IO
import qualified MAlonzo.RTE
import qualified System.Environment
import qualified System.IO
import qualified Data.Text

name8 = "Category.Functor.RawFunctor"
d8 a0 a1 = ()
newtype T8 a0 = C1 a0
name24 = "Category.Functor.RawFunctor._<$>_"
d24 v0
  = case coe v0 of
      C1 v1 -> coe v1
      _ -> coe MAlonzo.RTE.mazUnreachableError
name30 = "Category.Functor.RawFunctor._<$_"
d30 v0 v1 v2 v3 v4 v5 v6 = du30 v2 v5 v6
du30 v0 v1 v2 = coe d24 v0 erased erased (\ v3 -> v1) v2