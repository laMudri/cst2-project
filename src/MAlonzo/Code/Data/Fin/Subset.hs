{-# LANGUAGE EmptyDataDecls, ExistentialQuantification,
             ScopedTypeVariables, NoMonomorphismRestriction, Rank2Types #-}
module MAlonzo.Code.Data.Fin.Subset where

import MAlonzo.RTE (coe, erased, addInt, subInt, mulInt, quotInt,
                    remInt, geqInt, ltInt, eqInt, eqFloat)
import qualified Control.Exception
import qualified Data.Text
import qualified Data.Text.IO
import qualified MAlonzo.RTE
import qualified System.Environment
import qualified System.IO
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Builtin.Bool
import qualified MAlonzo.Code.Algebra
import qualified MAlonzo.Code.Algebra.Properties.BooleanAlgebra
import qualified MAlonzo.Code.Algebra.Properties.BooleanAlgebra.Expression
import qualified MAlonzo.Code.Data.Bool.Properties
import qualified MAlonzo.Code.Data.Fin
import qualified MAlonzo.Code.Data.List.Base
import qualified MAlonzo.Code.Data.Vec
import qualified MAlonzo.Code.Relation.Binary.Vec.Pointwise

name6 = "Data.Fin.Subset.Subset"
d6 = erased
name10 = "Data.Fin.Subset._\8712_"
d10 = erased
name18 = "Data.Fin.Subset._\8713_"
d18 = erased
name26 = "Data.Fin.Subset._\8838_"
d26 = erased
name36 = "Data.Fin.Subset._\8840_"
d36 = erased
name42 = "Data.Fin.Subset.booleanAlgebra"
d42 v0
  = coe
      MAlonzo.Code.Algebra.Properties.BooleanAlgebra.du318
      (coe
         MAlonzo.Code.Algebra.Properties.BooleanAlgebra.Expression.du296
         MAlonzo.Code.Data.Bool.Properties.d364 v0)
      MAlonzo.Code.Relation.Binary.Vec.Pointwise.du402
name50 = "Data.Fin.Subset.BA._\8743_"
d50 v0 = coe MAlonzo.Code.Algebra.d1486 (coe d42 v0)
name52 = "Data.Fin.Subset.BA._\8744_"
d52 v0 = coe MAlonzo.Code.Algebra.d1484 (coe d42 v0)
name82 = "Data.Fin.Subset.BA.\172_"
d82 v0 = coe MAlonzo.Code.Algebra.d1488 (coe d42 v0)
name104 = "Data.Fin.Subset.BA.\8868"
d104 v0 = coe MAlonzo.Code.Algebra.d1490 (coe d42 v0)
name106 = "Data.Fin.Subset.BA.\8869"
d106 v0 = coe MAlonzo.Code.Algebra.d1492 (coe d42 v0)
name110 = "Data.Fin.Subset.\8261_\8262"
d110 v0 v1 = du110 v1
du110 v0
  = case coe v0 of
      MAlonzo.Code.Data.Fin.C8 v1
        -> coe
             MAlonzo.Code.Data.Vec.C22 v1 True
             (coe MAlonzo.Code.Algebra.d1492 (coe d42 v1))
      MAlonzo.Code.Data.Fin.C14 v1 v2
        -> coe MAlonzo.Code.Data.Vec.C22 v1 False (coe du110 v2)
      _ -> coe MAlonzo.RTE.mazUnreachableError
name116 = "Data.Fin.Subset.\8899"
d116 v0
  = coe
      MAlonzo.Code.Data.List.Base.du144
      (coe MAlonzo.Code.Algebra.d1484 (coe d42 v0))
      (coe MAlonzo.Code.Algebra.d1492 (coe d42 v0))
name120 = "Data.Fin.Subset.\8898"
d120 v0
  = coe
      MAlonzo.Code.Data.List.Base.du144
      (coe MAlonzo.Code.Algebra.d1486 (coe d42 v0))
      (coe MAlonzo.Code.Algebra.d1490 (coe d42 v0))
name126 = "Data.Fin.Subset.Nonempty"
d126 = erased
name136 = "Data.Fin.Subset.Empty"
d136 = erased
name142 = "Data.Fin.Subset.Lift"
d142 = erased