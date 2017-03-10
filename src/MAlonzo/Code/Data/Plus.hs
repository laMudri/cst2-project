{-# LANGUAGE EmptyDataDecls, ExistentialQuantification,
             ScopedTypeVariables, NoMonomorphismRestriction, Rank2Types #-}
module MAlonzo.Code.Data.Plus where

import MAlonzo.RTE (coe, erased, addInt, subInt, mulInt, quotInt,
                    remInt, geqInt, ltInt, eqInt, eqFloat)
import qualified Control.Exception
import qualified Data.Text
import qualified Data.Text.IO
import qualified MAlonzo.RTE
import qualified System.Environment
import qualified System.IO
import qualified Data.Text
import qualified MAlonzo.Code.Function.Equivalence

name12 = "Data.Plus.Plus"
d12 a0 a1 a2 a3 a4 a5 = ()
data T12 a0 a1 a2 a3 a4 = C28 a0 a1 a2 | C40 a0 a1 a2 a3 a4
name54 = "Data.Plus.finally"
d54 v0 v1 v2 v3 v4 v5 v6 = du54 v6
du54 v0 = coe v0
name74 = "Data.Plus.map"
d74 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12
  = du74 v8 v9 v10 v11 v12
du74 v0 v1 v2 v3 v4
  = case coe v4 of
      C28 v5 v6 v7 -> coe C28 (coe v0 v2) (coe v0 v3) (coe v1 v2 v3 v7)
      C40 v5 v6 v7 v8 v9
        -> coe
             C40 (coe v0 v5) (coe v0 v6) (coe v0 v3) (coe du74 v0 v1 v5 v6 v8)
             (coe du74 v0 v1 v6 v3 v9)
      _ -> coe MAlonzo.RTE.mazUnreachableError
name96 = "Data.Plus.Plus\8242"
d96 a0 a1 a2 a3 a4 a5 = ()
data T96 a0 a1 a2 a3 a4 = C112 a0 a1 a2 | C124 a0 a1 a2 a3 a4
name140 = "Data.Plus._++_"
d140 v0 v1 v2 v3 v4 v5 v6 v7 v8 = du140 v4 v5 v6 v7 v8
du140 v0 v1 v2 v3 v4
  = case coe v3 of
      C112 v5 v6 v7 -> coe C124 v0 v1 v2 v7 v4
      C124 v5 v6 v7 v8 v9
        -> coe C124 v0 v6 v2 v8 (coe du140 v6 v1 v2 v9 v4)
      _ -> coe MAlonzo.RTE.mazUnreachableError
name164 = "Data.Plus.equivalent"
d164 v0 v1 v2 v3 v4 v5 = du164 v4 v5
du164 v0 v1
  = coe
      MAlonzo.Code.Function.Equivalence.du56 (coe du172 v0 v1)
      (coe du182 v0 v1)
name172 = "Data.Plus._.complete"
d172 v0 v1 v2 v3 v4 v5 v6 v7 v8 = du172 v6 v7 v8
du172 v0 v1 v2
  = case coe v2 of
      C28 v3 v4 v5 -> coe C112 v0 v1 v5
      C40 v3 v4 v5 v6 v7
        -> coe du140 v3 v4 v1 (coe du172 v3 v4 v6) (coe du172 v4 v1 v7)
      _ -> coe MAlonzo.RTE.mazUnreachableError
name182 = "Data.Plus._.sound"
d182 v0 v1 v2 v3 v4 v5 v6 v7 v8 = du182 v6 v7 v8
du182 v0 v1 v2
  = case coe v2 of
      C112 v3 v4 v5 -> coe C28 v0 v1 v5
      C124 v3 v4 v5 v6 v7
        -> coe C40 v0 v4 v1 (coe C28 v0 v4 v6) (coe du182 v4 v1 v7)
      _ -> coe MAlonzo.RTE.mazUnreachableError