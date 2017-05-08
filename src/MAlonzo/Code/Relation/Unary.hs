{-# LANGUAGE EmptyDataDecls, ExistentialQuantification,
             ScopedTypeVariables, NoMonomorphismRestriction, Rank2Types #-}
module MAlonzo.Code.Relation.Unary where

import MAlonzo.RTE (coe, erased, addInt, subInt, mulInt, quotInt,
                    remInt, geqInt, ltInt, eqInt, eqFloat)
import qualified Control.Exception
import qualified Data.Text
import qualified Data.Text.IO
import qualified MAlonzo.RTE
import qualified System.Environment
import qualified System.IO
import qualified Data.Text
import qualified MAlonzo.Code.Data.Product

name8 = "Relation.Unary.Pred"
d8 = erased
name24 = "Relation.Unary._._\8712_"
d24 = erased
name32 = "Relation.Unary._._\8713_"
d32 = erased
name38 = "Relation.Unary._.\8709"
d38 = erased
name44 = "Relation.Unary._.Empty"
d44 = erased
name50 = "Relation.Unary._.\8709-Empty"
d50 = erased
name54 = "Relation.Unary._.\65371_\65373"
d54 = erased
name58 = "Relation.Unary._.U"
d58 = erased
name64 = "Relation.Unary._.Universal"
d64 = erased
name70 = "Relation.Unary._.U-Universal"
d70 = erased
name76 = "Relation.Unary._.\8705"
d76 = erased
name82 = "Relation.Unary._.\8705\8709-Universal"
d82 = erased
name88 = "Relation.Unary._.\8705U-Empty"
d88 = erased
name98 = "Relation.Unary._._\8838_"
d98 = erased
name110 = "Relation.Unary._._\8838\8242_"
d110 = erased
name122 = "Relation.Unary._._\8839_"
d122 = erased
name132 = "Relation.Unary._._\8839\8242_"
d132 = erased
name142 = "Relation.Unary._.\8709-\8838"
d142 = MAlonzo.RTE.mazUnreachableError
name150 = "Relation.Unary._.\8838-U"
d150 = erased
name158 = "Relation.Unary._._\8812_"
d158 = erased
name170 = "Relation.Unary._._\8746_"
d170 = erased
name182 = "Relation.Unary._._\8745_"
d182 = erased
name194 = "Relation.Unary._._\8658_"
d194 = erased
name208 = "Relation.Unary._.\8899"
d208 = erased
name224 = "Relation.Unary._.\8898"
d224 = erased
name246 = "Relation.Unary._\10216\215\10217_"
d246 = erased
name268 = "Relation.Unary._\10216\8857\10217_"
d268 = erased
name288 = "Relation.Unary._\10216\8846\10217_"
d288 = erased
name306 = "Relation.Unary._\10216\8594\10217_"
d306 = erased
name330 = "Relation.Unary._\10216\183\10217_"
d330 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 = du330 v8 v9
du330 v0 v1
  = coe
      MAlonzo.Code.Data.Product.d28 v1
      (coe MAlonzo.Code.Data.Product.d26 v0)
      (coe MAlonzo.Code.Data.Product.d26 v1)
name350 = "Relation.Unary._~"
d350 = erased
name370 = "Relation.Unary._\10216\8728\10217_"
d370 = erased
name398 = "Relation.Unary._//_"
d398 = erased
name424 = "Relation.Unary._\\\\_"
d424 = erased
name438 = "Relation.Unary.Decidable"
d438 = erased