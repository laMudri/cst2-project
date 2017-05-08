{-# LANGUAGE EmptyDataDecls, ExistentialQuantification,
             ScopedTypeVariables, NoMonomorphismRestriction, Rank2Types #-}
module MAlonzo.Code.Relation.Binary.PartialOrderReasoning where

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

name52 = "Relation.Binary.PartialOrderReasoning._._IsRelatedTo_"
d52 a0 a1 a2 a3 a4 a5 = ()
name54 = "Relation.Binary.PartialOrderReasoning._._\8718"
d54 v0 v1
  = coe
      MAlonzo.Code.Relation.Binary.PreorderReasoning.C56
      (coe
         MAlonzo.Code.Relation.Binary.d38
         (coe
            MAlonzo.Code.Relation.Binary.d268
            (coe MAlonzo.Code.Relation.Binary.d322 v0))
         v1 v1
         (coe
            MAlonzo.Code.Relation.Binary.Core.d516
            (coe
               MAlonzo.Code.Relation.Binary.d36
               (coe
                  MAlonzo.Code.Relation.Binary.d268
                  (coe MAlonzo.Code.Relation.Binary.d322 v0)))
            v1))
name56
  = "Relation.Binary.PartialOrderReasoning._._\8776\10216_\10217_"
d56 v0 v1 v2 v3 = du56 v3
du56 v0
  = coe
      MAlonzo.Code.Relation.Binary.PreorderReasoning.du84
      (coe
         MAlonzo.Code.Relation.Binary.C125
         (coe
            MAlonzo.Code.Relation.Binary.d268
            (coe MAlonzo.Code.Relation.Binary.d322 v0)))
name58
  = "Relation.Binary.PartialOrderReasoning._._\8776\10216\10217_"
d58 v0 v1 v2 = du58 v2
du58 v0 = coe v0
name60
  = "Relation.Binary.PartialOrderReasoning._._\8764\10216_\10217_"
d60 v0 v1 v2 v3 = du60 v3
du60 v0
  = coe
      MAlonzo.Code.Relation.Binary.PreorderReasoning.du72
      (coe
         MAlonzo.Code.Relation.Binary.C125
         (coe
            MAlonzo.Code.Relation.Binary.d268
            (coe MAlonzo.Code.Relation.Binary.d322 v0)))
name62 = "Relation.Binary.PartialOrderReasoning._.begin_"
d62 v0 v1 = du62
du62 = MAlonzo.Code.Relation.Binary.PreorderReasoning.d62