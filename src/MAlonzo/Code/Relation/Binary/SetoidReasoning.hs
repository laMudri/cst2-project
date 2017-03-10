{-# LANGUAGE EmptyDataDecls, ExistentialQuantification,
             ScopedTypeVariables, NoMonomorphismRestriction, Rank2Types #-}
module MAlonzo.Code.Relation.Binary.SetoidReasoning where

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

name16 = "Relation.Binary.SetoidReasoning.begin\10216_\10217_"
d16 v0 = coe MAlonzo.Code.Relation.Binary.PreorderReasoning.d62 v0
name30 = "Relation.Binary.SetoidReasoning._\8718"
d30 v0 v1 v2 v3 = du30 v2 v3
du30 v0 v1
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
name46 = "Relation.Binary.SetoidReasoning._\8776\10216_\10217_"
d46 v0 v1 v2 = du46 v2
du46 v0
  = coe
      MAlonzo.Code.Relation.Binary.PreorderReasoning.du72
      (coe MAlonzo.Code.Relation.Binary.du150 v0)
name62 = "Relation.Binary.SetoidReasoning._\8801\10216_\10217_"
d62 v0 v1 v2 = du62 v2
du62 v0
  = coe
      MAlonzo.Code.Relation.Binary.PreorderReasoning.du84
      (coe MAlonzo.Code.Relation.Binary.du150 v0)