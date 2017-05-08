{-# LANGUAGE EmptyDataDecls, ExistentialQuantification,
             ScopedTypeVariables, NoMonomorphismRestriction, Rank2Types #-}
module MAlonzo.Code.Data.Nat.Show where

import MAlonzo.RTE (coe, erased, addInt, subInt, mulInt, quotInt,
                    remInt, geqInt, ltInt, eqInt, eqFloat)
import qualified Control.Exception
import qualified Data.Text
import qualified Data.Text.IO
import qualified MAlonzo.RTE
import qualified System.Environment
import qualified System.IO
import qualified Data.Text
import qualified MAlonzo.Code.Data.Digit
import qualified MAlonzo.Code.Data.List.Base
import qualified MAlonzo.Code.Data.Product
import qualified MAlonzo.Code.Data.String.Base
import qualified MAlonzo.Code.Function

name12 = "Data.Nat.Show.showInBase"
d12 v0 v1 v2 v3 = du12 v0 v3
du12 v0 v1
  = coe
      MAlonzo.Code.Function.du158 MAlonzo.Code.Data.String.Base.d10
      (coe
         MAlonzo.Code.Function.du158
         (coe
            MAlonzo.Code.Data.List.Base.du56
            (coe MAlonzo.Code.Data.Digit.du42 v0))
         (coe
            MAlonzo.Code.Function.du158 MAlonzo.Code.Data.List.Base.du234
            (coe
               MAlonzo.Code.Function.du158 MAlonzo.Code.Data.Product.d26
               (coe MAlonzo.Code.Data.Digit.du66 v0 v1))))
name22 = "Data.Nat.Show.show"
d22 = coe du12 (10 :: Integer)