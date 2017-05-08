{-# LANGUAGE EmptyDataDecls, ExistentialQuantification,
             ScopedTypeVariables, NoMonomorphismRestriction, Rank2Types #-}
module MAlonzo.Code.Data.Vec.Equality where

import MAlonzo.RTE (coe, erased, addInt, subInt, mulInt, quotInt,
                    remInt, geqInt, ltInt, eqInt, eqFloat)
import qualified Control.Exception
import qualified Data.Text
import qualified Data.Text.IO
import qualified MAlonzo.RTE
import qualified System.Environment
import qualified System.IO
import qualified Data.Text
import qualified MAlonzo.Code.Data.Vec
import qualified MAlonzo.Code.Relation.Binary
import qualified MAlonzo.Code.Relation.Binary.Core
import qualified MAlonzo.Code.Relation.Binary.PropositionalEquality
import qualified MAlonzo.Code.Relation.Nullary

name40 = "Data.Vec.Equality.Equality._\8776_"
d40 a0 a1 a2 a3 a4 a5 a6 = ()
data T40 a0 a1 a2 a3 a4 a5 a6 a7
  = C42 | C60 a0 a1 a2 a3 a4 a5 a6 a7
name70 = "Data.Vec.Equality.Equality.length-equal"
d70 = erased
name78 = "Data.Vec.Equality.Equality.refl"
d78 v0 v1 v2 v3 v4 = du78 v2 v4
du78 v0 v1
  = case coe v1 of
      MAlonzo.Code.Data.Vec.C14 -> coe C42
      MAlonzo.Code.Data.Vec.C22 v2 v3 v4
        -> coe
             C60 v3 v2 v4 v3 v2 v4
             (coe
                MAlonzo.Code.Relation.Binary.Core.d516
                (coe MAlonzo.Code.Relation.Binary.d136 v0) v3)
             (coe du78 v0 v4)
      _ -> coe MAlonzo.RTE.mazUnreachableError
name92 = "Data.Vec.Equality.Equality.sym"
d92 v0 v1 v2 v3 v4 v5 v6 v7 = du92 v2 v7
du92 v0 v1
  = case coe v1 of
      C42 -> coe v1
      C60 v2 v3 v4 v5 v6 v7 v8 v9
        -> coe
             C60 v5 v6 v7 v2 v3 v4
             (coe
                MAlonzo.Code.Relation.Binary.Core.d518
                (coe MAlonzo.Code.Relation.Binary.d136 v0) v2 v5 v8)
             (coe du92 v0 v9)
      _ -> coe MAlonzo.RTE.mazUnreachableError
name110 = "Data.Vec.Equality.Equality.trans"
d110 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 = du110 v2 v9 v10
du110 v0 v1 v2
  = case coe v1 of
      C42 -> coe seq v2 v1
      C60 v3 v4 v5 v6 v7 v8 v9 v10
        -> case coe v2 of
             C60 v11 v12 v13 v14 v15 v16 v17 v18
               -> coe
                    C60 v3 v4 v5 v14 v15 v16
                    (coe
                       MAlonzo.Code.Relation.Binary.Core.d520
                       (coe MAlonzo.Code.Relation.Binary.d136 v0) v3 v6 v14 v9 v17)
                    (coe du110 v0 v10 v18)
             _ -> coe MAlonzo.RTE.mazUnreachableError
      _ -> coe MAlonzo.RTE.mazUnreachableError
name136 = "Data.Vec.Equality.Equality._++-cong_"
d136 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12
  = du136 v4 v6 v8 v10 v11 v12
du136 v0 v1 v2 v3 v4 v5
  = case coe v4 of
      C42 -> coe v5
      C60 v6 v7 v8 v9 v10 v11 v12 v13
        -> coe
             C60 v6 (coe addInt v0 v7)
             (coe MAlonzo.Code.Data.Vec.du130 v0 v8 v1) v9 (coe addInt v2 v10)
             (coe MAlonzo.Code.Data.Vec.du130 v2 v11 v3) v12
             (coe du136 v0 v1 v2 v3 v13 v5)
      _ -> coe MAlonzo.RTE.mazUnreachableError
name184 = "Data.Vec.Equality.DecidableEquality._._\8776_"
d184 a0 a1 a2 a3 a4 a5 a6 = ()
name210 = "Data.Vec.Equality.DecidableEquality._\8799_"
d210 v0 v1 v2 v3 v4 v5 v6 = du210 v2 v5 v6
du210 v0 v1 v2
  = case coe v1 of
      MAlonzo.Code.Data.Vec.C14
        -> case coe v2 of
             MAlonzo.Code.Data.Vec.C14
               -> coe MAlonzo.Code.Relation.Nullary.C22 C42
             MAlonzo.Code.Data.Vec.C22 v3 v4 v5
               -> coe MAlonzo.Code.Relation.Nullary.C26
             _ -> coe MAlonzo.RTE.mazUnreachableError
      MAlonzo.Code.Data.Vec.C22 v3 v4 v5
        -> case coe v2 of
             MAlonzo.Code.Data.Vec.C14 -> coe MAlonzo.Code.Relation.Nullary.C26
             MAlonzo.Code.Data.Vec.C22 v6 v7 v8
               -> let v9 = coe du210 v0 v5 v8 in
                  let v10
                        = coe
                            MAlonzo.Code.Relation.Binary.d184
                            (coe MAlonzo.Code.Relation.Binary.d216 v0) v4 v7 in
                  case coe v9 of
                    MAlonzo.Code.Relation.Nullary.C22 v11
                      -> case coe v10 of
                           MAlonzo.Code.Relation.Nullary.C22 v12
                             -> coe
                                  MAlonzo.Code.Relation.Nullary.C22
                                  (coe C60 v4 v3 v5 v7 v6 v8 v12 v11)
                           MAlonzo.Code.Relation.Nullary.C26
                             -> coe MAlonzo.Code.Relation.Nullary.C26
                           _ -> coe MAlonzo.RTE.mazUnreachableError
                    MAlonzo.Code.Relation.Nullary.C26
                      -> coe MAlonzo.Code.Relation.Nullary.C26
                    _ -> coe MAlonzo.RTE.mazUnreachableError
             _ -> coe MAlonzo.RTE.mazUnreachableError
      _ -> coe MAlonzo.RTE.mazUnreachableError
name258 = "Data.Vec.Equality.DecidableEquality._.helper"
d258 = erased
name276 = "Data.Vec.Equality.DecidableEquality._.helper"
d276 = erased
name288 = "Data.Vec.Equality.PropositionalEquality._._++-cong_"
d288 v0 v1 = du288
du288 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 = coe du136 v1 v3 v5 v7 v8 v9
name292 = "Data.Vec.Equality.PropositionalEquality._._\8776_"
d292 a0 a1 a2 a3 a4 a5 = ()
name296 = "Data.Vec.Equality.PropositionalEquality._.length-equal"
d296 = erased
name298 = "Data.Vec.Equality.PropositionalEquality._.refl"
d298 v0 v1 = du298
du298 v0 v1
  = coe
      du78 MAlonzo.Code.Relation.Binary.PropositionalEquality.du112 v1
name300 = "Data.Vec.Equality.PropositionalEquality._.sym"
d300 v0 v1 = du300
du300 v0 v1 v2 v3 v4
  = coe
      du92 MAlonzo.Code.Relation.Binary.PropositionalEquality.du112 v4
name302 = "Data.Vec.Equality.PropositionalEquality._.trans"
d302 v0 v1 = du302
du302 v0 v1 v2 v3 v4 v5 v6 v7
  = coe
      du110 MAlonzo.Code.Relation.Binary.PropositionalEquality.du112 v6
      v7
name316 = "Data.Vec.Equality.PropositionalEquality.to-\8801"
d316 = erased
name326 = "Data.Vec.Equality.PropositionalEquality.from-\8801"
d326 v0 v1 v2 v3 v4 v5 = du326 v3
du326 v0
  = coe
      du78 MAlonzo.Code.Relation.Binary.PropositionalEquality.du112 v0
name5203 = "Data.Vec.Equality.DecidableEquality..absurdlambda"
d5203 = erased
name5383 = "Data.Vec.Equality.DecidableEquality..absurdlambda"
d5383 = erased