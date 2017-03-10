{-# LANGUAGE EmptyDataDecls, ExistentialQuantification,
             ScopedTypeVariables, NoMonomorphismRestriction, Rank2Types #-}
module MAlonzo.Code.Data.List.NonEmpty where

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
import qualified MAlonzo.Code.Category.Monad.Indexed
import qualified MAlonzo.Code.Data.Bool.Properties
import qualified MAlonzo.Code.Data.List.Base
import qualified MAlonzo.Code.Data.Maybe.Base
import qualified MAlonzo.Code.Data.Product
import qualified MAlonzo.Code.Data.Sum
import qualified MAlonzo.Code.Data.Vec
import qualified MAlonzo.Code.Function
import qualified MAlonzo.Code.Function.Equality
import qualified MAlonzo.Code.Function.Equivalence

name10 = "Data.List.NonEmpty.List\8314"
d10 a0 a1 = ()
data T10 a0 a1 = C24 a0 a1
name20 = "Data.List.NonEmpty.List\8314.head"
d20 v0
  = case coe v0 of
      C24 v1 v2 -> coe v1
      _ -> coe MAlonzo.RTE.mazUnreachableError
name22 = "Data.List.NonEmpty.List\8314.tail"
d22 v0
  = case coe v0 of
      C24 v1 v2 -> coe v2
      _ -> coe MAlonzo.RTE.mazUnreachableError
name30 = "Data.List.NonEmpty.[_]"
d30 v0 v1 v2 = du30 v2
du30 v0 = coe C24 v0 []
name38 = "Data.List.NonEmpty._\8759\8314_"
d38 v0 v1 v2 v3 = du38 v2 v3
du38 v0 v1 = coe C24 v0 (coe (:) (coe d20 v1) (coe d22 v1))
name50 = "Data.List.NonEmpty.length"
d50 v0 v1 v2 = du50 v2
du50 v0
  = coe
      addInt (1 :: Integer)
      (coe MAlonzo.Code.Data.List.Base.du226 (coe d22 v0))
name60 = "Data.List.NonEmpty.toList"
d60 v0 = coe (:) (coe d20 v0) (coe d22 v0)
name72 = "Data.List.NonEmpty.fromVec"
d72 v0 v1 v2 v3 = du72 v3
du72 v0
  = case coe v0 of
      MAlonzo.Code.Data.Vec.C22 v1 v2 v3
        -> coe C24 v2 (coe MAlonzo.Code.Data.Vec.du530 v3)
      _ -> coe MAlonzo.RTE.mazUnreachableError
name84 = "Data.List.NonEmpty.toVec"
d84 v0 v1 v2 = du84 v2
du84 v0
  = coe
      MAlonzo.Code.Data.Vec.C22
      (coe MAlonzo.Code.Data.List.Base.du226 (coe d22 v0)) (coe d20 v0)
      (coe MAlonzo.Code.Data.Vec.du542 (coe d22 v0))
name102 = "Data.List.NonEmpty.lift"
d102 v0 v1 v2 v3 v4 v5 = du102 v4 v5
du102 v0 v1
  = coe
      du72
      (coe
         MAlonzo.Code.Data.Product.d28
         (coe
            v0
            (coe
               MAlonzo.Code.Data.List.Base.du144
               (\ v2 v3 -> coe addInt (1 :: Integer) v3) (0 :: Integer)
               (coe d22 v1))
            (coe du84 v1)))
name116 = "Data.List.NonEmpty.map"
d116 v0 v1 v2 v3 v4 v5 = du116 v4 v5
du116 v0 v1
  = coe
      C24 (coe v0 (coe d20 v1))
      (coe MAlonzo.Code.Data.List.Base.du56 v0 (coe d22 v1))
name132 = "Data.List.NonEmpty.foldr"
d132 v0 v1 v2 v3 v4 v5 v6 = du132 v4 v5 v6
du132 v0 v1 v2 = coe du150 v0 v1 (coe d20 v2) (coe d22 v2)
name150 = "Data.List.NonEmpty._.foldr\8242"
d150 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 = du150 v4 v5 v8 v9
du150 v0 v1 v2 v3
  = case coe v3 of
      [] -> coe v1 v2
      (:) v4 v5 -> coe v0 v2 (coe du150 v0 v1 v4 v5)
      _ -> coe MAlonzo.RTE.mazUnreachableError
name164 = "Data.List.NonEmpty.foldr\8321"
d164 v0 v1 v2 = du164 v2
du164 v0 = coe du132 v0 (\ v1 -> v1)
name176 = "Data.List.NonEmpty.foldl"
d176 v0 v1 v2 v3 v4 v5 v6 = du176 v4 v5 v6
du176 v0 v1 v2
  = coe
      MAlonzo.Code.Data.List.Base.du166 v0 (coe v1 (coe d20 v2))
      (coe d22 v2)
name190 = "Data.List.NonEmpty.foldl\8321"
d190 v0 v1 v2 = du190 v2
du190 v0 = coe du176 v0 (\ v1 -> v1)
name198 = "Data.List.NonEmpty._\8314++\8314_"
d198 v0 v1 v2 v3 = du198 v2 v3
du198 v0 v1
  = coe
      C24 (coe d20 v0)
      (coe
         MAlonzo.Code.Data.List.Base.du18 (coe d22 v0)
         (coe (:) (coe d20 v1) (coe d22 v1)))
name212 = "Data.List.NonEmpty._\8314++_"
d212 v0 v1 v2 v3 = du212 v2 v3
du212 v0 v1
  = coe
      C24 (coe d20 v0)
      (coe MAlonzo.Code.Data.List.Base.du18 (coe d22 v0) v1)
name224 = "Data.List.NonEmpty._++\8314_"
d224 v0 v1 v2 v3 = du224 v2 v3
du224 v0 v1 = coe MAlonzo.Code.Data.List.Base.du144 du38 v1 v0
name234 = "Data.List.NonEmpty.concat"
d234 v0 v1 v2 = du234 v2
du234 v0
  = coe
      du212 (coe d20 v0)
      (coe
         MAlonzo.Code.Data.List.Base.du184
         (coe
            MAlonzo.Code.Data.List.Base.du56
            (\ v1 -> coe (:) (coe d20 v1) (coe d22 v1)) (coe d22 v0)))
name242 = "Data.List.NonEmpty.monad"
d242 v0 = du242
du242
  = coe
      MAlonzo.Code.Category.Monad.Indexed.C1 (\ v0 v1 v2 -> coe du30 v2)
      (\ v0 v1 v2 v3 v4 v5 v6 -> coe du234 (coe du116 v6 v5))
name252 = "Data.List.NonEmpty.reverse"
d252 v0 v1 = du252
du252
  = coe
      du102
      (\ v0 ->
         coe
           MAlonzo.Code.Function.du58 (coe MAlonzo.Code.Data.Product.du134 v0)
           MAlonzo.Code.Data.Vec.du512)
name258 = "Data.List.NonEmpty._\8759\691_"
d258 v0 v1 v2 v3 = du258 v2 v3
du258 v0 v1
  = case coe v0 of
      [] -> coe du30 v1
      (:) v2 v3
        -> coe C24 v2 (coe MAlonzo.Code.Data.List.Base.du32 v3 v1)
      _ -> coe MAlonzo.RTE.mazUnreachableError
name272 = "Data.List.NonEmpty._\8314\8759\691_"
d272 v0 v1 v2 v3 = du272 v2 v3
du272 v0 v1 = coe du258 (coe (:) (coe d20 v0) (coe d22 v0)) v1
name282 = "Data.List.NonEmpty.SnocView"
d282 a0 a1 a2 = ()
data T282 a0 a1 = C292 a0 a1
name300 = "Data.List.NonEmpty.snocView"
d300 v0 v1 v2 = du300 v2
du300 v0
  = let v1 = coe MAlonzo.Code.Data.List.Base.du594 (coe d22 v0) in
    let v2 = coe d20 v0 in
    case coe v1 of
      MAlonzo.Code.Data.List.Base.C580 -> coe C292 [] v2
      MAlonzo.Code.Data.List.Base.C586 v3 v4
        -> coe C292 (coe (:) v2 v3) v4
      _ -> coe MAlonzo.RTE.mazUnreachableError
name322 = "Data.List.NonEmpty.last"
d322 v0 v1 v2 = du322 v2
du322 v0
  = let v1 = coe du300 v0 in
    case coe v1 of
      C292 v2 v3 -> coe v3
      _ -> coe MAlonzo.RTE.mazUnreachableError
name340 = "Data.List.NonEmpty.split"
d340 v0 v1 v2 v3 = du340 v2 v3
du340 v0 v1
  = case coe v1 of
      [] -> coe v1
      (:) v2 v3
        -> let v4 = coe v0 v2 in
           let v5 = coe du340 v0 v3 in
           case coe v4 of
             False
               -> let v6
                        = coe
                            (:)
                            (coe
                               Right
                               (coe
                                  du30
                                  (coe
                                     MAlonzo.Code.Data.Product.C30 v2
                                     (coe
                                        MAlonzo.Code.Function.Equality.d38
                                        (coe
                                           MAlonzo.Code.Function.Equivalence.d36
                                           (coe MAlonzo.Code.Data.Bool.Properties.d808 v4))
                                        erased))))
                            v5 in
                  case coe v5 of
                    (:) v7 v8
                      -> case coe v7 of
                           Right v9
                             -> coe
                                  (:)
                                  (coe
                                     Right
                                     (coe
                                        du38
                                        (coe
                                           MAlonzo.Code.Data.Product.C30 v2
                                           (coe
                                              MAlonzo.Code.Function.Equality.d38
                                              (coe
                                                 MAlonzo.Code.Function.Equivalence.d36
                                                 (coe MAlonzo.Code.Data.Bool.Properties.d808 v4))
                                              erased))
                                        v9))
                                  v8
                           _ -> coe v6
                    _ -> coe v6
             True
               -> let v6
                        = coe
                            (:)
                            (coe
                               Left
                               (coe
                                  du30
                                  (coe
                                     MAlonzo.Code.Data.Product.C30 v2
                                     (coe
                                        MAlonzo.Code.Function.Equality.d38
                                        (coe
                                           MAlonzo.Code.Function.Equivalence.d36
                                           (coe MAlonzo.Code.Data.Bool.Properties.d804 v4))
                                        erased))))
                            v5 in
                  case coe v5 of
                    (:) v7 v8
                      -> case coe v7 of
                           Left v9
                             -> coe
                                  (:)
                                  (coe
                                     Left
                                     (coe
                                        du38
                                        (coe
                                           MAlonzo.Code.Data.Product.C30 v2
                                           (coe
                                              MAlonzo.Code.Function.Equality.d38
                                              (coe
                                                 MAlonzo.Code.Function.Equivalence.d36
                                                 (coe MAlonzo.Code.Data.Bool.Properties.d804 v4))
                                              erased))
                                        v9))
                                  v8
                           _ -> coe v6
                    _ -> coe v6
             _ -> coe MAlonzo.RTE.mazUnreachableError
      _ -> coe MAlonzo.RTE.mazUnreachableError
name410 = "Data.List.NonEmpty.flatten"
d410 v0 v1 v2 v3 v4 v5 = du410
du410
  = coe
      MAlonzo.Code.Function.du38
      (\ v0 -> MAlonzo.Code.Data.List.Base.du184)
      (coe
         MAlonzo.Code.Data.List.Base.du56
         (coe
            MAlonzo.Code.Data.Sum.du48
            (coe
               MAlonzo.Code.Function.du38
               (\ v0 v1 -> coe (:) (coe d20 v1) (coe d22 v1))
               (coe du116 MAlonzo.Code.Data.Product.d26))
            (coe
               MAlonzo.Code.Function.du38
               (\ v0 v1 -> coe (:) (coe d20 v1) (coe d22 v1))
               (coe du116 MAlonzo.Code.Data.Product.d26))))
name420 = "Data.List.NonEmpty.flatten-split"
d420 = erased
name486 = "Data.List.NonEmpty.wordsBy"
d486 v0 v1 v2 = du486 v2
du486 v0
  = coe
      MAlonzo.Code.Function.du38
      (\ v1 ->
         coe
           MAlonzo.Code.Data.List.Base.du620
           (coe
              MAlonzo.Code.Data.Sum.du48 (\ v2 -> Nothing)
              (coe
                 MAlonzo.Code.Function.du58 Just
                 (coe du116 MAlonzo.Code.Data.Product.d26))))
      (coe du340 v0)