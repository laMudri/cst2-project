{-# LANGUAGE EmptyDataDecls, ExistentialQuantification,
             ScopedTypeVariables, NoMonomorphismRestriction, Rank2Types #-}
module MAlonzo.Code.Relation.Binary.Indexed where

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
import qualified MAlonzo.Code.Relation.Binary.Indexed.Core

name14 = "Relation.Binary.Indexed._at_"
d14 v0 v1 v2 v3 v4 v5 = du14 v4 v5
du14 v0 v1
  = coe
      MAlonzo.Code.Relation.Binary.C143
      (coe
         MAlonzo.Code.Relation.Binary.Core.C889
         (coe
            MAlonzo.Code.Relation.Binary.Indexed.Core.d134
            (coe MAlonzo.Code.Relation.Binary.Indexed.Core.d172 v0) v1)
         (coe
            MAlonzo.Code.Relation.Binary.Indexed.Core.d136
            (coe MAlonzo.Code.Relation.Binary.Indexed.Core.d172 v0) v1 v1)
         (coe
            MAlonzo.Code.Relation.Binary.Indexed.Core.d138
            (coe MAlonzo.Code.Relation.Binary.Indexed.Core.d172 v0) v1 v1 v1))
name26 = "Relation.Binary.Indexed._.S._\8776_"
d26 = erased
name28 = "Relation.Binary.Indexed._.S.Carrier"
d28 = erased
name32 = "Relation.Binary.Indexed._.S.refl"
d32 v0 v1 v2 v3 v4 v5 = du32 v4
du32 v0
  = coe
      MAlonzo.Code.Relation.Binary.Indexed.Core.d134
      (coe MAlonzo.Code.Relation.Binary.Indexed.Core.d172 v0)
name36 = "Relation.Binary.Indexed._.S.sym"
d36 v0 v1 v2 v3 v4 v5 = du36 v4
du36 v0
  = coe
      MAlonzo.Code.Relation.Binary.Indexed.Core.d136
      (coe MAlonzo.Code.Relation.Binary.Indexed.Core.d172 v0)
name38 = "Relation.Binary.Indexed._.S.trans"
d38 v0 v1 v2 v3 v4 v5 = du38 v4
du38 v0
  = coe
      MAlonzo.Code.Relation.Binary.Indexed.Core.d138
      (coe MAlonzo.Code.Relation.Binary.Indexed.Core.d172 v0)
name54 = "Relation.Binary.Indexed._=[_]\8658_"
d54 = erased