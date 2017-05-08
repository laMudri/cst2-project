{-# LANGUAGE EmptyDataDecls, ExistentialQuantification,
             ScopedTypeVariables, NoMonomorphismRestriction, Rank2Types #-}
module MAlonzo.Code.Relation.Binary.Indexed.Core where

import MAlonzo.RTE (coe, erased, addInt, subInt, mulInt, quotInt,
                    remInt, geqInt, ltInt, eqInt, eqFloat)
import qualified Control.Exception
import qualified Data.Text
import qualified Data.Text.IO
import qualified MAlonzo.RTE
import qualified System.Environment
import qualified System.IO
import qualified Data.Text

name22 = "Relation.Binary.Indexed.Core.REL"
d22 = erased
name42 = "Relation.Binary.Indexed.Core.Rel"
d42 = erased
name58 = "Relation.Binary.Indexed.Core.Reflexive"
d58 = erased
name74 = "Relation.Binary.Indexed.Core.Symmetric"
d74 = erased
name92 = "Relation.Binary.Indexed.Core.Transitive"
d92 = erased
name114 = "Relation.Binary.Indexed.Core.IsEquivalence"
d114 a0 a1 a2 a3 a4 a5 = ()
data T114 a0 a1 a2 = C243 a0 a1 a2
name134 = "Relation.Binary.Indexed.Core.IsEquivalence.refl"
d134 v0
  = case coe v0 of
      C243 v1 v2 v3 -> coe v1
      _ -> coe MAlonzo.RTE.mazUnreachableError
name136 = "Relation.Binary.Indexed.Core.IsEquivalence.sym"
d136 v0
  = case coe v0 of
      C243 v1 v2 v3 -> coe v2
      _ -> coe MAlonzo.RTE.mazUnreachableError
name138 = "Relation.Binary.Indexed.Core.IsEquivalence.trans"
d138 v0
  = case coe v0 of
      C243 v1 v2 v3 -> coe v3
      _ -> coe MAlonzo.RTE.mazUnreachableError
name142 = "Relation.Binary.Indexed.Core.IsEquivalence.reflexive"
d142 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 = du142 v6 v7 v8
du142 v0 v1 v2 = coe d134 v0 v1 v2
name152 = "Relation.Binary.Indexed.Core.Setoid"
d152 a0 a1 a2 a3 = ()
newtype T152 a0 a1 a2 = C459 a0
name168 = "Relation.Binary.Indexed.Core.Setoid.Carrier"
d168 = erased
name170 = "Relation.Binary.Indexed.Core.Setoid._\8776_"
d170 = erased
name172 = "Relation.Binary.Indexed.Core.Setoid.isEquivalence"
d172 v0
  = case coe v0 of
      C459 v3 -> coe v3
      _ -> coe MAlonzo.RTE.mazUnreachableError
name176 = "Relation.Binary.Indexed.Core.Setoid._.refl"
d176 v0 = coe d134 (coe d172 v0)
name178 = "Relation.Binary.Indexed.Core.Setoid._.reflexive"
d178 v0 v1 v2 v3 v4 = du178 v4
du178 v0 v1 v2 v3 v4 = coe du142 (coe d172 v0) v1 v2
name180 = "Relation.Binary.Indexed.Core.Setoid._.sym"
d180 v0 = coe d136 (coe d172 v0)
name182 = "Relation.Binary.Indexed.Core.Setoid._.trans"
d182 v0 = coe d138 (coe d172 v0)