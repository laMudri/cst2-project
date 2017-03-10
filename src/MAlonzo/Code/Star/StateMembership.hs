{-# LANGUAGE EmptyDataDecls, ExistentialQuantification,
             ScopedTypeVariables, NoMonomorphismRestriction, Rank2Types #-}
module MAlonzo.Code.Star.StateMembership where

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

name20 = "Star.StateMembership.Any"
d20 a0 a1 a2 a3 a4 a5 a6 a7 a8 = ()
data T20 a0 a1 a2 a3 a4 a5
  = C34 a0 a1 a2 a3 | C48 a0 a1 a2 a3 a4 a5
name54 = "Star.StateMembership._\8712_"
d54 = erased
name72 = "Star.StateMembership.find"
d72 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 = du72 v6 v7 v8 v9
du72 v0 v1 v2 v3
  = case coe v3 of
      C34 v4 v5 v6 v7
        -> coe
             MAlonzo.Code.Data.Product.C30 v0
             (coe MAlonzo.Code.Data.Product.C30 (coe C34 v0 v1 v2 erased) v7)
      C48 v4 v5 v6 v7 v8 v9
        -> let v10 = coe du72 v5 v1 v8 v9 in
           coe
             MAlonzo.Code.Data.Product.C30
             (coe MAlonzo.Code.Data.Product.d26 v10)
             (coe
                MAlonzo.Code.Data.Product.C30
                (coe
                   C48 v0 v5 v1 v7 v8
                   (coe
                      MAlonzo.Code.Data.Product.d26
                      (coe MAlonzo.Code.Data.Product.d28 v10)))
                (coe
                   MAlonzo.Code.Data.Product.d28
                   (coe MAlonzo.Code.Data.Product.d28 v10)))
      _ -> coe MAlonzo.RTE.mazUnreachableError