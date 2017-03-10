{-# LANGUAGE EmptyDataDecls, ExistentialQuantification,
             ScopedTypeVariables, NoMonomorphismRestriction, Rank2Types #-}
module MAlonzo.Code.Star where

import MAlonzo.RTE (coe, erased, addInt, subInt, mulInt, quotInt,
                    remInt, geqInt, ltInt, eqInt, eqFloat)
import qualified Control.Exception
import qualified Data.Text
import qualified Data.Text.IO
import qualified MAlonzo.RTE
import qualified System.Environment
import qualified System.IO
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Builtin.List
import qualified MAlonzo.Code.Data.Product
import qualified MAlonzo.Code.Data.Star
import qualified MAlonzo.Code.Data.Vec
import qualified MAlonzo.Code.Relation.Binary
import qualified MAlonzo.Code.Relation.Binary.Core

name18 = "Star._.length"
d18 v0 v1 v2 v3 v4 v5 = du18 v4 v5
du18 v0 v1
  = coe
      MAlonzo.Code.Data.Star.du184
      (\ v2 v3 v4 v5 v6 -> coe addInt (1 :: Integer) v6)
      (\ v2 -> 0 :: Integer) v0 v1
name52 = "Star._.\9669-injective"
d52 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16
  = du52
du52
  = coe
      MAlonzo.Code.Data.Product.C30 erased
      (coe MAlonzo.Code.Data.Product.C30 erased erased)
name72 = "Star._.\9669-injective\8242"
d72 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 = du72
du72 v0 = coe du52
name90 = "Star._.\9669\9669\8801\949"
d90 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 = du90 v7 v10
du90 v0 v1
  = case coe v0 of
      MAlonzo.Code.Data.Star.C22 v2
        -> coe
             MAlonzo.Code.Data.Product.C30 erased
             (coe
                MAlonzo.Code.Data.Product.C30 erased
                (coe MAlonzo.Code.Data.Product.C30 erased v1))
      _ -> coe MAlonzo.RTE.mazUnreachableError
name108 = "Star._.\9669\9669\8801\949\8242"
d108 v0 v1 v2 v3 v4 v5 v6 v7 v8 = du108 v6 v8
du108 v0 v1
  = case coe v0 of
      MAlonzo.Code.Data.Star.C22 v2
        -> coe
             MAlonzo.Code.Data.Product.C30 erased
             (coe MAlonzo.Code.Data.Product.C30 erased v1)
      _ -> coe MAlonzo.RTE.mazUnreachableError
name124 = "Star._.Non-trivial"
d124 = erased
name138 = "Star._._\8849_"
d138 a0 a1 a2 a3 a4 a5 a6 a7 a8 a9 = ()
data T138 a0 a1 a2 = C164 a0 a1
name158 = "Star._._\8849_.ls"
d158 v0
  = case coe v0 of
      C164 v1 v2 -> coe v1
      _ -> coe MAlonzo.RTE.mazUnreachableError
name160 = "Star._._\8849_.rs"
d160 v0
  = case coe v0 of
      C164 v1 v2 -> coe v2
      _ -> coe MAlonzo.RTE.mazUnreachableError
name162 = "Star._._\8849_.eq"
d162 = erased
name178 = "Star._._\8847_"
d178 a0 a1 a2 a3 a4 a5 a6 a7 a8 a9 = ()
data T178 a0 a1 a2 a3 = C208 a0 a1 a2
name200 = "Star._._\8847_.ls"
d200 v0
  = case coe v0 of
      C208 v1 v2 v4 -> coe v1
      _ -> coe MAlonzo.RTE.mazUnreachableError
name202 = "Star._._\8847_.rs"
d202 v0
  = case coe v0 of
      C208 v1 v2 v4 -> coe v2
      _ -> coe MAlonzo.RTE.mazUnreachableError
name204 = "Star._._\8847_.eq"
d204 = erased
name206 = "Star._._\8847_.non-trivial"
d206 v0
  = case coe v0 of
      C208 v1 v2 v4 -> coe v4
      _ -> coe MAlonzo.RTE.mazUnreachableError
name220 = "Star._.Prefix"
d220 a0 a1 a2 a3 a4 a5 a6 a7 a8 = ()
newtype T220 a0 a1 = C240 a0
name236 = "Star._.Prefix.rs"
d236 v0
  = case coe v0 of
      C240 v1 -> coe v1
      _ -> coe MAlonzo.RTE.mazUnreachableError
name238 = "Star._.Prefix.eq"
d238 = erased
name248 = "Star._.distinct-endpoints\8594non-trivial"
d248 = erased
name308 = "Star._.fold-preorder"
d308 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 = du308 v6 v8 v9 v10 v11
du308 v0 v1 v2 v3 v4
  = case coe v4 of
      MAlonzo.Code.Data.Star.C22 v5
        -> coe
             MAlonzo.Code.Relation.Binary.d38
             (coe MAlonzo.Code.Relation.Binary.d92 v0) v2 v2
             (coe
                MAlonzo.Code.Relation.Binary.Core.d516
                (coe
                   MAlonzo.Code.Relation.Binary.d36
                   (coe MAlonzo.Code.Relation.Binary.d92 v0))
                v2)
      MAlonzo.Code.Data.Star.C34 v5 v6 v7 v8 v9
        -> coe
             MAlonzo.Code.Relation.Binary.d40
             (coe MAlonzo.Code.Relation.Binary.d92 v0) v2 v6 v3
             (coe v1 v2 v6 v8) (coe du308 v0 v1 v6 v3 v9)
      _ -> coe MAlonzo.RTE.mazUnreachableError
name330 = "Star._.concat-vec"
d330 v0 v1 v2 v3 v4 v5 = du330 v4
du330 v0
  = coe
      MAlonzo.Code.Data.Vec.du262
      (\ v1 -> coe MAlonzo.Code.Data.Star.du44 v0 v0)
      (coe MAlonzo.Code.Data.Star.C22 v0)
name340 = "Star._.states\8343"
d340 v0 v1 v2 v3 v4 v5 v6 = du340 v4 v6
du340 v0 v1
  = case coe v1 of
      MAlonzo.Code.Data.Star.C22 v2 -> coe []
      MAlonzo.Code.Data.Star.C34 v2 v3 v4 v5 v6
        -> coe (:) v0 (coe du340 v3 v6)
      _ -> coe MAlonzo.RTE.mazUnreachableError
name352 = "Star._.states\7523"
d352 v0 v1 v2 v3 v4 v5 v6 = du352 v6
du352 v0
  = case coe v0 of
      MAlonzo.Code.Data.Star.C22 v1 -> coe []
      MAlonzo.Code.Data.Star.C34 v1 v2 v3 v4 v5
        -> coe (:) v2 (coe du352 v5)
      _ -> coe MAlonzo.RTE.mazUnreachableError
name364 = "Star._.states"
d364 v0 v1 v2 v3 v4 v5 v6 = du364 v4 v6
du364 v0 v1
  = case coe v1 of
      MAlonzo.Code.Data.Star.C22 v2 -> coe (:) v0 []
      MAlonzo.Code.Data.Star.C34 v2 v3 v4 v5 v6
        -> coe (:) v0 (coe du364 v3 v6)
      _ -> coe MAlonzo.RTE.mazUnreachableError
name382 = "Star.Star\737"
d382 = erased