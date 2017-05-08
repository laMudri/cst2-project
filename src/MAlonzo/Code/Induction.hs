{-# LANGUAGE EmptyDataDecls, ExistentialQuantification,
             ScopedTypeVariables, NoMonomorphismRestriction, Rank2Types #-}
module MAlonzo.Code.Induction where

import MAlonzo.RTE (coe, erased, addInt, subInt, mulInt, quotInt,
                    remInt, geqInt, ltInt, eqInt, eqFloat)
import qualified Control.Exception
import qualified Data.Text
import qualified Data.Text.IO
import qualified MAlonzo.RTE
import qualified System.Environment
import qualified System.IO
import qualified Data.Text

name8 = "Induction.RecStruct"
d8 = erased
name24 = "Induction.RecursorBuilder"
d24 = erased
name38 = "Induction.Recursor"
d38 = erased
name54 = "Induction.build"
d54 v0 v1 v2 v3 v4 v5 v6 v7 v8 = du54 v5 v6 v7 v8
du54 v0 v1 v2 v3 = coe v2 v3 (coe v0 v1 v2 v3)
name74 = "Induction.SubsetRecursorBuilder"
d74 = erased
name92 = "Induction.SubsetRecursor"
d92 = erased
name114 = "Induction.subsetBuild"
d114 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 = du114 v7 v8 v9 v10 v11
du114 v0 v1 v2 v3 v4 = coe v2 v3 (coe v0 v1 v2 v3 v4)