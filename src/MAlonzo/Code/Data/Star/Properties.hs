{-# LANGUAGE EmptyDataDecls, ExistentialQuantification,
             ScopedTypeVariables, NoMonomorphismRestriction, Rank2Types #-}
module MAlonzo.Code.Data.Star.Properties where

import MAlonzo.RTE (coe, erased, addInt, subInt, mulInt, quotInt,
                    remInt, geqInt, ltInt, eqInt, eqFloat)
import qualified Control.Exception
import qualified Data.Text
import qualified Data.Text.IO
import qualified MAlonzo.RTE
import qualified System.Environment
import qualified System.IO
import qualified Data.Text
import qualified MAlonzo.Code.Data.Star
import qualified MAlonzo.Code.Relation.Binary
import qualified MAlonzo.Code.Relation.Binary.Core
import qualified MAlonzo.Code.Relation.Binary.PreorderReasoning
import qualified MAlonzo.Code.Relation.Binary.PropositionalEquality.Core

name28 = "Data.Star.Properties.\9669\9669-assoc"
d28 = erased
name56 = "Data.Star.Properties.gmap-id"
d56 = erased
name100 = "Data.Star.Properties.gmap-\8728"
d100 = erased
name152 = "Data.Star.Properties.gmap-\9669\9669"
d152 = erased
name204 = "Data.Star.Properties.gmap-cong"
d204 = erased
name268 = "Data.Star.Properties.fold-\9669\9669"
d268 = erased
name310 = "Data.Star.Properties.preorder"
d310 v0 v1 v2 v3 = du310
du310
  = coe
      MAlonzo.Code.Relation.Binary.C125
      (coe
         MAlonzo.Code.Relation.Binary.C17
         MAlonzo.Code.Relation.Binary.PropositionalEquality.Core.du50
         (\ v0 v1 v2 -> coe du318 v0)
         (\ v0 v1 v2 v3 v4 -> coe MAlonzo.Code.Data.Star.du44 v0 v2 v3 v4))
name318 = "Data.Star.Properties._.reflexive"
d318 v0 v1 v2 v3 v4 v5 v6 = du318 v4
du318 v0 = coe MAlonzo.Code.Data.Star.C22 v0
name332 = "Data.Star.Properties.StarReasoning._._IsRelatedTo_"
d332 a0 a1 a2 a3 a4 a5 = ()
name334 = "Data.Star.Properties.StarReasoning._._\8718"
d334 v0 v1 v2 v3 v4 = du334 v4
du334 v0
  = coe
      MAlonzo.Code.Relation.Binary.PreorderReasoning.C56
      (coe
         MAlonzo.Code.Relation.Binary.d38
         (coe MAlonzo.Code.Relation.Binary.d92 du310) v0 v0
         (coe
            MAlonzo.Code.Relation.Binary.Core.d516
            (coe
               MAlonzo.Code.Relation.Binary.d36
               (coe MAlonzo.Code.Relation.Binary.d92 du310))
            v0))
name336
  = "Data.Star.Properties.StarReasoning._._\8776\10216\10217_"
d336 v0 v1 v2 = du336 v2
du336 v0 = coe v0
name338
  = "Data.Star.Properties.StarReasoning._._\8776\10216_\10217_"
d338 v0 v1 v2 v3 = du338
du338
  = coe MAlonzo.Code.Relation.Binary.PreorderReasoning.du84 du310
name340
  = "Data.Star.Properties.StarReasoning._._\8764\10216_\10217_"
d340 v0 v1 v2 v3 = du340
du340
  = coe MAlonzo.Code.Relation.Binary.PreorderReasoning.du72 du310
name342 = "Data.Star.Properties.StarReasoning._.begin_"
d342 v0 v1 = du342
du342 = MAlonzo.Code.Relation.Binary.PreorderReasoning.d62
name356
  = "Data.Star.Properties.StarReasoning._\10230\10216_\10217_"
d356 v0 v1 v2 v3 v4 v5 v6 v7 v8 = du356 v4 v5 v6 v7 v8
du356 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Relation.Binary.PreorderReasoning.du72 du310 v0 v1 v2
      (coe
         MAlonzo.Code.Data.Star.C34 v0 v1 v1 v3
         (coe MAlonzo.Code.Data.Star.C22 v1))
      v4