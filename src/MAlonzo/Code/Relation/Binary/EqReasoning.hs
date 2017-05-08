{-# LANGUAGE EmptyDataDecls, ExistentialQuantification,
             ScopedTypeVariables, NoMonomorphismRestriction, Rank2Types #-}
module MAlonzo.Code.Relation.Binary.EqReasoning where

import MAlonzo.RTE (coe, erased, addInt, subInt, mulInt, quotInt,
                    remInt, geqInt, ltInt, eqInt, eqFloat)
import qualified Control.Exception
import qualified Data.Text
import qualified Data.Text.IO
import qualified MAlonzo.RTE
import qualified System.Environment
import qualified System.IO
import qualified Data.Text
import qualified MAlonzo.Code.Relation.Binary
import qualified MAlonzo.Code.Relation.Binary.Core
import qualified MAlonzo.Code.Relation.Binary.PreorderReasoning

name24 = "Relation.Binary.EqReasoning._.preorder"
d24 v0 v1 v2 = du24 v2
du24 v0 = coe MAlonzo.Code.Relation.Binary.du150 v0
name36 = "Relation.Binary.EqReasoning._._IsRelatedTo_"
d36 a0 a1 a2 a3 a4 = ()
name38 = "Relation.Binary.EqReasoning._._\8718"
d38 v0 v1 v2 v3 = du38 v2 v3
du38 v0 v1
  = coe
      MAlonzo.Code.Relation.Binary.PreorderReasoning.C56
      (coe
         MAlonzo.Code.Relation.Binary.d38
         (coe
            MAlonzo.Code.Relation.Binary.d92
            (coe MAlonzo.Code.Relation.Binary.du150 v0))
         v1 v1
         (coe
            MAlonzo.Code.Relation.Binary.Core.d516
            (coe
               MAlonzo.Code.Relation.Binary.d36
               (coe
                  MAlonzo.Code.Relation.Binary.d92
                  (coe MAlonzo.Code.Relation.Binary.du150 v0)))
            v1))
name40 = "Relation.Binary.EqReasoning._._\8764\10216_\10217_"
d40 v0 v1 v2 = du40 v2
du40 v0
  = coe
      MAlonzo.Code.Relation.Binary.PreorderReasoning.du72
      (coe MAlonzo.Code.Relation.Binary.du150 v0)
name42 = "Relation.Binary.EqReasoning._._\8776\10216_\10217_"
d42 v0 v1 v2 = du42 v2
du42 v0
  = coe
      MAlonzo.Code.Relation.Binary.PreorderReasoning.du84
      (coe MAlonzo.Code.Relation.Binary.du150 v0)
name44 = "Relation.Binary.EqReasoning._._\8776\10216\10217_"
d44 v0 v1 v2 = du44 v2
du44 v0 = coe v0
name46 = "Relation.Binary.EqReasoning._.begin_"
d46 v0 v1 = du46
du46 = MAlonzo.Code.Relation.Binary.PreorderReasoning.d62