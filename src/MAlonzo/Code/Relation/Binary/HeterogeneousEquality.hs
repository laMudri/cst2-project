{-# LANGUAGE EmptyDataDecls, ExistentialQuantification,
             ScopedTypeVariables, NoMonomorphismRestriction, Rank2Types #-}
module MAlonzo.Code.Relation.Binary.HeterogeneousEquality where

import MAlonzo.RTE (coe, erased, addInt, subInt, mulInt, quotInt,
                    remInt, geqInt, ltInt, eqInt, eqFloat)
import qualified Control.Exception
import qualified Data.Text
import qualified Data.Text.IO
import qualified MAlonzo.RTE
import qualified System.Environment
import qualified System.IO
import qualified Data.Text
import qualified MAlonzo.Code.Function.Equality
import qualified MAlonzo.Code.Function.Inverse
import qualified MAlonzo.Code.Relation.Binary
import qualified MAlonzo.Code.Relation.Binary.Consequences.Core
import qualified MAlonzo.Code.Relation.Binary.Core
import qualified MAlonzo.Code.Relation.Binary.Indexed.Core
import qualified MAlonzo.Code.Relation.Binary.PropositionalEquality.Core

name12 = "Relation.Binary.HeterogeneousEquality._\8775_"
d12 = erased
name26 = "Relation.Binary.HeterogeneousEquality.\8801-to-\8773"
d26 = erased
name36 = "Relation.Binary.HeterogeneousEquality.reflexive"
d36 = erased
name48 = "Relation.Binary.HeterogeneousEquality.sym"
d48 = erased
name64 = "Relation.Binary.HeterogeneousEquality.trans"
d64 = erased
name78 = "Relation.Binary.HeterogeneousEquality.subst"
d78 v0 v1 v2 v3 v4 v5 v6 v7 = du78 v7
du78 v0 = coe v0
name104 = "Relation.Binary.HeterogeneousEquality.subst\8322"
d104 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 = du104 v12
du104 v0 = coe v0
name126 = "Relation.Binary.HeterogeneousEquality.subst-removable"
d126 = erased
name148
  = "Relation.Binary.HeterogeneousEquality.\8801-subst-removable"
d148 = erased
name170 = "Relation.Binary.HeterogeneousEquality.cong"
d170 = erased
name190 = "Relation.Binary.HeterogeneousEquality.cong-app"
d190 = erased
name222 = "Relation.Binary.HeterogeneousEquality.cong\8322"
d222 = erased
name238 = "Relation.Binary.HeterogeneousEquality.resp\8322"
d238 v0 v1 v2 v3 = du238
du238
  = coe
      MAlonzo.Code.Relation.Binary.Consequences.Core.du20 erased
      (\ v0 v1 v2 v3 v4 -> v4)
name256 = "Relation.Binary.HeterogeneousEquality.proof-irrelevance"
d256 = erased
name266 = "Relation.Binary.HeterogeneousEquality.isEquivalence"
d266 v0 v1 = du266
du266
  = coe MAlonzo.Code.Relation.Binary.Core.C889 erased erased erased
name270 = "Relation.Binary.HeterogeneousEquality.setoid"
d270 v0 v1 = du270
du270 = coe MAlonzo.Code.Relation.Binary.C143 du266
name284 = "Relation.Binary.HeterogeneousEquality.indexedSetoid"
d284 v0 v1 v2 v3 = du284
du284
  = coe
      MAlonzo.Code.Relation.Binary.Indexed.Core.C459
      (coe
         MAlonzo.Code.Relation.Binary.Indexed.Core.C243 erased erased
         erased)
name302 = "Relation.Binary.HeterogeneousEquality.\8801\8596\8773"
d302 v0 v1 v2 v3 v4 = du302
du302
  = coe
      MAlonzo.Code.Function.Inverse.C173
      (coe MAlonzo.Code.Function.Equality.C15 (\ v0 -> v0) erased)
      (coe MAlonzo.Code.Function.Equality.C15 (\ v0 -> v0) erased)
      (coe MAlonzo.Code.Function.Inverse.C109 erased erased)
name318 = "Relation.Binary.HeterogeneousEquality.decSetoid"
d318 v0 v1 v2 = du318 v2
du318 v0
  = coe
      MAlonzo.Code.Relation.Binary.C287
      (coe MAlonzo.Code.Relation.Binary.C273 du266 v0)
name338 = "Relation.Binary.HeterogeneousEquality.isPreorder"
d338 v0 v1 = du338
du338
  = coe
      MAlonzo.Code.Relation.Binary.C17 du266 (\ v0 v1 v2 -> v2) erased
name348 = "Relation.Binary.HeterogeneousEquality.isPreorder-\8801"
d348 v0 v1 = du348
du348
  = coe
      MAlonzo.Code.Relation.Binary.C17
      MAlonzo.Code.Relation.Binary.PropositionalEquality.Core.du50 erased
      erased
name352 = "Relation.Binary.HeterogeneousEquality.preorder"
d352 v0 v1 = du352
du352 = coe MAlonzo.Code.Relation.Binary.C125 du348
name372
  = "Relation.Binary.HeterogeneousEquality.\8773-Reasoning._IsRelatedTo_"
d372 a0 a1 a2 a3 a4 = ()
data T372 = C386
name398
  = "Relation.Binary.HeterogeneousEquality.\8773-Reasoning.begin_"
d398 = erased
name416
  = "Relation.Binary.HeterogeneousEquality.\8773-Reasoning._\8773\10216_\10217_"
d416 = erased
name434
  = "Relation.Binary.HeterogeneousEquality.\8773-Reasoning._\8801\10216_\10217_"
d434 = erased
name450
  = "Relation.Binary.HeterogeneousEquality.\8773-Reasoning._\8801\10216\10217_"
d450 = erased
name460
  = "Relation.Binary.HeterogeneousEquality.\8773-Reasoning._\8718"
d460 = erased
name466 = "Relation.Binary.HeterogeneousEquality.Extensionality"
d466 = erased
name494
  = "Relation.Binary.HeterogeneousEquality.\8801-ext-to-\8773-ext"
d494 = erased
name520 = "Relation.Binary.HeterogeneousEquality._.ext\8242"
d520 = erased
name532
  = "Relation.Binary.HeterogeneousEquality.Deprecated-inspect-on-steroids.Reveal_is_"
d532 a0 a1 a2 a3 = ()
data T532 = C544
name560
  = "Relation.Binary.HeterogeneousEquality.Deprecated-inspect-on-steroids.inspect"
d560 = erased
name582 = "Relation.Binary.HeterogeneousEquality.Reveal_\183_is_"
d582 a0 a1 a2 a3 a4 a5 a6 = ()
data T582 a0 = C602
name600
  = "Relation.Binary.HeterogeneousEquality.Reveal_\183_is_.eq"
d600 = erased
name618 = "Relation.Binary.HeterogeneousEquality.inspect"
d618 = erased