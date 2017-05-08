{-# LANGUAGE EmptyDataDecls, ExistentialQuantification,
             ScopedTypeVariables, NoMonomorphismRestriction, Rank2Types #-}
module MAlonzo.Code.Vec where

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

name12 = "Vec.All"
d12 a0 a1 a2 a3 a4 a5 = ()
data T12 a0 a1 a2 a3 a4 = C22 | C30 a0 a1 a2 a3 a4
name46 = "Vec.function\8594All"
d46 v0 v1 v2 v3 v4 v5 v6 = du46 v4 v6
du46 v0 v1
  = case coe v1 of
      MAlonzo.Code.Data.Vec.C14 -> coe C22
      MAlonzo.Code.Data.Vec.C22 v2 v3 v4
        -> coe C30 v3 v2 v4 (coe v0 v3) (coe du46 v0 v4)
      _ -> coe MAlonzo.RTE.mazUnreachableError
name86 = "Vec.foldl-preserves"
d86 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 = du86 v8 v9 v10 v11
du86 v0 v1 v2 v3
  = case coe v3 of
      C22 -> coe v2
      C30 v4 v5 v6 v7 v8 -> coe du86 v0 (coe v0 v1 v4) (coe v7 v1 v2) v8
      _ -> coe MAlonzo.RTE.mazUnreachableError
name106 = "Vec.intersperse\8314"
d106 v0 v1 v2 v3 v4 = du106 v2 v3 v4
du106 v0 v1 v2
  = case coe v2 of
      MAlonzo.Code.Data.Vec.C14
        -> coe MAlonzo.Code.Data.Vec.C22 (0 :: Integer) v1 v2
      MAlonzo.Code.Data.Vec.C22 v3 v4 v5
        -> let v6 = coe subInt v0 (1 :: Integer) in
           coe
             MAlonzo.Code.Data.Vec.C22 (coe addInt v0 v0) v1
             (coe
                MAlonzo.Code.Data.Vec.C22 (coe addInt v6 v0) v4
                (coe du106 v6 v1 v5))
      _ -> coe MAlonzo.RTE.mazUnreachableError