{-# LANGUAGE EmptyDataDecls, ExistentialQuantification,
             ScopedTypeVariables, NoMonomorphismRestriction, Rank2Types #-}
module MAlonzo.Code.Algebra where

import MAlonzo.RTE (coe, erased, addInt, subInt, mulInt, quotInt,
                    remInt, geqInt, ltInt, eqInt, eqFloat)
import qualified Control.Exception
import qualified Data.Text
import qualified Data.Text.IO
import qualified MAlonzo.RTE
import qualified System.Environment
import qualified System.IO
import qualified Data.Text
import qualified MAlonzo.Code.Algebra.Structures
import qualified MAlonzo.Code.Data.Product
import qualified MAlonzo.Code.Relation.Binary
import qualified MAlonzo.Code.Relation.Binary.Core

name6 = "Algebra.Semigroup"
d6 a0 a1 = ()
data T6 a0 a1 a2 a3 = C5 a0 a1
name20 = "Algebra.Semigroup.Carrier"
d20 = erased
name22 = "Algebra.Semigroup._\8776_"
d22 = erased
name24 = "Algebra.Semigroup._\8729_"
d24 v0
  = case coe v0 of
      C5 v3 v4 -> coe v3
      _ -> coe MAlonzo.RTE.mazUnreachableError
name26 = "Algebra.Semigroup.isSemigroup"
d26 v0
  = case coe v0 of
      C5 v3 v4 -> coe v4
      _ -> coe MAlonzo.RTE.mazUnreachableError
name30 = "Algebra.Semigroup._.assoc"
d30 v0 = coe MAlonzo.Code.Algebra.Structures.d142 (coe d26 v0)
name32 = "Algebra.Semigroup._.isEquivalence"
d32 v0 = coe MAlonzo.Code.Algebra.Structures.d140 (coe d26 v0)
name34 = "Algebra.Semigroup._.refl"
d34 v0
  = coe
      MAlonzo.Code.Relation.Binary.Core.d516
      (coe MAlonzo.Code.Algebra.Structures.d140 (coe d26 v0))
name36 = "Algebra.Semigroup._.reflexive"
d36 v0 v1 v2 = du36 v2
du36 v0
  = let v1 = coe d26 v0 in
    \ v2 v3 v4 ->
      coe
        MAlonzo.Code.Relation.Binary.Core.du522
        (coe MAlonzo.Code.Algebra.Structures.d140 v1) v2
name38 = "Algebra.Semigroup._.sym"
d38 v0
  = coe
      MAlonzo.Code.Relation.Binary.Core.d518
      (coe MAlonzo.Code.Algebra.Structures.d140 (coe d26 v0))
name40 = "Algebra.Semigroup._.trans"
d40 v0
  = coe
      MAlonzo.Code.Relation.Binary.Core.d520
      (coe MAlonzo.Code.Algebra.Structures.d140 (coe d26 v0))
name42 = "Algebra.Semigroup._.\8729-cong"
d42 v0 = coe MAlonzo.Code.Algebra.Structures.d144 (coe d26 v0)
name44 = "Algebra.Semigroup.setoid"
d44 v0
  = coe
      MAlonzo.Code.Relation.Binary.C143
      (coe MAlonzo.Code.Algebra.Structures.d140 (coe d26 v0))
name50 = "Algebra.RawMonoid"
d50 a0 a1 = ()
data T50 a0 a1 a2 a3 = C31 a0 a1
name64 = "Algebra.RawMonoid.Carrier"
d64 = erased
name66 = "Algebra.RawMonoid._\8776_"
d66 = erased
name68 = "Algebra.RawMonoid._\8729_"
d68 v0
  = case coe v0 of
      C31 v3 v4 -> coe v3
      _ -> coe MAlonzo.RTE.mazUnreachableError
name70 = "Algebra.RawMonoid.\949"
d70 v0
  = case coe v0 of
      C31 v3 v4 -> coe v4
      _ -> coe MAlonzo.RTE.mazUnreachableError
name76 = "Algebra.Monoid"
d76 a0 a1 = ()
data T76 a0 a1 a2 a3 a4 = C49 a0 a1 a2
name92 = "Algebra.Monoid.Carrier"
d92 = erased
name94 = "Algebra.Monoid._\8776_"
d94 = erased
name96 = "Algebra.Monoid._\8729_"
d96 v0
  = case coe v0 of
      C49 v3 v4 v5 -> coe v3
      _ -> coe MAlonzo.RTE.mazUnreachableError
name98 = "Algebra.Monoid.\949"
d98 v0
  = case coe v0 of
      C49 v3 v4 v5 -> coe v4
      _ -> coe MAlonzo.RTE.mazUnreachableError
name100 = "Algebra.Monoid.isMonoid"
d100 v0
  = case coe v0 of
      C49 v3 v4 v5 -> coe v5
      _ -> coe MAlonzo.RTE.mazUnreachableError
name104 = "Algebra.Monoid._.assoc"
d104 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d142
      (coe MAlonzo.Code.Algebra.Structures.d294 (coe d100 v0))
name106 = "Algebra.Monoid._.identity"
d106 v0 = coe MAlonzo.Code.Algebra.Structures.d296 (coe d100 v0)
name108 = "Algebra.Monoid._.isEquivalence"
d108 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d140
      (coe MAlonzo.Code.Algebra.Structures.d294 (coe d100 v0))
name110 = "Algebra.Monoid._.isSemigroup"
d110 v0 = coe MAlonzo.Code.Algebra.Structures.d294 (coe d100 v0)
name112 = "Algebra.Monoid._.refl"
d112 v0
  = coe
      MAlonzo.Code.Relation.Binary.Core.d516
      (coe
         MAlonzo.Code.Algebra.Structures.d140
         (coe MAlonzo.Code.Algebra.Structures.d294 (coe d100 v0)))
name114 = "Algebra.Monoid._.reflexive"
d114 v0 v1 v2 = du114 v2
du114 v0
  = let v1 = coe d100 v0 in
    let v2 = coe MAlonzo.Code.Algebra.Structures.d294 v1 in
    \ v3 v4 v5 ->
      coe
        MAlonzo.Code.Relation.Binary.Core.du522
        (coe MAlonzo.Code.Algebra.Structures.d140 v2) v3
name116 = "Algebra.Monoid._.sym"
d116 v0
  = coe
      MAlonzo.Code.Relation.Binary.Core.d518
      (coe
         MAlonzo.Code.Algebra.Structures.d140
         (coe MAlonzo.Code.Algebra.Structures.d294 (coe d100 v0)))
name118 = "Algebra.Monoid._.trans"
d118 v0
  = coe
      MAlonzo.Code.Relation.Binary.Core.d520
      (coe
         MAlonzo.Code.Algebra.Structures.d140
         (coe MAlonzo.Code.Algebra.Structures.d294 (coe d100 v0)))
name120 = "Algebra.Monoid._.\8729-cong"
d120 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d144
      (coe MAlonzo.Code.Algebra.Structures.d294 (coe d100 v0))
name122 = "Algebra.Monoid.semigroup"
d122 v0
  = coe
      C5 (coe d96 v0)
      (coe MAlonzo.Code.Algebra.Structures.d294 (coe d100 v0))
name126 = "Algebra.Monoid._.setoid"
d126 v0
  = coe
      MAlonzo.Code.Relation.Binary.C143
      (coe
         MAlonzo.Code.Algebra.Structures.d140
         (coe MAlonzo.Code.Algebra.Structures.d294 (coe d100 v0)))
name128 = "Algebra.Monoid.rawMonoid"
d128 v0 = coe C31 (coe d96 v0) (coe d98 v0)
name134 = "Algebra.CommutativeMonoid"
d134 a0 a1 = ()
data T134 a0 a1 a2 a3 a4 = C97 a0 a1 a2
name150 = "Algebra.CommutativeMonoid.Carrier"
d150 = erased
name152 = "Algebra.CommutativeMonoid._\8776_"
d152 = erased
name154 = "Algebra.CommutativeMonoid._\8729_"
d154 v0
  = case coe v0 of
      C97 v3 v4 v5 -> coe v3
      _ -> coe MAlonzo.RTE.mazUnreachableError
name156 = "Algebra.CommutativeMonoid.\949"
d156 v0
  = case coe v0 of
      C97 v3 v4 v5 -> coe v4
      _ -> coe MAlonzo.RTE.mazUnreachableError
name158 = "Algebra.CommutativeMonoid.isCommutativeMonoid"
d158 v0
  = case coe v0 of
      C97 v3 v4 v5 -> coe v5
      _ -> coe MAlonzo.RTE.mazUnreachableError
name162 = "Algebra.CommutativeMonoid._.assoc"
d162 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d142
      (coe MAlonzo.Code.Algebra.Structures.d454 (coe d158 v0))
name164 = "Algebra.CommutativeMonoid._.comm"
d164 v0 = coe MAlonzo.Code.Algebra.Structures.d458 (coe d158 v0)
name166 = "Algebra.CommutativeMonoid._.identity"
d166 v0 v1 v2 = du166 v2
du166 v0
  = coe
      MAlonzo.Code.Algebra.Structures.du476 (coe d154 v0) (coe d156 v0)
      (coe d158 v0)
name168 = "Algebra.CommutativeMonoid._.identity\737"
d168 v0 = coe MAlonzo.Code.Algebra.Structures.d456 (coe d158 v0)
name170 = "Algebra.CommutativeMonoid._.isEquivalence"
d170 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d140
      (coe MAlonzo.Code.Algebra.Structures.d454 (coe d158 v0))
name172 = "Algebra.CommutativeMonoid._.isMonoid"
d172 v0 v1 v2 = du172 v2
du172 v0
  = coe
      MAlonzo.Code.Algebra.Structures.du506 (coe d154 v0) (coe d156 v0)
      (coe d158 v0)
name174 = "Algebra.CommutativeMonoid._.isSemigroup"
d174 v0 = coe MAlonzo.Code.Algebra.Structures.d454 (coe d158 v0)
name176 = "Algebra.CommutativeMonoid._.refl"
d176 v0
  = coe
      MAlonzo.Code.Relation.Binary.Core.d516
      (coe
         MAlonzo.Code.Algebra.Structures.d140
         (coe MAlonzo.Code.Algebra.Structures.d454 (coe d158 v0)))
name178 = "Algebra.CommutativeMonoid._.reflexive"
d178 v0 v1 v2 = du178 v2
du178 v0
  = let v1 = coe d158 v0 in
    let v2 = coe MAlonzo.Code.Algebra.Structures.d454 v1 in
    \ v3 v4 v5 ->
      coe
        MAlonzo.Code.Relation.Binary.Core.du522
        (coe MAlonzo.Code.Algebra.Structures.d140 v2) v3
name180 = "Algebra.CommutativeMonoid._.sym"
d180 v0
  = coe
      MAlonzo.Code.Relation.Binary.Core.d518
      (coe
         MAlonzo.Code.Algebra.Structures.d140
         (coe MAlonzo.Code.Algebra.Structures.d454 (coe d158 v0)))
name182 = "Algebra.CommutativeMonoid._.trans"
d182 v0
  = coe
      MAlonzo.Code.Relation.Binary.Core.d520
      (coe
         MAlonzo.Code.Algebra.Structures.d140
         (coe MAlonzo.Code.Algebra.Structures.d454 (coe d158 v0)))
name184 = "Algebra.CommutativeMonoid._.\8729-cong"
d184 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d144
      (coe MAlonzo.Code.Algebra.Structures.d454 (coe d158 v0))
name186 = "Algebra.CommutativeMonoid.monoid"
d186 v0 v1 v2 = du186 v2
du186 v0
  = coe
      C49 (coe d154 v0) (coe d156 v0)
      (coe
         MAlonzo.Code.Algebra.Structures.du506 (coe d154 v0) (coe d156 v0)
         (coe d158 v0))
name190 = "Algebra.CommutativeMonoid._.rawMonoid"
d190 v0 v1 v2 = du190 v2
du190 v0
  = coe C31 (coe d96 (coe du186 v0)) (coe d98 (coe du186 v0))
name192 = "Algebra.CommutativeMonoid._.semigroup"
d192 v0 v1 v2 = du192 v2
du192 v0
  = coe
      C5 (coe d96 (coe du186 v0))
      (coe
         MAlonzo.Code.Algebra.Structures.d294 (coe d100 (coe du186 v0)))
name194 = "Algebra.CommutativeMonoid._.setoid"
d194 v0 v1 v2 = du194 v2
du194 v0
  = coe
      MAlonzo.Code.Relation.Binary.C143
      (coe
         MAlonzo.Code.Algebra.Structures.d140
         (coe
            MAlonzo.Code.Algebra.Structures.d294 (coe d100 (coe du186 v0))))
name200 = "Algebra.IdempotentCommutativeMonoid"
d200 a0 a1 = ()
data T200 a0 a1 a2 a3 a4 = C129 a0 a1 a2
name216 = "Algebra.IdempotentCommutativeMonoid.Carrier"
d216 = erased
name218 = "Algebra.IdempotentCommutativeMonoid._\8776_"
d218 = erased
name220 = "Algebra.IdempotentCommutativeMonoid._\8729_"
d220 v0
  = case coe v0 of
      C129 v3 v4 v5 -> coe v3
      _ -> coe MAlonzo.RTE.mazUnreachableError
name222 = "Algebra.IdempotentCommutativeMonoid.\949"
d222 v0
  = case coe v0 of
      C129 v3 v4 v5 -> coe v4
      _ -> coe MAlonzo.RTE.mazUnreachableError
name224
  = "Algebra.IdempotentCommutativeMonoid.isIdempotentCommutativeMonoid"
d224 v0
  = case coe v0 of
      C129 v3 v4 v5 -> coe v5
      _ -> coe MAlonzo.RTE.mazUnreachableError
name228 = "Algebra.IdempotentCommutativeMonoid._.assoc"
d228 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d142
      (coe
         MAlonzo.Code.Algebra.Structures.d454
         (coe MAlonzo.Code.Algebra.Structures.d646 (coe d224 v0)))
name230 = "Algebra.IdempotentCommutativeMonoid._.comm"
d230 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d458
      (coe MAlonzo.Code.Algebra.Structures.d646 (coe d224 v0))
name232 = "Algebra.IdempotentCommutativeMonoid._.idem"
d232 v0 = coe MAlonzo.Code.Algebra.Structures.d648 (coe d224 v0)
name234 = "Algebra.IdempotentCommutativeMonoid._.identity"
d234 v0 v1 v2 = du234 v2
du234 v0
  = let v1 = coe d220 v0 in
    let v2 = coe d222 v0 in
    let v3 = coe d224 v0 in
    coe
      MAlonzo.Code.Algebra.Structures.du476 v1 v2
      (coe MAlonzo.Code.Algebra.Structures.d646 v3)
name236 = "Algebra.IdempotentCommutativeMonoid._.identity\737"
d236 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d456
      (coe MAlonzo.Code.Algebra.Structures.d646 (coe d224 v0))
name238
  = "Algebra.IdempotentCommutativeMonoid._.isCommutativeMonoid"
d238 v0 = coe MAlonzo.Code.Algebra.Structures.d646 (coe d224 v0)
name240 = "Algebra.IdempotentCommutativeMonoid._.isEquivalence"
d240 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d140
      (coe
         MAlonzo.Code.Algebra.Structures.d454
         (coe MAlonzo.Code.Algebra.Structures.d646 (coe d224 v0)))
name242 = "Algebra.IdempotentCommutativeMonoid._.isMonoid"
d242 v0 v1 v2 = du242 v2
du242 v0
  = let v1 = coe d220 v0 in
    let v2 = coe d222 v0 in
    let v3 = coe d224 v0 in
    coe
      MAlonzo.Code.Algebra.Structures.du506 v1 v2
      (coe MAlonzo.Code.Algebra.Structures.d646 v3)
name244 = "Algebra.IdempotentCommutativeMonoid._.isSemigroup"
d244 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d454
      (coe MAlonzo.Code.Algebra.Structures.d646 (coe d224 v0))
name246 = "Algebra.IdempotentCommutativeMonoid._.refl"
d246 v0
  = coe
      MAlonzo.Code.Relation.Binary.Core.d516
      (coe
         MAlonzo.Code.Algebra.Structures.d140
         (coe
            MAlonzo.Code.Algebra.Structures.d454
            (coe MAlonzo.Code.Algebra.Structures.d646 (coe d224 v0))))
name248 = "Algebra.IdempotentCommutativeMonoid._.reflexive"
d248 v0 v1 v2 = du248 v2
du248 v0
  = let v1 = coe d224 v0 in
    let v2 = coe MAlonzo.Code.Algebra.Structures.d646 v1 in
    let v3 = coe MAlonzo.Code.Algebra.Structures.d454 v2 in
    \ v4 v5 v6 ->
      coe
        MAlonzo.Code.Relation.Binary.Core.du522
        (coe MAlonzo.Code.Algebra.Structures.d140 v3) v4
name250 = "Algebra.IdempotentCommutativeMonoid._.sym"
d250 v0
  = coe
      MAlonzo.Code.Relation.Binary.Core.d518
      (coe
         MAlonzo.Code.Algebra.Structures.d140
         (coe
            MAlonzo.Code.Algebra.Structures.d454
            (coe MAlonzo.Code.Algebra.Structures.d646 (coe d224 v0))))
name252 = "Algebra.IdempotentCommutativeMonoid._.trans"
d252 v0
  = coe
      MAlonzo.Code.Relation.Binary.Core.d520
      (coe
         MAlonzo.Code.Algebra.Structures.d140
         (coe
            MAlonzo.Code.Algebra.Structures.d454
            (coe MAlonzo.Code.Algebra.Structures.d646 (coe d224 v0))))
name254 = "Algebra.IdempotentCommutativeMonoid._.\8729-cong"
d254 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d144
      (coe
         MAlonzo.Code.Algebra.Structures.d454
         (coe MAlonzo.Code.Algebra.Structures.d646 (coe d224 v0)))
name256 = "Algebra.IdempotentCommutativeMonoid.commutativeMonoid"
d256 v0
  = coe
      C97 (coe d220 v0) (coe d222 v0)
      (coe MAlonzo.Code.Algebra.Structures.d646 (coe d224 v0))
name260 = "Algebra.IdempotentCommutativeMonoid._.monoid"
d260 v0 v1 v2 = du260 v2
du260 v0
  = coe
      du186
      (coe
         C97 (coe d220 v0) (coe d222 v0)
         (coe MAlonzo.Code.Algebra.Structures.d646 (coe d224 v0)))
name262 = "Algebra.IdempotentCommutativeMonoid._.rawMonoid"
d262 v0 v1 v2 = du262 v2
du262 v0
  = let v1
          = coe
              C97 (coe d220 v0) (coe d222 v0)
              (coe MAlonzo.Code.Algebra.Structures.d646 (coe d224 v0)) in
    coe C31 (coe d96 (coe du186 v1)) (coe d98 (coe du186 v1))
name264 = "Algebra.IdempotentCommutativeMonoid._.semigroup"
d264 v0 v1 v2 = du264 v2
du264 v0
  = let v1
          = coe
              C97 (coe d220 v0) (coe d222 v0)
              (coe MAlonzo.Code.Algebra.Structures.d646 (coe d224 v0)) in
    coe
      C5 (coe d96 (coe du186 v1))
      (coe
         MAlonzo.Code.Algebra.Structures.d294 (coe d100 (coe du186 v1)))
name266 = "Algebra.IdempotentCommutativeMonoid._.setoid"
d266 v0 v1 v2 = du266 v2
du266 v0
  = let v1
          = coe
              C97 (coe d220 v0) (coe d222 v0)
              (coe MAlonzo.Code.Algebra.Structures.d646 (coe d224 v0)) in
    coe
      MAlonzo.Code.Relation.Binary.C143
      (coe
         MAlonzo.Code.Algebra.Structures.d140
         (coe
            MAlonzo.Code.Algebra.Structures.d294 (coe d100 (coe du186 v1))))
name272 = "Algebra.Group"
d272 a0 a1 = ()
data T272 a0 a1 a2 a3 a4 a5 = C161 a0 a1 a2 a3
name290 = "Algebra.Group.Carrier"
d290 = erased
name292 = "Algebra.Group._\8776_"
d292 = erased
name294 = "Algebra.Group._\8729_"
d294 v0
  = case coe v0 of
      C161 v3 v4 v5 v6 -> coe v3
      _ -> coe MAlonzo.RTE.mazUnreachableError
name296 = "Algebra.Group.\949"
d296 v0
  = case coe v0 of
      C161 v3 v4 v5 v6 -> coe v4
      _ -> coe MAlonzo.RTE.mazUnreachableError
name298 = "Algebra.Group._\8315\185"
d298 v0
  = case coe v0 of
      C161 v3 v4 v5 v6 -> coe v5
      _ -> coe MAlonzo.RTE.mazUnreachableError
name300 = "Algebra.Group.isGroup"
d300 v0
  = case coe v0 of
      C161 v3 v4 v5 v6 -> coe v6
      _ -> coe MAlonzo.RTE.mazUnreachableError
name304 = "Algebra.Group._._-_"
d304 v0 v1 v2 = du304 v2
du304 v0
  = coe
      MAlonzo.Code.Algebra.Structures.du846 (coe d294 v0) (coe d298 v0)
name306 = "Algebra.Group._.assoc"
d306 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d142
      (coe
         MAlonzo.Code.Algebra.Structures.d294
         (coe MAlonzo.Code.Algebra.Structures.d820 (coe d300 v0)))
name308 = "Algebra.Group._.identity"
d308 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d296
      (coe MAlonzo.Code.Algebra.Structures.d820 (coe d300 v0))
name310 = "Algebra.Group._.inverse"
d310 v0 = coe MAlonzo.Code.Algebra.Structures.d822 (coe d300 v0)
name312 = "Algebra.Group._.isEquivalence"
d312 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d140
      (coe
         MAlonzo.Code.Algebra.Structures.d294
         (coe MAlonzo.Code.Algebra.Structures.d820 (coe d300 v0)))
name314 = "Algebra.Group._.isMonoid"
d314 v0 = coe MAlonzo.Code.Algebra.Structures.d820 (coe d300 v0)
name316 = "Algebra.Group._.isSemigroup"
d316 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d294
      (coe MAlonzo.Code.Algebra.Structures.d820 (coe d300 v0))
name318 = "Algebra.Group._.refl"
d318 v0
  = coe
      MAlonzo.Code.Relation.Binary.Core.d516
      (coe
         MAlonzo.Code.Algebra.Structures.d140
         (coe
            MAlonzo.Code.Algebra.Structures.d294
            (coe MAlonzo.Code.Algebra.Structures.d820 (coe d300 v0))))
name320 = "Algebra.Group._.reflexive"
d320 v0 v1 v2 = du320 v2
du320 v0
  = let v1 = coe d300 v0 in
    let v2 = coe MAlonzo.Code.Algebra.Structures.d820 v1 in
    let v3 = coe MAlonzo.Code.Algebra.Structures.d294 v2 in
    \ v4 v5 v6 ->
      coe
        MAlonzo.Code.Relation.Binary.Core.du522
        (coe MAlonzo.Code.Algebra.Structures.d140 v3) v4
name322 = "Algebra.Group._.sym"
d322 v0
  = coe
      MAlonzo.Code.Relation.Binary.Core.d518
      (coe
         MAlonzo.Code.Algebra.Structures.d140
         (coe
            MAlonzo.Code.Algebra.Structures.d294
            (coe MAlonzo.Code.Algebra.Structures.d820 (coe d300 v0))))
name324 = "Algebra.Group._.trans"
d324 v0
  = coe
      MAlonzo.Code.Relation.Binary.Core.d520
      (coe
         MAlonzo.Code.Algebra.Structures.d140
         (coe
            MAlonzo.Code.Algebra.Structures.d294
            (coe MAlonzo.Code.Algebra.Structures.d820 (coe d300 v0))))
name326 = "Algebra.Group._.\8315\185-cong"
d326 v0 = coe MAlonzo.Code.Algebra.Structures.d824 (coe d300 v0)
name328 = "Algebra.Group._.\8729-cong"
d328 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d144
      (coe
         MAlonzo.Code.Algebra.Structures.d294
         (coe MAlonzo.Code.Algebra.Structures.d820 (coe d300 v0)))
name330 = "Algebra.Group.monoid"
d330 v0
  = coe
      C49 (coe d294 v0) (coe d296 v0)
      (coe MAlonzo.Code.Algebra.Structures.d820 (coe d300 v0))
name334 = "Algebra.Group._.rawMonoid"
d334 v0 = coe C31 (coe d294 v0) (coe d296 v0)
name336 = "Algebra.Group._.semigroup"
d336 v0
  = coe
      C5 (coe d294 v0)
      (coe
         MAlonzo.Code.Algebra.Structures.d294
         (coe MAlonzo.Code.Algebra.Structures.d820 (coe d300 v0)))
name338 = "Algebra.Group._.setoid"
d338 v0
  = coe
      MAlonzo.Code.Relation.Binary.C143
      (coe
         MAlonzo.Code.Algebra.Structures.d140
         (coe
            MAlonzo.Code.Algebra.Structures.d294
            (coe MAlonzo.Code.Algebra.Structures.d820 (coe d300 v0))))
name344 = "Algebra.AbelianGroup"
d344 a0 a1 = ()
data T344 a0 a1 a2 a3 a4 a5 = C195 a0 a1 a2 a3
name362 = "Algebra.AbelianGroup.Carrier"
d362 = erased
name364 = "Algebra.AbelianGroup._\8776_"
d364 = erased
name366 = "Algebra.AbelianGroup._\8729_"
d366 v0
  = case coe v0 of
      C195 v3 v4 v5 v6 -> coe v3
      _ -> coe MAlonzo.RTE.mazUnreachableError
name368 = "Algebra.AbelianGroup.\949"
d368 v0
  = case coe v0 of
      C195 v3 v4 v5 v6 -> coe v4
      _ -> coe MAlonzo.RTE.mazUnreachableError
name370 = "Algebra.AbelianGroup._\8315\185"
d370 v0
  = case coe v0 of
      C195 v3 v4 v5 v6 -> coe v5
      _ -> coe MAlonzo.RTE.mazUnreachableError
name372 = "Algebra.AbelianGroup.isAbelianGroup"
d372 v0
  = case coe v0 of
      C195 v3 v4 v5 v6 -> coe v6
      _ -> coe MAlonzo.RTE.mazUnreachableError
name376 = "Algebra.AbelianGroup._._-_"
d376 v0 v1 v2 = du376 v2
du376 v0
  = let v1 = coe d366 v0 in
    let v2 = coe d370 v0 in
    coe MAlonzo.Code.Algebra.Structures.du846 v1 v2
name378 = "Algebra.AbelianGroup._.assoc"
d378 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d142
      (coe
         MAlonzo.Code.Algebra.Structures.d294
         (coe
            MAlonzo.Code.Algebra.Structures.d820
            (coe MAlonzo.Code.Algebra.Structures.d994 (coe d372 v0))))
name380 = "Algebra.AbelianGroup._.comm"
d380 v0 = coe MAlonzo.Code.Algebra.Structures.d996 (coe d372 v0)
name382 = "Algebra.AbelianGroup._.identity"
d382 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d296
      (coe
         MAlonzo.Code.Algebra.Structures.d820
         (coe MAlonzo.Code.Algebra.Structures.d994 (coe d372 v0)))
name384 = "Algebra.AbelianGroup._.inverse"
d384 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d822
      (coe MAlonzo.Code.Algebra.Structures.d994 (coe d372 v0))
name386 = "Algebra.AbelianGroup._.isCommutativeMonoid"
d386 v0
  = coe
      MAlonzo.Code.Algebra.Structures.C221
      (coe
         MAlonzo.Code.Algebra.Structures.d294
         (coe
            MAlonzo.Code.Algebra.Structures.d820
            (coe MAlonzo.Code.Algebra.Structures.d994 (coe d372 v0))))
      (coe
         MAlonzo.Code.Data.Product.d26
         (coe
            MAlonzo.Code.Algebra.Structures.d296
            (coe
               MAlonzo.Code.Algebra.Structures.d820
               (coe MAlonzo.Code.Algebra.Structures.d994 (coe d372 v0)))))
      (coe MAlonzo.Code.Algebra.Structures.d996 (coe d372 v0))
name388 = "Algebra.AbelianGroup._.isEquivalence"
d388 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d140
      (coe
         MAlonzo.Code.Algebra.Structures.d294
         (coe
            MAlonzo.Code.Algebra.Structures.d820
            (coe MAlonzo.Code.Algebra.Structures.d994 (coe d372 v0))))
name390 = "Algebra.AbelianGroup._.isGroup"
d390 v0 = coe MAlonzo.Code.Algebra.Structures.d994 (coe d372 v0)
name392 = "Algebra.AbelianGroup._.isMonoid"
d392 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d820
      (coe MAlonzo.Code.Algebra.Structures.d994 (coe d372 v0))
name394 = "Algebra.AbelianGroup._.isSemigroup"
d394 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d294
      (coe
         MAlonzo.Code.Algebra.Structures.d820
         (coe MAlonzo.Code.Algebra.Structures.d994 (coe d372 v0)))
name396 = "Algebra.AbelianGroup._.refl"
d396 v0
  = coe
      MAlonzo.Code.Relation.Binary.Core.d516
      (coe
         MAlonzo.Code.Algebra.Structures.d140
         (coe
            MAlonzo.Code.Algebra.Structures.d294
            (coe
               MAlonzo.Code.Algebra.Structures.d820
               (coe MAlonzo.Code.Algebra.Structures.d994 (coe d372 v0)))))
name398 = "Algebra.AbelianGroup._.reflexive"
d398 v0 v1 v2 = du398 v2
du398 v0
  = let v1 = coe d372 v0 in
    let v2 = coe MAlonzo.Code.Algebra.Structures.d994 v1 in
    let v3 = coe MAlonzo.Code.Algebra.Structures.d820 v2 in
    let v4 = coe MAlonzo.Code.Algebra.Structures.d294 v3 in
    \ v5 v6 v7 ->
      coe
        MAlonzo.Code.Relation.Binary.Core.du522
        (coe MAlonzo.Code.Algebra.Structures.d140 v4) v5
name400 = "Algebra.AbelianGroup._.sym"
d400 v0
  = coe
      MAlonzo.Code.Relation.Binary.Core.d518
      (coe
         MAlonzo.Code.Algebra.Structures.d140
         (coe
            MAlonzo.Code.Algebra.Structures.d294
            (coe
               MAlonzo.Code.Algebra.Structures.d820
               (coe MAlonzo.Code.Algebra.Structures.d994 (coe d372 v0)))))
name402 = "Algebra.AbelianGroup._.trans"
d402 v0
  = coe
      MAlonzo.Code.Relation.Binary.Core.d520
      (coe
         MAlonzo.Code.Algebra.Structures.d140
         (coe
            MAlonzo.Code.Algebra.Structures.d294
            (coe
               MAlonzo.Code.Algebra.Structures.d820
               (coe MAlonzo.Code.Algebra.Structures.d994 (coe d372 v0)))))
name404 = "Algebra.AbelianGroup._.\8315\185-cong"
d404 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d824
      (coe MAlonzo.Code.Algebra.Structures.d994 (coe d372 v0))
name406 = "Algebra.AbelianGroup._.\8729-cong"
d406 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d144
      (coe
         MAlonzo.Code.Algebra.Structures.d294
         (coe
            MAlonzo.Code.Algebra.Structures.d820
            (coe MAlonzo.Code.Algebra.Structures.d994 (coe d372 v0))))
name408 = "Algebra.AbelianGroup.group"
d408 v0
  = coe
      C161 (coe d366 v0) (coe d368 v0) (coe d370 v0)
      (coe MAlonzo.Code.Algebra.Structures.d994 (coe d372 v0))
name412 = "Algebra.AbelianGroup._.monoid"
d412 v0
  = coe
      C49 (coe d366 v0) (coe d368 v0)
      (coe
         MAlonzo.Code.Algebra.Structures.d820
         (coe MAlonzo.Code.Algebra.Structures.d994 (coe d372 v0)))
name414 = "Algebra.AbelianGroup._.rawMonoid"
d414 v0 = coe C31 (coe d366 v0) (coe d368 v0)
name416 = "Algebra.AbelianGroup._.semigroup"
d416 v0
  = coe
      C5 (coe d366 v0)
      (coe
         MAlonzo.Code.Algebra.Structures.d294
         (coe
            MAlonzo.Code.Algebra.Structures.d820
            (coe MAlonzo.Code.Algebra.Structures.d994 (coe d372 v0))))
name418 = "Algebra.AbelianGroup._.setoid"
d418 v0
  = coe
      MAlonzo.Code.Relation.Binary.C143
      (coe
         MAlonzo.Code.Algebra.Structures.d140
         (coe
            MAlonzo.Code.Algebra.Structures.d294
            (coe
               MAlonzo.Code.Algebra.Structures.d820
               (coe MAlonzo.Code.Algebra.Structures.d994 (coe d372 v0)))))
name420 = "Algebra.AbelianGroup.commutativeMonoid"
d420 v0
  = coe
      C97 (coe d366 v0) (coe d368 v0)
      (coe
         MAlonzo.Code.Algebra.Structures.C221
         (coe
            MAlonzo.Code.Algebra.Structures.d294
            (coe
               MAlonzo.Code.Algebra.Structures.d820
               (coe MAlonzo.Code.Algebra.Structures.d994 (coe d372 v0))))
         (coe
            MAlonzo.Code.Data.Product.d26
            (coe
               MAlonzo.Code.Algebra.Structures.d296
               (coe
                  MAlonzo.Code.Algebra.Structures.d820
                  (coe MAlonzo.Code.Algebra.Structures.d994 (coe d372 v0)))))
         (coe MAlonzo.Code.Algebra.Structures.d996 (coe d372 v0)))
name426 = "Algebra.NearSemiring"
d426 a0 a1 = ()
data T426 a0 a1 a2 a3 a4 a5 = C241 a0 a1 a2 a3
name444 = "Algebra.NearSemiring.Carrier"
d444 = erased
name446 = "Algebra.NearSemiring._\8776_"
d446 = erased
name448 = "Algebra.NearSemiring._+_"
d448 v0
  = case coe v0 of
      C241 v3 v4 v5 v6 -> coe v3
      _ -> coe MAlonzo.RTE.mazUnreachableError
name450 = "Algebra.NearSemiring._*_"
d450 v0
  = case coe v0 of
      C241 v3 v4 v5 v6 -> coe v4
      _ -> coe MAlonzo.RTE.mazUnreachableError
name452 = "Algebra.NearSemiring.0#"
d452 v0
  = case coe v0 of
      C241 v3 v4 v5 v6 -> coe v5
      _ -> coe MAlonzo.RTE.mazUnreachableError
name454 = "Algebra.NearSemiring.isNearSemiring"
d454 v0
  = case coe v0 of
      C241 v3 v4 v5 v6 -> coe v6
      _ -> coe MAlonzo.RTE.mazUnreachableError
name458 = "Algebra.NearSemiring._.assoc"
d458 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d142
      (coe MAlonzo.Code.Algebra.Structures.d1176 (coe d454 v0))
name460 = "Algebra.NearSemiring._.\8729-cong"
d460 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d144
      (coe MAlonzo.Code.Algebra.Structures.d1176 (coe d454 v0))
name462 = "Algebra.NearSemiring._.*-isSemigroup"
d462 v0 = coe MAlonzo.Code.Algebra.Structures.d1176 (coe d454 v0)
name464 = "Algebra.NearSemiring._.assoc"
d464 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d142
      (coe
         MAlonzo.Code.Algebra.Structures.d294
         (coe MAlonzo.Code.Algebra.Structures.d1174 (coe d454 v0)))
name466 = "Algebra.NearSemiring._.\8729-cong"
d466 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d144
      (coe
         MAlonzo.Code.Algebra.Structures.d294
         (coe MAlonzo.Code.Algebra.Structures.d1174 (coe d454 v0)))
name468 = "Algebra.NearSemiring._.identity"
d468 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d296
      (coe MAlonzo.Code.Algebra.Structures.d1174 (coe d454 v0))
name470 = "Algebra.NearSemiring._.+-isMonoid"
d470 v0 = coe MAlonzo.Code.Algebra.Structures.d1174 (coe d454 v0)
name472 = "Algebra.NearSemiring._.isSemigroup"
d472 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d294
      (coe MAlonzo.Code.Algebra.Structures.d1174 (coe d454 v0))
name474 = "Algebra.NearSemiring._.distrib\691"
d474 v0 = coe MAlonzo.Code.Algebra.Structures.d1178 (coe d454 v0)
name476 = "Algebra.NearSemiring._.isEquivalence"
d476 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d140
      (coe
         MAlonzo.Code.Algebra.Structures.d294
         (coe MAlonzo.Code.Algebra.Structures.d1174 (coe d454 v0)))
name478 = "Algebra.NearSemiring._.refl"
d478 v0
  = coe
      MAlonzo.Code.Relation.Binary.Core.d516
      (coe
         MAlonzo.Code.Algebra.Structures.d140
         (coe
            MAlonzo.Code.Algebra.Structures.d294
            (coe MAlonzo.Code.Algebra.Structures.d1174 (coe d454 v0))))
name480 = "Algebra.NearSemiring._.reflexive"
d480 v0 v1 v2 = du480 v2
du480 v0
  = let v1 = coe d454 v0 in
    let v2 = coe MAlonzo.Code.Algebra.Structures.d1174 v1 in
    let v3 = coe MAlonzo.Code.Algebra.Structures.d294 v2 in
    \ v4 v5 v6 ->
      coe
        MAlonzo.Code.Relation.Binary.Core.du522
        (coe MAlonzo.Code.Algebra.Structures.d140 v3) v4
name482 = "Algebra.NearSemiring._.sym"
d482 v0
  = coe
      MAlonzo.Code.Relation.Binary.Core.d518
      (coe
         MAlonzo.Code.Algebra.Structures.d140
         (coe
            MAlonzo.Code.Algebra.Structures.d294
            (coe MAlonzo.Code.Algebra.Structures.d1174 (coe d454 v0))))
name484 = "Algebra.NearSemiring._.trans"
d484 v0
  = coe
      MAlonzo.Code.Relation.Binary.Core.d520
      (coe
         MAlonzo.Code.Algebra.Structures.d140
         (coe
            MAlonzo.Code.Algebra.Structures.d294
            (coe MAlonzo.Code.Algebra.Structures.d1174 (coe d454 v0))))
name486 = "Algebra.NearSemiring._.zero\737"
d486 v0 = coe MAlonzo.Code.Algebra.Structures.d1180 (coe d454 v0)
name488 = "Algebra.NearSemiring.+-monoid"
d488 v0
  = coe
      C49 (coe d448 v0) (coe d452 v0)
      (coe MAlonzo.Code.Algebra.Structures.d1174 (coe d454 v0))
name492 = "Algebra.NearSemiring._.rawMonoid"
d492 v0 = coe C31 (coe d448 v0) (coe d452 v0)
name494 = "Algebra.NearSemiring._.semigroup"
d494 v0
  = coe
      C5 (coe d448 v0)
      (coe
         MAlonzo.Code.Algebra.Structures.d294
         (coe MAlonzo.Code.Algebra.Structures.d1174 (coe d454 v0)))
name496 = "Algebra.NearSemiring._.setoid"
d496 v0
  = coe
      MAlonzo.Code.Relation.Binary.C143
      (coe
         MAlonzo.Code.Algebra.Structures.d140
         (coe
            MAlonzo.Code.Algebra.Structures.d294
            (coe MAlonzo.Code.Algebra.Structures.d1174 (coe d454 v0))))
name498 = "Algebra.NearSemiring.*-semigroup"
d498 v0
  = coe
      C5 (coe d450 v0)
      (coe MAlonzo.Code.Algebra.Structures.d1176 (coe d454 v0))
name504 = "Algebra.SemiringWithoutOne"
d504 a0 a1 = ()
data T504 a0 a1 a2 a3 a4 a5 = C287 a0 a1 a2 a3
name522 = "Algebra.SemiringWithoutOne.Carrier"
d522 = erased
name524 = "Algebra.SemiringWithoutOne._\8776_"
d524 = erased
name526 = "Algebra.SemiringWithoutOne._+_"
d526 v0
  = case coe v0 of
      C287 v3 v4 v5 v6 -> coe v3
      _ -> coe MAlonzo.RTE.mazUnreachableError
name528 = "Algebra.SemiringWithoutOne._*_"
d528 v0
  = case coe v0 of
      C287 v3 v4 v5 v6 -> coe v4
      _ -> coe MAlonzo.RTE.mazUnreachableError
name530 = "Algebra.SemiringWithoutOne.0#"
d530 v0
  = case coe v0 of
      C287 v3 v4 v5 v6 -> coe v5
      _ -> coe MAlonzo.RTE.mazUnreachableError
name532 = "Algebra.SemiringWithoutOne.isSemiringWithoutOne"
d532 v0
  = case coe v0 of
      C287 v3 v4 v5 v6 -> coe v6
      _ -> coe MAlonzo.RTE.mazUnreachableError
name536 = "Algebra.SemiringWithoutOne._.assoc"
d536 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d142
      (coe MAlonzo.Code.Algebra.Structures.d1356 (coe d532 v0))
name538 = "Algebra.SemiringWithoutOne._.\8729-cong"
d538 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d144
      (coe MAlonzo.Code.Algebra.Structures.d1356 (coe d532 v0))
name540 = "Algebra.SemiringWithoutOne._.*-isSemigroup"
d540 v0 = coe MAlonzo.Code.Algebra.Structures.d1356 (coe d532 v0)
name542 = "Algebra.SemiringWithoutOne._.assoc"
d542 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d142
      (coe
         MAlonzo.Code.Algebra.Structures.d454
         (coe MAlonzo.Code.Algebra.Structures.d1354 (coe d532 v0)))
name544 = "Algebra.SemiringWithoutOne._.comm"
d544 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d458
      (coe MAlonzo.Code.Algebra.Structures.d1354 (coe d532 v0))
name546 = "Algebra.SemiringWithoutOne._.\8729-cong"
d546 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d144
      (coe
         MAlonzo.Code.Algebra.Structures.d454
         (coe MAlonzo.Code.Algebra.Structures.d1354 (coe d532 v0)))
name548 = "Algebra.SemiringWithoutOne._.identity"
d548 v0 v1 v2 = du548 v2
du548 v0
  = let v1 = coe d526 v0 in
    let v2 = coe d530 v0 in
    let v3 = coe d532 v0 in
    coe
      MAlonzo.Code.Algebra.Structures.du476 v1 v2
      (coe MAlonzo.Code.Algebra.Structures.d1354 v3)
name550 = "Algebra.SemiringWithoutOne._.+-isCommutativeMonoid"
d550 v0 = coe MAlonzo.Code.Algebra.Structures.d1354 (coe d532 v0)
name552 = "Algebra.SemiringWithoutOne._.isMonoid"
d552 v0 v1 v2 = du552 v2
du552 v0
  = let v1 = coe d526 v0 in
    let v2 = coe d530 v0 in
    let v3 = coe d532 v0 in
    coe
      MAlonzo.Code.Algebra.Structures.du506 v1 v2
      (coe MAlonzo.Code.Algebra.Structures.d1354 v3)
name554 = "Algebra.SemiringWithoutOne._.isSemigroup"
d554 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d454
      (coe MAlonzo.Code.Algebra.Structures.d1354 (coe d532 v0))
name556 = "Algebra.SemiringWithoutOne._.distrib"
d556 v0 = coe MAlonzo.Code.Algebra.Structures.d1358 (coe d532 v0)
name558 = "Algebra.SemiringWithoutOne._.isEquivalence"
d558 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d140
      (coe
         MAlonzo.Code.Algebra.Structures.d454
         (coe MAlonzo.Code.Algebra.Structures.d1354 (coe d532 v0)))
name560 = "Algebra.SemiringWithoutOne._.isNearSemiring"
d560 v0 v1 v2 = du560 v2
du560 v0
  = coe
      MAlonzo.Code.Algebra.Structures.du1392 (coe d526 v0) (coe d530 v0)
      (coe d532 v0)
name562 = "Algebra.SemiringWithoutOne._.refl"
d562 v0
  = coe
      MAlonzo.Code.Relation.Binary.Core.d516
      (coe
         MAlonzo.Code.Algebra.Structures.d140
         (coe
            MAlonzo.Code.Algebra.Structures.d454
            (coe MAlonzo.Code.Algebra.Structures.d1354 (coe d532 v0))))
name564 = "Algebra.SemiringWithoutOne._.reflexive"
d564 v0 v1 v2 = du564 v2
du564 v0
  = let v1 = coe d532 v0 in
    let v2 = coe MAlonzo.Code.Algebra.Structures.d1354 v1 in
    let v3 = coe MAlonzo.Code.Algebra.Structures.d454 v2 in
    \ v4 v5 v6 ->
      coe
        MAlonzo.Code.Relation.Binary.Core.du522
        (coe MAlonzo.Code.Algebra.Structures.d140 v3) v4
name566 = "Algebra.SemiringWithoutOne._.sym"
d566 v0
  = coe
      MAlonzo.Code.Relation.Binary.Core.d518
      (coe
         MAlonzo.Code.Algebra.Structures.d140
         (coe
            MAlonzo.Code.Algebra.Structures.d454
            (coe MAlonzo.Code.Algebra.Structures.d1354 (coe d532 v0))))
name568 = "Algebra.SemiringWithoutOne._.trans"
d568 v0
  = coe
      MAlonzo.Code.Relation.Binary.Core.d520
      (coe
         MAlonzo.Code.Algebra.Structures.d140
         (coe
            MAlonzo.Code.Algebra.Structures.d454
            (coe MAlonzo.Code.Algebra.Structures.d1354 (coe d532 v0))))
name570 = "Algebra.SemiringWithoutOne._.zero"
d570 v0 = coe MAlonzo.Code.Algebra.Structures.d1360 (coe d532 v0)
name572 = "Algebra.SemiringWithoutOne.nearSemiring"
d572 v0 v1 v2 = du572 v2
du572 v0
  = coe
      C241 (coe d526 v0) (coe d528 v0) (coe d530 v0)
      (coe
         MAlonzo.Code.Algebra.Structures.du1392 (coe d526 v0) (coe d530 v0)
         (coe d532 v0))
name576 = "Algebra.SemiringWithoutOne._.*-semigroup"
d576 v0 v1 v2 = du576 v2
du576 v0
  = coe
      C5 (coe d450 (coe du572 v0))
      (coe
         MAlonzo.Code.Algebra.Structures.d1176 (coe d454 (coe du572 v0)))
name578 = "Algebra.SemiringWithoutOne._.+-monoid"
d578 v0 v1 v2 = du578 v2
du578 v0
  = coe
      C49 (coe d448 (coe du572 v0)) (coe d452 (coe du572 v0))
      (coe
         MAlonzo.Code.Algebra.Structures.d1174 (coe d454 (coe du572 v0)))
name580 = "Algebra.SemiringWithoutOne._.rawMonoid"
d580 v0 v1 v2 = du580 v2
du580 v0
  = coe C31 (coe d448 (coe du572 v0)) (coe d452 (coe du572 v0))
name582 = "Algebra.SemiringWithoutOne._.semigroup"
d582 v0 v1 v2 = du582 v2
du582 v0
  = coe
      C5 (coe d448 (coe du572 v0))
      (coe
         MAlonzo.Code.Algebra.Structures.d294
         (coe
            MAlonzo.Code.Algebra.Structures.d1174 (coe d454 (coe du572 v0))))
name584 = "Algebra.SemiringWithoutOne._.setoid"
d584 v0 v1 v2 = du584 v2
du584 v0
  = coe
      MAlonzo.Code.Relation.Binary.C143
      (coe
         MAlonzo.Code.Algebra.Structures.d140
         (coe
            MAlonzo.Code.Algebra.Structures.d294
            (coe
               MAlonzo.Code.Algebra.Structures.d1174 (coe d454 (coe du572 v0)))))
name586 = "Algebra.SemiringWithoutOne.+-commutativeMonoid"
d586 v0
  = coe
      C97 (coe d526 v0) (coe d530 v0)
      (coe MAlonzo.Code.Algebra.Structures.d1354 (coe d532 v0))
name592 = "Algebra.SemiringWithoutAnnihilatingZero"
d592 a0 a1 = ()
data T592 a0 a1 a2 a3 a4 a5 a6 = C333 a0 a1 a2 a3 a4
name612 = "Algebra.SemiringWithoutAnnihilatingZero.Carrier"
d612 = erased
name614 = "Algebra.SemiringWithoutAnnihilatingZero._\8776_"
d614 = erased
name616 = "Algebra.SemiringWithoutAnnihilatingZero._+_"
d616 v0
  = case coe v0 of
      C333 v3 v4 v5 v6 v7 -> coe v3
      _ -> coe MAlonzo.RTE.mazUnreachableError
name618 = "Algebra.SemiringWithoutAnnihilatingZero._*_"
d618 v0
  = case coe v0 of
      C333 v3 v4 v5 v6 v7 -> coe v4
      _ -> coe MAlonzo.RTE.mazUnreachableError
name620 = "Algebra.SemiringWithoutAnnihilatingZero.0#"
d620 v0
  = case coe v0 of
      C333 v3 v4 v5 v6 v7 -> coe v5
      _ -> coe MAlonzo.RTE.mazUnreachableError
name622 = "Algebra.SemiringWithoutAnnihilatingZero.1#"
d622 v0
  = case coe v0 of
      C333 v3 v4 v5 v6 v7 -> coe v6
      _ -> coe MAlonzo.RTE.mazUnreachableError
name624
  = "Algebra.SemiringWithoutAnnihilatingZero.isSemiringWithoutAnnihilatingZero"
d624 v0
  = case coe v0 of
      C333 v3 v4 v5 v6 v7 -> coe v7
      _ -> coe MAlonzo.RTE.mazUnreachableError
name628 = "Algebra.SemiringWithoutAnnihilatingZero._.assoc"
d628 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d142
      (coe
         MAlonzo.Code.Algebra.Structures.d294
         (coe MAlonzo.Code.Algebra.Structures.d1544 (coe d624 v0)))
name630 = "Algebra.SemiringWithoutAnnihilatingZero._.\8729-cong"
d630 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d144
      (coe
         MAlonzo.Code.Algebra.Structures.d294
         (coe MAlonzo.Code.Algebra.Structures.d1544 (coe d624 v0)))
name632 = "Algebra.SemiringWithoutAnnihilatingZero._.identity"
d632 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d296
      (coe MAlonzo.Code.Algebra.Structures.d1544 (coe d624 v0))
name634 = "Algebra.SemiringWithoutAnnihilatingZero._.*-isMonoid"
d634 v0 = coe MAlonzo.Code.Algebra.Structures.d1544 (coe d624 v0)
name636 = "Algebra.SemiringWithoutAnnihilatingZero._.isSemigroup"
d636 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d294
      (coe MAlonzo.Code.Algebra.Structures.d1544 (coe d624 v0))
name638 = "Algebra.SemiringWithoutAnnihilatingZero._.assoc"
d638 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d142
      (coe
         MAlonzo.Code.Algebra.Structures.d454
         (coe MAlonzo.Code.Algebra.Structures.d1542 (coe d624 v0)))
name640 = "Algebra.SemiringWithoutAnnihilatingZero._.comm"
d640 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d458
      (coe MAlonzo.Code.Algebra.Structures.d1542 (coe d624 v0))
name642 = "Algebra.SemiringWithoutAnnihilatingZero._.\8729-cong"
d642 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d144
      (coe
         MAlonzo.Code.Algebra.Structures.d454
         (coe MAlonzo.Code.Algebra.Structures.d1542 (coe d624 v0)))
name644 = "Algebra.SemiringWithoutAnnihilatingZero._.identity"
d644 v0 v1 v2 = du644 v2
du644 v0
  = let v1 = coe d616 v0 in
    let v2 = coe d620 v0 in
    let v3 = coe d624 v0 in
    coe
      MAlonzo.Code.Algebra.Structures.du476 v1 v2
      (coe MAlonzo.Code.Algebra.Structures.d1542 v3)
name646
  = "Algebra.SemiringWithoutAnnihilatingZero._.+-isCommutativeMonoid"
d646 v0 = coe MAlonzo.Code.Algebra.Structures.d1542 (coe d624 v0)
name648 = "Algebra.SemiringWithoutAnnihilatingZero._.isMonoid"
d648 v0 v1 v2 = du648 v2
du648 v0
  = let v1 = coe d616 v0 in
    let v2 = coe d620 v0 in
    let v3 = coe d624 v0 in
    coe
      MAlonzo.Code.Algebra.Structures.du506 v1 v2
      (coe MAlonzo.Code.Algebra.Structures.d1542 v3)
name650 = "Algebra.SemiringWithoutAnnihilatingZero._.isSemigroup"
d650 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d454
      (coe MAlonzo.Code.Algebra.Structures.d1542 (coe d624 v0))
name652 = "Algebra.SemiringWithoutAnnihilatingZero._.distrib"
d652 v0 = coe MAlonzo.Code.Algebra.Structures.d1546 (coe d624 v0)
name654 = "Algebra.SemiringWithoutAnnihilatingZero._.isEquivalence"
d654 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d140
      (coe
         MAlonzo.Code.Algebra.Structures.d454
         (coe MAlonzo.Code.Algebra.Structures.d1542 (coe d624 v0)))
name656 = "Algebra.SemiringWithoutAnnihilatingZero._.refl"
d656 v0
  = coe
      MAlonzo.Code.Relation.Binary.Core.d516
      (coe
         MAlonzo.Code.Algebra.Structures.d140
         (coe
            MAlonzo.Code.Algebra.Structures.d454
            (coe MAlonzo.Code.Algebra.Structures.d1542 (coe d624 v0))))
name658 = "Algebra.SemiringWithoutAnnihilatingZero._.reflexive"
d658 v0 v1 v2 = du658 v2
du658 v0
  = let v1 = coe d624 v0 in
    let v2 = coe MAlonzo.Code.Algebra.Structures.d1542 v1 in
    let v3 = coe MAlonzo.Code.Algebra.Structures.d454 v2 in
    \ v4 v5 v6 ->
      coe
        MAlonzo.Code.Relation.Binary.Core.du522
        (coe MAlonzo.Code.Algebra.Structures.d140 v3) v4
name660 = "Algebra.SemiringWithoutAnnihilatingZero._.sym"
d660 v0
  = coe
      MAlonzo.Code.Relation.Binary.Core.d518
      (coe
         MAlonzo.Code.Algebra.Structures.d140
         (coe
            MAlonzo.Code.Algebra.Structures.d454
            (coe MAlonzo.Code.Algebra.Structures.d1542 (coe d624 v0))))
name662 = "Algebra.SemiringWithoutAnnihilatingZero._.trans"
d662 v0
  = coe
      MAlonzo.Code.Relation.Binary.Core.d520
      (coe
         MAlonzo.Code.Algebra.Structures.d140
         (coe
            MAlonzo.Code.Algebra.Structures.d454
            (coe MAlonzo.Code.Algebra.Structures.d1542 (coe d624 v0))))
name664
  = "Algebra.SemiringWithoutAnnihilatingZero.+-commutativeMonoid"
d664 v0
  = coe
      C97 (coe d616 v0) (coe d620 v0)
      (coe MAlonzo.Code.Algebra.Structures.d1542 (coe d624 v0))
name668 = "Algebra.SemiringWithoutAnnihilatingZero._.monoid"
d668 v0 v1 v2 = du668 v2
du668 v0
  = coe
      du186
      (coe
         C97 (coe d616 v0) (coe d620 v0)
         (coe MAlonzo.Code.Algebra.Structures.d1542 (coe d624 v0)))
name670 = "Algebra.SemiringWithoutAnnihilatingZero._.rawMonoid"
d670 v0 v1 v2 = du670 v2
du670 v0
  = let v1
          = coe
              C97 (coe d616 v0) (coe d620 v0)
              (coe MAlonzo.Code.Algebra.Structures.d1542 (coe d624 v0)) in
    coe C31 (coe d96 (coe du186 v1)) (coe d98 (coe du186 v1))
name672 = "Algebra.SemiringWithoutAnnihilatingZero._.semigroup"
d672 v0 v1 v2 = du672 v2
du672 v0
  = let v1
          = coe
              C97 (coe d616 v0) (coe d620 v0)
              (coe MAlonzo.Code.Algebra.Structures.d1542 (coe d624 v0)) in
    coe
      C5 (coe d96 (coe du186 v1))
      (coe
         MAlonzo.Code.Algebra.Structures.d294 (coe d100 (coe du186 v1)))
name674 = "Algebra.SemiringWithoutAnnihilatingZero._.setoid"
d674 v0 v1 v2 = du674 v2
du674 v0
  = let v1
          = coe
              C97 (coe d616 v0) (coe d620 v0)
              (coe MAlonzo.Code.Algebra.Structures.d1542 (coe d624 v0)) in
    coe
      MAlonzo.Code.Relation.Binary.C143
      (coe
         MAlonzo.Code.Algebra.Structures.d140
         (coe
            MAlonzo.Code.Algebra.Structures.d294 (coe d100 (coe du186 v1))))
name676 = "Algebra.SemiringWithoutAnnihilatingZero.*-monoid"
d676 v0
  = coe
      C49 (coe d618 v0) (coe d622 v0)
      (coe MAlonzo.Code.Algebra.Structures.d1544 (coe d624 v0))
name680 = "Algebra.SemiringWithoutAnnihilatingZero._.rawMonoid"
d680 v0 = coe C31 (coe d618 v0) (coe d622 v0)
name682 = "Algebra.SemiringWithoutAnnihilatingZero._.semigroup"
d682 v0
  = coe
      C5 (coe d618 v0)
      (coe
         MAlonzo.Code.Algebra.Structures.d294
         (coe MAlonzo.Code.Algebra.Structures.d1544 (coe d624 v0)))
name688 = "Algebra.Semiring"
d688 a0 a1 = ()
data T688 a0 a1 a2 a3 a4 a5 a6 = C381 a0 a1 a2 a3 a4
name708 = "Algebra.Semiring.Carrier"
d708 = erased
name710 = "Algebra.Semiring._\8776_"
d710 = erased
name712 = "Algebra.Semiring._+_"
d712 v0
  = case coe v0 of
      C381 v3 v4 v5 v6 v7 -> coe v3
      _ -> coe MAlonzo.RTE.mazUnreachableError
name714 = "Algebra.Semiring._*_"
d714 v0
  = case coe v0 of
      C381 v3 v4 v5 v6 v7 -> coe v4
      _ -> coe MAlonzo.RTE.mazUnreachableError
name716 = "Algebra.Semiring.0#"
d716 v0
  = case coe v0 of
      C381 v3 v4 v5 v6 v7 -> coe v5
      _ -> coe MAlonzo.RTE.mazUnreachableError
name718 = "Algebra.Semiring.1#"
d718 v0
  = case coe v0 of
      C381 v3 v4 v5 v6 v7 -> coe v6
      _ -> coe MAlonzo.RTE.mazUnreachableError
name720 = "Algebra.Semiring.isSemiring"
d720 v0
  = case coe v0 of
      C381 v3 v4 v5 v6 v7 -> coe v7
      _ -> coe MAlonzo.RTE.mazUnreachableError
name724 = "Algebra.Semiring._.assoc"
d724 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d142
      (coe
         MAlonzo.Code.Algebra.Structures.d294
         (coe
            MAlonzo.Code.Algebra.Structures.d1544
            (coe MAlonzo.Code.Algebra.Structures.d1728 (coe d720 v0))))
name726 = "Algebra.Semiring._.\8729-cong"
d726 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d144
      (coe
         MAlonzo.Code.Algebra.Structures.d294
         (coe
            MAlonzo.Code.Algebra.Structures.d1544
            (coe MAlonzo.Code.Algebra.Structures.d1728 (coe d720 v0))))
name728 = "Algebra.Semiring._.identity"
d728 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d296
      (coe
         MAlonzo.Code.Algebra.Structures.d1544
         (coe MAlonzo.Code.Algebra.Structures.d1728 (coe d720 v0)))
name730 = "Algebra.Semiring._.*-isMonoid"
d730 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d1544
      (coe MAlonzo.Code.Algebra.Structures.d1728 (coe d720 v0))
name732 = "Algebra.Semiring._.isSemigroup"
d732 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d294
      (coe
         MAlonzo.Code.Algebra.Structures.d1544
         (coe MAlonzo.Code.Algebra.Structures.d1728 (coe d720 v0)))
name734 = "Algebra.Semiring._.assoc"
d734 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d142
      (coe
         MAlonzo.Code.Algebra.Structures.d454
         (coe
            MAlonzo.Code.Algebra.Structures.d1542
            (coe MAlonzo.Code.Algebra.Structures.d1728 (coe d720 v0))))
name736 = "Algebra.Semiring._.comm"
d736 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d458
      (coe
         MAlonzo.Code.Algebra.Structures.d1542
         (coe MAlonzo.Code.Algebra.Structures.d1728 (coe d720 v0)))
name738 = "Algebra.Semiring._.\8729-cong"
d738 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d144
      (coe
         MAlonzo.Code.Algebra.Structures.d454
         (coe
            MAlonzo.Code.Algebra.Structures.d1542
            (coe MAlonzo.Code.Algebra.Structures.d1728 (coe d720 v0))))
name740 = "Algebra.Semiring._.identity"
d740 v0 v1 v2 = du740 v2
du740 v0
  = let v1 = coe d712 v0 in
    let v2 = coe d716 v0 in
    let v3 = coe d720 v0 in
    let v4 = coe MAlonzo.Code.Algebra.Structures.d1728 v3 in
    coe
      MAlonzo.Code.Algebra.Structures.du476 v1 v2
      (coe MAlonzo.Code.Algebra.Structures.d1542 v4)
name742 = "Algebra.Semiring._.+-isCommutativeMonoid"
d742 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d1542
      (coe MAlonzo.Code.Algebra.Structures.d1728 (coe d720 v0))
name744 = "Algebra.Semiring._.isMonoid"
d744 v0 v1 v2 = du744 v2
du744 v0
  = let v1 = coe d712 v0 in
    let v2 = coe d716 v0 in
    let v3 = coe d720 v0 in
    let v4 = coe MAlonzo.Code.Algebra.Structures.d1728 v3 in
    coe
      MAlonzo.Code.Algebra.Structures.du506 v1 v2
      (coe MAlonzo.Code.Algebra.Structures.d1542 v4)
name746 = "Algebra.Semiring._.isSemigroup"
d746 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d454
      (coe
         MAlonzo.Code.Algebra.Structures.d1542
         (coe MAlonzo.Code.Algebra.Structures.d1728 (coe d720 v0)))
name748 = "Algebra.Semiring._.distrib"
d748 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d1546
      (coe MAlonzo.Code.Algebra.Structures.d1728 (coe d720 v0))
name750 = "Algebra.Semiring._.isEquivalence"
d750 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d140
      (coe
         MAlonzo.Code.Algebra.Structures.d454
         (coe
            MAlonzo.Code.Algebra.Structures.d1542
            (coe MAlonzo.Code.Algebra.Structures.d1728 (coe d720 v0))))
name752 = "Algebra.Semiring._.isNearSemiring"
d752 v0 v1 v2 = du752 v2
du752 v0
  = let v1 = coe d712 v0 in
    let v2 = coe d716 v0 in
    let v3 = coe d720 v0 in
    coe
      MAlonzo.Code.Algebra.Structures.du1392 v1 v2
      (coe
         MAlonzo.Code.Algebra.Structures.C773
         (coe
            MAlonzo.Code.Algebra.Structures.d1542
            (coe MAlonzo.Code.Algebra.Structures.d1728 v3))
         (coe
            MAlonzo.Code.Algebra.Structures.d294
            (coe
               MAlonzo.Code.Algebra.Structures.d1544
               (coe MAlonzo.Code.Algebra.Structures.d1728 v3)))
         (coe
            MAlonzo.Code.Algebra.Structures.d1546
            (coe MAlonzo.Code.Algebra.Structures.d1728 v3))
         (coe MAlonzo.Code.Algebra.Structures.d1730 v3))
name754 = "Algebra.Semiring._.isSemiringWithoutAnnihilatingZero"
d754 v0 = coe MAlonzo.Code.Algebra.Structures.d1728 (coe d720 v0)
name756 = "Algebra.Semiring._.isSemiringWithoutOne"
d756 v0
  = coe
      MAlonzo.Code.Algebra.Structures.C773
      (coe
         MAlonzo.Code.Algebra.Structures.d1542
         (coe MAlonzo.Code.Algebra.Structures.d1728 (coe d720 v0)))
      (coe
         MAlonzo.Code.Algebra.Structures.d294
         (coe
            MAlonzo.Code.Algebra.Structures.d1544
            (coe MAlonzo.Code.Algebra.Structures.d1728 (coe d720 v0))))
      (coe
         MAlonzo.Code.Algebra.Structures.d1546
         (coe MAlonzo.Code.Algebra.Structures.d1728 (coe d720 v0)))
      (coe MAlonzo.Code.Algebra.Structures.d1730 (coe d720 v0))
name758 = "Algebra.Semiring._.refl"
d758 v0
  = coe
      MAlonzo.Code.Relation.Binary.Core.d516
      (coe
         MAlonzo.Code.Algebra.Structures.d140
         (coe
            MAlonzo.Code.Algebra.Structures.d454
            (coe
               MAlonzo.Code.Algebra.Structures.d1542
               (coe MAlonzo.Code.Algebra.Structures.d1728 (coe d720 v0)))))
name760 = "Algebra.Semiring._.reflexive"
d760 v0 v1 v2 = du760 v2
du760 v0
  = let v1 = coe d720 v0 in
    let v2 = coe MAlonzo.Code.Algebra.Structures.d1728 v1 in
    let v3 = coe MAlonzo.Code.Algebra.Structures.d1542 v2 in
    let v4 = coe MAlonzo.Code.Algebra.Structures.d454 v3 in
    \ v5 v6 v7 ->
      coe
        MAlonzo.Code.Relation.Binary.Core.du522
        (coe MAlonzo.Code.Algebra.Structures.d140 v4) v5
name762 = "Algebra.Semiring._.sym"
d762 v0
  = coe
      MAlonzo.Code.Relation.Binary.Core.d518
      (coe
         MAlonzo.Code.Algebra.Structures.d140
         (coe
            MAlonzo.Code.Algebra.Structures.d454
            (coe
               MAlonzo.Code.Algebra.Structures.d1542
               (coe MAlonzo.Code.Algebra.Structures.d1728 (coe d720 v0)))))
name764 = "Algebra.Semiring._.trans"
d764 v0
  = coe
      MAlonzo.Code.Relation.Binary.Core.d520
      (coe
         MAlonzo.Code.Algebra.Structures.d140
         (coe
            MAlonzo.Code.Algebra.Structures.d454
            (coe
               MAlonzo.Code.Algebra.Structures.d1542
               (coe MAlonzo.Code.Algebra.Structures.d1728 (coe d720 v0)))))
name766 = "Algebra.Semiring._.zero"
d766 v0 = coe MAlonzo.Code.Algebra.Structures.d1730 (coe d720 v0)
name768 = "Algebra.Semiring.semiringWithoutAnnihilatingZero"
d768 v0
  = coe
      C333 (coe d712 v0) (coe d714 v0) (coe d716 v0) (coe d718 v0)
      (coe MAlonzo.Code.Algebra.Structures.d1728 (coe d720 v0))
name772 = "Algebra.Semiring._.*-monoid"
d772 v0
  = coe
      C49 (coe d714 v0) (coe d718 v0)
      (coe
         MAlonzo.Code.Algebra.Structures.d1544
         (coe MAlonzo.Code.Algebra.Structures.d1728 (coe d720 v0)))
name774 = "Algebra.Semiring._.rawMonoid"
d774 v0 = coe C31 (coe d714 v0) (coe d718 v0)
name776 = "Algebra.Semiring._.semigroup"
d776 v0
  = coe
      C5 (coe d714 v0)
      (coe
         MAlonzo.Code.Algebra.Structures.d294
         (coe
            MAlonzo.Code.Algebra.Structures.d1544
            (coe MAlonzo.Code.Algebra.Structures.d1728 (coe d720 v0))))
name778 = "Algebra.Semiring._.+-commutativeMonoid"
d778 v0
  = coe
      C97 (coe d712 v0) (coe d716 v0)
      (coe
         MAlonzo.Code.Algebra.Structures.d1542
         (coe MAlonzo.Code.Algebra.Structures.d1728 (coe d720 v0)))
name780 = "Algebra.Semiring._.monoid"
d780 v0 v1 v2 = du780 v2
du780 v0
  = let v1
          = coe
              C333 (coe d712 v0) (coe d714 v0) (coe d716 v0) (coe d718 v0)
              (coe MAlonzo.Code.Algebra.Structures.d1728 (coe d720 v0)) in
    coe
      du186
      (coe
         C97 (coe d616 v1) (coe d620 v1)
         (coe MAlonzo.Code.Algebra.Structures.d1542 (coe d624 v1)))
name782 = "Algebra.Semiring._.rawMonoid"
d782 v0 v1 v2 = du782 v2
du782 v0
  = let v1
          = coe
              C333 (coe d712 v0) (coe d714 v0) (coe d716 v0) (coe d718 v0)
              (coe MAlonzo.Code.Algebra.Structures.d1728 (coe d720 v0)) in
    let v2
          = coe
              C97 (coe d616 v1) (coe d620 v1)
              (coe MAlonzo.Code.Algebra.Structures.d1542 (coe d624 v1)) in
    coe C31 (coe d96 (coe du186 v2)) (coe d98 (coe du186 v2))
name784 = "Algebra.Semiring._.semigroup"
d784 v0 v1 v2 = du784 v2
du784 v0
  = let v1
          = coe
              C333 (coe d712 v0) (coe d714 v0) (coe d716 v0) (coe d718 v0)
              (coe MAlonzo.Code.Algebra.Structures.d1728 (coe d720 v0)) in
    let v2
          = coe
              C97 (coe d616 v1) (coe d620 v1)
              (coe MAlonzo.Code.Algebra.Structures.d1542 (coe d624 v1)) in
    coe
      C5 (coe d96 (coe du186 v2))
      (coe
         MAlonzo.Code.Algebra.Structures.d294 (coe d100 (coe du186 v2)))
name786 = "Algebra.Semiring._.setoid"
d786 v0 v1 v2 = du786 v2
du786 v0
  = let v1
          = coe
              C333 (coe d712 v0) (coe d714 v0) (coe d716 v0) (coe d718 v0)
              (coe MAlonzo.Code.Algebra.Structures.d1728 (coe d720 v0)) in
    let v2
          = coe
              C97 (coe d616 v1) (coe d620 v1)
              (coe MAlonzo.Code.Algebra.Structures.d1542 (coe d624 v1)) in
    coe
      MAlonzo.Code.Relation.Binary.C143
      (coe
         MAlonzo.Code.Algebra.Structures.d140
         (coe
            MAlonzo.Code.Algebra.Structures.d294 (coe d100 (coe du186 v2))))
name788 = "Algebra.Semiring.semiringWithoutOne"
d788 v0
  = coe
      C287 (coe d712 v0) (coe d714 v0) (coe d716 v0)
      (coe
         MAlonzo.Code.Algebra.Structures.C773
         (coe
            MAlonzo.Code.Algebra.Structures.d1542
            (coe MAlonzo.Code.Algebra.Structures.d1728 (coe d720 v0)))
         (coe
            MAlonzo.Code.Algebra.Structures.d294
            (coe
               MAlonzo.Code.Algebra.Structures.d1544
               (coe MAlonzo.Code.Algebra.Structures.d1728 (coe d720 v0))))
         (coe
            MAlonzo.Code.Algebra.Structures.d1546
            (coe MAlonzo.Code.Algebra.Structures.d1728 (coe d720 v0)))
         (coe MAlonzo.Code.Algebra.Structures.d1730 (coe d720 v0)))
name792 = "Algebra.Semiring._.nearSemiring"
d792 v0 v1 v2 = du792 v2
du792 v0
  = coe
      du572
      (coe
         C287 (coe d712 v0) (coe d714 v0) (coe d716 v0)
         (coe
            MAlonzo.Code.Algebra.Structures.C773
            (coe
               MAlonzo.Code.Algebra.Structures.d1542
               (coe MAlonzo.Code.Algebra.Structures.d1728 (coe d720 v0)))
            (coe
               MAlonzo.Code.Algebra.Structures.d294
               (coe
                  MAlonzo.Code.Algebra.Structures.d1544
                  (coe MAlonzo.Code.Algebra.Structures.d1728 (coe d720 v0))))
            (coe
               MAlonzo.Code.Algebra.Structures.d1546
               (coe MAlonzo.Code.Algebra.Structures.d1728 (coe d720 v0)))
            (coe MAlonzo.Code.Algebra.Structures.d1730 (coe d720 v0))))
name798 = "Algebra.CommutativeSemiringWithoutOne"
d798 a0 a1 = ()
data T798 a0 a1 a2 a3 a4 a5 = C429 a0 a1 a2 a3
name816 = "Algebra.CommutativeSemiringWithoutOne.Carrier"
d816 = erased
name818 = "Algebra.CommutativeSemiringWithoutOne._\8776_"
d818 = erased
name820 = "Algebra.CommutativeSemiringWithoutOne._+_"
d820 v0
  = case coe v0 of
      C429 v3 v4 v5 v6 -> coe v3
      _ -> coe MAlonzo.RTE.mazUnreachableError
name822 = "Algebra.CommutativeSemiringWithoutOne._*_"
d822 v0
  = case coe v0 of
      C429 v3 v4 v5 v6 -> coe v4
      _ -> coe MAlonzo.RTE.mazUnreachableError
name824 = "Algebra.CommutativeSemiringWithoutOne.0#"
d824 v0
  = case coe v0 of
      C429 v3 v4 v5 v6 -> coe v5
      _ -> coe MAlonzo.RTE.mazUnreachableError
name826
  = "Algebra.CommutativeSemiringWithoutOne.isCommutativeSemiringWithoutOne"
d826 v0
  = case coe v0 of
      C429 v3 v4 v5 v6 -> coe v6
      _ -> coe MAlonzo.RTE.mazUnreachableError
name830 = "Algebra.CommutativeSemiringWithoutOne._.assoc"
d830 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d142
      (coe
         MAlonzo.Code.Algebra.Structures.d1356
         (coe MAlonzo.Code.Algebra.Structures.d1918 (coe d826 v0)))
name832 = "Algebra.CommutativeSemiringWithoutOne._.*-comm"
d832 v0 = coe MAlonzo.Code.Algebra.Structures.d1920 (coe d826 v0)
name834 = "Algebra.CommutativeSemiringWithoutOne._.\8729-cong"
d834 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d144
      (coe
         MAlonzo.Code.Algebra.Structures.d1356
         (coe MAlonzo.Code.Algebra.Structures.d1918 (coe d826 v0)))
name836 = "Algebra.CommutativeSemiringWithoutOne._.*-isSemigroup"
d836 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d1356
      (coe MAlonzo.Code.Algebra.Structures.d1918 (coe d826 v0))
name838 = "Algebra.CommutativeSemiringWithoutOne._.assoc"
d838 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d142
      (coe
         MAlonzo.Code.Algebra.Structures.d454
         (coe
            MAlonzo.Code.Algebra.Structures.d1354
            (coe MAlonzo.Code.Algebra.Structures.d1918 (coe d826 v0))))
name840 = "Algebra.CommutativeSemiringWithoutOne._.comm"
d840 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d458
      (coe
         MAlonzo.Code.Algebra.Structures.d1354
         (coe MAlonzo.Code.Algebra.Structures.d1918 (coe d826 v0)))
name842 = "Algebra.CommutativeSemiringWithoutOne._.\8729-cong"
d842 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d144
      (coe
         MAlonzo.Code.Algebra.Structures.d454
         (coe
            MAlonzo.Code.Algebra.Structures.d1354
            (coe MAlonzo.Code.Algebra.Structures.d1918 (coe d826 v0))))
name844 = "Algebra.CommutativeSemiringWithoutOne._.identity"
d844 v0 v1 v2 = du844 v2
du844 v0
  = let v1 = coe d820 v0 in
    let v2 = coe d824 v0 in
    let v3 = coe d826 v0 in
    let v4 = coe MAlonzo.Code.Algebra.Structures.d1918 v3 in
    coe
      MAlonzo.Code.Algebra.Structures.du476 v1 v2
      (coe MAlonzo.Code.Algebra.Structures.d1354 v4)
name846
  = "Algebra.CommutativeSemiringWithoutOne._.+-isCommutativeMonoid"
d846 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d1354
      (coe MAlonzo.Code.Algebra.Structures.d1918 (coe d826 v0))
name848 = "Algebra.CommutativeSemiringWithoutOne._.isMonoid"
d848 v0 v1 v2 = du848 v2
du848 v0
  = let v1 = coe d820 v0 in
    let v2 = coe d824 v0 in
    let v3 = coe d826 v0 in
    let v4 = coe MAlonzo.Code.Algebra.Structures.d1918 v3 in
    coe
      MAlonzo.Code.Algebra.Structures.du506 v1 v2
      (coe MAlonzo.Code.Algebra.Structures.d1354 v4)
name850 = "Algebra.CommutativeSemiringWithoutOne._.isSemigroup"
d850 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d454
      (coe
         MAlonzo.Code.Algebra.Structures.d1354
         (coe MAlonzo.Code.Algebra.Structures.d1918 (coe d826 v0)))
name852 = "Algebra.CommutativeSemiringWithoutOne._.distrib"
d852 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d1358
      (coe MAlonzo.Code.Algebra.Structures.d1918 (coe d826 v0))
name854 = "Algebra.CommutativeSemiringWithoutOne._.isEquivalence"
d854 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d140
      (coe
         MAlonzo.Code.Algebra.Structures.d454
         (coe
            MAlonzo.Code.Algebra.Structures.d1354
            (coe MAlonzo.Code.Algebra.Structures.d1918 (coe d826 v0))))
name856 = "Algebra.CommutativeSemiringWithoutOne._.isNearSemiring"
d856 v0 v1 v2 = du856 v2
du856 v0
  = let v1 = coe d820 v0 in
    let v2 = coe d824 v0 in
    let v3 = coe d826 v0 in
    coe
      MAlonzo.Code.Algebra.Structures.du1392 v1 v2
      (coe MAlonzo.Code.Algebra.Structures.d1918 v3)
name858
  = "Algebra.CommutativeSemiringWithoutOne._.isSemiringWithoutOne"
d858 v0 = coe MAlonzo.Code.Algebra.Structures.d1918 (coe d826 v0)
name860 = "Algebra.CommutativeSemiringWithoutOne._.refl"
d860 v0
  = coe
      MAlonzo.Code.Relation.Binary.Core.d516
      (coe
         MAlonzo.Code.Algebra.Structures.d140
         (coe
            MAlonzo.Code.Algebra.Structures.d454
            (coe
               MAlonzo.Code.Algebra.Structures.d1354
               (coe MAlonzo.Code.Algebra.Structures.d1918 (coe d826 v0)))))
name862 = "Algebra.CommutativeSemiringWithoutOne._.reflexive"
d862 v0 v1 v2 = du862 v2
du862 v0
  = let v1 = coe d826 v0 in
    let v2 = coe MAlonzo.Code.Algebra.Structures.d1918 v1 in
    let v3 = coe MAlonzo.Code.Algebra.Structures.d1354 v2 in
    let v4 = coe MAlonzo.Code.Algebra.Structures.d454 v3 in
    \ v5 v6 v7 ->
      coe
        MAlonzo.Code.Relation.Binary.Core.du522
        (coe MAlonzo.Code.Algebra.Structures.d140 v4) v5
name864 = "Algebra.CommutativeSemiringWithoutOne._.sym"
d864 v0
  = coe
      MAlonzo.Code.Relation.Binary.Core.d518
      (coe
         MAlonzo.Code.Algebra.Structures.d140
         (coe
            MAlonzo.Code.Algebra.Structures.d454
            (coe
               MAlonzo.Code.Algebra.Structures.d1354
               (coe MAlonzo.Code.Algebra.Structures.d1918 (coe d826 v0)))))
name866 = "Algebra.CommutativeSemiringWithoutOne._.trans"
d866 v0
  = coe
      MAlonzo.Code.Relation.Binary.Core.d520
      (coe
         MAlonzo.Code.Algebra.Structures.d140
         (coe
            MAlonzo.Code.Algebra.Structures.d454
            (coe
               MAlonzo.Code.Algebra.Structures.d1354
               (coe MAlonzo.Code.Algebra.Structures.d1918 (coe d826 v0)))))
name868 = "Algebra.CommutativeSemiringWithoutOne._.zero"
d868 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d1360
      (coe MAlonzo.Code.Algebra.Structures.d1918 (coe d826 v0))
name870
  = "Algebra.CommutativeSemiringWithoutOne.semiringWithoutOne"
d870 v0
  = coe
      C287 (coe d820 v0) (coe d822 v0) (coe d824 v0)
      (coe MAlonzo.Code.Algebra.Structures.d1918 (coe d826 v0))
name874 = "Algebra.CommutativeSemiringWithoutOne._.*-semigroup"
d874 v0 v1 v2 = du874 v2
du874 v0
  = let v1
          = coe
              C287 (coe d820 v0) (coe d822 v0) (coe d824 v0)
              (coe MAlonzo.Code.Algebra.Structures.d1918 (coe d826 v0)) in
    coe
      C5 (coe d450 (coe du572 v1))
      (coe
         MAlonzo.Code.Algebra.Structures.d1176 (coe d454 (coe du572 v1)))
name876
  = "Algebra.CommutativeSemiringWithoutOne._.+-commutativeMonoid"
d876 v0
  = coe
      C97 (coe d820 v0) (coe d824 v0)
      (coe
         MAlonzo.Code.Algebra.Structures.d1354
         (coe MAlonzo.Code.Algebra.Structures.d1918 (coe d826 v0)))
name878 = "Algebra.CommutativeSemiringWithoutOne._.+-monoid"
d878 v0 v1 v2 = du878 v2
du878 v0
  = let v1
          = coe
              C287 (coe d820 v0) (coe d822 v0) (coe d824 v0)
              (coe MAlonzo.Code.Algebra.Structures.d1918 (coe d826 v0)) in
    coe
      C49 (coe d448 (coe du572 v1)) (coe d452 (coe du572 v1))
      (coe
         MAlonzo.Code.Algebra.Structures.d1174 (coe d454 (coe du572 v1)))
name880 = "Algebra.CommutativeSemiringWithoutOne._.rawMonoid"
d880 v0 v1 v2 = du880 v2
du880 v0
  = let v1
          = coe
              C287 (coe d820 v0) (coe d822 v0) (coe d824 v0)
              (coe MAlonzo.Code.Algebra.Structures.d1918 (coe d826 v0)) in
    coe C31 (coe d448 (coe du572 v1)) (coe d452 (coe du572 v1))
name882 = "Algebra.CommutativeSemiringWithoutOne._.semigroup"
d882 v0 v1 v2 = du882 v2
du882 v0
  = let v1
          = coe
              C287 (coe d820 v0) (coe d822 v0) (coe d824 v0)
              (coe MAlonzo.Code.Algebra.Structures.d1918 (coe d826 v0)) in
    coe
      C5 (coe d448 (coe du572 v1))
      (coe
         MAlonzo.Code.Algebra.Structures.d294
         (coe
            MAlonzo.Code.Algebra.Structures.d1174 (coe d454 (coe du572 v1))))
name884 = "Algebra.CommutativeSemiringWithoutOne._.nearSemiring"
d884 v0 v1 v2 = du884 v2
du884 v0
  = coe
      du572
      (coe
         C287 (coe d820 v0) (coe d822 v0) (coe d824 v0)
         (coe MAlonzo.Code.Algebra.Structures.d1918 (coe d826 v0)))
name886 = "Algebra.CommutativeSemiringWithoutOne._.setoid"
d886 v0 v1 v2 = du886 v2
du886 v0
  = let v1
          = coe
              C287 (coe d820 v0) (coe d822 v0) (coe d824 v0)
              (coe MAlonzo.Code.Algebra.Structures.d1918 (coe d826 v0)) in
    coe
      MAlonzo.Code.Relation.Binary.C143
      (coe
         MAlonzo.Code.Algebra.Structures.d140
         (coe
            MAlonzo.Code.Algebra.Structures.d294
            (coe
               MAlonzo.Code.Algebra.Structures.d1174 (coe d454 (coe du572 v1)))))
name892 = "Algebra.CommutativeSemiring"
d892 a0 a1 = ()
data T892 a0 a1 a2 a3 a4 a5 a6 = C463 a0 a1 a2 a3 a4
name912 = "Algebra.CommutativeSemiring.Carrier"
d912 = erased
name914 = "Algebra.CommutativeSemiring._\8776_"
d914 = erased
name916 = "Algebra.CommutativeSemiring._+_"
d916 v0
  = case coe v0 of
      C463 v3 v4 v5 v6 v7 -> coe v3
      _ -> coe MAlonzo.RTE.mazUnreachableError
name918 = "Algebra.CommutativeSemiring._*_"
d918 v0
  = case coe v0 of
      C463 v3 v4 v5 v6 v7 -> coe v4
      _ -> coe MAlonzo.RTE.mazUnreachableError
name920 = "Algebra.CommutativeSemiring.0#"
d920 v0
  = case coe v0 of
      C463 v3 v4 v5 v6 v7 -> coe v5
      _ -> coe MAlonzo.RTE.mazUnreachableError
name922 = "Algebra.CommutativeSemiring.1#"
d922 v0
  = case coe v0 of
      C463 v3 v4 v5 v6 v7 -> coe v6
      _ -> coe MAlonzo.RTE.mazUnreachableError
name924 = "Algebra.CommutativeSemiring.isCommutativeSemiring"
d924 v0
  = case coe v0 of
      C463 v3 v4 v5 v6 v7 -> coe v7
      _ -> coe MAlonzo.RTE.mazUnreachableError
name928 = "Algebra.CommutativeSemiring._.assoc"
d928 v0 v1 v2 = du928 v2
du928 v0
  = let v1 = coe d916 v0 in
    let v2 = coe d918 v0 in
    let v3 = coe d920 v0 in
    let v4 = coe d922 v0 in
    let v5 = coe d924 v0 in
    coe
      MAlonzo.Code.Algebra.Structures.d142
      (coe
         MAlonzo.Code.Algebra.Structures.d294
         (coe
            MAlonzo.Code.Algebra.Structures.d1544
            (coe
               MAlonzo.Code.Algebra.Structures.d1728
               (coe MAlonzo.Code.Algebra.Structures.du2214 v1 v2 v3 v4 v5))))
name930 = "Algebra.CommutativeSemiring._.comm"
d930 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d458
      (coe MAlonzo.Code.Algebra.Structures.d2112 (coe d924 v0))
name932 = "Algebra.CommutativeSemiring._.\8729-cong"
d932 v0 v1 v2 = du932 v2
du932 v0
  = let v1 = coe d916 v0 in
    let v2 = coe d918 v0 in
    let v3 = coe d920 v0 in
    let v4 = coe d922 v0 in
    let v5 = coe d924 v0 in
    coe
      MAlonzo.Code.Algebra.Structures.d144
      (coe
         MAlonzo.Code.Algebra.Structures.d294
         (coe
            MAlonzo.Code.Algebra.Structures.d1544
            (coe
               MAlonzo.Code.Algebra.Structures.d1728
               (coe MAlonzo.Code.Algebra.Structures.du2214 v1 v2 v3 v4 v5))))
name934 = "Algebra.CommutativeSemiring._.identity"
d934 v0 v1 v2 = du934 v2
du934 v0
  = let v1 = coe d916 v0 in
    let v2 = coe d918 v0 in
    let v3 = coe d920 v0 in
    let v4 = coe d922 v0 in
    let v5 = coe d924 v0 in
    coe
      MAlonzo.Code.Algebra.Structures.d296
      (coe
         MAlonzo.Code.Algebra.Structures.d1544
         (coe
            MAlonzo.Code.Algebra.Structures.d1728
            (coe MAlonzo.Code.Algebra.Structures.du2214 v1 v2 v3 v4 v5)))
name936 = "Algebra.CommutativeSemiring._.*-isCommutativeMonoid"
d936 v0 = coe MAlonzo.Code.Algebra.Structures.d2112 (coe d924 v0)
name938 = "Algebra.CommutativeSemiring._.*-isMonoid"
d938 v0 v1 v2 = du938 v2
du938 v0
  = let v1 = coe d916 v0 in
    let v2 = coe d918 v0 in
    let v3 = coe d920 v0 in
    let v4 = coe d922 v0 in
    let v5 = coe d924 v0 in
    coe
      MAlonzo.Code.Algebra.Structures.d1544
      (coe
         MAlonzo.Code.Algebra.Structures.d1728
         (coe MAlonzo.Code.Algebra.Structures.du2214 v1 v2 v3 v4 v5))
name940 = "Algebra.CommutativeSemiring._.isSemigroup"
d940 v0 v1 v2 = du940 v2
du940 v0
  = let v1 = coe d916 v0 in
    let v2 = coe d918 v0 in
    let v3 = coe d920 v0 in
    let v4 = coe d922 v0 in
    let v5 = coe d924 v0 in
    coe
      MAlonzo.Code.Algebra.Structures.d294
      (coe
         MAlonzo.Code.Algebra.Structures.d1544
         (coe
            MAlonzo.Code.Algebra.Structures.d1728
            (coe MAlonzo.Code.Algebra.Structures.du2214 v1 v2 v3 v4 v5)))
name942 = "Algebra.CommutativeSemiring._.assoc"
d942 v0 v1 v2 = du942 v2
du942 v0
  = let v1 = coe d916 v0 in
    let v2 = coe d918 v0 in
    let v3 = coe d920 v0 in
    let v4 = coe d922 v0 in
    let v5 = coe d924 v0 in
    coe
      MAlonzo.Code.Algebra.Structures.d142
      (coe
         MAlonzo.Code.Algebra.Structures.d454
         (coe
            MAlonzo.Code.Algebra.Structures.d1542
            (coe
               MAlonzo.Code.Algebra.Structures.d1728
               (coe MAlonzo.Code.Algebra.Structures.du2214 v1 v2 v3 v4 v5))))
name944 = "Algebra.CommutativeSemiring._.comm"
d944 v0 v1 v2 = du944 v2
du944 v0
  = let v1 = coe d916 v0 in
    let v2 = coe d918 v0 in
    let v3 = coe d920 v0 in
    let v4 = coe d922 v0 in
    let v5 = coe d924 v0 in
    coe
      MAlonzo.Code.Algebra.Structures.d458
      (coe
         MAlonzo.Code.Algebra.Structures.d1542
         (coe
            MAlonzo.Code.Algebra.Structures.d1728
            (coe MAlonzo.Code.Algebra.Structures.du2214 v1 v2 v3 v4 v5)))
name946 = "Algebra.CommutativeSemiring._.\8729-cong"
d946 v0 v1 v2 = du946 v2
du946 v0
  = let v1 = coe d916 v0 in
    let v2 = coe d918 v0 in
    let v3 = coe d920 v0 in
    let v4 = coe d922 v0 in
    let v5 = coe d924 v0 in
    coe
      MAlonzo.Code.Algebra.Structures.d144
      (coe
         MAlonzo.Code.Algebra.Structures.d454
         (coe
            MAlonzo.Code.Algebra.Structures.d1542
            (coe
               MAlonzo.Code.Algebra.Structures.d1728
               (coe MAlonzo.Code.Algebra.Structures.du2214 v1 v2 v3 v4 v5))))
name948 = "Algebra.CommutativeSemiring._.identity"
d948 v0 v1 v2 = du948 v2
du948 v0
  = let v1 = coe d916 v0 in
    let v2 = coe d918 v0 in
    let v3 = coe d920 v0 in
    let v4 = coe d922 v0 in
    let v5 = coe d924 v0 in
    let v6
          = coe MAlonzo.Code.Algebra.Structures.du2214 v1 v2 v3 v4 v5 in
    let v7 = coe MAlonzo.Code.Algebra.Structures.d1728 v6 in
    coe
      MAlonzo.Code.Algebra.Structures.du476 v1 v3
      (coe MAlonzo.Code.Algebra.Structures.d1542 v7)
name950 = "Algebra.CommutativeSemiring._.+-isCommutativeMonoid"
d950 v0 = coe MAlonzo.Code.Algebra.Structures.d2110 (coe d924 v0)
name952 = "Algebra.CommutativeSemiring._.isMonoid"
d952 v0 v1 v2 = du952 v2
du952 v0
  = let v1 = coe d916 v0 in
    let v2 = coe d918 v0 in
    let v3 = coe d920 v0 in
    let v4 = coe d922 v0 in
    let v5 = coe d924 v0 in
    let v6
          = coe MAlonzo.Code.Algebra.Structures.du2214 v1 v2 v3 v4 v5 in
    let v7 = coe MAlonzo.Code.Algebra.Structures.d1728 v6 in
    coe
      MAlonzo.Code.Algebra.Structures.du506 v1 v3
      (coe MAlonzo.Code.Algebra.Structures.d1542 v7)
name954 = "Algebra.CommutativeSemiring._.isSemigroup"
d954 v0 v1 v2 = du954 v2
du954 v0
  = let v1 = coe d916 v0 in
    let v2 = coe d918 v0 in
    let v3 = coe d920 v0 in
    let v4 = coe d922 v0 in
    let v5 = coe d924 v0 in
    coe
      MAlonzo.Code.Algebra.Structures.d454
      (coe
         MAlonzo.Code.Algebra.Structures.d1542
         (coe
            MAlonzo.Code.Algebra.Structures.d1728
            (coe MAlonzo.Code.Algebra.Structures.du2214 v1 v2 v3 v4 v5)))
name956 = "Algebra.CommutativeSemiring._.distrib"
d956 v0 v1 v2 = du956 v2
du956 v0
  = coe
      MAlonzo.Code.Algebra.Structures.du2190 (coe d916 v0) (coe d918 v0)
      (coe d924 v0)
name958 = "Algebra.CommutativeSemiring._.distrib\691"
d958 v0 = coe MAlonzo.Code.Algebra.Structures.d2114 (coe d924 v0)
name960
  = "Algebra.CommutativeSemiring._.isCommutativeSemiringWithoutOne"
d960 v0 v1 v2 = du960 v2
du960 v0
  = coe
      MAlonzo.Code.Algebra.Structures.du2256 (coe d916 v0) (coe d918 v0)
      (coe d920 v0) (coe d922 v0) (coe d924 v0)
name962 = "Algebra.CommutativeSemiring._.isEquivalence"
d962 v0 v1 v2 = du962 v2
du962 v0
  = let v1 = coe d916 v0 in
    let v2 = coe d918 v0 in
    let v3 = coe d920 v0 in
    let v4 = coe d922 v0 in
    let v5 = coe d924 v0 in
    coe
      MAlonzo.Code.Algebra.Structures.d140
      (coe
         MAlonzo.Code.Algebra.Structures.d454
         (coe
            MAlonzo.Code.Algebra.Structures.d1542
            (coe
               MAlonzo.Code.Algebra.Structures.d1728
               (coe MAlonzo.Code.Algebra.Structures.du2214 v1 v2 v3 v4 v5))))
name964 = "Algebra.CommutativeSemiring._.isNearSemiring"
d964 v0 v1 v2 = du964 v2
du964 v0
  = let v1 = coe d916 v0 in
    let v2 = coe d918 v0 in
    let v3 = coe d920 v0 in
    let v4 = coe d922 v0 in
    let v5 = coe d924 v0 in
    let v6
          = coe MAlonzo.Code.Algebra.Structures.du2214 v1 v2 v3 v4 v5 in
    coe
      MAlonzo.Code.Algebra.Structures.du1392 v1 v3
      (coe
         MAlonzo.Code.Algebra.Structures.C773
         (coe
            MAlonzo.Code.Algebra.Structures.d1542
            (coe MAlonzo.Code.Algebra.Structures.d1728 v6))
         (coe
            MAlonzo.Code.Algebra.Structures.d294
            (coe
               MAlonzo.Code.Algebra.Structures.d1544
               (coe MAlonzo.Code.Algebra.Structures.d1728 v6)))
         (coe
            MAlonzo.Code.Algebra.Structures.d1546
            (coe MAlonzo.Code.Algebra.Structures.d1728 v6))
         (coe MAlonzo.Code.Algebra.Structures.d1730 v6))
name966 = "Algebra.CommutativeSemiring._.isSemiring"
d966 v0 v1 v2 = du966 v2
du966 v0
  = coe
      MAlonzo.Code.Algebra.Structures.du2214 (coe d916 v0) (coe d918 v0)
      (coe d920 v0) (coe d922 v0) (coe d924 v0)
name968
  = "Algebra.CommutativeSemiring._.isSemiringWithoutAnnihilatingZero"
d968 v0 v1 v2 = du968 v2
du968 v0
  = let v1 = coe d916 v0 in
    let v2 = coe d918 v0 in
    let v3 = coe d920 v0 in
    let v4 = coe d922 v0 in
    let v5 = coe d924 v0 in
    coe
      MAlonzo.Code.Algebra.Structures.d1728
      (coe MAlonzo.Code.Algebra.Structures.du2214 v1 v2 v3 v4 v5)
name970 = "Algebra.CommutativeSemiring._.isSemiringWithoutOne"
d970 v0 v1 v2 = du970 v2
du970 v0
  = let v1 = coe d916 v0 in
    let v2 = coe d918 v0 in
    let v3 = coe d920 v0 in
    let v4 = coe d922 v0 in
    let v5 = coe d924 v0 in
    coe
      MAlonzo.Code.Algebra.Structures.C773
      (coe
         MAlonzo.Code.Algebra.Structures.d1542
         (coe
            MAlonzo.Code.Algebra.Structures.d1728
            (coe MAlonzo.Code.Algebra.Structures.du2214 v1 v2 v3 v4 v5)))
      (coe
         MAlonzo.Code.Algebra.Structures.d294
         (coe
            MAlonzo.Code.Algebra.Structures.d1544
            (coe
               MAlonzo.Code.Algebra.Structures.d1728
               (coe MAlonzo.Code.Algebra.Structures.du2214 v1 v2 v3 v4 v5))))
      (coe
         MAlonzo.Code.Algebra.Structures.d1546
         (coe
            MAlonzo.Code.Algebra.Structures.d1728
            (coe MAlonzo.Code.Algebra.Structures.du2214 v1 v2 v3 v4 v5)))
      (coe
         MAlonzo.Code.Algebra.Structures.d1730
         (coe MAlonzo.Code.Algebra.Structures.du2214 v1 v2 v3 v4 v5))
name972 = "Algebra.CommutativeSemiring._.refl"
d972 v0 v1 v2 = du972 v2
du972 v0
  = let v1 = coe d916 v0 in
    let v2 = coe d918 v0 in
    let v3 = coe d920 v0 in
    let v4 = coe d922 v0 in
    let v5 = coe d924 v0 in
    coe
      MAlonzo.Code.Relation.Binary.Core.d516
      (coe
         MAlonzo.Code.Algebra.Structures.d140
         (coe
            MAlonzo.Code.Algebra.Structures.d454
            (coe
               MAlonzo.Code.Algebra.Structures.d1542
               (coe
                  MAlonzo.Code.Algebra.Structures.d1728
                  (coe MAlonzo.Code.Algebra.Structures.du2214 v1 v2 v3 v4 v5)))))
name974 = "Algebra.CommutativeSemiring._.reflexive"
d974 v0 v1 v2 = du974 v2
du974 v0
  = let v1 = coe d916 v0 in
    let v2 = coe d918 v0 in
    let v3 = coe d920 v0 in
    let v4 = coe d922 v0 in
    let v5 = coe d924 v0 in
    let v6
          = coe MAlonzo.Code.Algebra.Structures.du2214 v1 v2 v3 v4 v5 in
    let v7 = coe MAlonzo.Code.Algebra.Structures.d1728 v6 in
    let v8 = coe MAlonzo.Code.Algebra.Structures.d1542 v7 in
    let v9 = coe MAlonzo.Code.Algebra.Structures.d454 v8 in
    \ v10 v11 v12 ->
      coe
        MAlonzo.Code.Relation.Binary.Core.du522
        (coe MAlonzo.Code.Algebra.Structures.d140 v9) v10
name976 = "Algebra.CommutativeSemiring._.sym"
d976 v0 v1 v2 = du976 v2
du976 v0
  = let v1 = coe d916 v0 in
    let v2 = coe d918 v0 in
    let v3 = coe d920 v0 in
    let v4 = coe d922 v0 in
    let v5 = coe d924 v0 in
    coe
      MAlonzo.Code.Relation.Binary.Core.d518
      (coe
         MAlonzo.Code.Algebra.Structures.d140
         (coe
            MAlonzo.Code.Algebra.Structures.d454
            (coe
               MAlonzo.Code.Algebra.Structures.d1542
               (coe
                  MAlonzo.Code.Algebra.Structures.d1728
                  (coe MAlonzo.Code.Algebra.Structures.du2214 v1 v2 v3 v4 v5)))))
name978 = "Algebra.CommutativeSemiring._.trans"
d978 v0 v1 v2 = du978 v2
du978 v0
  = let v1 = coe d916 v0 in
    let v2 = coe d918 v0 in
    let v3 = coe d920 v0 in
    let v4 = coe d922 v0 in
    let v5 = coe d924 v0 in
    coe
      MAlonzo.Code.Relation.Binary.Core.d520
      (coe
         MAlonzo.Code.Algebra.Structures.d140
         (coe
            MAlonzo.Code.Algebra.Structures.d454
            (coe
               MAlonzo.Code.Algebra.Structures.d1542
               (coe
                  MAlonzo.Code.Algebra.Structures.d1728
                  (coe MAlonzo.Code.Algebra.Structures.du2214 v1 v2 v3 v4 v5)))))
name980 = "Algebra.CommutativeSemiring._.zero"
d980 v0 v1 v2 = du980 v2
du980 v0
  = coe
      MAlonzo.Code.Algebra.Structures.du2204 (coe d918 v0) (coe d920 v0)
      (coe d924 v0)
name982 = "Algebra.CommutativeSemiring._.zero\737"
d982 v0 = coe MAlonzo.Code.Algebra.Structures.d2116 (coe d924 v0)
name984 = "Algebra.CommutativeSemiring.semiring"
d984 v0 v1 v2 = du984 v2
du984 v0
  = coe
      C381 (coe d916 v0) (coe d918 v0) (coe d920 v0) (coe d922 v0)
      (coe
         MAlonzo.Code.Algebra.Structures.du2214 (coe d916 v0) (coe d918 v0)
         (coe d920 v0) (coe d922 v0) (coe d924 v0))
name988 = "Algebra.CommutativeSemiring._.*-monoid"
d988 v0 v1 v2 = du988 v2
du988 v0
  = coe
      C49 (coe d714 (coe du984 v0)) (coe d718 (coe du984 v0))
      (coe
         MAlonzo.Code.Algebra.Structures.d1544
         (coe
            MAlonzo.Code.Algebra.Structures.d1728 (coe d720 (coe du984 v0))))
name990 = "Algebra.CommutativeSemiring._.rawMonoid"
d990 v0 v1 v2 = du990 v2
du990 v0
  = coe C31 (coe d714 (coe du984 v0)) (coe d718 (coe du984 v0))
name992 = "Algebra.CommutativeSemiring._.semigroup"
d992 v0 v1 v2 = du992 v2
du992 v0
  = coe
      C5 (coe d714 (coe du984 v0))
      (coe
         MAlonzo.Code.Algebra.Structures.d294
         (coe
            MAlonzo.Code.Algebra.Structures.d1544
            (coe
               MAlonzo.Code.Algebra.Structures.d1728 (coe d720 (coe du984 v0)))))
name994 = "Algebra.CommutativeSemiring._.+-commutativeMonoid"
d994 v0 v1 v2 = du994 v2
du994 v0
  = coe
      C97 (coe d712 (coe du984 v0)) (coe d716 (coe du984 v0))
      (coe
         MAlonzo.Code.Algebra.Structures.d1542
         (coe
            MAlonzo.Code.Algebra.Structures.d1728 (coe d720 (coe du984 v0))))
name996 = "Algebra.CommutativeSemiring._.monoid"
d996 v0 v1 v2 = du996 v2
du996 v0
  = let v1 = coe du984 v0 in
    let v2
          = coe
              C333 (coe d712 v1) (coe d714 v1) (coe d716 v1) (coe d718 v1)
              (coe MAlonzo.Code.Algebra.Structures.d1728 (coe d720 v1)) in
    coe
      du186
      (coe
         C97 (coe d616 v2) (coe d620 v2)
         (coe MAlonzo.Code.Algebra.Structures.d1542 (coe d624 v2)))
name998 = "Algebra.CommutativeSemiring._.rawMonoid"
d998 v0 v1 v2 = du998 v2
du998 v0
  = let v1 = coe du984 v0 in
    let v2
          = coe
              C333 (coe d712 v1) (coe d714 v1) (coe d716 v1) (coe d718 v1)
              (coe MAlonzo.Code.Algebra.Structures.d1728 (coe d720 v1)) in
    let v3
          = coe
              C97 (coe d616 v2) (coe d620 v2)
              (coe MAlonzo.Code.Algebra.Structures.d1542 (coe d624 v2)) in
    coe C31 (coe d96 (coe du186 v3)) (coe d98 (coe du186 v3))
name1000 = "Algebra.CommutativeSemiring._.semigroup"
d1000 v0 v1 v2 = du1000 v2
du1000 v0
  = let v1 = coe du984 v0 in
    let v2
          = coe
              C333 (coe d712 v1) (coe d714 v1) (coe d716 v1) (coe d718 v1)
              (coe MAlonzo.Code.Algebra.Structures.d1728 (coe d720 v1)) in
    let v3
          = coe
              C97 (coe d616 v2) (coe d620 v2)
              (coe MAlonzo.Code.Algebra.Structures.d1542 (coe d624 v2)) in
    coe
      C5 (coe d96 (coe du186 v3))
      (coe
         MAlonzo.Code.Algebra.Structures.d294 (coe d100 (coe du186 v3)))
name1002 = "Algebra.CommutativeSemiring._.nearSemiring"
d1002 v0 v1 v2 = du1002 v2
du1002 v0
  = let v1 = coe du984 v0 in
    coe
      du572
      (coe
         C287 (coe d712 v1) (coe d714 v1) (coe d716 v1)
         (coe
            MAlonzo.Code.Algebra.Structures.C773
            (coe
               MAlonzo.Code.Algebra.Structures.d1542
               (coe MAlonzo.Code.Algebra.Structures.d1728 (coe d720 v1)))
            (coe
               MAlonzo.Code.Algebra.Structures.d294
               (coe
                  MAlonzo.Code.Algebra.Structures.d1544
                  (coe MAlonzo.Code.Algebra.Structures.d1728 (coe d720 v1))))
            (coe
               MAlonzo.Code.Algebra.Structures.d1546
               (coe MAlonzo.Code.Algebra.Structures.d1728 (coe d720 v1)))
            (coe MAlonzo.Code.Algebra.Structures.d1730 (coe d720 v1))))
name1004
  = "Algebra.CommutativeSemiring._.semiringWithoutAnnihilatingZero"
d1004 v0 v1 v2 = du1004 v2
du1004 v0
  = coe
      C333 (coe d712 (coe du984 v0)) (coe d714 (coe du984 v0))
      (coe d716 (coe du984 v0)) (coe d718 (coe du984 v0))
      (coe
         MAlonzo.Code.Algebra.Structures.d1728 (coe d720 (coe du984 v0)))
name1006 = "Algebra.CommutativeSemiring._.semiringWithoutOne"
d1006 v0 v1 v2 = du1006 v2
du1006 v0
  = coe
      C287 (coe d712 (coe du984 v0)) (coe d714 (coe du984 v0))
      (coe d716 (coe du984 v0))
      (coe
         MAlonzo.Code.Algebra.Structures.C773
         (coe
            MAlonzo.Code.Algebra.Structures.d1542
            (coe
               MAlonzo.Code.Algebra.Structures.d1728 (coe d720 (coe du984 v0))))
         (coe
            MAlonzo.Code.Algebra.Structures.d294
            (coe
               MAlonzo.Code.Algebra.Structures.d1544
               (coe
                  MAlonzo.Code.Algebra.Structures.d1728 (coe d720 (coe du984 v0)))))
         (coe
            MAlonzo.Code.Algebra.Structures.d1546
            (coe
               MAlonzo.Code.Algebra.Structures.d1728 (coe d720 (coe du984 v0))))
         (coe
            MAlonzo.Code.Algebra.Structures.d1730 (coe d720 (coe du984 v0))))
name1008 = "Algebra.CommutativeSemiring._.setoid"
d1008 v0 v1 v2 = du1008 v2
du1008 v0
  = let v1 = coe du984 v0 in
    let v2
          = coe
              C333 (coe d712 v1) (coe d714 v1) (coe d716 v1) (coe d718 v1)
              (coe MAlonzo.Code.Algebra.Structures.d1728 (coe d720 v1)) in
    let v3
          = coe
              C97 (coe d616 v2) (coe d620 v2)
              (coe MAlonzo.Code.Algebra.Structures.d1542 (coe d624 v2)) in
    coe
      MAlonzo.Code.Relation.Binary.C143
      (coe
         MAlonzo.Code.Algebra.Structures.d140
         (coe
            MAlonzo.Code.Algebra.Structures.d294 (coe d100 (coe du186 v3))))
name1010 = "Algebra.CommutativeSemiring.*-commutativeMonoid"
d1010 v0
  = coe
      C97 (coe d918 v0) (coe d922 v0)
      (coe MAlonzo.Code.Algebra.Structures.d2112 (coe d924 v0))
name1012
  = "Algebra.CommutativeSemiring.commutativeSemiringWithoutOne"
d1012 v0 v1 v2 = du1012 v2
du1012 v0
  = coe
      C429 (coe d916 v0) (coe d918 v0) (coe d920 v0)
      (coe
         MAlonzo.Code.Algebra.Structures.du2256 (coe d916 v0) (coe d918 v0)
         (coe d920 v0) (coe d922 v0) (coe d924 v0))
name1016 = "Algebra.RawRing"
d1016 a0 = ()
data T1016 a0 a1 a2 a3 a4 a5 = C519 a0 a1 a2 a3 a4
name1032 = "Algebra.RawRing.Carrier"
d1032 = erased
name1034 = "Algebra.RawRing._+_"
d1034 v0
  = case coe v0 of
      C519 v2 v3 v4 v5 v6 -> coe v2
      _ -> coe MAlonzo.RTE.mazUnreachableError
name1036 = "Algebra.RawRing._*_"
d1036 v0
  = case coe v0 of
      C519 v2 v3 v4 v5 v6 -> coe v3
      _ -> coe MAlonzo.RTE.mazUnreachableError
name1038 = "Algebra.RawRing.-_"
d1038 v0
  = case coe v0 of
      C519 v2 v3 v4 v5 v6 -> coe v4
      _ -> coe MAlonzo.RTE.mazUnreachableError
name1040 = "Algebra.RawRing.0#"
d1040 v0
  = case coe v0 of
      C519 v2 v3 v4 v5 v6 -> coe v5
      _ -> coe MAlonzo.RTE.mazUnreachableError
name1042 = "Algebra.RawRing.1#"
d1042 v0
  = case coe v0 of
      C519 v2 v3 v4 v5 v6 -> coe v6
      _ -> coe MAlonzo.RTE.mazUnreachableError
name1048 = "Algebra.Ring"
d1048 a0 a1 = ()
data T1048 a0 a1 a2 a3 a4 a5 a6 a7 = C541 a0 a1 a2 a3 a4 a5
name1070 = "Algebra.Ring.Carrier"
d1070 = erased
name1072 = "Algebra.Ring._\8776_"
d1072 = erased
name1074 = "Algebra.Ring._+_"
d1074 v0
  = case coe v0 of
      C541 v3 v4 v5 v6 v7 v8 -> coe v3
      _ -> coe MAlonzo.RTE.mazUnreachableError
name1076 = "Algebra.Ring._*_"
d1076 v0
  = case coe v0 of
      C541 v3 v4 v5 v6 v7 v8 -> coe v4
      _ -> coe MAlonzo.RTE.mazUnreachableError
name1078 = "Algebra.Ring.-_"
d1078 v0
  = case coe v0 of
      C541 v3 v4 v5 v6 v7 v8 -> coe v5
      _ -> coe MAlonzo.RTE.mazUnreachableError
name1080 = "Algebra.Ring.0#"
d1080 v0
  = case coe v0 of
      C541 v3 v4 v5 v6 v7 v8 -> coe v6
      _ -> coe MAlonzo.RTE.mazUnreachableError
name1082 = "Algebra.Ring.1#"
d1082 v0
  = case coe v0 of
      C541 v3 v4 v5 v6 v7 v8 -> coe v7
      _ -> coe MAlonzo.RTE.mazUnreachableError
name1084 = "Algebra.Ring.isRing"
d1084 v0
  = case coe v0 of
      C541 v3 v4 v5 v6 v7 v8 -> coe v8
      _ -> coe MAlonzo.RTE.mazUnreachableError
name1088 = "Algebra.Ring._._-_"
d1088 v0 v1 v2 = du1088 v2
du1088 v0
  = let v1 = coe d1074 v0 in
    let v2 = coe d1078 v0 in
    coe MAlonzo.Code.Algebra.Structures.du846 v1 v2
name1090 = "Algebra.Ring._.assoc"
d1090 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d142
      (coe
         MAlonzo.Code.Algebra.Structures.d294
         (coe MAlonzo.Code.Algebra.Structures.d2412 (coe d1084 v0)))
name1092 = "Algebra.Ring._.\8729-cong"
d1092 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d144
      (coe
         MAlonzo.Code.Algebra.Structures.d294
         (coe MAlonzo.Code.Algebra.Structures.d2412 (coe d1084 v0)))
name1094 = "Algebra.Ring._.identity"
d1094 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d296
      (coe MAlonzo.Code.Algebra.Structures.d2412 (coe d1084 v0))
name1096 = "Algebra.Ring._.*-isMonoid"
d1096 v0 = coe MAlonzo.Code.Algebra.Structures.d2412 (coe d1084 v0)
name1098 = "Algebra.Ring._.isSemigroup"
d1098 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d294
      (coe MAlonzo.Code.Algebra.Structures.d2412 (coe d1084 v0))
name1100 = "Algebra.Ring._.assoc"
d1100 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d142
      (coe
         MAlonzo.Code.Algebra.Structures.d294
         (coe
            MAlonzo.Code.Algebra.Structures.d820
            (coe
               MAlonzo.Code.Algebra.Structures.d994
               (coe MAlonzo.Code.Algebra.Structures.d2410 (coe d1084 v0)))))
name1102 = "Algebra.Ring._.comm"
d1102 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d996
      (coe MAlonzo.Code.Algebra.Structures.d2410 (coe d1084 v0))
name1104 = "Algebra.Ring._.\8729-cong"
d1104 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d144
      (coe
         MAlonzo.Code.Algebra.Structures.d294
         (coe
            MAlonzo.Code.Algebra.Structures.d820
            (coe
               MAlonzo.Code.Algebra.Structures.d994
               (coe MAlonzo.Code.Algebra.Structures.d2410 (coe d1084 v0)))))
name1106 = "Algebra.Ring._.identity"
d1106 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d296
      (coe
         MAlonzo.Code.Algebra.Structures.d820
         (coe
            MAlonzo.Code.Algebra.Structures.d994
            (coe MAlonzo.Code.Algebra.Structures.d2410 (coe d1084 v0))))
name1108 = "Algebra.Ring._.+-isAbelianGroup"
d1108 v0 = coe MAlonzo.Code.Algebra.Structures.d2410 (coe d1084 v0)
name1110 = "Algebra.Ring._.isCommutativeMonoid"
d1110 v0
  = coe
      MAlonzo.Code.Algebra.Structures.C221
      (coe
         MAlonzo.Code.Algebra.Structures.d294
         (coe
            MAlonzo.Code.Algebra.Structures.d820
            (coe
               MAlonzo.Code.Algebra.Structures.d994
               (coe MAlonzo.Code.Algebra.Structures.d2410 (coe d1084 v0)))))
      (coe
         MAlonzo.Code.Data.Product.d26
         (coe
            MAlonzo.Code.Algebra.Structures.d296
            (coe
               MAlonzo.Code.Algebra.Structures.d820
               (coe
                  MAlonzo.Code.Algebra.Structures.d994
                  (coe MAlonzo.Code.Algebra.Structures.d2410 (coe d1084 v0))))))
      (coe
         MAlonzo.Code.Algebra.Structures.d996
         (coe MAlonzo.Code.Algebra.Structures.d2410 (coe d1084 v0)))
name1112 = "Algebra.Ring._.isGroup"
d1112 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d994
      (coe MAlonzo.Code.Algebra.Structures.d2410 (coe d1084 v0))
name1114 = "Algebra.Ring._.isMonoid"
d1114 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d820
      (coe
         MAlonzo.Code.Algebra.Structures.d994
         (coe MAlonzo.Code.Algebra.Structures.d2410 (coe d1084 v0)))
name1116 = "Algebra.Ring._.isSemigroup"
d1116 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d294
      (coe
         MAlonzo.Code.Algebra.Structures.d820
         (coe
            MAlonzo.Code.Algebra.Structures.d994
            (coe MAlonzo.Code.Algebra.Structures.d2410 (coe d1084 v0))))
name1118 = "Algebra.Ring._.\8315\185-cong"
d1118 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d824
      (coe
         MAlonzo.Code.Algebra.Structures.d994
         (coe MAlonzo.Code.Algebra.Structures.d2410 (coe d1084 v0)))
name1120 = "Algebra.Ring._.inverse"
d1120 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d822
      (coe
         MAlonzo.Code.Algebra.Structures.d994
         (coe MAlonzo.Code.Algebra.Structures.d2410 (coe d1084 v0)))
name1122 = "Algebra.Ring._.distrib"
d1122 v0 = coe MAlonzo.Code.Algebra.Structures.d2414 (coe d1084 v0)
name1124 = "Algebra.Ring._.isEquivalence"
d1124 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d140
      (coe
         MAlonzo.Code.Algebra.Structures.d294
         (coe
            MAlonzo.Code.Algebra.Structures.d820
            (coe
               MAlonzo.Code.Algebra.Structures.d994
               (coe MAlonzo.Code.Algebra.Structures.d2410 (coe d1084 v0)))))
name1126 = "Algebra.Ring._.isNearSemiring"
d1126 v0 v1 v2 = du1126 v2
du1126 v0
  = let v1 = coe d1074 v0 in
    let v2 = coe d1076 v0 in
    let v3 = coe d1078 v0 in
    let v4 = coe d1080 v0 in
    let v5 = coe d1084 v0 in
    let v6
          = coe MAlonzo.Code.Algebra.Structures.du2496 v1 v2 v3 v4 v5 in
    coe
      MAlonzo.Code.Algebra.Structures.du1392 v1 v4
      (coe
         MAlonzo.Code.Algebra.Structures.C773
         (coe
            MAlonzo.Code.Algebra.Structures.d1542
            (coe MAlonzo.Code.Algebra.Structures.d1728 v6))
         (coe
            MAlonzo.Code.Algebra.Structures.d294
            (coe
               MAlonzo.Code.Algebra.Structures.d1544
               (coe MAlonzo.Code.Algebra.Structures.d1728 v6)))
         (coe
            MAlonzo.Code.Algebra.Structures.d1546
            (coe MAlonzo.Code.Algebra.Structures.d1728 v6))
         (coe MAlonzo.Code.Algebra.Structures.d1730 v6))
name1128 = "Algebra.Ring._.isSemiring"
d1128 v0 v1 v2 = du1128 v2
du1128 v0
  = coe
      MAlonzo.Code.Algebra.Structures.du2496 (coe d1074 v0)
      (coe d1076 v0) (coe d1078 v0) (coe d1080 v0) (coe d1084 v0)
name1130 = "Algebra.Ring._.isSemiringWithoutAnnihilatingZero"
d1130 v0
  = coe
      MAlonzo.Code.Algebra.Structures.C893
      (coe
         MAlonzo.Code.Algebra.Structures.C221
         (coe
            MAlonzo.Code.Algebra.Structures.d294
            (coe
               MAlonzo.Code.Algebra.Structures.d820
               (coe
                  MAlonzo.Code.Algebra.Structures.d994
                  (coe MAlonzo.Code.Algebra.Structures.d2410 (coe d1084 v0)))))
         (coe
            MAlonzo.Code.Data.Product.d26
            (coe
               MAlonzo.Code.Algebra.Structures.d296
               (coe
                  MAlonzo.Code.Algebra.Structures.d820
                  (coe
                     MAlonzo.Code.Algebra.Structures.d994
                     (coe MAlonzo.Code.Algebra.Structures.d2410 (coe d1084 v0))))))
         (coe
            MAlonzo.Code.Algebra.Structures.d996
            (coe MAlonzo.Code.Algebra.Structures.d2410 (coe d1084 v0))))
      (coe MAlonzo.Code.Algebra.Structures.d2412 (coe d1084 v0))
      (coe MAlonzo.Code.Algebra.Structures.d2414 (coe d1084 v0))
name1132 = "Algebra.Ring._.isSemiringWithoutOne"
d1132 v0 v1 v2 = du1132 v2
du1132 v0
  = let v1 = coe d1074 v0 in
    let v2 = coe d1076 v0 in
    let v3 = coe d1078 v0 in
    let v4 = coe d1080 v0 in
    let v5 = coe d1084 v0 in
    coe
      MAlonzo.Code.Algebra.Structures.C773
      (coe
         MAlonzo.Code.Algebra.Structures.d1542
         (coe
            MAlonzo.Code.Algebra.Structures.d1728
            (coe MAlonzo.Code.Algebra.Structures.du2496 v1 v2 v3 v4 v5)))
      (coe
         MAlonzo.Code.Algebra.Structures.d294
         (coe
            MAlonzo.Code.Algebra.Structures.d1544
            (coe
               MAlonzo.Code.Algebra.Structures.d1728
               (coe MAlonzo.Code.Algebra.Structures.du2496 v1 v2 v3 v4 v5))))
      (coe
         MAlonzo.Code.Algebra.Structures.d1546
         (coe
            MAlonzo.Code.Algebra.Structures.d1728
            (coe MAlonzo.Code.Algebra.Structures.du2496 v1 v2 v3 v4 v5)))
      (coe
         MAlonzo.Code.Algebra.Structures.d1730
         (coe MAlonzo.Code.Algebra.Structures.du2496 v1 v2 v3 v4 v5))
name1134 = "Algebra.Ring._.refl"
d1134 v0
  = coe
      MAlonzo.Code.Relation.Binary.Core.d516
      (coe
         MAlonzo.Code.Algebra.Structures.d140
         (coe
            MAlonzo.Code.Algebra.Structures.d294
            (coe
               MAlonzo.Code.Algebra.Structures.d820
               (coe
                  MAlonzo.Code.Algebra.Structures.d994
                  (coe MAlonzo.Code.Algebra.Structures.d2410 (coe d1084 v0))))))
name1136 = "Algebra.Ring._.reflexive"
d1136 v0 v1 v2 = du1136 v2
du1136 v0
  = let v1 = coe d1084 v0 in
    let v2 = coe MAlonzo.Code.Algebra.Structures.d2410 v1 in
    let v3 = coe MAlonzo.Code.Algebra.Structures.d994 v2 in
    let v4 = coe MAlonzo.Code.Algebra.Structures.d820 v3 in
    let v5 = coe MAlonzo.Code.Algebra.Structures.d294 v4 in
    \ v6 v7 v8 ->
      coe
        MAlonzo.Code.Relation.Binary.Core.du522
        (coe MAlonzo.Code.Algebra.Structures.d140 v5) v6
name1138 = "Algebra.Ring._.sym"
d1138 v0
  = coe
      MAlonzo.Code.Relation.Binary.Core.d518
      (coe
         MAlonzo.Code.Algebra.Structures.d140
         (coe
            MAlonzo.Code.Algebra.Structures.d294
            (coe
               MAlonzo.Code.Algebra.Structures.d820
               (coe
                  MAlonzo.Code.Algebra.Structures.d994
                  (coe MAlonzo.Code.Algebra.Structures.d2410 (coe d1084 v0))))))
name1140 = "Algebra.Ring._.trans"
d1140 v0
  = coe
      MAlonzo.Code.Relation.Binary.Core.d520
      (coe
         MAlonzo.Code.Algebra.Structures.d140
         (coe
            MAlonzo.Code.Algebra.Structures.d294
            (coe
               MAlonzo.Code.Algebra.Structures.d820
               (coe
                  MAlonzo.Code.Algebra.Structures.d994
                  (coe MAlonzo.Code.Algebra.Structures.d2410 (coe d1084 v0))))))
name1142 = "Algebra.Ring._.zero"
d1142 v0 v1 v2 = du1142 v2
du1142 v0
  = coe
      MAlonzo.Code.Algebra.Structures.du2460 (coe d1074 v0)
      (coe d1076 v0) (coe d1078 v0) (coe d1080 v0) (coe d1084 v0)
name1144 = "Algebra.Ring.+-abelianGroup"
d1144 v0
  = coe
      C195 (coe d1074 v0) (coe d1080 v0) (coe d1078 v0)
      (coe MAlonzo.Code.Algebra.Structures.d2410 (coe d1084 v0))
name1146 = "Algebra.Ring.semiring"
d1146 v0 v1 v2 = du1146 v2
du1146 v0
  = coe
      C381 (coe d1074 v0) (coe d1076 v0) (coe d1080 v0) (coe d1082 v0)
      (coe
         MAlonzo.Code.Algebra.Structures.du2496 (coe d1074 v0)
         (coe d1076 v0) (coe d1078 v0) (coe d1080 v0) (coe d1084 v0))
name1150 = "Algebra.Ring._.*-monoid"
d1150 v0 v1 v2 = du1150 v2
du1150 v0
  = coe
      C49 (coe d714 (coe du1146 v0)) (coe d718 (coe du1146 v0))
      (coe
         MAlonzo.Code.Algebra.Structures.d1544
         (coe
            MAlonzo.Code.Algebra.Structures.d1728 (coe d720 (coe du1146 v0))))
name1152 = "Algebra.Ring._.rawMonoid"
d1152 v0 v1 v2 = du1152 v2
du1152 v0
  = coe C31 (coe d714 (coe du1146 v0)) (coe d718 (coe du1146 v0))
name1154 = "Algebra.Ring._.semigroup"
d1154 v0 v1 v2 = du1154 v2
du1154 v0
  = coe
      C5 (coe d714 (coe du1146 v0))
      (coe
         MAlonzo.Code.Algebra.Structures.d294
         (coe
            MAlonzo.Code.Algebra.Structures.d1544
            (coe
               MAlonzo.Code.Algebra.Structures.d1728 (coe d720 (coe du1146 v0)))))
name1156 = "Algebra.Ring._.+-commutativeMonoid"
d1156 v0 v1 v2 = du1156 v2
du1156 v0
  = coe
      C97 (coe d712 (coe du1146 v0)) (coe d716 (coe du1146 v0))
      (coe
         MAlonzo.Code.Algebra.Structures.d1542
         (coe
            MAlonzo.Code.Algebra.Structures.d1728 (coe d720 (coe du1146 v0))))
name1158 = "Algebra.Ring._.monoid"
d1158 v0 v1 v2 = du1158 v2
du1158 v0
  = let v1 = coe du1146 v0 in
    let v2
          = coe
              C333 (coe d712 v1) (coe d714 v1) (coe d716 v1) (coe d718 v1)
              (coe MAlonzo.Code.Algebra.Structures.d1728 (coe d720 v1)) in
    coe
      du186
      (coe
         C97 (coe d616 v2) (coe d620 v2)
         (coe MAlonzo.Code.Algebra.Structures.d1542 (coe d624 v2)))
name1160 = "Algebra.Ring._.rawMonoid"
d1160 v0 v1 v2 = du1160 v2
du1160 v0
  = let v1 = coe du1146 v0 in
    let v2
          = coe
              C333 (coe d712 v1) (coe d714 v1) (coe d716 v1) (coe d718 v1)
              (coe MAlonzo.Code.Algebra.Structures.d1728 (coe d720 v1)) in
    let v3
          = coe
              C97 (coe d616 v2) (coe d620 v2)
              (coe MAlonzo.Code.Algebra.Structures.d1542 (coe d624 v2)) in
    coe C31 (coe d96 (coe du186 v3)) (coe d98 (coe du186 v3))
name1162 = "Algebra.Ring._.semigroup"
d1162 v0 v1 v2 = du1162 v2
du1162 v0
  = let v1 = coe du1146 v0 in
    let v2
          = coe
              C333 (coe d712 v1) (coe d714 v1) (coe d716 v1) (coe d718 v1)
              (coe MAlonzo.Code.Algebra.Structures.d1728 (coe d720 v1)) in
    let v3
          = coe
              C97 (coe d616 v2) (coe d620 v2)
              (coe MAlonzo.Code.Algebra.Structures.d1542 (coe d624 v2)) in
    coe
      C5 (coe d96 (coe du186 v3))
      (coe
         MAlonzo.Code.Algebra.Structures.d294 (coe d100 (coe du186 v3)))
name1164 = "Algebra.Ring._.nearSemiring"
d1164 v0 v1 v2 = du1164 v2
du1164 v0
  = let v1 = coe du1146 v0 in
    coe
      du572
      (coe
         C287 (coe d712 v1) (coe d714 v1) (coe d716 v1)
         (coe
            MAlonzo.Code.Algebra.Structures.C773
            (coe
               MAlonzo.Code.Algebra.Structures.d1542
               (coe MAlonzo.Code.Algebra.Structures.d1728 (coe d720 v1)))
            (coe
               MAlonzo.Code.Algebra.Structures.d294
               (coe
                  MAlonzo.Code.Algebra.Structures.d1544
                  (coe MAlonzo.Code.Algebra.Structures.d1728 (coe d720 v1))))
            (coe
               MAlonzo.Code.Algebra.Structures.d1546
               (coe MAlonzo.Code.Algebra.Structures.d1728 (coe d720 v1)))
            (coe MAlonzo.Code.Algebra.Structures.d1730 (coe d720 v1))))
name1166 = "Algebra.Ring._.semiringWithoutAnnihilatingZero"
d1166 v0 v1 v2 = du1166 v2
du1166 v0
  = coe
      C333 (coe d712 (coe du1146 v0)) (coe d714 (coe du1146 v0))
      (coe d716 (coe du1146 v0)) (coe d718 (coe du1146 v0))
      (coe
         MAlonzo.Code.Algebra.Structures.d1728 (coe d720 (coe du1146 v0)))
name1168 = "Algebra.Ring._.semiringWithoutOne"
d1168 v0 v1 v2 = du1168 v2
du1168 v0
  = coe
      C287 (coe d712 (coe du1146 v0)) (coe d714 (coe du1146 v0))
      (coe d716 (coe du1146 v0))
      (coe
         MAlonzo.Code.Algebra.Structures.C773
         (coe
            MAlonzo.Code.Algebra.Structures.d1542
            (coe
               MAlonzo.Code.Algebra.Structures.d1728 (coe d720 (coe du1146 v0))))
         (coe
            MAlonzo.Code.Algebra.Structures.d294
            (coe
               MAlonzo.Code.Algebra.Structures.d1544
               (coe
                  MAlonzo.Code.Algebra.Structures.d1728 (coe d720 (coe du1146 v0)))))
         (coe
            MAlonzo.Code.Algebra.Structures.d1546
            (coe
               MAlonzo.Code.Algebra.Structures.d1728 (coe d720 (coe du1146 v0))))
         (coe
            MAlonzo.Code.Algebra.Structures.d1730 (coe d720 (coe du1146 v0))))
name1170 = "Algebra.Ring._.setoid"
d1170 v0 v1 v2 = du1170 v2
du1170 v0
  = let v1 = coe du1146 v0 in
    let v2
          = coe
              C333 (coe d712 v1) (coe d714 v1) (coe d716 v1) (coe d718 v1)
              (coe MAlonzo.Code.Algebra.Structures.d1728 (coe d720 v1)) in
    let v3
          = coe
              C97 (coe d616 v2) (coe d620 v2)
              (coe MAlonzo.Code.Algebra.Structures.d1542 (coe d624 v2)) in
    coe
      MAlonzo.Code.Relation.Binary.C143
      (coe
         MAlonzo.Code.Algebra.Structures.d140
         (coe
            MAlonzo.Code.Algebra.Structures.d294 (coe d100 (coe du186 v3))))
name1174 = "Algebra.Ring._.group"
d1174 v0
  = coe
      C161 (coe d1074 v0) (coe d1080 v0) (coe d1078 v0)
      (coe
         MAlonzo.Code.Algebra.Structures.d994
         (coe MAlonzo.Code.Algebra.Structures.d2410 (coe d1084 v0)))
name1176 = "Algebra.Ring.rawRing"
d1176 v0
  = coe
      C519 (coe d1074 v0) (coe d1076 v0) (coe d1078 v0) (coe d1080 v0)
      (coe d1082 v0)
name1182 = "Algebra.CommutativeRing"
d1182 a0 a1 = ()
data T1182 a0 a1 a2 a3 a4 a5 a6 a7 = C605 a0 a1 a2 a3 a4 a5
name1204 = "Algebra.CommutativeRing.Carrier"
d1204 = erased
name1206 = "Algebra.CommutativeRing._\8776_"
d1206 = erased
name1208 = "Algebra.CommutativeRing._+_"
d1208 v0
  = case coe v0 of
      C605 v3 v4 v5 v6 v7 v8 -> coe v3
      _ -> coe MAlonzo.RTE.mazUnreachableError
name1210 = "Algebra.CommutativeRing._*_"
d1210 v0
  = case coe v0 of
      C605 v3 v4 v5 v6 v7 v8 -> coe v4
      _ -> coe MAlonzo.RTE.mazUnreachableError
name1212 = "Algebra.CommutativeRing.-_"
d1212 v0
  = case coe v0 of
      C605 v3 v4 v5 v6 v7 v8 -> coe v5
      _ -> coe MAlonzo.RTE.mazUnreachableError
name1214 = "Algebra.CommutativeRing.0#"
d1214 v0
  = case coe v0 of
      C605 v3 v4 v5 v6 v7 v8 -> coe v6
      _ -> coe MAlonzo.RTE.mazUnreachableError
name1216 = "Algebra.CommutativeRing.1#"
d1216 v0
  = case coe v0 of
      C605 v3 v4 v5 v6 v7 v8 -> coe v7
      _ -> coe MAlonzo.RTE.mazUnreachableError
name1218 = "Algebra.CommutativeRing.isCommutativeRing"
d1218 v0
  = case coe v0 of
      C605 v3 v4 v5 v6 v7 v8 -> coe v8
      _ -> coe MAlonzo.RTE.mazUnreachableError
name1222 = "Algebra.CommutativeRing._._-_"
d1222 v0 v1 v2 = du1222 v2
du1222 v0
  = let v1 = coe d1208 v0 in
    let v2 = coe d1212 v0 in
    coe MAlonzo.Code.Algebra.Structures.du846 v1 v2
name1224 = "Algebra.CommutativeRing._.assoc"
d1224 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d142
      (coe
         MAlonzo.Code.Algebra.Structures.d294
         (coe
            MAlonzo.Code.Algebra.Structures.d2412
            (coe MAlonzo.Code.Algebra.Structures.d2654 (coe d1218 v0))))
name1226 = "Algebra.CommutativeRing._.*-comm"
d1226 v0 = coe MAlonzo.Code.Algebra.Structures.d2656 (coe d1218 v0)
name1228 = "Algebra.CommutativeRing._.\8729-cong"
d1228 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d144
      (coe
         MAlonzo.Code.Algebra.Structures.d294
         (coe
            MAlonzo.Code.Algebra.Structures.d2412
            (coe MAlonzo.Code.Algebra.Structures.d2654 (coe d1218 v0))))
name1230 = "Algebra.CommutativeRing._.identity"
d1230 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d296
      (coe
         MAlonzo.Code.Algebra.Structures.d2412
         (coe MAlonzo.Code.Algebra.Structures.d2654 (coe d1218 v0)))
name1232 = "Algebra.CommutativeRing._.*-isCommutativeMonoid"
d1232 v0 v1 v2 = du1232 v2
du1232 v0
  = let v1 = coe d1208 v0 in
    let v2 = coe d1210 v0 in
    let v3 = coe d1212 v0 in
    let v4 = coe d1214 v0 in
    let v5 = coe d1218 v0 in
    coe
      MAlonzo.Code.Algebra.Structures.d2112
      (coe MAlonzo.Code.Algebra.Structures.du2716 v1 v2 v3 v4 v5)
name1234 = "Algebra.CommutativeRing._.*-isMonoid"
d1234 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d2412
      (coe MAlonzo.Code.Algebra.Structures.d2654 (coe d1218 v0))
name1236 = "Algebra.CommutativeRing._.isSemigroup"
d1236 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d294
      (coe
         MAlonzo.Code.Algebra.Structures.d2412
         (coe MAlonzo.Code.Algebra.Structures.d2654 (coe d1218 v0)))
name1238 = "Algebra.CommutativeRing._.assoc"
d1238 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d142
      (coe
         MAlonzo.Code.Algebra.Structures.d294
         (coe
            MAlonzo.Code.Algebra.Structures.d820
            (coe
               MAlonzo.Code.Algebra.Structures.d994
               (coe
                  MAlonzo.Code.Algebra.Structures.d2410
                  (coe MAlonzo.Code.Algebra.Structures.d2654 (coe d1218 v0))))))
name1240 = "Algebra.CommutativeRing._.comm"
d1240 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d996
      (coe
         MAlonzo.Code.Algebra.Structures.d2410
         (coe MAlonzo.Code.Algebra.Structures.d2654 (coe d1218 v0)))
name1242 = "Algebra.CommutativeRing._.\8729-cong"
d1242 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d144
      (coe
         MAlonzo.Code.Algebra.Structures.d294
         (coe
            MAlonzo.Code.Algebra.Structures.d820
            (coe
               MAlonzo.Code.Algebra.Structures.d994
               (coe
                  MAlonzo.Code.Algebra.Structures.d2410
                  (coe MAlonzo.Code.Algebra.Structures.d2654 (coe d1218 v0))))))
name1244 = "Algebra.CommutativeRing._.identity"
d1244 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d296
      (coe
         MAlonzo.Code.Algebra.Structures.d820
         (coe
            MAlonzo.Code.Algebra.Structures.d994
            (coe
               MAlonzo.Code.Algebra.Structures.d2410
               (coe MAlonzo.Code.Algebra.Structures.d2654 (coe d1218 v0)))))
name1246 = "Algebra.CommutativeRing._.+-isAbelianGroup"
d1246 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d2410
      (coe MAlonzo.Code.Algebra.Structures.d2654 (coe d1218 v0))
name1248 = "Algebra.CommutativeRing._.isCommutativeMonoid"
d1248 v0
  = coe
      MAlonzo.Code.Algebra.Structures.C221
      (coe
         MAlonzo.Code.Algebra.Structures.d294
         (coe
            MAlonzo.Code.Algebra.Structures.d820
            (coe
               MAlonzo.Code.Algebra.Structures.d994
               (coe
                  MAlonzo.Code.Algebra.Structures.d2410
                  (coe MAlonzo.Code.Algebra.Structures.d2654 (coe d1218 v0))))))
      (coe
         MAlonzo.Code.Data.Product.d26
         (coe
            MAlonzo.Code.Algebra.Structures.d296
            (coe
               MAlonzo.Code.Algebra.Structures.d820
               (coe
                  MAlonzo.Code.Algebra.Structures.d994
                  (coe
                     MAlonzo.Code.Algebra.Structures.d2410
                     (coe MAlonzo.Code.Algebra.Structures.d2654 (coe d1218 v0)))))))
      (coe
         MAlonzo.Code.Algebra.Structures.d996
         (coe
            MAlonzo.Code.Algebra.Structures.d2410
            (coe MAlonzo.Code.Algebra.Structures.d2654 (coe d1218 v0))))
name1250 = "Algebra.CommutativeRing._.isGroup"
d1250 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d994
      (coe
         MAlonzo.Code.Algebra.Structures.d2410
         (coe MAlonzo.Code.Algebra.Structures.d2654 (coe d1218 v0)))
name1252 = "Algebra.CommutativeRing._.isMonoid"
d1252 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d820
      (coe
         MAlonzo.Code.Algebra.Structures.d994
         (coe
            MAlonzo.Code.Algebra.Structures.d2410
            (coe MAlonzo.Code.Algebra.Structures.d2654 (coe d1218 v0))))
name1254 = "Algebra.CommutativeRing._.isSemigroup"
d1254 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d294
      (coe
         MAlonzo.Code.Algebra.Structures.d820
         (coe
            MAlonzo.Code.Algebra.Structures.d994
            (coe
               MAlonzo.Code.Algebra.Structures.d2410
               (coe MAlonzo.Code.Algebra.Structures.d2654 (coe d1218 v0)))))
name1256 = "Algebra.CommutativeRing._.\8315\185-cong"
d1256 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d824
      (coe
         MAlonzo.Code.Algebra.Structures.d994
         (coe
            MAlonzo.Code.Algebra.Structures.d2410
            (coe MAlonzo.Code.Algebra.Structures.d2654 (coe d1218 v0))))
name1258 = "Algebra.CommutativeRing._.inverse"
d1258 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d822
      (coe
         MAlonzo.Code.Algebra.Structures.d994
         (coe
            MAlonzo.Code.Algebra.Structures.d2410
            (coe MAlonzo.Code.Algebra.Structures.d2654 (coe d1218 v0))))
name1260 = "Algebra.CommutativeRing._.distrib"
d1260 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d2414
      (coe MAlonzo.Code.Algebra.Structures.d2654 (coe d1218 v0))
name1262 = "Algebra.CommutativeRing._.isCommutativeSemiring"
d1262 v0 v1 v2 = du1262 v2
du1262 v0
  = coe
      MAlonzo.Code.Algebra.Structures.du2716 (coe d1208 v0)
      (coe d1210 v0) (coe d1212 v0) (coe d1214 v0) (coe d1218 v0)
name1264
  = "Algebra.CommutativeRing._.isCommutativeSemiringWithoutOne"
d1264 v0 v1 v2 = du1264 v2
du1264 v0
  = let v1 = coe d1208 v0 in
    let v2 = coe d1210 v0 in
    let v3 = coe d1212 v0 in
    let v4 = coe d1214 v0 in
    let v5 = coe d1216 v0 in
    let v6 = coe d1218 v0 in
    coe
      MAlonzo.Code.Algebra.Structures.du2256 v1 v2 v4 v5
      (coe MAlonzo.Code.Algebra.Structures.du2716 v1 v2 v3 v4 v6)
name1266 = "Algebra.CommutativeRing._.isEquivalence"
d1266 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d140
      (coe
         MAlonzo.Code.Algebra.Structures.d294
         (coe
            MAlonzo.Code.Algebra.Structures.d820
            (coe
               MAlonzo.Code.Algebra.Structures.d994
               (coe
                  MAlonzo.Code.Algebra.Structures.d2410
                  (coe MAlonzo.Code.Algebra.Structures.d2654 (coe d1218 v0))))))
name1268 = "Algebra.CommutativeRing._.isNearSemiring"
d1268 v0 v1 v2 = du1268 v2
du1268 v0
  = let v1 = coe d1208 v0 in
    let v2 = coe d1210 v0 in
    let v3 = coe d1212 v0 in
    let v4 = coe d1214 v0 in
    let v5 = coe d1218 v0 in
    let v6 = coe MAlonzo.Code.Algebra.Structures.d2654 v5 in
    let v7
          = coe MAlonzo.Code.Algebra.Structures.du2496 v1 v2 v3 v4 v6 in
    coe
      MAlonzo.Code.Algebra.Structures.du1392 v1 v4
      (coe
         MAlonzo.Code.Algebra.Structures.C773
         (coe
            MAlonzo.Code.Algebra.Structures.d1542
            (coe MAlonzo.Code.Algebra.Structures.d1728 v7))
         (coe
            MAlonzo.Code.Algebra.Structures.d294
            (coe
               MAlonzo.Code.Algebra.Structures.d1544
               (coe MAlonzo.Code.Algebra.Structures.d1728 v7)))
         (coe
            MAlonzo.Code.Algebra.Structures.d1546
            (coe MAlonzo.Code.Algebra.Structures.d1728 v7))
         (coe MAlonzo.Code.Algebra.Structures.d1730 v7))
name1270 = "Algebra.CommutativeRing._.isRing"
d1270 v0 = coe MAlonzo.Code.Algebra.Structures.d2654 (coe d1218 v0)
name1272 = "Algebra.CommutativeRing._.isSemiring"
d1272 v0 v1 v2 = du1272 v2
du1272 v0
  = let v1 = coe d1208 v0 in
    let v2 = coe d1210 v0 in
    let v3 = coe d1212 v0 in
    let v4 = coe d1214 v0 in
    let v5 = coe d1218 v0 in
    coe
      MAlonzo.Code.Algebra.Structures.du2496 v1 v2 v3 v4
      (coe MAlonzo.Code.Algebra.Structures.d2654 v5)
name1274
  = "Algebra.CommutativeRing._.isSemiringWithoutAnnihilatingZero"
d1274 v0
  = coe
      MAlonzo.Code.Algebra.Structures.C893
      (coe
         MAlonzo.Code.Algebra.Structures.C221
         (coe
            MAlonzo.Code.Algebra.Structures.d294
            (coe
               MAlonzo.Code.Algebra.Structures.d820
               (coe
                  MAlonzo.Code.Algebra.Structures.d994
                  (coe
                     MAlonzo.Code.Algebra.Structures.d2410
                     (coe MAlonzo.Code.Algebra.Structures.d2654 (coe d1218 v0))))))
         (coe
            MAlonzo.Code.Data.Product.d26
            (coe
               MAlonzo.Code.Algebra.Structures.d296
               (coe
                  MAlonzo.Code.Algebra.Structures.d820
                  (coe
                     MAlonzo.Code.Algebra.Structures.d994
                     (coe
                        MAlonzo.Code.Algebra.Structures.d2410
                        (coe MAlonzo.Code.Algebra.Structures.d2654 (coe d1218 v0)))))))
         (coe
            MAlonzo.Code.Algebra.Structures.d996
            (coe
               MAlonzo.Code.Algebra.Structures.d2410
               (coe MAlonzo.Code.Algebra.Structures.d2654 (coe d1218 v0)))))
      (coe
         MAlonzo.Code.Algebra.Structures.d2412
         (coe MAlonzo.Code.Algebra.Structures.d2654 (coe d1218 v0)))
      (coe
         MAlonzo.Code.Algebra.Structures.d2414
         (coe MAlonzo.Code.Algebra.Structures.d2654 (coe d1218 v0)))
name1276 = "Algebra.CommutativeRing._.isSemiringWithoutOne"
d1276 v0 v1 v2 = du1276 v2
du1276 v0
  = let v1 = coe d1208 v0 in
    let v2 = coe d1210 v0 in
    let v3 = coe d1212 v0 in
    let v4 = coe d1214 v0 in
    let v5 = coe d1218 v0 in
    let v6 = coe MAlonzo.Code.Algebra.Structures.d2654 v5 in
    coe
      MAlonzo.Code.Algebra.Structures.C773
      (coe
         MAlonzo.Code.Algebra.Structures.d1542
         (coe
            MAlonzo.Code.Algebra.Structures.d1728
            (coe MAlonzo.Code.Algebra.Structures.du2496 v1 v2 v3 v4 v6)))
      (coe
         MAlonzo.Code.Algebra.Structures.d294
         (coe
            MAlonzo.Code.Algebra.Structures.d1544
            (coe
               MAlonzo.Code.Algebra.Structures.d1728
               (coe MAlonzo.Code.Algebra.Structures.du2496 v1 v2 v3 v4 v6))))
      (coe
         MAlonzo.Code.Algebra.Structures.d1546
         (coe
            MAlonzo.Code.Algebra.Structures.d1728
            (coe MAlonzo.Code.Algebra.Structures.du2496 v1 v2 v3 v4 v6)))
      (coe
         MAlonzo.Code.Algebra.Structures.d1730
         (coe MAlonzo.Code.Algebra.Structures.du2496 v1 v2 v3 v4 v6))
name1278 = "Algebra.CommutativeRing._.refl"
d1278 v0
  = coe
      MAlonzo.Code.Relation.Binary.Core.d516
      (coe
         MAlonzo.Code.Algebra.Structures.d140
         (coe
            MAlonzo.Code.Algebra.Structures.d294
            (coe
               MAlonzo.Code.Algebra.Structures.d820
               (coe
                  MAlonzo.Code.Algebra.Structures.d994
                  (coe
                     MAlonzo.Code.Algebra.Structures.d2410
                     (coe MAlonzo.Code.Algebra.Structures.d2654 (coe d1218 v0)))))))
name1280 = "Algebra.CommutativeRing._.reflexive"
d1280 v0 v1 v2 = du1280 v2
du1280 v0
  = let v1 = coe d1218 v0 in
    let v2 = coe MAlonzo.Code.Algebra.Structures.d2654 v1 in
    let v3 = coe MAlonzo.Code.Algebra.Structures.d2410 v2 in
    let v4 = coe MAlonzo.Code.Algebra.Structures.d994 v3 in
    let v5 = coe MAlonzo.Code.Algebra.Structures.d820 v4 in
    let v6 = coe MAlonzo.Code.Algebra.Structures.d294 v5 in
    \ v7 v8 v9 ->
      coe
        MAlonzo.Code.Relation.Binary.Core.du522
        (coe MAlonzo.Code.Algebra.Structures.d140 v6) v7
name1282 = "Algebra.CommutativeRing._.sym"
d1282 v0
  = coe
      MAlonzo.Code.Relation.Binary.Core.d518
      (coe
         MAlonzo.Code.Algebra.Structures.d140
         (coe
            MAlonzo.Code.Algebra.Structures.d294
            (coe
               MAlonzo.Code.Algebra.Structures.d820
               (coe
                  MAlonzo.Code.Algebra.Structures.d994
                  (coe
                     MAlonzo.Code.Algebra.Structures.d2410
                     (coe MAlonzo.Code.Algebra.Structures.d2654 (coe d1218 v0)))))))
name1284 = "Algebra.CommutativeRing._.trans"
d1284 v0
  = coe
      MAlonzo.Code.Relation.Binary.Core.d520
      (coe
         MAlonzo.Code.Algebra.Structures.d140
         (coe
            MAlonzo.Code.Algebra.Structures.d294
            (coe
               MAlonzo.Code.Algebra.Structures.d820
               (coe
                  MAlonzo.Code.Algebra.Structures.d994
                  (coe
                     MAlonzo.Code.Algebra.Structures.d2410
                     (coe MAlonzo.Code.Algebra.Structures.d2654 (coe d1218 v0)))))))
name1286 = "Algebra.CommutativeRing._.zero"
d1286 v0 v1 v2 = du1286 v2
du1286 v0
  = let v1 = coe d1208 v0 in
    let v2 = coe d1210 v0 in
    let v3 = coe d1212 v0 in
    let v4 = coe d1214 v0 in
    let v5 = coe d1218 v0 in
    coe
      MAlonzo.Code.Algebra.Structures.du2460 v1 v2 v3 v4
      (coe MAlonzo.Code.Algebra.Structures.d2654 v5)
name1288 = "Algebra.CommutativeRing.ring"
d1288 v0
  = coe
      C541 (coe d1208 v0) (coe d1210 v0) (coe d1212 v0) (coe d1214 v0)
      (coe d1216 v0)
      (coe MAlonzo.Code.Algebra.Structures.d2654 (coe d1218 v0))
name1290 = "Algebra.CommutativeRing.commutativeSemiring"
d1290 v0 v1 v2 = du1290 v2
du1290 v0
  = coe
      C463 (coe d1208 v0) (coe d1210 v0) (coe d1214 v0) (coe d1216 v0)
      (coe
         MAlonzo.Code.Algebra.Structures.du2716 (coe d1208 v0)
         (coe d1210 v0) (coe d1212 v0) (coe d1214 v0) (coe d1218 v0))
name1294 = "Algebra.CommutativeRing._.+-abelianGroup"
d1294 v0
  = coe
      C195 (coe d1208 v0) (coe d1214 v0) (coe d1212 v0)
      (coe
         MAlonzo.Code.Algebra.Structures.d2410
         (coe MAlonzo.Code.Algebra.Structures.d2654 (coe d1218 v0)))
name1296 = "Algebra.CommutativeRing._.group"
d1296 v0
  = coe
      C161 (coe d1208 v0) (coe d1214 v0) (coe d1212 v0)
      (coe
         MAlonzo.Code.Algebra.Structures.d994
         (coe
            MAlonzo.Code.Algebra.Structures.d2410
            (coe MAlonzo.Code.Algebra.Structures.d2654 (coe d1218 v0))))
name1298 = "Algebra.CommutativeRing._.rawRing"
d1298 v0
  = coe
      C519 (coe d1208 v0) (coe d1210 v0) (coe d1212 v0) (coe d1214 v0)
      (coe d1216 v0)
name1302 = "Algebra.CommutativeRing._.*-commutativeMonoid"
d1302 v0 v1 v2 = du1302 v2
du1302 v0
  = coe
      C97 (coe d918 (coe du1290 v0)) (coe d922 (coe du1290 v0))
      (coe
         MAlonzo.Code.Algebra.Structures.d2112 (coe d924 (coe du1290 v0)))
name1304 = "Algebra.CommutativeRing._.*-monoid"
d1304 v0 v1 v2 = du1304 v2
du1304 v0
  = let v1 = coe du1290 v0 in
    coe
      C49 (coe d714 (coe du984 v1)) (coe d718 (coe du984 v1))
      (coe
         MAlonzo.Code.Algebra.Structures.d1544
         (coe
            MAlonzo.Code.Algebra.Structures.d1728 (coe d720 (coe du984 v1))))
name1306 = "Algebra.CommutativeRing._.rawMonoid"
d1306 v0 v1 v2 = du1306 v2
du1306 v0
  = let v1 = coe du1290 v0 in
    coe C31 (coe d714 (coe du984 v1)) (coe d718 (coe du984 v1))
name1308 = "Algebra.CommutativeRing._.semigroup"
d1308 v0 v1 v2 = du1308 v2
du1308 v0
  = let v1 = coe du1290 v0 in
    coe
      C5 (coe d714 (coe du984 v1))
      (coe
         MAlonzo.Code.Algebra.Structures.d294
         (coe
            MAlonzo.Code.Algebra.Structures.d1544
            (coe
               MAlonzo.Code.Algebra.Structures.d1728 (coe d720 (coe du984 v1)))))
name1310 = "Algebra.CommutativeRing._.+-commutativeMonoid"
d1310 v0 v1 v2 = du1310 v2
du1310 v0
  = let v1 = coe du1290 v0 in
    coe
      C97 (coe d712 (coe du984 v1)) (coe d716 (coe du984 v1))
      (coe
         MAlonzo.Code.Algebra.Structures.d1542
         (coe
            MAlonzo.Code.Algebra.Structures.d1728 (coe d720 (coe du984 v1))))
name1312 = "Algebra.CommutativeRing._.monoid"
d1312 v0 v1 v2 = du1312 v2
du1312 v0
  = let v1 = coe du1290 v0 in
    let v2 = coe du984 v1 in
    let v3
          = coe
              C333 (coe d712 v2) (coe d714 v2) (coe d716 v2) (coe d718 v2)
              (coe MAlonzo.Code.Algebra.Structures.d1728 (coe d720 v2)) in
    coe
      du186
      (coe
         C97 (coe d616 v3) (coe d620 v3)
         (coe MAlonzo.Code.Algebra.Structures.d1542 (coe d624 v3)))
name1314 = "Algebra.CommutativeRing._.rawMonoid"
d1314 v0 v1 v2 = du1314 v2
du1314 v0
  = let v1 = coe du1290 v0 in
    let v2 = coe du984 v1 in
    let v3
          = coe
              C333 (coe d712 v2) (coe d714 v2) (coe d716 v2) (coe d718 v2)
              (coe MAlonzo.Code.Algebra.Structures.d1728 (coe d720 v2)) in
    let v4
          = coe
              C97 (coe d616 v3) (coe d620 v3)
              (coe MAlonzo.Code.Algebra.Structures.d1542 (coe d624 v3)) in
    coe C31 (coe d96 (coe du186 v4)) (coe d98 (coe du186 v4))
name1316 = "Algebra.CommutativeRing._.semigroup"
d1316 v0 v1 v2 = du1316 v2
du1316 v0
  = let v1 = coe du1290 v0 in
    let v2 = coe du984 v1 in
    let v3
          = coe
              C333 (coe d712 v2) (coe d714 v2) (coe d716 v2) (coe d718 v2)
              (coe MAlonzo.Code.Algebra.Structures.d1728 (coe d720 v2)) in
    let v4
          = coe
              C97 (coe d616 v3) (coe d620 v3)
              (coe MAlonzo.Code.Algebra.Structures.d1542 (coe d624 v3)) in
    coe
      C5 (coe d96 (coe du186 v4))
      (coe
         MAlonzo.Code.Algebra.Structures.d294 (coe d100 (coe du186 v4)))
name1318
  = "Algebra.CommutativeRing._.commutativeSemiringWithoutOne"
d1318 v0 v1 v2 = du1318 v2
du1318 v0 = coe du1012 (coe du1290 v0)
name1320 = "Algebra.CommutativeRing._.nearSemiring"
d1320 v0 v1 v2 = du1320 v2
du1320 v0
  = let v1 = coe du1290 v0 in
    let v2 = coe du984 v1 in
    coe
      du572
      (coe
         C287 (coe d712 v2) (coe d714 v2) (coe d716 v2)
         (coe
            MAlonzo.Code.Algebra.Structures.C773
            (coe
               MAlonzo.Code.Algebra.Structures.d1542
               (coe MAlonzo.Code.Algebra.Structures.d1728 (coe d720 v2)))
            (coe
               MAlonzo.Code.Algebra.Structures.d294
               (coe
                  MAlonzo.Code.Algebra.Structures.d1544
                  (coe MAlonzo.Code.Algebra.Structures.d1728 (coe d720 v2))))
            (coe
               MAlonzo.Code.Algebra.Structures.d1546
               (coe MAlonzo.Code.Algebra.Structures.d1728 (coe d720 v2)))
            (coe MAlonzo.Code.Algebra.Structures.d1730 (coe d720 v2))))
name1322 = "Algebra.CommutativeRing._.semiring"
d1322 v0 v1 v2 = du1322 v2
du1322 v0 = coe du984 (coe du1290 v0)
name1324
  = "Algebra.CommutativeRing._.semiringWithoutAnnihilatingZero"
d1324 v0 v1 v2 = du1324 v2
du1324 v0
  = let v1 = coe du1290 v0 in
    coe
      C333 (coe d712 (coe du984 v1)) (coe d714 (coe du984 v1))
      (coe d716 (coe du984 v1)) (coe d718 (coe du984 v1))
      (coe
         MAlonzo.Code.Algebra.Structures.d1728 (coe d720 (coe du984 v1)))
name1326 = "Algebra.CommutativeRing._.semiringWithoutOne"
d1326 v0 v1 v2 = du1326 v2
du1326 v0
  = let v1 = coe du1290 v0 in
    coe
      C287 (coe d712 (coe du984 v1)) (coe d714 (coe du984 v1))
      (coe d716 (coe du984 v1))
      (coe
         MAlonzo.Code.Algebra.Structures.C773
         (coe
            MAlonzo.Code.Algebra.Structures.d1542
            (coe
               MAlonzo.Code.Algebra.Structures.d1728 (coe d720 (coe du984 v1))))
         (coe
            MAlonzo.Code.Algebra.Structures.d294
            (coe
               MAlonzo.Code.Algebra.Structures.d1544
               (coe
                  MAlonzo.Code.Algebra.Structures.d1728 (coe d720 (coe du984 v1)))))
         (coe
            MAlonzo.Code.Algebra.Structures.d1546
            (coe
               MAlonzo.Code.Algebra.Structures.d1728 (coe d720 (coe du984 v1))))
         (coe
            MAlonzo.Code.Algebra.Structures.d1730 (coe d720 (coe du984 v1))))
name1328 = "Algebra.CommutativeRing._.setoid"
d1328 v0 v1 v2 = du1328 v2
du1328 v0
  = let v1 = coe du1290 v0 in
    let v2 = coe du984 v1 in
    let v3
          = coe
              C333 (coe d712 v2) (coe d714 v2) (coe d716 v2) (coe d718 v2)
              (coe MAlonzo.Code.Algebra.Structures.d1728 (coe d720 v2)) in
    let v4
          = coe
              C97 (coe d616 v3) (coe d620 v3)
              (coe MAlonzo.Code.Algebra.Structures.d1542 (coe d624 v3)) in
    coe
      MAlonzo.Code.Relation.Binary.C143
      (coe
         MAlonzo.Code.Algebra.Structures.d140
         (coe
            MAlonzo.Code.Algebra.Structures.d294 (coe d100 (coe du186 v4))))
name1334 = "Algebra.Lattice"
d1334 a0 a1 = ()
data T1334 a0 a1 a2 a3 a4 = C655 a0 a1 a2
name1350 = "Algebra.Lattice.Carrier"
d1350 = erased
name1352 = "Algebra.Lattice._\8776_"
d1352 = erased
name1354 = "Algebra.Lattice._\8744_"
d1354 v0
  = case coe v0 of
      C655 v3 v4 v5 -> coe v3
      _ -> coe MAlonzo.RTE.mazUnreachableError
name1356 = "Algebra.Lattice._\8743_"
d1356 v0
  = case coe v0 of
      C655 v3 v4 v5 -> coe v4
      _ -> coe MAlonzo.RTE.mazUnreachableError
name1358 = "Algebra.Lattice.isLattice"
d1358 v0
  = case coe v0 of
      C655 v3 v4 v5 -> coe v5
      _ -> coe MAlonzo.RTE.mazUnreachableError
name1362 = "Algebra.Lattice._.absorptive"
d1362 v0 = coe MAlonzo.Code.Algebra.Structures.d2888 (coe d1358 v0)
name1364 = "Algebra.Lattice._.isEquivalence"
d1364 v0 = coe MAlonzo.Code.Algebra.Structures.d2874 (coe d1358 v0)
name1366 = "Algebra.Lattice._.refl"
d1366 v0
  = coe
      MAlonzo.Code.Relation.Binary.Core.d516
      (coe MAlonzo.Code.Algebra.Structures.d2874 (coe d1358 v0))
name1368 = "Algebra.Lattice._.reflexive"
d1368 v0 v1 v2 = du1368 v2
du1368 v0
  = let v1 = coe d1358 v0 in
    \ v2 v3 v4 ->
      coe
        MAlonzo.Code.Relation.Binary.Core.du522
        (coe MAlonzo.Code.Algebra.Structures.d2874 v1) v2
name1370 = "Algebra.Lattice._.sym"
d1370 v0
  = coe
      MAlonzo.Code.Relation.Binary.Core.d518
      (coe MAlonzo.Code.Algebra.Structures.d2874 (coe d1358 v0))
name1372 = "Algebra.Lattice._.trans"
d1372 v0
  = coe
      MAlonzo.Code.Relation.Binary.Core.d520
      (coe MAlonzo.Code.Algebra.Structures.d2874 (coe d1358 v0))
name1374 = "Algebra.Lattice._.\8743-assoc"
d1374 v0 = coe MAlonzo.Code.Algebra.Structures.d2884 (coe d1358 v0)
name1376 = "Algebra.Lattice._.\8743-comm"
d1376 v0 = coe MAlonzo.Code.Algebra.Structures.d2882 (coe d1358 v0)
name1378 = "Algebra.Lattice._.\8743-cong"
d1378 v0 = coe MAlonzo.Code.Algebra.Structures.d2886 (coe d1358 v0)
name1380 = "Algebra.Lattice._.\8744-assoc"
d1380 v0 = coe MAlonzo.Code.Algebra.Structures.d2878 (coe d1358 v0)
name1382 = "Algebra.Lattice._.\8744-comm"
d1382 v0 = coe MAlonzo.Code.Algebra.Structures.d2876 (coe d1358 v0)
name1384 = "Algebra.Lattice._.\8744-cong"
d1384 v0 = coe MAlonzo.Code.Algebra.Structures.d2880 (coe d1358 v0)
name1386 = "Algebra.Lattice.setoid"
d1386 v0
  = coe
      MAlonzo.Code.Relation.Binary.C143
      (coe MAlonzo.Code.Algebra.Structures.d2874 (coe d1358 v0))
name1392 = "Algebra.DistributiveLattice"
d1392 a0 a1 = ()
data T1392 a0 a1 a2 a3 a4 = C687 a0 a1 a2
name1408 = "Algebra.DistributiveLattice.Carrier"
d1408 = erased
name1410 = "Algebra.DistributiveLattice._\8776_"
d1410 = erased
name1412 = "Algebra.DistributiveLattice._\8744_"
d1412 v0
  = case coe v0 of
      C687 v3 v4 v5 -> coe v3
      _ -> coe MAlonzo.RTE.mazUnreachableError
name1414 = "Algebra.DistributiveLattice._\8743_"
d1414 v0
  = case coe v0 of
      C687 v3 v4 v5 -> coe v4
      _ -> coe MAlonzo.RTE.mazUnreachableError
name1416 = "Algebra.DistributiveLattice.isDistributiveLattice"
d1416 v0
  = case coe v0 of
      C687 v3 v4 v5 -> coe v5
      _ -> coe MAlonzo.RTE.mazUnreachableError
name1420 = "Algebra.DistributiveLattice._.absorptive"
d1420 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d2888
      (coe MAlonzo.Code.Algebra.Structures.d3038 (coe d1416 v0))
name1422 = "Algebra.DistributiveLattice._.isEquivalence"
d1422 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d2874
      (coe MAlonzo.Code.Algebra.Structures.d3038 (coe d1416 v0))
name1424 = "Algebra.DistributiveLattice._.isLattice"
d1424 v0 = coe MAlonzo.Code.Algebra.Structures.d3038 (coe d1416 v0)
name1426 = "Algebra.DistributiveLattice._.refl"
d1426 v0
  = coe
      MAlonzo.Code.Relation.Binary.Core.d516
      (coe
         MAlonzo.Code.Algebra.Structures.d2874
         (coe MAlonzo.Code.Algebra.Structures.d3038 (coe d1416 v0)))
name1428 = "Algebra.DistributiveLattice._.reflexive"
d1428 v0 v1 v2 = du1428 v2
du1428 v0
  = let v1 = coe d1416 v0 in
    let v2 = coe MAlonzo.Code.Algebra.Structures.d3038 v1 in
    \ v3 v4 v5 ->
      coe
        MAlonzo.Code.Relation.Binary.Core.du522
        (coe MAlonzo.Code.Algebra.Structures.d2874 v2) v3
name1430 = "Algebra.DistributiveLattice._.sym"
d1430 v0
  = coe
      MAlonzo.Code.Relation.Binary.Core.d518
      (coe
         MAlonzo.Code.Algebra.Structures.d2874
         (coe MAlonzo.Code.Algebra.Structures.d3038 (coe d1416 v0)))
name1432 = "Algebra.DistributiveLattice._.trans"
d1432 v0
  = coe
      MAlonzo.Code.Relation.Binary.Core.d520
      (coe
         MAlonzo.Code.Algebra.Structures.d2874
         (coe MAlonzo.Code.Algebra.Structures.d3038 (coe d1416 v0)))
name1434 = "Algebra.DistributiveLattice._.\8743-assoc"
d1434 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d2884
      (coe MAlonzo.Code.Algebra.Structures.d3038 (coe d1416 v0))
name1436 = "Algebra.DistributiveLattice._.\8743-comm"
d1436 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d2882
      (coe MAlonzo.Code.Algebra.Structures.d3038 (coe d1416 v0))
name1438 = "Algebra.DistributiveLattice._.\8743-cong"
d1438 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d2886
      (coe MAlonzo.Code.Algebra.Structures.d3038 (coe d1416 v0))
name1440 = "Algebra.DistributiveLattice._.\8744-assoc"
d1440 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d2878
      (coe MAlonzo.Code.Algebra.Structures.d3038 (coe d1416 v0))
name1442 = "Algebra.DistributiveLattice._.\8744-comm"
d1442 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d2876
      (coe MAlonzo.Code.Algebra.Structures.d3038 (coe d1416 v0))
name1444 = "Algebra.DistributiveLattice._.\8744-cong"
d1444 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d2880
      (coe MAlonzo.Code.Algebra.Structures.d3038 (coe d1416 v0))
name1446 = "Algebra.DistributiveLattice._.\8744-\8743-distrib\691"
d1446 v0 = coe MAlonzo.Code.Algebra.Structures.d3040 (coe d1416 v0)
name1448 = "Algebra.DistributiveLattice.lattice"
d1448 v0
  = coe
      C655 (coe d1412 v0) (coe d1414 v0)
      (coe MAlonzo.Code.Algebra.Structures.d3038 (coe d1416 v0))
name1452 = "Algebra.DistributiveLattice._.setoid"
d1452 v0
  = coe
      MAlonzo.Code.Relation.Binary.C143
      (coe
         MAlonzo.Code.Algebra.Structures.d2874
         (coe MAlonzo.Code.Algebra.Structures.d3038 (coe d1416 v0)))
name1458 = "Algebra.BooleanAlgebra"
d1458 a0 a1 = ()
data T1458 a0 a1 a2 a3 a4 a5 a6 a7 = C719 a0 a1 a2 a3 a4 a5
name1480 = "Algebra.BooleanAlgebra.Carrier"
d1480 = erased
name1482 = "Algebra.BooleanAlgebra._\8776_"
d1482 = erased
name1484 = "Algebra.BooleanAlgebra._\8744_"
d1484 v0
  = case coe v0 of
      C719 v3 v4 v5 v6 v7 v8 -> coe v3
      _ -> coe MAlonzo.RTE.mazUnreachableError
name1486 = "Algebra.BooleanAlgebra._\8743_"
d1486 v0
  = case coe v0 of
      C719 v3 v4 v5 v6 v7 v8 -> coe v4
      _ -> coe MAlonzo.RTE.mazUnreachableError
name1488 = "Algebra.BooleanAlgebra.\172_"
d1488 v0
  = case coe v0 of
      C719 v3 v4 v5 v6 v7 v8 -> coe v5
      _ -> coe MAlonzo.RTE.mazUnreachableError
name1490 = "Algebra.BooleanAlgebra.\8868"
d1490 v0
  = case coe v0 of
      C719 v3 v4 v5 v6 v7 v8 -> coe v6
      _ -> coe MAlonzo.RTE.mazUnreachableError
name1492 = "Algebra.BooleanAlgebra.\8869"
d1492 v0
  = case coe v0 of
      C719 v3 v4 v5 v6 v7 v8 -> coe v7
      _ -> coe MAlonzo.RTE.mazUnreachableError
name1494 = "Algebra.BooleanAlgebra.isBooleanAlgebra"
d1494 v0
  = case coe v0 of
      C719 v3 v4 v5 v6 v7 v8 -> coe v8
      _ -> coe MAlonzo.RTE.mazUnreachableError
name1498 = "Algebra.BooleanAlgebra._.absorptive"
d1498 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d2888
      (coe
         MAlonzo.Code.Algebra.Structures.d3038
         (coe MAlonzo.Code.Algebra.Structures.d3222 (coe d1494 v0)))
name1500 = "Algebra.BooleanAlgebra._.isDistributiveLattice"
d1500 v0 = coe MAlonzo.Code.Algebra.Structures.d3222 (coe d1494 v0)
name1502 = "Algebra.BooleanAlgebra._.isEquivalence"
d1502 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d2874
      (coe
         MAlonzo.Code.Algebra.Structures.d3038
         (coe MAlonzo.Code.Algebra.Structures.d3222 (coe d1494 v0)))
name1504 = "Algebra.BooleanAlgebra._.isLattice"
d1504 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d3038
      (coe MAlonzo.Code.Algebra.Structures.d3222 (coe d1494 v0))
name1506 = "Algebra.BooleanAlgebra._.refl"
d1506 v0
  = coe
      MAlonzo.Code.Relation.Binary.Core.d516
      (coe
         MAlonzo.Code.Algebra.Structures.d2874
         (coe
            MAlonzo.Code.Algebra.Structures.d3038
            (coe MAlonzo.Code.Algebra.Structures.d3222 (coe d1494 v0))))
name1508 = "Algebra.BooleanAlgebra._.reflexive"
d1508 v0 v1 v2 = du1508 v2
du1508 v0
  = let v1 = coe d1494 v0 in
    let v2 = coe MAlonzo.Code.Algebra.Structures.d3222 v1 in
    let v3 = coe MAlonzo.Code.Algebra.Structures.d3038 v2 in
    \ v4 v5 v6 ->
      coe
        MAlonzo.Code.Relation.Binary.Core.du522
        (coe MAlonzo.Code.Algebra.Structures.d2874 v3) v4
name1510 = "Algebra.BooleanAlgebra._.sym"
d1510 v0
  = coe
      MAlonzo.Code.Relation.Binary.Core.d518
      (coe
         MAlonzo.Code.Algebra.Structures.d2874
         (coe
            MAlonzo.Code.Algebra.Structures.d3038
            (coe MAlonzo.Code.Algebra.Structures.d3222 (coe d1494 v0))))
name1512 = "Algebra.BooleanAlgebra._.trans"
d1512 v0
  = coe
      MAlonzo.Code.Relation.Binary.Core.d520
      (coe
         MAlonzo.Code.Algebra.Structures.d2874
         (coe
            MAlonzo.Code.Algebra.Structures.d3038
            (coe MAlonzo.Code.Algebra.Structures.d3222 (coe d1494 v0))))
name1514 = "Algebra.BooleanAlgebra._.\172-cong"
d1514 v0 = coe MAlonzo.Code.Algebra.Structures.d3228 (coe d1494 v0)
name1516 = "Algebra.BooleanAlgebra._.\8743-assoc"
d1516 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d2884
      (coe
         MAlonzo.Code.Algebra.Structures.d3038
         (coe MAlonzo.Code.Algebra.Structures.d3222 (coe d1494 v0)))
name1518 = "Algebra.BooleanAlgebra._.\8743-comm"
d1518 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d2882
      (coe
         MAlonzo.Code.Algebra.Structures.d3038
         (coe MAlonzo.Code.Algebra.Structures.d3222 (coe d1494 v0)))
name1520 = "Algebra.BooleanAlgebra._.\8743-complement\691"
d1520 v0 = coe MAlonzo.Code.Algebra.Structures.d3226 (coe d1494 v0)
name1522 = "Algebra.BooleanAlgebra._.\8743-cong"
d1522 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d2886
      (coe
         MAlonzo.Code.Algebra.Structures.d3038
         (coe MAlonzo.Code.Algebra.Structures.d3222 (coe d1494 v0)))
name1524 = "Algebra.BooleanAlgebra._.\8744-assoc"
d1524 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d2878
      (coe
         MAlonzo.Code.Algebra.Structures.d3038
         (coe MAlonzo.Code.Algebra.Structures.d3222 (coe d1494 v0)))
name1526 = "Algebra.BooleanAlgebra._.\8744-comm"
d1526 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d2876
      (coe
         MAlonzo.Code.Algebra.Structures.d3038
         (coe MAlonzo.Code.Algebra.Structures.d3222 (coe d1494 v0)))
name1528 = "Algebra.BooleanAlgebra._.\8744-complement\691"
d1528 v0 = coe MAlonzo.Code.Algebra.Structures.d3224 (coe d1494 v0)
name1530 = "Algebra.BooleanAlgebra._.\8744-cong"
d1530 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d2880
      (coe
         MAlonzo.Code.Algebra.Structures.d3038
         (coe MAlonzo.Code.Algebra.Structures.d3222 (coe d1494 v0)))
name1532 = "Algebra.BooleanAlgebra._.\8744-\8743-distrib\691"
d1532 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d3040
      (coe MAlonzo.Code.Algebra.Structures.d3222 (coe d1494 v0))
name1534 = "Algebra.BooleanAlgebra.distributiveLattice"
d1534 v0
  = coe
      C687 (coe d1484 v0) (coe d1486 v0)
      (coe MAlonzo.Code.Algebra.Structures.d3222 (coe d1494 v0))
name1538 = "Algebra.BooleanAlgebra._.lattice"
d1538 v0
  = coe
      C655 (coe d1484 v0) (coe d1486 v0)
      (coe
         MAlonzo.Code.Algebra.Structures.d3038
         (coe MAlonzo.Code.Algebra.Structures.d3222 (coe d1494 v0)))
name1540 = "Algebra.BooleanAlgebra._.setoid"
d1540 v0
  = coe
      MAlonzo.Code.Relation.Binary.C143
      (coe
         MAlonzo.Code.Algebra.Structures.d2874
         (coe
            MAlonzo.Code.Algebra.Structures.d3038
            (coe MAlonzo.Code.Algebra.Structures.d3222 (coe d1494 v0))))