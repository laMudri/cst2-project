{-# LANGUAGE EmptyDataDecls, ExistentialQuantification,
             ScopedTypeVariables, NoMonomorphismRestriction, Rank2Types #-}
module MAlonzo.Code.Function.Equivalence where

import MAlonzo.RTE (coe, erased, addInt, subInt, mulInt, quotInt,
                    remInt, geqInt, ltInt, eqInt, eqFloat)
import qualified Control.Exception
import qualified Data.Text
import qualified Data.Text.IO
import qualified MAlonzo.RTE
import qualified System.Environment
import qualified System.IO
import qualified Data.Text
import qualified MAlonzo.Code.Function
import qualified MAlonzo.Code.Function.Equality
import qualified MAlonzo.Code.Relation.Binary
import qualified MAlonzo.Code.Relation.Binary.Core
import qualified MAlonzo.Code.Relation.Binary.PropositionalEquality

name16 = "Function.Equivalence.Equivalence"
d16 a0 a1 a2 a3 a4 a5 = ()
data T16 a0 a1 = C1 a0 a1
name34 = "Function.Equivalence.Equivalence.to"
d34 v0
  = case coe v0 of
      C1 v1 v2 -> coe v1
      _ -> coe MAlonzo.RTE.mazUnreachableError
name36 = "Function.Equivalence.Equivalence.from"
d36 v0
  = case coe v0 of
      C1 v1 v2 -> coe v2
      _ -> coe MAlonzo.RTE.mazUnreachableError
name42 = "Function.Equivalence._\8660_"
d42 = erased
name56 = "Function.Equivalence.equivalence"
d56 v0 v1 v2 v3 v4 v5 = du56 v4 v5
du56 v0 v1
  = coe
      C1
      (coe
         MAlonzo.Code.Relation.Binary.PropositionalEquality.du210
         (coe
            MAlonzo.Code.Relation.Binary.C143
            (coe MAlonzo.Code.Relation.Binary.Core.C889 erased erased erased))
         v0)
      (coe
         MAlonzo.Code.Relation.Binary.PropositionalEquality.du210
         (coe
            MAlonzo.Code.Relation.Binary.C143
            (coe MAlonzo.Code.Relation.Binary.Core.C889 erased erased erased))
         v1)
name86 = "Function.Equivalence.map"
d86 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14
  = du86 v12 v13 v14
du86 v0 v1 v2 = coe C1 (coe v0 (coe d34 v2)) (coe v1 (coe d36 v2))
name140 = "Function.Equivalence.zip"
d140 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17
     v18 v19 v20 v21
  = du140 v18 v19 v20 v21
du140 v0 v1 v2 v3
  = coe
      C1 (coe v0 (coe d34 v2) (coe d34 v3))
      (coe v1 (coe d36 v2) (coe d36 v3))
name158 = "Function.Equivalence.id"
d158 v0 v1 v2 = du158
du158
  = coe
      C1 MAlonzo.Code.Function.Equality.du62
      MAlonzo.Code.Function.Equality.du62
name174 = "Function.Equivalence._\8728_"
d174 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 = du174 v9 v10
du174 v0 v1
  = coe
      C1
      (coe MAlonzo.Code.Function.Equality.du82 (coe d34 v0) (coe d34 v1))
      (coe MAlonzo.Code.Function.Equality.du82 (coe d36 v1) (coe d36 v0))
name192 = "Function.Equivalence.sym"
d192 v0 v1 v2 v3 v4 v5 v6 = du192 v6
du192 v0 = coe C1 (coe d36 v0) (coe d34 v0)
name210 = "Function.Equivalence.setoid"
d210 v0 v1 = du210
du210
  = coe
      MAlonzo.Code.Relation.Binary.C143
      (coe
         MAlonzo.Code.Relation.Binary.Core.C889 (\ v0 -> du158)
         (\ v0 v1 v2 -> coe du192 v2)
         (\ v0 v1 v2 -> coe MAlonzo.Code.Function.du138 du174))
name218 = "Function.Equivalence.\8660-setoid"
d218 v0 = du218
du218
  = coe
      MAlonzo.Code.Relation.Binary.C143
      (coe
         MAlonzo.Code.Relation.Binary.Core.C889 (\ v0 -> du158)
         (\ v0 v1 -> du192)
         (\ v0 v1 v2 -> coe MAlonzo.Code.Function.du138 du174))