{-# LANGUAGE EmptyDataDecls, ExistentialQuantification,
             ScopedTypeVariables, NoMonomorphismRestriction, Rank2Types #-}
module MAlonzo.Code.Category.Applicative.Indexed where

import MAlonzo.RTE (coe, erased, addInt, subInt, mulInt, quotInt,
                    remInt, geqInt, ltInt, eqInt, eqFloat)
import qualified Control.Exception
import qualified Data.Text
import qualified Data.Text.IO
import qualified MAlonzo.RTE
import qualified System.Environment
import qualified System.IO
import qualified Data.Text
import qualified MAlonzo.Code.Category.Functor
import qualified MAlonzo.Code.Data.Product
import qualified MAlonzo.Code.Function

name10 = "Category.Applicative.Indexed.IFun"
d10 = erased
name24 = "Category.Applicative.Indexed.RawIApplicative"
d24 a0 a1 a2 a3 = ()
data T24 a0 a1 = C15 a0 a1
name56 = "Category.Applicative.Indexed.RawIApplicative.pure"
d56 v0
  = case coe v0 of
      C15 v1 v2 -> coe v1
      _ -> coe MAlonzo.RTE.mazUnreachableError
name68 = "Category.Applicative.Indexed.RawIApplicative._\8859_"
d68 v0
  = case coe v0 of
      C15 v1 v2 -> coe v2
      _ -> coe MAlonzo.RTE.mazUnreachableError
name74 = "Category.Applicative.Indexed.RawIApplicative.rawFunctor"
d74 v0 v1 v2 v3 v4 v5 v6 = du74 v4 v5 v6
du74 v0 v1 v2
  = coe
      MAlonzo.Code.Category.Functor.C1
      (\ v3 v4 v5 ->
         coe d68 v0 v1 v1 v2 erased erased (coe d56 v0 v1 erased v5))
name86 = "Category.Applicative.Indexed.RawIApplicative.RF._<$_"
d86 v0 v1 v2 v3 v4 v5 v6 = du86 v4 v5 v6
du86 v0 v1 v2 v3 v4 v5 v6
  = coe MAlonzo.Code.Category.Functor.du30 (coe du74 v0 v1 v2) v5 v6
name88 = "Category.Applicative.Indexed.RawIApplicative.RF._<$>_"
d88 v0 v1 v2 v3 v4 v5 v6 = du88 v4 v5 v6
du88 v0 v1 v2
  = coe MAlonzo.Code.Category.Functor.d24 (coe du74 v0 v1 v2)
name100 = "Category.Applicative.Indexed.RawIApplicative._<\8859_"
d100 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11
  = du100 v4 v5 v6 v7 v10 v11
du100 v0 v1 v2 v3 v4 v5
  = coe
      d68 v0 v1 v2 v3 erased erased
      (coe
         MAlonzo.Code.Category.Functor.d24 (coe du74 v0 v1 v2) erased erased
         (\ v6 v7 -> v6) v4)
      v5
name116 = "Category.Applicative.Indexed.RawIApplicative._\8859>_"
d116 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11
  = du116 v4 v5 v6 v7 v10 v11
du116 v0 v1 v2 v3 v4 v5
  = coe
      d68 v0 v1 v2 v3 erased erased
      (coe
         MAlonzo.Code.Category.Functor.d24 (coe du74 v0 v1 v2) erased erased
         (coe MAlonzo.Code.Function.du138 (\ v6 v7 -> v6)) v4)
      v5
name132 = "Category.Applicative.Indexed.RawIApplicative._\8855_"
d132 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11
  = du132 v4 v5 v6 v7 v10 v11
du132 v0 v1 v2 v3 v4 v5
  = coe
      d68 v0 v1 v2 v3 erased erased
      (coe
         MAlonzo.Code.Category.Functor.d24 (coe du74 v0 v1 v2) erased erased
         MAlonzo.Code.Data.Product.C30 v4)
      v5
name150 = "Category.Applicative.Indexed.RawIApplicative.zipWith"
d150 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13
  = du150 v4 v5 v6 v7 v11 v12 v13
du150 v0 v1 v2 v3 v4 v5 v6
  = coe
      d68 v0 v1 v2 v3 erased erased
      (coe
         MAlonzo.Code.Category.Functor.d24 (coe du74 v0 v1 v2) erased erased
         v4 v5)
      v6
name172 = "Category.Applicative.Indexed.Morphism"
d172 a0 a1 a2 a3 a4 a5 a6 = ()
newtype T172 a0 a1 a2 = C391 a0
name198 = "Category.Applicative.Indexed.A\8321._\8859_"
d198 v0 v1 v2 v3 v4 v5 v6 = du198 v5
du198 v0 = coe d68 v0
name202 = "Category.Applicative.Indexed.A\8321.pure"
d202 v0 v1 v2 v3 v4 v5 v6 = du202 v5
du202 v0 = coe d56 v0
name262 = "Category.Applicative.Indexed.Morphism.A\8321._<$_"
d262 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 = du262 v5 v8 v9
du262 v0 v1 v2 v3 v4 v5 v6
  = coe MAlonzo.Code.Category.Functor.du30 (coe du74 v0 v1 v2) v5 v6
name264 = "Category.Applicative.Indexed.Morphism.A\8321._<$>_"
d264 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 = du264 v5 v8 v9
du264 v0 v1 v2
  = coe MAlonzo.Code.Category.Functor.d24 (coe du74 v0 v1 v2)
name266 = "Category.Applicative.Indexed.Morphism.A\8321._<\8859_"
d266 v0 v1 v2 v3 v4 v5 v6 v7 = du266 v5
du266 v0 v1 v2 v3 v4 v5 v6 v7 = coe du100 v0 v1 v2 v3 v6 v7
name268 = "Category.Applicative.Indexed.Morphism.A\8321._\8855_"
d268 v0 v1 v2 v3 v4 v5 v6 v7 = du268 v5
du268 v0 v1 v2 v3 v4 v5 v6 v7 = coe du132 v0 v1 v2 v3 v6 v7
name270 = "Category.Applicative.Indexed.Morphism.A\8321._\8859_"
d270 v0 v1 v2 v3 v4 v5 v6 v7 = du270 v5
du270 v0 = coe d68 v0
name272 = "Category.Applicative.Indexed.Morphism.A\8321._\8859>_"
d272 v0 v1 v2 v3 v4 v5 v6 v7 = du272 v5
du272 v0 v1 v2 v3 v4 v5 v6 v7 = coe du116 v0 v1 v2 v3 v6 v7
name274 = "Category.Applicative.Indexed.Morphism.A\8321.pure"
d274 v0 v1 v2 v3 v4 v5 v6 v7 = du274 v5
du274 v0 = coe d56 v0
name276 = "Category.Applicative.Indexed.Morphism.A\8321.rawFunctor"
d276 v0 v1 v2 v3 v4 v5 v6 v7 = du276 v5
du276 v0 = coe du74 v0
name278 = "Category.Applicative.Indexed.Morphism.A\8321.zipWith"
d278 v0 v1 v2 v3 v4 v5 v6 v7 = du278 v5
du278 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9
  = coe du150 v0 v1 v2 v3 v7 v8 v9
name282 = "Category.Applicative.Indexed.Morphism.A\8322._<$_"
d282 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 = du282 v6 v8 v9
du282 v0 v1 v2 v3 v4 v5 v6
  = coe MAlonzo.Code.Category.Functor.du30 (coe du74 v0 v1 v2) v5 v6
name284 = "Category.Applicative.Indexed.Morphism.A\8322._<$>_"
d284 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 = du284 v6 v8 v9
du284 v0 v1 v2
  = coe MAlonzo.Code.Category.Functor.d24 (coe du74 v0 v1 v2)
name286 = "Category.Applicative.Indexed.Morphism.A\8322._<\8859_"
d286 v0 v1 v2 v3 v4 v5 v6 v7 = du286 v6
du286 v0 v1 v2 v3 v4 v5 v6 v7 = coe du100 v0 v1 v2 v3 v6 v7
name288 = "Category.Applicative.Indexed.Morphism.A\8322._\8855_"
d288 v0 v1 v2 v3 v4 v5 v6 v7 = du288 v6
du288 v0 v1 v2 v3 v4 v5 v6 v7 = coe du132 v0 v1 v2 v3 v6 v7
name290 = "Category.Applicative.Indexed.Morphism.A\8322._\8859_"
d290 v0 v1 v2 v3 v4 v5 v6 v7 = du290 v6
du290 v0 = coe d68 v0
name292 = "Category.Applicative.Indexed.Morphism.A\8322._\8859>_"
d292 v0 v1 v2 v3 v4 v5 v6 v7 = du292 v6
du292 v0 v1 v2 v3 v4 v5 v6 v7 = coe du116 v0 v1 v2 v3 v6 v7
name294 = "Category.Applicative.Indexed.Morphism.A\8322.pure"
d294 v0 v1 v2 v3 v4 v5 v6 v7 = du294 v6
du294 v0 = coe d56 v0
name296 = "Category.Applicative.Indexed.Morphism.A\8322.rawFunctor"
d296 v0 v1 v2 v3 v4 v5 v6 v7 = du296 v6
du296 v0 = coe du74 v0
name298 = "Category.Applicative.Indexed.Morphism.A\8322.zipWith"
d298 v0 v1 v2 v3 v4 v5 v6 v7 = du298 v6
du298 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9
  = coe du150 v0 v1 v2 v3 v7 v8 v9
name306 = "Category.Applicative.Indexed.Morphism.op"
d306 v0
  = case coe v0 of
      C391 v1 -> coe v1
      _ -> coe MAlonzo.RTE.mazUnreachableError
name314 = "Category.Applicative.Indexed.Morphism.op-pure"
d314 = erased
name330 = "Category.Applicative.Indexed.Morphism.op-\8859"
d330 = erased
name344 = "Category.Applicative.Indexed.Morphism.op-<$>"
d344 = erased