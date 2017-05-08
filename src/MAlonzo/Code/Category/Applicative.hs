{-# LANGUAGE EmptyDataDecls, ExistentialQuantification,
             ScopedTypeVariables, NoMonomorphismRestriction, Rank2Types #-}
module MAlonzo.Code.Category.Applicative where

import MAlonzo.RTE (coe, erased, addInt, subInt, mulInt, quotInt,
                    remInt, geqInt, ltInt, eqInt, eqFloat)
import qualified Control.Exception
import qualified Data.Text
import qualified Data.Text.IO
import qualified MAlonzo.RTE
import qualified System.Environment
import qualified System.IO
import qualified Data.Text
import qualified MAlonzo.Code.Category.Applicative.Indexed
import qualified MAlonzo.Code.Category.Functor

name6 = "Category.Applicative.RawApplicative"
d6 = erased
name24 = "Category.Applicative.RawApplicative._._<$_"
d24 v0 v1 v2 v3 v4 = du24 v2 v3 v4
du24 v0 v1 v2 v3 v4 v5 v6
  = coe
      MAlonzo.Code.Category.Functor.du30
      (coe MAlonzo.Code.Category.Applicative.Indexed.du74 v0 v1 v2) v5 v6
name26 = "Category.Applicative.RawApplicative._._<$>_"
d26 v0 v1 v2 v3 v4 = du26 v2 v3 v4
du26 v0 v1 v2
  = coe
      MAlonzo.Code.Category.Functor.d24
      (coe MAlonzo.Code.Category.Applicative.Indexed.du74 v0 v1 v2)
name28 = "Category.Applicative.RawApplicative._._<\8859_"
d28 v0 v1 v2 = du28 v2
du28 v0 v1 v2 v3 v4 v5 v6 v7
  = coe
      MAlonzo.Code.Category.Applicative.Indexed.du100 v0 v1 v2 v3 v6 v7
name30 = "Category.Applicative.RawApplicative._._\8855_"
d30 v0 v1 v2 = du30 v2
du30 v0 v1 v2 v3 v4 v5 v6 v7
  = coe
      MAlonzo.Code.Category.Applicative.Indexed.du132 v0 v1 v2 v3 v6 v7
name32 = "Category.Applicative.RawApplicative._._\8859_"
d32 v0 = coe MAlonzo.Code.Category.Applicative.Indexed.d68 v0
name34 = "Category.Applicative.RawApplicative._._\8859>_"
d34 v0 v1 v2 = du34 v2
du34 v0 v1 v2 v3 v4 v5 v6 v7
  = coe
      MAlonzo.Code.Category.Applicative.Indexed.du116 v0 v1 v2 v3 v6 v7
name36 = "Category.Applicative.RawApplicative._.pure"
d36 v0 = coe MAlonzo.Code.Category.Applicative.Indexed.d56 v0
name38 = "Category.Applicative.RawApplicative._.rawFunctor"
d38 v0 v1 v2 = du38 v2
du38 v0 = coe MAlonzo.Code.Category.Applicative.Indexed.du74 v0
name40 = "Category.Applicative.RawApplicative._.zipWith"
d40 v0 v1 v2 = du40 v2
du40 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9
  = coe
      MAlonzo.Code.Category.Applicative.Indexed.du150 v0 v1 v2 v3 v7 v8
      v9