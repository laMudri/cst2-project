{-# LANGUAGE EmptyDataDecls, ExistentialQuantification,
             ScopedTypeVariables, NoMonomorphismRestriction, Rank2Types #-}
module MAlonzo.Code.Data.List.Base where

import MAlonzo.RTE (coe, erased, addInt, subInt, mulInt, quotInt,
                    remInt, geqInt, ltInt, eqInt, eqFloat)
import qualified Control.Exception
import qualified Data.Text
import qualified Data.Text.IO
import qualified MAlonzo.RTE
import qualified System.Environment
import qualified System.IO
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Builtin.Bool
import qualified MAlonzo.Code.Agda.Builtin.List
import qualified MAlonzo.Code.Data.Bool.Base
import qualified MAlonzo.Code.Data.Maybe.Base
import qualified MAlonzo.Code.Data.Product
import qualified MAlonzo.Code.Function

name10 = "Data.List.Base.[_]"
d10 v0 v1 v2 = du10 v2
du10 v0 = coe (:) v0 []
name18 = "Data.List.Base._++_"
d18 v0 v1 v2 v3 = du18 v2 v3
du18 v0 v1
  = case coe v0 of
      [] -> coe v1
      (:) v2 v3 -> coe (:) v2 (coe du18 v3 v1)
      _ -> coe MAlonzo.RTE.mazUnreachableError
name32 = "Data.List.Base._\8759\691_"
d32 v0 v1 v2 v3 = du32 v2 v3
du32 v0 v1 = coe du18 v0 (coe du10 v1)
name42 = "Data.List.Base.null"
d42 v0 v1 v2 = du42 v2
du42 v0
  = case coe v0 of
      [] -> coe True
      (:) v1 v2 -> coe False
      _ -> coe MAlonzo.RTE.mazUnreachableError
name56 = "Data.List.Base.map"
d56 v0 v1 v2 v3 v4 v5 = du56 v4 v5
du56 v0 v1
  = case coe v1 of
      [] -> coe v1
      (:) v2 v3 -> coe (:) (coe v0 v2) (coe du56 v0 v3)
      _ -> coe MAlonzo.RTE.mazUnreachableError
name72 = "Data.List.Base.replicate"
d72 v0 v1 v2 v3 = du72 v2 v3
du72 v0 v1
  = case coe v0 of
      0 -> coe []
      _ -> let v2 = coe subInt v0 (1 :: Integer) in
           coe (:) v1 (coe du72 v2 v1)
name92 = "Data.List.Base.zipWith"
d92 v0 v1 v2 v3 v4 v5 v6 v7 v8 = du92 v6 v7 v8
du92 v0 v1 v2
  = case coe v1 of
      (:) v3 v4
        -> case coe v2 of
             (:) v5 v6 -> coe (:) (coe v0 v3 v5) (coe du92 v0 v4 v6)
             _ -> coe []
      _ -> coe []
name114 = "Data.List.Base.zip"
d114 v0 v1 v2 v3 = du114
du114 = coe du92 MAlonzo.Code.Data.Product.C30
name120 = "Data.List.Base.intersperse"
d120 v0 v1 v2 v3 = du120 v2 v3
du120 v0 v1
  = case coe v1 of
      [] -> coe v1
      (:) v2 v3
        -> case coe v3 of
             [] -> coe du10 v2
             (:) v4 v5 -> coe (:) v2 (coe (:) v0 (coe du120 v0 v3))
             _ -> coe MAlonzo.RTE.mazUnreachableError
      _ -> coe MAlonzo.RTE.mazUnreachableError
name144 = "Data.List.Base.foldr"
d144 v0 v1 v2 v3 v4 v5 v6 = du144 v4 v5 v6
du144 v0 v1 v2
  = case coe v2 of
      [] -> coe v1
      (:) v3 v4 -> coe v0 v3 (coe du144 v0 v1 v4)
      _ -> coe MAlonzo.RTE.mazUnreachableError
name166 = "Data.List.Base.foldl"
d166 v0 v1 v2 v3 v4 v5 v6 = du166 v4 v5 v6
du166 v0 v1 v2
  = case coe v2 of
      [] -> coe v1
      (:) v3 v4 -> coe du166 v0 (coe v0 v1 v3) v4
      _ -> coe MAlonzo.RTE.mazUnreachableError
name184 = "Data.List.Base.concat"
d184 v0 v1 = du184
du184 = coe du144 du18 []
name194 = "Data.List.Base.concatMap"
d194 v0 v1 v2 v3 v4 = du194 v4
du194 v0
  = coe MAlonzo.Code.Function.du38 (\ v1 -> du184) (coe du56 v0)
name198 = "Data.List.Base.and"
d198 = coe du144 MAlonzo.Code.Data.Bool.Base.d24 True
name200 = "Data.List.Base.or"
d200 = coe du144 MAlonzo.Code.Data.Bool.Base.d30 False
name206 = "Data.List.Base.any"
d206 v0 v1 v2 = du206 v2
du206 v0
  = coe MAlonzo.Code.Function.du38 (\ v1 -> d200) (coe du56 v0)
name214 = "Data.List.Base.all"
d214 v0 v1 v2 = du214 v2
du214 v0
  = coe MAlonzo.Code.Function.du38 (\ v1 -> d198) (coe du56 v0)
name218 = "Data.List.Base.sum"
d218 = coe du144 addInt (0 :: Integer)
name220 = "Data.List.Base.product"
d220 = coe du144 mulInt (1 :: Integer)
name226 = "Data.List.Base.length"
d226 v0 v1 = du226
du226
  = coe
      du144 (\ v0 v1 -> coe addInt (1 :: Integer) v1) (0 :: Integer)
name234 = "Data.List.Base.reverse"
d234 v0 v1 = du234
du234 = coe du166 (\ v0 v1 -> coe (:) v1 v0) []
name248 = "Data.List.Base.scanr"
d248 v0 v1 v2 v3 v4 v5 v6 = du248 v4 v5 v6
du248 v0 v1 v2
  = case coe v2 of
      [] -> coe (:) v1 v2
      (:) v3 v4
        -> let v5 = coe du248 v0 v1 v4 in
           case coe v5 of
             [] -> coe v5
             (:) v6 v7 -> coe (:) (coe v0 v3 v6) v5
             _ -> coe MAlonzo.RTE.mazUnreachableError
      _ -> coe MAlonzo.RTE.mazUnreachableError
name294 = "Data.List.Base.scanl"
d294 v0 v1 v2 v3 v4 v5 v6 = du294 v4 v5 v6
du294 v0 v1 v2
  = case coe v2 of
      [] -> coe (:) v1 v2
      (:) v3 v4 -> coe (:) v1 (coe du294 v0 (coe v0 v1 v3) v4)
      _ -> coe MAlonzo.RTE.mazUnreachableError
name322 = "Data.List.Base.unfold"
d322 v0 v1 v2 v3 v4 v5 v6 = du322 v4 v5 v6
du322 v0 v1 v2
  = case coe v1 of
      0 -> coe []
      _ -> let v3 = coe subInt v1 (1 :: Integer) in
           let v4 = coe v0 v3 v2 in
           case coe v4 of
             Just v5
               -> coe
                    (:) (coe MAlonzo.Code.Data.Product.d26 v5)
                    (coe du322 v0 v3 (coe MAlonzo.Code.Data.Product.d28 v5))
             Nothing -> coe []
             _ -> coe MAlonzo.RTE.mazUnreachableError
name362 = "Data.List.Base.downFrom"
d362 v0 = coe du322 du378 v0 (coe C374 v0)
name370 = "Data.List.Base._.Singleton"
d370 a0 a1 = ()
newtype T370 a0 = C374 a0
name378 = "Data.List.Base._.f"
d378 v0 v1 v2 = du378 v1 v2
du378 v0 v1
  = case coe v1 of
      C374 v2
        -> coe Just (coe MAlonzo.Code.Data.Product.C30 v0 (coe C374 v0))
      _ -> coe MAlonzo.RTE.mazUnreachableError
name386 = "Data.List.Base.fromMaybe"
d386 v0 v1 v2 = du386 v2
du386 v0
  = case coe v0 of
      Just v1 -> coe du10 v1
      Nothing -> coe []
      _ -> coe MAlonzo.RTE.mazUnreachableError
name394 = "Data.List.Base.take"
d394 v0 v1 v2 v3 = du394 v2 v3
du394 v0 v1
  = case coe v0 of
      0 -> coe []
      _ -> let v2 = coe subInt v0 (1 :: Integer) in
           case coe v1 of
             [] -> coe v1
             (:) v3 v4 -> coe (:) v3 (coe du394 v2 v4)
             _ -> coe MAlonzo.RTE.mazUnreachableError
name410 = "Data.List.Base.drop"
d410 v0 v1 v2 v3 = du410 v2 v3
du410 v0 v1
  = case coe v0 of
      0 -> coe v1
      _ -> let v2 = coe subInt v0 (1 :: Integer) in
           case coe v1 of
             [] -> coe v1
             (:) v3 v4 -> coe du410 v2 v4
             _ -> coe MAlonzo.RTE.mazUnreachableError
name426 = "Data.List.Base.splitAt"
d426 v0 v1 v2 v3 = du426 v2 v3
du426 v0 v1
  = case coe v0 of
      0 -> coe MAlonzo.Code.Data.Product.C30 [] v1
      _ -> let v2 = coe subInt v0 (1 :: Integer) in
           case coe v1 of
             [] -> coe MAlonzo.Code.Data.Product.C30 v1 v1
             (:) v3 v4
               -> let v5 = coe du426 v2 v4 in
                  coe
                    MAlonzo.Code.Data.Product.C30
                    (coe (:) v3 (coe MAlonzo.Code.Data.Product.d26 v5))
                    (coe MAlonzo.Code.Data.Product.d28 v5)
             _ -> coe MAlonzo.RTE.mazUnreachableError
name456 = "Data.List.Base.takeWhile"
d456 v0 v1 v2 v3 = du456 v2 v3
du456 v0 v1
  = case coe v1 of
      [] -> coe v1
      (:) v2 v3
        -> let v4 = coe v0 v2 in
           case coe v4 of
             False -> coe []
             True -> coe (:) v2 (coe du456 v0 v3)
             _ -> coe MAlonzo.RTE.mazUnreachableError
      _ -> coe MAlonzo.RTE.mazUnreachableError
name486 = "Data.List.Base.dropWhile"
d486 v0 v1 v2 v3 = du486 v2 v3
du486 v0 v1
  = case coe v1 of
      [] -> coe v1
      (:) v2 v3
        -> let v4 = coe v0 v2 in
           case coe v4 of
             False -> coe v1
             True -> coe du486 v0 v3
             _ -> coe MAlonzo.RTE.mazUnreachableError
      _ -> coe MAlonzo.RTE.mazUnreachableError
name516 = "Data.List.Base.span"
d516 v0 v1 v2 v3 = du516 v2 v3
du516 v0 v1
  = case coe v1 of
      [] -> coe MAlonzo.Code.Data.Product.C30 v1 v1
      (:) v2 v3
        -> let v4 = coe v0 v2 in
           case coe v4 of
             False -> coe MAlonzo.Code.Data.Product.C30 [] v1
             True
               -> coe
                    MAlonzo.Code.Data.Product.du188 (coe (:) v2) (\ v5 v6 -> v6)
                    (coe du516 v0 v3)
             _ -> coe MAlonzo.RTE.mazUnreachableError
      _ -> coe MAlonzo.RTE.mazUnreachableError
name546 = "Data.List.Base.break"
d546 v0 v1 v2 = du546 v2
du546 v0
  = coe
      du516
      (coe
         MAlonzo.Code.Function.du38 (\ v1 -> MAlonzo.Code.Data.Bool.Base.d6)
         v0)
name554 = "Data.List.Base.inits"
d554 v0 v1 v2 = du554 v2
du554 v0
  = case coe v0 of
      [] -> coe (:) v0 v0
      (:) v1 v2 -> coe (:) [] (coe du56 (coe (:) v1) (coe du554 v2))
      _ -> coe MAlonzo.RTE.mazUnreachableError
name564 = "Data.List.Base.tails"
d564 v0 v1 v2 = du564 v2
du564 v0
  = case coe v0 of
      [] -> coe (:) v0 v0
      (:) v1 v2 -> coe (:) v0 (coe du564 v2)
      _ -> coe MAlonzo.RTE.mazUnreachableError
name574 = "Data.List.Base.InitLast"
d574 a0 a1 a2 = ()
data T574 a0 a1 = C580 | C586 a0 a1
name594 = "Data.List.Base.initLast"
d594 v0 v1 v2 = du594 v2
du594 v0
  = case coe v0 of
      [] -> coe C580
      (:) v1 v2
        -> let v3 = coe du594 v2 in
           case coe v3 of
             C580 -> coe C586 [] v1
             C586 v4 v5 -> coe C586 (coe (:) v1 v4) v5
             _ -> coe MAlonzo.RTE.mazUnreachableError
      _ -> coe MAlonzo.RTE.mazUnreachableError
name620 = "Data.List.Base.gfilter"
d620 v0 v1 v2 v3 v4 v5 = du620 v4 v5
du620 v0 v1
  = case coe v1 of
      [] -> coe v1
      (:) v2 v3
        -> let v4 = coe v0 v2 in
           case coe v4 of
             Just v5 -> coe (:) v5 (coe du620 v0 v3)
             Nothing -> coe du620 v0 v3
             _ -> coe MAlonzo.RTE.mazUnreachableError
      _ -> coe MAlonzo.RTE.mazUnreachableError
name652 = "Data.List.Base.filter"
d652 v0 v1 v2 = du652 v2
du652 v0
  = coe
      du620
      (\ v1 ->
         coe
           MAlonzo.Code.Data.Bool.Base.du14 (coe v0 v1) (coe Just v1) Nothing)
name662 = "Data.List.Base.partition"
d662 v0 v1 v2 v3 = du662 v2 v3
du662 v0 v1
  = case coe v1 of
      [] -> coe MAlonzo.Code.Data.Product.C30 v1 v1
      (:) v2 v3
        -> let v4 = coe v0 v2 in
           let v5 = coe du662 v0 v3 in
           case coe v4 of
             False
               -> coe
                    MAlonzo.Code.Data.Product.C30
                    (coe MAlonzo.Code.Data.Product.d26 v5)
                    (coe (:) v2 (coe MAlonzo.Code.Data.Product.d28 v5))
             True
               -> coe
                    MAlonzo.Code.Data.Product.C30
                    (coe (:) v2 (coe MAlonzo.Code.Data.Product.d26 v5))
                    (coe MAlonzo.Code.Data.Product.d28 v5)
             _ -> coe MAlonzo.RTE.mazUnreachableError
      _ -> coe MAlonzo.RTE.mazUnreachableError