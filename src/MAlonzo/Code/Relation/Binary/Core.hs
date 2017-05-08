{-# LANGUAGE EmptyDataDecls, ExistentialQuantification,
             ScopedTypeVariables, NoMonomorphismRestriction, Rank2Types #-}
module MAlonzo.Code.Relation.Binary.Core where

import MAlonzo.RTE (coe, erased, addInt, subInt, mulInt, quotInt,
                    remInt, geqInt, ltInt, eqInt, eqFloat)
import qualified Control.Exception
import qualified Data.Text
import qualified Data.Text.IO
import qualified MAlonzo.RTE
import qualified System.Environment
import qualified System.IO
import qualified Data.Text

name12 = "Relation.Binary.Core.REL"
d12 = erased
name24 = "Relation.Binary.Core.Rel"
d24 = erased
name42 = "Relation.Binary.Core._\8658_"
d42 = erased
name64 = "Relation.Binary.Core._=[_]\8658_"
d64 = erased
name84 = "Relation.Binary.Core._Preserves_\10230_"
d84 = erased
name110 = "Relation.Binary.Core._Preserves\8322_\10230_\10230_"
d110 = erased
name134 = "Relation.Binary.Core.Reflexive"
d134 = erased
name152 = "Relation.Binary.Core.Irreflexive"
d152 = erased
name174 = "Relation.Binary.Core.Sym"
d174 = erased
name186 = "Relation.Binary.Core.Symmetric"
d186 = erased
name208 = "Relation.Binary.Core.Trans"
d208 = erased
name240 = "Relation.Binary.Core.TransFlip"
d240 = erased
name260 = "Relation.Binary.Core.Transitive"
d260 = erased
name272 = "Relation.Binary.Core.Antisymmetric"
d272 = erased
name288 = "Relation.Binary.Core.Asymmetric"
d288 = erased
name304 = "Relation.Binary.Core._Respects_"
d304 = erased
name322 = "Relation.Binary.Core._Respects\8322_"
d322 = erased
name340 = "Relation.Binary.Core.Substitutive"
d340 = erased
name360 = "Relation.Binary.Core.Decidable"
d360 = erased
name380 = "Relation.Binary.Core.Tri"
d380 a0 a1 a2 a3 a4 a5 = ()
data T380 a0 = C400 a0 | C408 a0 | C416 a0
name426 = "Relation.Binary.Core.Trichotomous"
d426 = erased
name436 = "Relation.Binary.Core._._>_"
d436 = erased
name454 = "Relation.Binary.Core.NonEmpty"
d454 a0 a1 a2 a3 a4 a5 = ()
data T454 a0 a1 a2 = C480 a0 a1 a2
name474 = "Relation.Binary.Core.NonEmpty.x"
d474 v0
  = case coe v0 of
      C480 v1 v2 v3 -> coe v1
      _ -> coe MAlonzo.RTE.mazUnreachableError
name476 = "Relation.Binary.Core.NonEmpty.y"
d476 v0
  = case coe v0 of
      C480 v1 v2 v3 -> coe v2
      _ -> coe MAlonzo.RTE.mazUnreachableError
name478 = "Relation.Binary.Core.NonEmpty.proof"
d478 v0
  = case coe v0 of
      C480 v1 v2 v3 -> coe v3
      _ -> coe MAlonzo.RTE.mazUnreachableError
name486 = "Relation.Binary.Core._\8802_"
d486 = erased
name500 = "Relation.Binary.Core.IsEquivalence"
d500 a0 a1 a2 a3 = ()
data T500 a0 a1 a2 = C889 a0 a1 a2
name516 = "Relation.Binary.Core.IsEquivalence.refl"
d516 v0
  = case coe v0 of
      C889 v1 v2 v3 -> coe v1
      _ -> coe MAlonzo.RTE.mazUnreachableError
name518 = "Relation.Binary.Core.IsEquivalence.sym"
d518 v0
  = case coe v0 of
      C889 v1 v2 v3 -> coe v2
      _ -> coe MAlonzo.RTE.mazUnreachableError
name520 = "Relation.Binary.Core.IsEquivalence.trans"
d520 v0
  = case coe v0 of
      C889 v1 v2 v3 -> coe v3
      _ -> coe MAlonzo.RTE.mazUnreachableError
name522 = "Relation.Binary.Core.IsEquivalence.reflexive"
d522 v0 v1 v2 v3 v4 v5 v6 v7 = du522 v4 v5
du522 v0 v1 = coe d516 v0 v1