{-# LANGUAGE EmptyDataDecls, ExistentialQuantification,
             ScopedTypeVariables, NoMonomorphismRestriction, Rank2Types #-}
module MAlonzo.Code.Relation.Binary.PropositionalEquality.Core where

import MAlonzo.RTE (coe, erased, addInt, subInt, mulInt, quotInt,
                    remInt, geqInt, ltInt, eqInt, eqFloat)
import qualified Control.Exception
import qualified Data.Text
import qualified Data.Text.IO
import qualified MAlonzo.RTE
import qualified System.Environment
import qualified System.IO
import qualified Data.Text
import qualified MAlonzo.Code.Relation.Binary.Consequences.Core
import qualified MAlonzo.Code.Relation.Binary.Core

name12 = "Relation.Binary.PropositionalEquality.Core.sym"
d12 = erased
name18 = "Relation.Binary.PropositionalEquality.Core.trans"
d18 = erased
name28 = "Relation.Binary.PropositionalEquality.Core.subst"
d28 v0 v1 v2 v3 v4 v5 v6 v7 = du28 v7
du28 v0 = coe v0
name42 = "Relation.Binary.PropositionalEquality.Core.resp\8322"
d42 v0 v1 v2 v3 = du42
du42
  = coe
      MAlonzo.Code.Relation.Binary.Consequences.Core.du20 erased
      (\ v0 v1 v2 v3 v4 -> v4)
name50 = "Relation.Binary.PropositionalEquality.Core.isEquivalence"
d50 v0 v1 = du50
du50
  = coe MAlonzo.Code.Relation.Binary.Core.C889 erased erased erased