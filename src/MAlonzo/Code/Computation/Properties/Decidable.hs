{-# LANGUAGE EmptyDataDecls, ExistentialQuantification,
             ScopedTypeVariables, NoMonomorphismRestriction, Rank2Types #-}
module MAlonzo.Code.Computation.Properties.Decidable where

import MAlonzo.RTE (coe, erased, addInt, subInt, mulInt, quotInt,
                    remInt, geqInt, ltInt, eqInt, eqFloat)
import qualified Control.Exception
import qualified Data.Text
import qualified Data.Text.IO
import qualified MAlonzo.RTE
import qualified System.Environment
import qualified System.IO
import qualified Data.Text
import qualified MAlonzo.Code.Computation
import qualified MAlonzo.Code.Data.Product
import qualified MAlonzo.Code.Relation.Nullary

name30 = "Computation.Properties.Decidable.dbn-lemma"
d30 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 = du30 v4 v7 v8
du30 v0 v1 v2
  = let v3 = coe v0 v2 in
    case coe v3 of
      MAlonzo.Code.Relation.Nullary.C22 v4
        -> let v5 = coe subInt v1 (1 :: Integer) in
           coe
             MAlonzo.Code.Computation.C104 v2
             (coe MAlonzo.Code.Data.Product.d26 v4)
             (coe MAlonzo.Code.Data.Product.d28 v4)
             (coe du30 v0 v5 (coe MAlonzo.Code.Data.Product.d26 v4))
      MAlonzo.Code.Relation.Nullary.C26
        -> coe MAlonzo.Code.Computation.C94 v2
      _ -> coe MAlonzo.RTE.mazUnreachableError
name104 = "Computation.Properties.Decidable.decreasing-bound-norm"
d104 v0 v1 v2 v3 v4 v5 v6 v7 v8 = du104 v4 v5 v7
du104 v0 v1 v2 = coe du30 v0 v2 v1
name118 = "Computation.Properties.Decidable.bound-norm"
d118 v0 v1 v2 v3 v4 v5 v6 v7 = du118 v4 v5 v6
du118 v0 v1 v2 = coe du104 v0 v1 v2