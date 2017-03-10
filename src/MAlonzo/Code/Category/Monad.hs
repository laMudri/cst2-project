{-# LANGUAGE EmptyDataDecls, ExistentialQuantification,
             ScopedTypeVariables, NoMonomorphismRestriction, Rank2Types #-}
module MAlonzo.Code.Category.Monad where

import MAlonzo.RTE (coe, erased, addInt, subInt, mulInt, quotInt,
                    remInt, geqInt, ltInt, eqInt, eqFloat)
import qualified Control.Exception
import qualified Data.Text
import qualified Data.Text.IO
import qualified MAlonzo.RTE
import qualified System.Environment
import qualified System.IO
import qualified Data.Text
import qualified MAlonzo.Code.Category.Applicative.Indexed
import qualified MAlonzo.Code.Category.Functor
import qualified MAlonzo.Code.Category.Monad.Indexed

name6 = "Category.Monad.RawMonad"
d6 = erased
name16 = "Category.Monad.RawMonadZero"
d16 = erased
name26 = "Category.Monad.RawMonadPlus"
d26 = erased
name44 = "Category.Monad.RawMonad._._<$_"
d44 v0 v1 v2 = du44 v2
du44 v0
  = let v1 = coe MAlonzo.Code.Category.Monad.Indexed.du146 v0 in
    \ v2 v3 v4 v5 v6 v7 ->
      coe
        MAlonzo.Code.Category.Functor.du30
        (coe MAlonzo.Code.Category.Applicative.Indexed.du74 v1 v2 v3) v6 v7
name46 = "Category.Monad.RawMonad._._<$>_"
d46 v0 v1 v2 = du46 v2
du46 v0
  = let v1 = coe MAlonzo.Code.Category.Monad.Indexed.du146 v0 in
    \ v2 v3 ->
      coe
        MAlonzo.Code.Category.Functor.d24
        (coe MAlonzo.Code.Category.Applicative.Indexed.du74 v1 v2 v3)
name48 = "Category.Monad.RawMonad._._<=<_"
d48 v0 v1 v2 = du48 v2
du48 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9
  = coe MAlonzo.Code.Category.Monad.Indexed.du128 v0 v1 v2 v3 v8 v9
name50 = "Category.Monad.RawMonad._._<\8859_"
d50 v0 v1 v2 = du50 v2
du50 v0 v1 v2 v3 v4 v5 v6 v7
  = coe
      MAlonzo.Code.Category.Applicative.Indexed.du100
      (coe MAlonzo.Code.Category.Monad.Indexed.du146 v0) v1 v2 v3 v6 v7
name52 = "Category.Monad.RawMonad._._=<<_"
d52 v0 v1 v2 v3 v4 v5 v6 v7 = du52 v0 v1 v2 v3 v6 v7
du52 v0 v1 v2 v3 v4 v5
  = coe
      MAlonzo.Code.Category.Monad.Indexed.d58 v0 v1 v2 v3 erased erased
      v5 v4
name54 = "Category.Monad.RawMonad._._>=>_"
d54 v0 v1 v2 = du54 v2
du54 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9
  = coe MAlonzo.Code.Category.Monad.Indexed.du108 v0 v1 v2 v3 v8 v9
name56 = "Category.Monad.RawMonad._._>>_"
d56 v0 v1 v2 v3 v4 v5 v6 v7 = du56 v0 v1 v2 v3 v6 v7
du56 v0 v1 v2 v3 v4 v5
  = coe
      MAlonzo.Code.Category.Monad.Indexed.d58 v0 v1 v2 v3 erased erased
      v4 (\ v6 -> v5)
name58 = "Category.Monad.RawMonad._._>>=_"
d58 v0 = coe MAlonzo.Code.Category.Monad.Indexed.d58 v0
name60 = "Category.Monad.RawMonad._._\8855_"
d60 v0 v1 v2 = du60 v2
du60 v0 v1 v2 v3 v4 v5 v6 v7
  = coe
      MAlonzo.Code.Category.Applicative.Indexed.du132
      (coe MAlonzo.Code.Category.Monad.Indexed.du146 v0) v1 v2 v3 v6 v7
name62 = "Category.Monad.RawMonad._._\8859_"
d62 v0 v1 v2 = du62 v2
du62 v0
  = coe
      MAlonzo.Code.Category.Applicative.Indexed.d68
      (coe MAlonzo.Code.Category.Monad.Indexed.du146 v0)
name64 = "Category.Monad.RawMonad._._\8859>_"
d64 v0 v1 v2 = du64 v2
du64 v0 v1 v2 v3 v4 v5 v6 v7
  = coe
      MAlonzo.Code.Category.Applicative.Indexed.du116
      (coe MAlonzo.Code.Category.Monad.Indexed.du146 v0) v1 v2 v3 v6 v7
name66 = "Category.Monad.RawMonad._.join"
d66 v0 v1 v2 = du66 v2
du66 v0 v1 v2 v3 v4 v5
  = coe MAlonzo.Code.Category.Monad.Indexed.du142 v0 v1 v2 v3 v5
name68 = "Category.Monad.RawMonad._.pure"
d68 v0 v1 v2 = du68 v2
du68 v0
  = coe
      MAlonzo.Code.Category.Applicative.Indexed.d56
      (coe MAlonzo.Code.Category.Monad.Indexed.du146 v0)
name70 = "Category.Monad.RawMonad._.rawFunctor"
d70 v0 v1 v2 = du70 v2
du70 v0
  = coe
      MAlonzo.Code.Category.Applicative.Indexed.du74
      (coe MAlonzo.Code.Category.Monad.Indexed.du146 v0)
name72 = "Category.Monad.RawMonad._.rawIApplicative"
d72 v0 v1 v2 = du72 v2
du72 v0 = coe MAlonzo.Code.Category.Monad.Indexed.du146 v0
name74 = "Category.Monad.RawMonad._.return"
d74 v0 = coe MAlonzo.Code.Category.Monad.Indexed.d46 v0
name76 = "Category.Monad.RawMonad._.zipWith"
d76 v0 v1 v2 = du76 v2
du76 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9
  = coe
      MAlonzo.Code.Category.Applicative.Indexed.du150
      (coe MAlonzo.Code.Category.Monad.Indexed.du146 v0) v1 v2 v3 v7 v8
      v9
name88 = "Category.Monad.RawMonadZero._._<$_"
d88 v0 v1 v2 = du88 v2
du88 v0
  = let v1 = coe MAlonzo.Code.Category.Monad.Indexed.d204 v0 in
    let v2 = coe MAlonzo.Code.Category.Monad.Indexed.du146 v1 in
    \ v3 v4 v5 v6 v7 v8 ->
      coe
        MAlonzo.Code.Category.Functor.du30
        (coe MAlonzo.Code.Category.Applicative.Indexed.du74 v2 v3 v4) v7 v8
name90 = "Category.Monad.RawMonadZero._._<$>_"
d90 v0 v1 v2 = du90 v2
du90 v0
  = let v1 = coe MAlonzo.Code.Category.Monad.Indexed.d204 v0 in
    let v2 = coe MAlonzo.Code.Category.Monad.Indexed.du146 v1 in
    \ v3 v4 ->
      coe
        MAlonzo.Code.Category.Functor.d24
        (coe MAlonzo.Code.Category.Applicative.Indexed.du74 v2 v3 v4)
name92 = "Category.Monad.RawMonadZero._._<=<_"
d92 v0 v1 v2 = du92 v2
du92 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9
  = coe
      MAlonzo.Code.Category.Monad.Indexed.du128
      (coe MAlonzo.Code.Category.Monad.Indexed.d204 v0) v1 v2 v3 v8 v9
name94 = "Category.Monad.RawMonadZero._._<\8859_"
d94 v0 v1 v2 = du94 v2
du94 v0
  = let v1 = coe MAlonzo.Code.Category.Monad.Indexed.d204 v0 in
    \ v2 v3 v4 v5 v6 v7 v8 ->
      coe
        MAlonzo.Code.Category.Applicative.Indexed.du100
        (coe MAlonzo.Code.Category.Monad.Indexed.du146 v1) v2 v3 v4 v7 v8
name96 = "Category.Monad.RawMonadZero._._=<<_"
d96 v0 v1 v2 v3 v4 v5 v6 v7 = du96 v0 v1 v2 v3 v6 v7
du96 v0 v1 v2 v3 v4 v5
  = coe
      MAlonzo.Code.Category.Monad.Indexed.d58
      (coe MAlonzo.Code.Category.Monad.Indexed.d204 v0) v1 v2 v3 erased
      erased v5 v4
name98 = "Category.Monad.RawMonadZero._._>=>_"
d98 v0 v1 v2 = du98 v2
du98 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9
  = coe
      MAlonzo.Code.Category.Monad.Indexed.du108
      (coe MAlonzo.Code.Category.Monad.Indexed.d204 v0) v1 v2 v3 v8 v9
name100 = "Category.Monad.RawMonadZero._._>>_"
d100 v0 v1 v2 v3 v4 v5 v6 v7 = du100 v0 v1 v2 v3 v6 v7
du100 v0 v1 v2 v3 v4 v5
  = coe
      MAlonzo.Code.Category.Monad.Indexed.d58
      (coe MAlonzo.Code.Category.Monad.Indexed.d204 v0) v1 v2 v3 erased
      erased v4 (\ v6 -> v5)
name102 = "Category.Monad.RawMonadZero._._>>=_"
d102 v0
  = coe
      MAlonzo.Code.Category.Monad.Indexed.d58
      (coe MAlonzo.Code.Category.Monad.Indexed.d204 v0)
name104 = "Category.Monad.RawMonadZero._._\8855_"
d104 v0 v1 v2 = du104 v2
du104 v0
  = let v1 = coe MAlonzo.Code.Category.Monad.Indexed.d204 v0 in
    \ v2 v3 v4 v5 v6 v7 v8 ->
      coe
        MAlonzo.Code.Category.Applicative.Indexed.du132
        (coe MAlonzo.Code.Category.Monad.Indexed.du146 v1) v2 v3 v4 v7 v8
name106 = "Category.Monad.RawMonadZero._._\8859_"
d106 v0 v1 v2 = du106 v2
du106 v0
  = let v1 = coe MAlonzo.Code.Category.Monad.Indexed.d204 v0 in
    coe
      MAlonzo.Code.Category.Applicative.Indexed.d68
      (coe MAlonzo.Code.Category.Monad.Indexed.du146 v1)
name108 = "Category.Monad.RawMonadZero._._\8859>_"
d108 v0 v1 v2 = du108 v2
du108 v0
  = let v1 = coe MAlonzo.Code.Category.Monad.Indexed.d204 v0 in
    \ v2 v3 v4 v5 v6 v7 v8 ->
      coe
        MAlonzo.Code.Category.Applicative.Indexed.du116
        (coe MAlonzo.Code.Category.Monad.Indexed.du146 v1) v2 v3 v4 v7 v8
name110 = "Category.Monad.RawMonadZero._.join"
d110 v0 v1 v2 = du110 v2
du110 v0 v1 v2 v3 v4 v5
  = coe
      MAlonzo.Code.Category.Monad.Indexed.du142
      (coe MAlonzo.Code.Category.Monad.Indexed.d204 v0) v1 v2 v3 v5
name112 = "Category.Monad.RawMonadZero._.monad"
d112 v0 = coe MAlonzo.Code.Category.Monad.Indexed.d204 v0
name114 = "Category.Monad.RawMonadZero._.pure"
d114 v0 v1 v2 = du114 v2
du114 v0
  = let v1 = coe MAlonzo.Code.Category.Monad.Indexed.d204 v0 in
    coe
      MAlonzo.Code.Category.Applicative.Indexed.d56
      (coe MAlonzo.Code.Category.Monad.Indexed.du146 v1)
name116 = "Category.Monad.RawMonadZero._.rawFunctor"
d116 v0 v1 v2 = du116 v2
du116 v0
  = let v1 = coe MAlonzo.Code.Category.Monad.Indexed.d204 v0 in
    coe
      MAlonzo.Code.Category.Applicative.Indexed.du74
      (coe MAlonzo.Code.Category.Monad.Indexed.du146 v1)
name118 = "Category.Monad.RawMonadZero._.rawIApplicative"
d118 v0 v1 v2 = du118 v2
du118 v0
  = coe
      MAlonzo.Code.Category.Monad.Indexed.du146
      (coe MAlonzo.Code.Category.Monad.Indexed.d204 v0)
name120 = "Category.Monad.RawMonadZero._.return"
d120 v0
  = coe
      MAlonzo.Code.Category.Monad.Indexed.d46
      (coe MAlonzo.Code.Category.Monad.Indexed.d204 v0)
name122 = "Category.Monad.RawMonadZero._.zipWith"
d122 v0 v1 v2 = du122 v2
du122 v0
  = let v1 = coe MAlonzo.Code.Category.Monad.Indexed.d204 v0 in
    \ v2 v3 v4 v5 v6 v7 v8 v9 v10 ->
      coe
        MAlonzo.Code.Category.Applicative.Indexed.du150
        (coe MAlonzo.Code.Category.Monad.Indexed.du146 v1) v2 v3 v4 v8 v9
        v10
name124 = "Category.Monad.RawMonadZero._.\8709"
d124 v0 = coe MAlonzo.Code.Category.Monad.Indexed.d212 v0
name136 = "Category.Monad.RawMonadPlus._._<$_"
d136 v0 v1 v2 = du136 v2
du136 v0
  = let v1 = coe MAlonzo.Code.Category.Monad.Indexed.d278 v0 in
    let v2 = coe MAlonzo.Code.Category.Monad.Indexed.d204 v1 in
    let v3 = coe MAlonzo.Code.Category.Monad.Indexed.du146 v2 in
    \ v4 v5 v6 v7 v8 v9 ->
      coe
        MAlonzo.Code.Category.Functor.du30
        (coe MAlonzo.Code.Category.Applicative.Indexed.du74 v3 v4 v5) v8 v9
name138 = "Category.Monad.RawMonadPlus._._<$>_"
d138 v0 v1 v2 = du138 v2
du138 v0
  = let v1 = coe MAlonzo.Code.Category.Monad.Indexed.d278 v0 in
    let v2 = coe MAlonzo.Code.Category.Monad.Indexed.d204 v1 in
    let v3 = coe MAlonzo.Code.Category.Monad.Indexed.du146 v2 in
    \ v4 v5 ->
      coe
        MAlonzo.Code.Category.Functor.d24
        (coe MAlonzo.Code.Category.Applicative.Indexed.du74 v3 v4 v5)
name140 = "Category.Monad.RawMonadPlus._._<=<_"
d140 v0 v1 v2 = du140 v2
du140 v0
  = let v1 = coe MAlonzo.Code.Category.Monad.Indexed.d278 v0 in
    \ v2 v3 v4 v5 v6 v7 v8 v9 v10 ->
      coe
        MAlonzo.Code.Category.Monad.Indexed.du128
        (coe MAlonzo.Code.Category.Monad.Indexed.d204 v1) v2 v3 v4 v9 v10
name142 = "Category.Monad.RawMonadPlus._._<\8859_"
d142 v0 v1 v2 = du142 v2
du142 v0
  = let v1 = coe MAlonzo.Code.Category.Monad.Indexed.d278 v0 in
    let v2 = coe MAlonzo.Code.Category.Monad.Indexed.d204 v1 in
    \ v3 v4 v5 v6 v7 v8 v9 ->
      coe
        MAlonzo.Code.Category.Applicative.Indexed.du100
        (coe MAlonzo.Code.Category.Monad.Indexed.du146 v2) v3 v4 v5 v8 v9
name144 = "Category.Monad.RawMonadPlus._._=<<_"
d144 v0 v1 v2 v3 v4 v5 v6 v7 = du144 v0 v1 v2 v3 v6 v7
du144 v0 v1 v2 v3 v4 v5
  = coe
      MAlonzo.Code.Category.Monad.Indexed.d58
      (coe
         MAlonzo.Code.Category.Monad.Indexed.d204
         (coe MAlonzo.Code.Category.Monad.Indexed.d278 v0))
      v1 v2 v3 erased erased v5 v4
name146 = "Category.Monad.RawMonadPlus._._>=>_"
d146 v0 v1 v2 = du146 v2
du146 v0
  = let v1 = coe MAlonzo.Code.Category.Monad.Indexed.d278 v0 in
    \ v2 v3 v4 v5 v6 v7 v8 v9 v10 ->
      coe
        MAlonzo.Code.Category.Monad.Indexed.du108
        (coe MAlonzo.Code.Category.Monad.Indexed.d204 v1) v2 v3 v4 v9 v10
name148 = "Category.Monad.RawMonadPlus._._>>_"
d148 v0 v1 v2 v3 v4 v5 v6 v7 = du148 v0 v1 v2 v3 v6 v7
du148 v0 v1 v2 v3 v4 v5
  = coe
      MAlonzo.Code.Category.Monad.Indexed.d58
      (coe
         MAlonzo.Code.Category.Monad.Indexed.d204
         (coe MAlonzo.Code.Category.Monad.Indexed.d278 v0))
      v1 v2 v3 erased erased v4 (\ v6 -> v5)
name150 = "Category.Monad.RawMonadPlus._._>>=_"
d150 v0
  = coe
      MAlonzo.Code.Category.Monad.Indexed.d58
      (coe
         MAlonzo.Code.Category.Monad.Indexed.d204
         (coe MAlonzo.Code.Category.Monad.Indexed.d278 v0))
name152 = "Category.Monad.RawMonadPlus._._\8739_"
d152 v0 = coe MAlonzo.Code.Category.Monad.Indexed.d286 v0
name154 = "Category.Monad.RawMonadPlus._._\8855_"
d154 v0 v1 v2 = du154 v2
du154 v0
  = let v1 = coe MAlonzo.Code.Category.Monad.Indexed.d278 v0 in
    let v2 = coe MAlonzo.Code.Category.Monad.Indexed.d204 v1 in
    \ v3 v4 v5 v6 v7 v8 v9 ->
      coe
        MAlonzo.Code.Category.Applicative.Indexed.du132
        (coe MAlonzo.Code.Category.Monad.Indexed.du146 v2) v3 v4 v5 v8 v9
name156 = "Category.Monad.RawMonadPlus._._\8859_"
d156 v0 v1 v2 = du156 v2
du156 v0
  = let v1 = coe MAlonzo.Code.Category.Monad.Indexed.d278 v0 in
    let v2 = coe MAlonzo.Code.Category.Monad.Indexed.d204 v1 in
    coe
      MAlonzo.Code.Category.Applicative.Indexed.d68
      (coe MAlonzo.Code.Category.Monad.Indexed.du146 v2)
name158 = "Category.Monad.RawMonadPlus._._\8859>_"
d158 v0 v1 v2 = du158 v2
du158 v0
  = let v1 = coe MAlonzo.Code.Category.Monad.Indexed.d278 v0 in
    let v2 = coe MAlonzo.Code.Category.Monad.Indexed.d204 v1 in
    \ v3 v4 v5 v6 v7 v8 v9 ->
      coe
        MAlonzo.Code.Category.Applicative.Indexed.du116
        (coe MAlonzo.Code.Category.Monad.Indexed.du146 v2) v3 v4 v5 v8 v9
name160 = "Category.Monad.RawMonadPlus._.join"
d160 v0 v1 v2 = du160 v2
du160 v0
  = let v1 = coe MAlonzo.Code.Category.Monad.Indexed.d278 v0 in
    \ v2 v3 v4 v5 v6 ->
      coe
        MAlonzo.Code.Category.Monad.Indexed.du142
        (coe MAlonzo.Code.Category.Monad.Indexed.d204 v1) v2 v3 v4 v6
name162 = "Category.Monad.RawMonadPlus._.monad"
d162 v0
  = coe
      MAlonzo.Code.Category.Monad.Indexed.d204
      (coe MAlonzo.Code.Category.Monad.Indexed.d278 v0)
name164 = "Category.Monad.RawMonadPlus._.monadZero"
d164 v0 = coe MAlonzo.Code.Category.Monad.Indexed.d278 v0
name166 = "Category.Monad.RawMonadPlus._.pure"
d166 v0 v1 v2 = du166 v2
du166 v0
  = let v1 = coe MAlonzo.Code.Category.Monad.Indexed.d278 v0 in
    let v2 = coe MAlonzo.Code.Category.Monad.Indexed.d204 v1 in
    coe
      MAlonzo.Code.Category.Applicative.Indexed.d56
      (coe MAlonzo.Code.Category.Monad.Indexed.du146 v2)
name168 = "Category.Monad.RawMonadPlus._.rawFunctor"
d168 v0 v1 v2 = du168 v2
du168 v0
  = let v1 = coe MAlonzo.Code.Category.Monad.Indexed.d278 v0 in
    let v2 = coe MAlonzo.Code.Category.Monad.Indexed.d204 v1 in
    coe
      MAlonzo.Code.Category.Applicative.Indexed.du74
      (coe MAlonzo.Code.Category.Monad.Indexed.du146 v2)
name170 = "Category.Monad.RawMonadPlus._.rawIApplicative"
d170 v0 v1 v2 = du170 v2
du170 v0
  = let v1 = coe MAlonzo.Code.Category.Monad.Indexed.d278 v0 in
    coe
      MAlonzo.Code.Category.Monad.Indexed.du146
      (coe MAlonzo.Code.Category.Monad.Indexed.d204 v1)
name172 = "Category.Monad.RawMonadPlus._.return"
d172 v0
  = coe
      MAlonzo.Code.Category.Monad.Indexed.d46
      (coe
         MAlonzo.Code.Category.Monad.Indexed.d204
         (coe MAlonzo.Code.Category.Monad.Indexed.d278 v0))
name174 = "Category.Monad.RawMonadPlus._.zipWith"
d174 v0 v1 v2 = du174 v2
du174 v0
  = let v1 = coe MAlonzo.Code.Category.Monad.Indexed.d278 v0 in
    let v2 = coe MAlonzo.Code.Category.Monad.Indexed.d204 v1 in
    \ v3 v4 v5 v6 v7 v8 v9 v10 v11 ->
      coe
        MAlonzo.Code.Category.Applicative.Indexed.du150
        (coe MAlonzo.Code.Category.Monad.Indexed.du146 v2) v3 v4 v5 v9 v10
        v11
name176 = "Category.Monad.RawMonadPlus._.\8709"
d176 v0
  = coe
      MAlonzo.Code.Category.Monad.Indexed.d212
      (coe MAlonzo.Code.Category.Monad.Indexed.d278 v0)