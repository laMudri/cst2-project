{-# LANGUAGE EmptyDataDecls, ExistentialQuantification,
             ScopedTypeVariables, NoMonomorphismRestriction, Rank2Types #-}
module MAlonzo.Code.Relation.Binary.Reflection where

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
import qualified MAlonzo.Code.Data.Vec
import qualified MAlonzo.Code.Data.Vec.NZ45Zary
import qualified MAlonzo.Code.Function.Equality
import qualified MAlonzo.Code.Function.Equivalence
import qualified MAlonzo.Code.Relation.Binary
import qualified MAlonzo.Code.Relation.Binary.Core
import qualified MAlonzo.Code.Relation.Binary.PreorderReasoning

name38 = "Relation.Binary.Reflection._._\8776_"
d38 = erased
name54 = "Relation.Binary.Reflection._.sym"
d54 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 = du54 v5
du54 v0
  = coe
      MAlonzo.Code.Relation.Binary.Core.d518
      (coe MAlonzo.Code.Relation.Binary.d136 v0)
name62 = "Relation.Binary.Reflection._._\8718"
d62 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 = du62 v5 v10
du62 v0 v1
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
name64 = "Relation.Binary.Reflection._._\8764\10216_\10217_"
d64 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 = du64 v5
du64 v0
  = coe
      MAlonzo.Code.Relation.Binary.PreorderReasoning.du72
      (coe MAlonzo.Code.Relation.Binary.du150 v0)
name86 = "Relation.Binary.Reflection.prove"
d86 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14
  = du86 v5 v7 v8 v9 v10 v11 v12 v13 v14
du86 v0 v1 v2 v3 v4 v5 v6 v7 v8
  = coe
      MAlonzo.Code.Relation.Binary.PreorderReasoning.d62
      (coe
         MAlonzo.Code.Relation.Binary.PreorderReasoning.du72
         (coe MAlonzo.Code.Relation.Binary.du150 v0) (coe v1 v4 v6 v5)
         (coe v2 v4 v6 v5) (coe v1 v4 v7 v5)
         (coe
            MAlonzo.Code.Relation.Binary.Core.d518
            (coe MAlonzo.Code.Relation.Binary.d136 v0) (coe v2 v4 v6 v5)
            (coe v1 v4 v6 v5) (coe v3 v4 v6 v5))
         (coe
            MAlonzo.Code.Relation.Binary.PreorderReasoning.du72
            (coe MAlonzo.Code.Relation.Binary.du150 v0) (coe v2 v4 v6 v5)
            (coe v2 v4 v7 v5) (coe v1 v4 v7 v5) v8
            (coe
               MAlonzo.Code.Relation.Binary.PreorderReasoning.du72
               (coe MAlonzo.Code.Relation.Binary.du150 v0) (coe v2 v4 v7 v5)
               (coe v1 v4 v7 v5) (coe v1 v4 v7 v5) (coe v3 v4 v7 v5)
               (let v9 = coe v1 v4 v7 v5 in
                MAlonzo.Code.Relation.Binary.PreorderReasoning.C56
                  (MAlonzo.Code.Relation.Binary.d38
                     (MAlonzo.Code.Relation.Binary.d92
                        (MAlonzo.Code.Relation.Binary.du150 v0))
                     v9 v9
                     (MAlonzo.Code.Relation.Binary.Core.d516
                        (MAlonzo.Code.Relation.Binary.d36
                           (MAlonzo.Code.Relation.Binary.d92
                              (MAlonzo.Code.Relation.Binary.du150 v0)))
                        v9))))))
name100 = "Relation.Binary.Reflection.close"
d100 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 = du100 v6 v11 v12
du100 v0 v1 v2
  = coe
      MAlonzo.Code.Data.Vec.NZ45Zary.du66 v2
      (coe
         MAlonzo.Code.Data.Vec.du192 v1 (coe v0 v1)
         (coe MAlonzo.Code.Data.Vec.d764 v1))
name110 = "Relation.Binary.Reflection.solve"
d110 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12
  = du110 v5 v6 v7 v8 v9 v10 v11 v12
du110 v0 v1 v2 v3 v4 v5 v6 v7
  = coe
      MAlonzo.Code.Data.Vec.NZ45Zary.du376 v5
      (\ v8 ->
         coe
           du86 v0 v2 v3 v4 v5 v8
           (coe MAlonzo.Code.Data.Product.d26 (coe du100 v1 v5 v6))
           (coe MAlonzo.Code.Data.Product.d28 (coe du100 v1 v5 v6))
           (coe
              MAlonzo.Code.Data.Vec.NZ45Zary.du424
              (coe MAlonzo.Code.Data.Vec.NZ45Zary.du596 v5 v7) v8))
name126 = "Relation.Binary.Reflection.solve\8321"
d126 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11
  = du126 v5 v6 v7 v8 v9 v10 v11
du126 v0 v1 v2 v3 v4 v5 v6
  = coe
      MAlonzo.Code.Function.Equality.d38
      (coe
         MAlonzo.Code.Function.Equivalence.d36
         (coe MAlonzo.Code.Data.Vec.NZ45Zary.du244 v5))
      (\ v7 ->
         coe
           du86 v0 v2 v3 v4 v5 v7
           (coe MAlonzo.Code.Data.Product.d26 (coe du100 v1 v5 v6))
           (coe MAlonzo.Code.Data.Product.d28 (coe du100 v1 v5 v6)))
name138 = "Relation.Binary.Reflection._\8860_"
d138 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 = du138
du138 = MAlonzo.Code.Data.Product.C30