{-# LANGUAGE EmptyDataDecls, ExistentialQuantification,
             ScopedTypeVariables, NoMonomorphismRestriction, Rank2Types #-}
module MAlonzo.Code.Main where

import MAlonzo.RTE (coe, erased, addInt, subInt, mulInt, quotInt,
                    remInt, geqInt, ltInt, eqInt, eqFloat)
import qualified Control.Exception
import qualified Data.Text
import qualified Data.Text.IO
import qualified MAlonzo.RTE
import qualified System.Environment
import qualified System.IO
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Builtin.Coinduction
import qualified MAlonzo.Code.Agda.Builtin.List
import qualified MAlonzo.Code.Algorithm
import qualified MAlonzo.Code.Arguments
import qualified MAlonzo.Code.Category.Monad.Indexed
import qualified MAlonzo.Code.Data.Fin
import qualified MAlonzo.Code.Data.Fin.Properties
import qualified MAlonzo.Code.Data.Maybe
import qualified MAlonzo.Code.Data.Maybe.Base
import qualified MAlonzo.Code.Data.Nat.Show
import qualified MAlonzo.Code.Data.String.Base
import qualified MAlonzo.Code.Data.Vec
import qualified MAlonzo.Code.Function
import qualified MAlonzo.Code.Graph.Definitions
import qualified MAlonzo.Code.IO
import qualified MAlonzo.Code.QQueue
import qualified MAlonzo.Code.Semiring.Definitions
import qualified MAlonzo.Code.Semiring.Instances
import qualified MAlonzo.Code.TestData.QtestZ45ZBZ45Z50Z45Z8

name10 = "Main.map\8322"
d10 v0 v1 v2 v3 v4 v5 v6 = du10 v4 v5 v6
du10 v0 v1 v2
  = coe
      MAlonzo.Code.Category.Monad.Indexed.d58
      MAlonzo.Code.Data.Maybe.du64 erased erased erased erased erased v1
      (\ v3 ->
         coe
           MAlonzo.Code.Category.Monad.Indexed.d58
           MAlonzo.Code.Data.Maybe.du64 erased erased erased erased erased v2
           (\ v4 ->
              coe
                MAlonzo.Code.Category.Monad.Indexed.d46
                MAlonzo.Code.Data.Maybe.du64 erased erased (coe v0 v3 v4)))
name38 = "Main._._._>>=_"
d38 v0 v1 v2 v3 v4 v5 v6 = du38
du38
  = coe
      MAlonzo.Code.Category.Monad.Indexed.d58
      MAlonzo.Code.Data.Maybe.du64
name54 = "Main._._.return"
d54 v0 v1 v2 v3 v4 v5 v6 = du54
du54
  = coe
      MAlonzo.Code.Category.Monad.Indexed.d46
      MAlonzo.Code.Data.Maybe.du64
name268 = "Main._.path-weight"
d268 v0 v1 v2
  = coe
      MAlonzo.Code.Graph.Definitions.du218
      MAlonzo.Code.Semiring.Instances.d6
      MAlonzo.Code.TestData.QtestZ45ZBZ45Z50Z45Z8.d8 v1 v2
name291 = "Main._.\9839-0"
d291
  = coe
      MAlonzo.Code.Agda.Builtin.Coinduction.d16 MAlonzo.Code.Arguments.d4
name295 = "Main._.\9839-1"
d295
  = coe
      MAlonzo.Code.Agda.Builtin.Coinduction.d16
      (coe
         MAlonzo.Code.IO.d150 (coe Data.Text.pack "Not enough arguments."))
name298 = "Main.closedOnG"
d298 v0 v1
  = coe
      MAlonzo.Code.Semiring.Definitions.d274
      MAlonzo.Code.Semiring.Instances.d422
      (coe
         MAlonzo.Code.Graph.Definitions.du218
         MAlonzo.Code.Semiring.Instances.d6
         MAlonzo.Code.TestData.QtestZ45ZBZ45Z50Z45Z8.d8 v0 v1)
name302 = "Main.Q"
d302
  = coe
      MAlonzo.Code.QQueue.du110 MAlonzo.Code.Data.Fin.Properties.du76
name311 = "Main._.\9839-2"
d311 v0 v1 = du311
du311
  = coe
      MAlonzo.Code.Agda.Builtin.Coinduction.d16
      (coe
         MAlonzo.Code.IO.d142
         (coe
            du790
            (coe
               MAlonzo.Code.Algorithm.d282
               (coe
                  MAlonzo.Code.Algorithm.du368 (50 :: Integer)
                  MAlonzo.Code.Semiring.Instances.d6
                  MAlonzo.Code.Semiring.Instances.d426 d302
                  MAlonzo.Code.TestData.QtestZ45ZBZ45Z50Z45Z8.d8 (10000 :: Integer)
                  (coe
                     MAlonzo.Code.Algorithm.du410 MAlonzo.Code.Semiring.Instances.d6
                     d302 (coe MAlonzo.Code.Data.Fin.C8 (49 :: Integer)))))))
name350 = "Main._.I\8320"
d350
  = coe
      MAlonzo.Code.Algorithm.du410 MAlonzo.Code.Semiring.Instances.d6
      d302 (coe MAlonzo.Code.Data.Fin.C8 (49 :: Integer))
name372 = "Main._.\963"
d372
  = coe
      MAlonzo.Code.Algorithm.du368 (50 :: Integer)
      MAlonzo.Code.Semiring.Instances.d6
      MAlonzo.Code.Semiring.Instances.d426 d302
      MAlonzo.Code.TestData.QtestZ45ZBZ45Z50Z45Z8.d8
name790 = "Main.show"
d790 v0 v1 = du790 v1
du790 v0
  = case coe v0 of
      MAlonzo.Code.Data.Vec.C14 -> coe Data.Text.pack ""
      MAlonzo.Code.Data.Vec.C22 v1 v2 v3
        -> case coe v2 of
             Just v4
               -> coe
                    MAlonzo.Code.Data.String.Base.d6
                    (coe MAlonzo.Code.Data.Nat.Show.d22 v4)
                    (coe
                       MAlonzo.Code.Data.String.Base.d6 (coe Data.Text.pack "\n")
                       (coe du790 v3))
             Nothing
               -> coe
                    MAlonzo.Code.Data.String.Base.d6 (coe Data.Text.pack "\8734\n")
                    (coe du790 v3)
             _ -> coe MAlonzo.RTE.mazUnreachableError
      _ -> coe MAlonzo.RTE.mazUnreachableError
main = d798
name798 = "Main.main"
d798
  = coe
      MAlonzo.Code.Function.du158 (coe MAlonzo.Code.IO.du42 ())
      (coe
         MAlonzo.Code.IO.C28 d291
         (\ v0 ->
            case coe v0 of
              [] -> coe d295
              (:) v1 v2 -> coe du311
              _ -> MAlonzo.RTE.mazUnreachableError))