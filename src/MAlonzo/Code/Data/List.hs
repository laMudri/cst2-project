{-# LANGUAGE EmptyDataDecls, ExistentialQuantification,
             ScopedTypeVariables, NoMonomorphismRestriction, Rank2Types #-}
module MAlonzo.Code.Data.List where

import MAlonzo.RTE (coe, erased, addInt, subInt, mulInt, quotInt,
                    remInt, geqInt, ltInt, eqInt, eqFloat)
import qualified Control.Exception
import qualified Data.Text
import qualified Data.Text.IO
import qualified MAlonzo.RTE
import qualified System.Environment
import qualified System.IO
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Builtin.List
import qualified MAlonzo.Code.Algebra
import qualified MAlonzo.Code.Algebra.Structures
import qualified MAlonzo.Code.Category.Applicative.Indexed
import qualified MAlonzo.Code.Category.Functor
import qualified MAlonzo.Code.Category.Monad.Indexed
import qualified MAlonzo.Code.Data.List.Base
import qualified MAlonzo.Code.Data.Product
import qualified MAlonzo.Code.Function
import qualified MAlonzo.Code.Relation.Binary.PropositionalEquality.Core

name6 = "Data.List.monoid"
d6 v0 v1 = du6
du6
  = coe
      MAlonzo.Code.Algebra.C49 MAlonzo.Code.Data.List.Base.du18 []
      (coe
         MAlonzo.Code.Algebra.Structures.C149
         (coe
            MAlonzo.Code.Algebra.Structures.C75
            MAlonzo.Code.Relation.Binary.PropositionalEquality.Core.du50 erased
            erased)
         (coe MAlonzo.Code.Data.Product.C30 erased erased))
name68 = "Data.List._.identity"
d68 = erased
name74 = "Data.List._.assoc"
d74 = erased
name92 = "Data.List.monad"
d92 v0 = du92
du92
  = coe
      MAlonzo.Code.Category.Monad.Indexed.C1
      (\ v0 v1 v2 -> coe (:) v2 [])
      (\ v0 v1 v2 v3 v4 v5 v6 ->
         coe
           MAlonzo.Code.Data.List.Base.du184
           (coe MAlonzo.Code.Data.List.Base.du56 v6 v5))
name102 = "Data.List.monadZero"
d102 v0 = du102
du102
  = coe
      MAlonzo.Code.Category.Monad.Indexed.C377 du92 (\ v0 v1 v2 -> [])
name106 = "Data.List.monadPlus"
d106 v0 = du106
du106
  = coe
      MAlonzo.Code.Category.Monad.Indexed.C391 du102
      (\ v0 v1 v2 v3 v4 -> coe MAlonzo.Code.Data.List.Base.du18 v3 v4)
name120 = "Data.List.Monadic._._<$>_"
d120 v0 v1 v2 = du120 v2
du120 v0
  = let v1 = coe MAlonzo.Code.Category.Monad.Indexed.du146 v0 in
    \ v2 v3 ->
      coe
        MAlonzo.Code.Category.Functor.d24
        (coe MAlonzo.Code.Category.Applicative.Indexed.du74 v1 v2 v3)
name136 = "Data.List.Monadic._._\8859_"
d136 v0 v1 v2 = du136 v2
du136 v0
  = coe
      MAlonzo.Code.Category.Applicative.Indexed.d68
      (coe MAlonzo.Code.Category.Monad.Indexed.du146 v0)
name154 = "Data.List.Monadic.sequence"
d154 v0 v1 v2 v3 v4 = du154 v2 v4
du154 v0 v1
  = case coe v1 of
      []
        -> coe MAlonzo.Code.Category.Monad.Indexed.d46 v0 erased erased v1
      (:) v2 v3
        -> coe
             MAlonzo.Code.Category.Applicative.Indexed.d68
             (coe MAlonzo.Code.Category.Monad.Indexed.du146 v0) erased erased
             erased erased erased
             (let v4 = coe MAlonzo.Code.Category.Monad.Indexed.du146 v0 in
              MAlonzo.Code.Category.Functor.d24
                (MAlonzo.Code.Category.Applicative.Indexed.du74 v4 erased erased)
                erased erased (:) v2)
             (coe du154 v0 v3)
      _ -> coe MAlonzo.RTE.mazUnreachableError
name166 = "Data.List.Monadic.mapM"
d166 v0 v1 v2 v3 v4 v5 v6 = du166 v2 v6
du166 v0 v1
  = coe
      MAlonzo.Code.Function.du38 (\ v2 -> coe du154 v0)
      (coe MAlonzo.Code.Data.List.Base.du56 v1)