{-# LANGUAGE EmptyDataDecls, ExistentialQuantification,
             ScopedTypeVariables, NoMonomorphismRestriction, Rank2Types #-}
module MAlonzo.Code.Graph.Properties where

import MAlonzo.RTE (coe, erased, addInt, subInt, mulInt, quotInt,
                    remInt, geqInt, ltInt, eqInt, eqFloat)
import qualified Control.Exception
import qualified Data.Text
import qualified Data.Text.IO
import qualified MAlonzo.RTE
import qualified System.Environment
import qualified System.IO
import qualified Data.Text
import qualified MAlonzo.Code.Data.Fin.Properties
import qualified MAlonzo.Code.Data.Star
import qualified MAlonzo.Code.Relation.Nullary

name172 = "Graph.Properties._.Edge"
d172 a0 a1 a2 a3 a4 a5 a6 = ()
name174 = "Graph.Properties._.Path"
d174 = erased
name278 = "Graph.Properties.Path._\8801?_"
d278 v0 v1 v2 v3 v4 v5 v6 v7 v8 = du278 v7 v8
du278 v0 v1
  = case coe v0 of
      MAlonzo.Code.Data.Star.C22 v2
        -> case coe v1 of
             MAlonzo.Code.Data.Star.C22 v3
               -> coe MAlonzo.Code.Relation.Nullary.C22 erased
             MAlonzo.Code.Data.Star.C34 v3 v4 v5 v6 v7
               -> coe MAlonzo.Code.Relation.Nullary.C26
             _ -> coe MAlonzo.RTE.mazUnreachableError
      MAlonzo.Code.Data.Star.C34 v2 v3 v4 v5 v6
        -> case coe v1 of
             MAlonzo.Code.Data.Star.C22 v7
               -> coe MAlonzo.Code.Relation.Nullary.C26
             MAlonzo.Code.Data.Star.C34 v7 v8 v9 v10 v11
               -> let v12 = coe MAlonzo.Code.Data.Fin.Properties.du82 v3 v8 in
                  case coe v12 of
                    MAlonzo.Code.Relation.Nullary.C22 v13 -> coe du278 v6 v11
                    MAlonzo.Code.Relation.Nullary.C26
                      -> coe MAlonzo.Code.Relation.Nullary.C26
                    _ -> coe MAlonzo.RTE.mazUnreachableError
             _ -> coe MAlonzo.RTE.mazUnreachableError
      _ -> coe MAlonzo.RTE.mazUnreachableError
name332 = "Graph.Properties.Path._.prf"
d332 = erased
name364 = "Graph.Properties.\949-cycle-free"
d364 = erased
name382 = "Graph.Properties.singleton-cycle-free"
d382 = erased
name413 = "Graph.Properties.Path..absurdlambda"
d413 = erased
name671 = "Graph.Properties.Path..absurdlambda"
d671 = erased