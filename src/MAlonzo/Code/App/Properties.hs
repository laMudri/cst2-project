{-# LANGUAGE EmptyDataDecls, ExistentialQuantification,
             ScopedTypeVariables, NoMonomorphismRestriction, Rank2Types #-}
module MAlonzo.Code.App.Properties where

import MAlonzo.RTE (coe, erased, addInt, subInt, mulInt, quotInt,
                    remInt, geqInt, ltInt, eqInt, eqFloat)
import qualified Control.Exception
import qualified Data.Text
import qualified Data.Text.IO
import qualified MAlonzo.RTE
import qualified System.Environment
import qualified System.IO
import qualified Data.Text

name10 = "App.Properties.appAtV-sum-suc"
d10 = erased
name42 = "App.Properties.appAt-diagonal"
d42 = erased
name84 = "App.Properties.appAt-non-diagonal"
d84 = erased
name138 = "App.Properties.appAt-\8728-suc"
d138 = erased
name180 = "App.Properties.tabulate-cong"
d180 = erased
name208 = "App.Properties.appAtV-appAt"
d208 = erased
name232 = "App.Properties.appAt-sum-suc"
d232 = erased
name248 = "App.Properties.appWhenV-sum-suc"
d248
  = error
      "MAlonzo Runtime Error: postulate evaluated: App.Properties.appWhenV-sum-suc"
name264 = "App.Properties.appWhen-\8728-suc"
d264 = erased
name306 = "App.Properties.appWhenV-appWhen"
d306 = erased
name352 = "App.Properties.appWhen-sum-suc"
d352 = erased
name368 = "App.Properties.sum-0"
d368 = erased