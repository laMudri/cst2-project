{-# LANGUAGE EmptyDataDecls, ExistentialQuantification,
             ScopedTypeVariables, NoMonomorphismRestriction, Rank2Types #-}
module MAlonzo.Code.Function where

import MAlonzo.RTE (coe, erased, addInt, subInt, mulInt, quotInt,
                    remInt, geqInt, ltInt, eqInt, eqFloat)
import qualified Control.Exception
import qualified Data.Text
import qualified Data.Text.IO
import qualified MAlonzo.RTE
import qualified System.Environment
import qualified System.IO
import qualified Data.Text

name4 = "Function.Fun\8321"
d4 = erased
name10 = "Function.Fun\8322"
d10 = erased
name38 = "Function._\8728_"
d38 v0 v1 v2 v3 v4 v5 v6 v7 v8 = du38 v6 v7 v8
du38 v0 v1 v2 = coe v0 v2 (coe v1 v2)
name58 = "Function._\8728\8242_"
d58 v0 v1 v2 v3 v4 v5 v6 v7 = du58 v6 v7
du58 v0 v1 = coe du38 (\ v2 -> v0) v1
name68 = "Function.id"
d68 v0 v1 v2 = du68 v2
du68 v0 = coe v0
name80 = "Function.const"
d80 v0 v1 v2 v3 v4 v5 = du80 v4
du80 v0 = coe v0
name110 = "Function._\738_"
d110 v0 v1 v2 v3 v4 v5 v6 v7 v8 = du110 v6 v7 v8
du110 v0 v1 v2 = coe v0 v2 (coe v1 v2)
name138 = "Function.flip"
d138 v0 v1 v2 v3 v4 v5 v6 v7 v8 = du138 v6 v7 v8
du138 v0 v1 v2 = coe v0 v2 v1
name158 = "Function._$_"
d158 v0 v1 v2 v3 v4 v5 = du158 v4 v5
du158 v0 v1 = coe v0 v1
name176 = "Function._\10216_\10217_"
d176 v0 v1 v2 v3 v4 v5 v6 v7 v8 = du176 v6 v7 v8
du176 v0 v1 v2 = coe v1 v0 v2
name196 = "Function._on_"
d196 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 = du196 v6 v7 v8 v9
du196 v0 v1 v2 v3 = coe v0 (coe v1 v2) (coe v1 v3)
name226 = "Function._-[_]-_"
d226 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14
  = du226 v10 v11 v12 v13 v14
du226 v0 v1 v2 v3 v4 = coe v1 (coe v0 v3 v4) (coe v2 v3 v4)
name242 = "Function._\8715_"
d242 v0 v1 v2 = du242 v2
du242 v0 = coe v0
name260 = "Function.case_return_of_"
d260 v0 v1 v2 v3 v4 v5 = du260 v3 v5
du260 v0 v1 = coe v1 v0
name276 = "Function.case_of_"
d276 v0 v1 v2 v3 v4 v5 = du276 v4 v5
du276 v0 v1 = coe du260 v0 v1