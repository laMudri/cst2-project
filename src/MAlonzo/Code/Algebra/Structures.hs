{-# LANGUAGE EmptyDataDecls, ExistentialQuantification,
             ScopedTypeVariables, NoMonomorphismRestriction, Rank2Types #-}
module MAlonzo.Code.Algebra.Structures where

import MAlonzo.RTE (coe, erased, addInt, subInt, mulInt, quotInt,
                    remInt, geqInt, ltInt, eqInt, eqFloat)
import qualified Control.Exception
import qualified Data.Text
import qualified Data.Text.IO
import qualified MAlonzo.RTE
import qualified System.Environment
import qualified System.IO
import qualified Data.Text
import qualified MAlonzo.Code.Data.Product
import qualified MAlonzo.Code.Function
import qualified MAlonzo.Code.Relation.Binary
import qualified MAlonzo.Code.Relation.Binary.Core
import qualified MAlonzo.Code.Relation.Binary.PreorderReasoning

name14 = "Algebra.Structures.IsSemigroup"
d14 a0 a1 a2 a3 a4 = ()
data T14 a0 a1 a2 = C75 a0 a1 a2
name40 = "Algebra.Structures._.Associative"
d40 = erased
name140 = "Algebra.Structures.IsSemigroup.isEquivalence"
d140 v0
  = case coe v0 of
      C75 v1 v2 v3 -> coe v1
      _ -> coe MAlonzo.RTE.mazUnreachableError
name142 = "Algebra.Structures.IsSemigroup.assoc"
d142 v0
  = case coe v0 of
      C75 v1 v2 v3 -> coe v2
      _ -> coe MAlonzo.RTE.mazUnreachableError
name144 = "Algebra.Structures.IsSemigroup.\8729-cong"
d144 v0
  = case coe v0 of
      C75 v1 v2 v3 -> coe v3
      _ -> coe MAlonzo.RTE.mazUnreachableError
name148 = "Algebra.Structures.IsSemigroup._.refl"
d148 v0 = coe MAlonzo.Code.Relation.Binary.Core.d516 (coe d140 v0)
name150 = "Algebra.Structures.IsSemigroup._.reflexive"
d150 v0 v1 v2 v3 v4 v5 = du150 v5
du150 v0 v1 v2 v3
  = coe MAlonzo.Code.Relation.Binary.Core.du522 (coe d140 v0) v1
name152 = "Algebra.Structures.IsSemigroup._.sym"
d152 v0 = coe MAlonzo.Code.Relation.Binary.Core.d518 (coe d140 v0)
name154 = "Algebra.Structures.IsSemigroup._.trans"
d154 v0 = coe MAlonzo.Code.Relation.Binary.Core.d520 (coe d140 v0)
name168 = "Algebra.Structures.IsMonoid"
d168 a0 a1 a2 a3 a4 a5 = ()
data T168 a0 a1 = C149 a0 a1
name208 = "Algebra.Structures._.Identity"
d208 = erased
name294 = "Algebra.Structures.IsMonoid.isSemigroup"
d294 v0
  = case coe v0 of
      C149 v1 v2 -> coe v1
      _ -> coe MAlonzo.RTE.mazUnreachableError
name296 = "Algebra.Structures.IsMonoid.identity"
d296 v0
  = case coe v0 of
      C149 v1 v2 -> coe v2
      _ -> coe MAlonzo.RTE.mazUnreachableError
name300 = "Algebra.Structures.IsMonoid._.assoc"
d300 v0 = coe d142 (coe d294 v0)
name302 = "Algebra.Structures.IsMonoid._.isEquivalence"
d302 v0 = coe d140 (coe d294 v0)
name304 = "Algebra.Structures.IsMonoid._.refl"
d304 v0
  = coe
      MAlonzo.Code.Relation.Binary.Core.d516 (coe d140 (coe d294 v0))
name306 = "Algebra.Structures.IsMonoid._.reflexive"
d306 v0 v1 v2 v3 v4 v5 v6 = du306 v6
du306 v0
  = let v1 = coe d294 v0 in
    \ v2 v3 v4 ->
      coe MAlonzo.Code.Relation.Binary.Core.du522 (coe d140 v1) v2
name308 = "Algebra.Structures.IsMonoid._.sym"
d308 v0
  = coe
      MAlonzo.Code.Relation.Binary.Core.d518 (coe d140 (coe d294 v0))
name310 = "Algebra.Structures.IsMonoid._.trans"
d310 v0
  = coe
      MAlonzo.Code.Relation.Binary.Core.d520 (coe d140 (coe d294 v0))
name312 = "Algebra.Structures.IsMonoid._.\8729-cong"
d312 v0 = coe d144 (coe d294 v0)
name326 = "Algebra.Structures.IsCommutativeMonoid"
d326 a0 a1 a2 a3 a4 a5 = ()
data T326 a0 a1 a2 = C221 a0 a1 a2
name356 = "Algebra.Structures._.Commutative"
d356 = erased
name372 = "Algebra.Structures._.LeftIdentity"
d372 = erased
name426 = "Algebra.Structures.IsCommutativeMonoid._.Identity"
d426 = erased
name438 = "Algebra.Structures.IsCommutativeMonoid._.RightIdentity"
d438 = erased
name454 = "Algebra.Structures.IsCommutativeMonoid.isSemigroup"
d454 v0
  = case coe v0 of
      C221 v1 v2 v3 -> coe v1
      _ -> coe MAlonzo.RTE.mazUnreachableError
name456 = "Algebra.Structures.IsCommutativeMonoid.identity\737"
d456 v0
  = case coe v0 of
      C221 v1 v2 v3 -> coe v2
      _ -> coe MAlonzo.RTE.mazUnreachableError
name458 = "Algebra.Structures.IsCommutativeMonoid.comm"
d458 v0
  = case coe v0 of
      C221 v1 v2 v3 -> coe v3
      _ -> coe MAlonzo.RTE.mazUnreachableError
name462 = "Algebra.Structures.IsCommutativeMonoid._.assoc"
d462 v0 = coe d142 (coe d454 v0)
name464 = "Algebra.Structures.IsCommutativeMonoid._.isEquivalence"
d464 v0 = coe d140 (coe d454 v0)
name466 = "Algebra.Structures.IsCommutativeMonoid._.refl"
d466 v0
  = coe
      MAlonzo.Code.Relation.Binary.Core.d516 (coe d140 (coe d454 v0))
name468 = "Algebra.Structures.IsCommutativeMonoid._.reflexive"
d468 v0 v1 v2 v3 v4 v5 v6 = du468 v6
du468 v0
  = let v1 = coe d454 v0 in
    \ v2 v3 v4 ->
      coe MAlonzo.Code.Relation.Binary.Core.du522 (coe d140 v1) v2
name470 = "Algebra.Structures.IsCommutativeMonoid._.sym"
d470 v0
  = coe
      MAlonzo.Code.Relation.Binary.Core.d518 (coe d140 (coe d454 v0))
name472 = "Algebra.Structures.IsCommutativeMonoid._.trans"
d472 v0
  = coe
      MAlonzo.Code.Relation.Binary.Core.d520 (coe d140 (coe d454 v0))
name474 = "Algebra.Structures.IsCommutativeMonoid._.\8729-cong"
d474 v0 = coe d144 (coe d454 v0)
name476 = "Algebra.Structures.IsCommutativeMonoid.identity"
d476 v0 v1 v2 v3 v4 v5 v6 = du476 v4 v5 v6
du476 v0 v1 v2
  = coe
      MAlonzo.Code.Data.Product.C30 (coe d456 v2) (coe du502 v0 v1 v2)
name486 = "Algebra.Structures.IsCommutativeMonoid._._._\8718"
d486 v0 v1 v2 v3 v4 v5 v6 = du486 v6
du486 v0
  = let v1
          = coe MAlonzo.Code.Relation.Binary.C143 (coe d140 (coe d454 v0)) in
    \ v2 ->
      coe
        MAlonzo.Code.Relation.Binary.PreorderReasoning.C56
        (coe
           MAlonzo.Code.Relation.Binary.d38
           (coe
              MAlonzo.Code.Relation.Binary.d92
              (coe MAlonzo.Code.Relation.Binary.du150 v1))
           v2 v2
           (coe
              MAlonzo.Code.Relation.Binary.Core.d516
              (coe
                 MAlonzo.Code.Relation.Binary.d36
                 (coe
                    MAlonzo.Code.Relation.Binary.d92
                    (coe MAlonzo.Code.Relation.Binary.du150 v1)))
              v2))
name488
  = "Algebra.Structures.IsCommutativeMonoid._._._\8764\10216_\10217_"
d488 v0 v1 v2 v3 v4 v5 v6 = du488 v6
du488 v0
  = let v1
          = coe MAlonzo.Code.Relation.Binary.C143 (coe d140 (coe d454 v0)) in
    coe
      MAlonzo.Code.Relation.Binary.PreorderReasoning.du72
      (coe MAlonzo.Code.Relation.Binary.du150 v1)
name502 = "Algebra.Structures.IsCommutativeMonoid._.identity\691"
d502 v0 v1 v2 v3 v4 v5 v6 v7 = du502 v4 v5 v6 v7
du502 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Relation.Binary.PreorderReasoning.d62
      (let v4
             = coe MAlonzo.Code.Relation.Binary.C143 (coe d140 (coe d454 v2)) in
       MAlonzo.Code.Relation.Binary.PreorderReasoning.du72
         (MAlonzo.Code.Relation.Binary.du150 v4) (v0 v3 v1) (v0 v1 v3) v3
         (d458 v2 v3 v1)
         (let v5
                = coe MAlonzo.Code.Relation.Binary.C143 (coe d140 (coe d454 v2)) in
          MAlonzo.Code.Relation.Binary.PreorderReasoning.du72
            (MAlonzo.Code.Relation.Binary.du150 v5) (v0 v1 v3) v3 v3
            (d456 v2 v3)
            (let v6
                   = coe MAlonzo.Code.Relation.Binary.C143 (coe d140 (coe d454 v2)) in
             MAlonzo.Code.Relation.Binary.PreorderReasoning.C56
               (MAlonzo.Code.Relation.Binary.d38
                  (MAlonzo.Code.Relation.Binary.d92
                     (MAlonzo.Code.Relation.Binary.du150 v6))
                  v3 v3
                  (MAlonzo.Code.Relation.Binary.Core.d516
                     (MAlonzo.Code.Relation.Binary.d36
                        (MAlonzo.Code.Relation.Binary.d92
                           (MAlonzo.Code.Relation.Binary.du150 v6)))
                     v3)))))
name506 = "Algebra.Structures.IsCommutativeMonoid.isMonoid"
d506 v0 v1 v2 v3 v4 v5 v6 = du506 v4 v5 v6
du506 v0 v1 v2 = coe C149 (coe d454 v2) (coe du476 v0 v1 v2)
name520 = "Algebra.Structures.IsIdempotentCommutativeMonoid"
d520 a0 a1 a2 a3 a4 a5 = ()
data T520 a0 a1 = C383 a0 a1
name556 = "Algebra.Structures._.Idempotent"
d556 = erased
name646
  = "Algebra.Structures.IsIdempotentCommutativeMonoid.isCommutativeMonoid"
d646 v0
  = case coe v0 of
      C383 v1 v2 -> coe v1
      _ -> coe MAlonzo.RTE.mazUnreachableError
name648 = "Algebra.Structures.IsIdempotentCommutativeMonoid.idem"
d648 v0
  = case coe v0 of
      C383 v1 v2 -> coe v2
      _ -> coe MAlonzo.RTE.mazUnreachableError
name652
  = "Algebra.Structures.IsIdempotentCommutativeMonoid._.assoc"
d652 v0 = coe d142 (coe d454 (coe d646 v0))
name654 = "Algebra.Structures.IsIdempotentCommutativeMonoid._.comm"
d654 v0 = coe d458 (coe d646 v0)
name656
  = "Algebra.Structures.IsIdempotentCommutativeMonoid._.identity"
d656 v0 v1 v2 v3 v4 v5 v6 = du656 v4 v5 v6
du656 v0 v1 v2 = coe du476 v0 v1 (coe d646 v2)
name658
  = "Algebra.Structures.IsIdempotentCommutativeMonoid._.identity\737"
d658 v0 = coe d456 (coe d646 v0)
name660
  = "Algebra.Structures.IsIdempotentCommutativeMonoid._.isEquivalence"
d660 v0 = coe d140 (coe d454 (coe d646 v0))
name662
  = "Algebra.Structures.IsIdempotentCommutativeMonoid._.isMonoid"
d662 v0 v1 v2 v3 v4 v5 v6 = du662 v4 v5 v6
du662 v0 v1 v2 = coe du506 v0 v1 (coe d646 v2)
name664
  = "Algebra.Structures.IsIdempotentCommutativeMonoid._.isSemigroup"
d664 v0 = coe d454 (coe d646 v0)
name666 = "Algebra.Structures.IsIdempotentCommutativeMonoid._.refl"
d666 v0
  = coe
      MAlonzo.Code.Relation.Binary.Core.d516
      (coe d140 (coe d454 (coe d646 v0)))
name668
  = "Algebra.Structures.IsIdempotentCommutativeMonoid._.reflexive"
d668 v0 v1 v2 v3 v4 v5 v6 = du668 v6
du668 v0
  = let v1 = coe d646 v0 in
    let v2 = coe d454 v1 in
    \ v3 v4 v5 ->
      coe MAlonzo.Code.Relation.Binary.Core.du522 (coe d140 v2) v3
name670 = "Algebra.Structures.IsIdempotentCommutativeMonoid._.sym"
d670 v0
  = coe
      MAlonzo.Code.Relation.Binary.Core.d518
      (coe d140 (coe d454 (coe d646 v0)))
name672
  = "Algebra.Structures.IsIdempotentCommutativeMonoid._.trans"
d672 v0
  = coe
      MAlonzo.Code.Relation.Binary.Core.d520
      (coe d140 (coe d454 (coe d646 v0)))
name674
  = "Algebra.Structures.IsIdempotentCommutativeMonoid._.\8729-cong"
d674 v0 = coe d144 (coe d454 (coe d646 v0))
name690 = "Algebra.Structures.IsGroup"
d690 a0 a1 a2 a3 a4 a5 a6 = ()
data T690 a0 a1 a2 = C465 a0 a1 a2
name734 = "Algebra.Structures._.Inverse"
d734 = erased
name820 = "Algebra.Structures.IsGroup.isMonoid"
d820 v0
  = case coe v0 of
      C465 v1 v2 v3 -> coe v1
      _ -> coe MAlonzo.RTE.mazUnreachableError
name822 = "Algebra.Structures.IsGroup.inverse"
d822 v0
  = case coe v0 of
      C465 v1 v2 v3 -> coe v2
      _ -> coe MAlonzo.RTE.mazUnreachableError
name824 = "Algebra.Structures.IsGroup.\8315\185-cong"
d824 v0
  = case coe v0 of
      C465 v1 v2 v3 -> coe v3
      _ -> coe MAlonzo.RTE.mazUnreachableError
name828 = "Algebra.Structures.IsGroup._.assoc"
d828 v0 = coe d142 (coe d294 (coe d820 v0))
name830 = "Algebra.Structures.IsGroup._.identity"
d830 v0 = coe d296 (coe d820 v0)
name832 = "Algebra.Structures.IsGroup._.isEquivalence"
d832 v0 = coe d140 (coe d294 (coe d820 v0))
name834 = "Algebra.Structures.IsGroup._.isSemigroup"
d834 v0 = coe d294 (coe d820 v0)
name836 = "Algebra.Structures.IsGroup._.refl"
d836 v0
  = coe
      MAlonzo.Code.Relation.Binary.Core.d516
      (coe d140 (coe d294 (coe d820 v0)))
name838 = "Algebra.Structures.IsGroup._.reflexive"
d838 v0 v1 v2 v3 v4 v5 v6 v7 = du838 v7
du838 v0
  = let v1 = coe d820 v0 in
    let v2 = coe d294 v1 in
    \ v3 v4 v5 ->
      coe MAlonzo.Code.Relation.Binary.Core.du522 (coe d140 v2) v3
name840 = "Algebra.Structures.IsGroup._.sym"
d840 v0
  = coe
      MAlonzo.Code.Relation.Binary.Core.d518
      (coe d140 (coe d294 (coe d820 v0)))
name842 = "Algebra.Structures.IsGroup._.trans"
d842 v0
  = coe
      MAlonzo.Code.Relation.Binary.Core.d520
      (coe d140 (coe d294 (coe d820 v0)))
name844 = "Algebra.Structures.IsGroup._.\8729-cong"
d844 v0 = coe d144 (coe d294 (coe d820 v0))
name846 = "Algebra.Structures.IsGroup._-_"
d846 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 = du846 v4 v6 v8 v9
du846 v0 v1 v2 v3 = coe v0 v2 (coe v1 v3)
name866 = "Algebra.Structures.IsAbelianGroup"
d866 a0 a1 a2 a3 a4 a5 a6 = ()
data T866 a0 a1 = C579 a0 a1
name898 = "Algebra.Structures._.Commutative"
d898 = erased
name994 = "Algebra.Structures.IsAbelianGroup.isGroup"
d994 v0
  = case coe v0 of
      C579 v1 v2 -> coe v1
      _ -> coe MAlonzo.RTE.mazUnreachableError
name996 = "Algebra.Structures.IsAbelianGroup.comm"
d996 v0
  = case coe v0 of
      C579 v1 v2 -> coe v2
      _ -> coe MAlonzo.RTE.mazUnreachableError
name1000 = "Algebra.Structures.IsAbelianGroup._._-_"
d1000 v0 v1 v2 v3 v4 v5 v6 v7 = du1000 v4 v6
du1000 v0 v1 = coe du846 v0 v1
name1002 = "Algebra.Structures.IsAbelianGroup._.assoc"
d1002 v0 = coe d142 (coe d294 (coe d820 (coe d994 v0)))
name1004 = "Algebra.Structures.IsAbelianGroup._.identity"
d1004 v0 = coe d296 (coe d820 (coe d994 v0))
name1006 = "Algebra.Structures.IsAbelianGroup._.inverse"
d1006 v0 = coe d822 (coe d994 v0)
name1008 = "Algebra.Structures.IsAbelianGroup._.isEquivalence"
d1008 v0 = coe d140 (coe d294 (coe d820 (coe d994 v0)))
name1010 = "Algebra.Structures.IsAbelianGroup._.isMonoid"
d1010 v0 = coe d820 (coe d994 v0)
name1012 = "Algebra.Structures.IsAbelianGroup._.isSemigroup"
d1012 v0 = coe d294 (coe d820 (coe d994 v0))
name1014 = "Algebra.Structures.IsAbelianGroup._.refl"
d1014 v0
  = coe
      MAlonzo.Code.Relation.Binary.Core.d516
      (coe d140 (coe d294 (coe d820 (coe d994 v0))))
name1016 = "Algebra.Structures.IsAbelianGroup._.reflexive"
d1016 v0 v1 v2 v3 v4 v5 v6 v7 = du1016 v7
du1016 v0
  = let v1 = coe d994 v0 in
    let v2 = coe d820 v1 in
    let v3 = coe d294 v2 in
    \ v4 v5 v6 ->
      coe MAlonzo.Code.Relation.Binary.Core.du522 (coe d140 v3) v4
name1018 = "Algebra.Structures.IsAbelianGroup._.sym"
d1018 v0
  = coe
      MAlonzo.Code.Relation.Binary.Core.d518
      (coe d140 (coe d294 (coe d820 (coe d994 v0))))
name1020 = "Algebra.Structures.IsAbelianGroup._.trans"
d1020 v0
  = coe
      MAlonzo.Code.Relation.Binary.Core.d520
      (coe d140 (coe d294 (coe d820 (coe d994 v0))))
name1022 = "Algebra.Structures.IsAbelianGroup._.\8315\185-cong"
d1022 v0 = coe d824 (coe d994 v0)
name1024 = "Algebra.Structures.IsAbelianGroup._.\8729-cong"
d1024 v0 = coe d144 (coe d294 (coe d820 (coe d994 v0)))
name1026 = "Algebra.Structures.IsAbelianGroup.isCommutativeMonoid"
d1026 v0
  = coe
      C221 (coe d294 (coe d820 (coe d994 v0)))
      (coe
         MAlonzo.Code.Data.Product.d26 (coe d296 (coe d820 (coe d994 v0))))
      (coe d996 v0)
name1042 = "Algebra.Structures.IsNearSemiring"
d1042 a0 a1 a2 a3 a4 a5 a6 = ()
data T1042 a0 a1 a2 a3 = C693 a0 a1 a2 a3
name1064 = "Algebra.Structures._._DistributesOver\691_"
d1064 = erased
name1094 = "Algebra.Structures._.LeftZero"
d1094 = erased
name1174 = "Algebra.Structures.IsNearSemiring.+-isMonoid"
d1174 v0
  = case coe v0 of
      C693 v1 v2 v3 v4 -> coe v1
      _ -> coe MAlonzo.RTE.mazUnreachableError
name1176 = "Algebra.Structures.IsNearSemiring.*-isSemigroup"
d1176 v0
  = case coe v0 of
      C693 v1 v2 v3 v4 -> coe v2
      _ -> coe MAlonzo.RTE.mazUnreachableError
name1178 = "Algebra.Structures.IsNearSemiring.distrib\691"
d1178 v0
  = case coe v0 of
      C693 v1 v2 v3 v4 -> coe v3
      _ -> coe MAlonzo.RTE.mazUnreachableError
name1180 = "Algebra.Structures.IsNearSemiring.zero\737"
d1180 v0
  = case coe v0 of
      C693 v1 v2 v3 v4 -> coe v4
      _ -> coe MAlonzo.RTE.mazUnreachableError
name1184 = "Algebra.Structures.IsNearSemiring._.assoc"
d1184 v0 = coe d142 (coe d294 (coe d1174 v0))
name1186 = "Algebra.Structures.IsNearSemiring._.\8729-cong"
d1186 v0 = coe d144 (coe d294 (coe d1174 v0))
name1188 = "Algebra.Structures.IsNearSemiring._.identity"
d1188 v0 = coe d296 (coe d1174 v0)
name1190 = "Algebra.Structures.IsNearSemiring._.isSemigroup"
d1190 v0 = coe d294 (coe d1174 v0)
name1192 = "Algebra.Structures.IsNearSemiring._.isEquivalence"
d1192 v0 = coe d140 (coe d294 (coe d1174 v0))
name1194 = "Algebra.Structures.IsNearSemiring._.refl"
d1194 v0
  = coe
      MAlonzo.Code.Relation.Binary.Core.d516
      (coe d140 (coe d294 (coe d1174 v0)))
name1196 = "Algebra.Structures.IsNearSemiring._.reflexive"
d1196 v0 v1 v2 v3 v4 v5 v6 v7 = du1196 v7
du1196 v0
  = let v1 = coe d1174 v0 in
    let v2 = coe d294 v1 in
    \ v3 v4 v5 ->
      coe MAlonzo.Code.Relation.Binary.Core.du522 (coe d140 v2) v3
name1198 = "Algebra.Structures.IsNearSemiring._.sym"
d1198 v0
  = coe
      MAlonzo.Code.Relation.Binary.Core.d518
      (coe d140 (coe d294 (coe d1174 v0)))
name1200 = "Algebra.Structures.IsNearSemiring._.trans"
d1200 v0
  = coe
      MAlonzo.Code.Relation.Binary.Core.d520
      (coe d140 (coe d294 (coe d1174 v0)))
name1204 = "Algebra.Structures.IsNearSemiring._.assoc"
d1204 v0 = coe d142 (coe d1176 v0)
name1206 = "Algebra.Structures.IsNearSemiring._.\8729-cong"
d1206 v0 = coe d144 (coe d1176 v0)
name1222 = "Algebra.Structures.IsSemiringWithoutOne"
d1222 a0 a1 a2 a3 a4 a5 a6 = ()
data T1222 a0 a1 a2 a3 = C773 a0 a1 a2 a3
name1242 = "Algebra.Structures._._DistributesOver_"
d1242 = erased
name1284 = "Algebra.Structures._.Zero"
d1284 = erased
name1354
  = "Algebra.Structures.IsSemiringWithoutOne.+-isCommutativeMonoid"
d1354 v0
  = case coe v0 of
      C773 v1 v2 v3 v4 -> coe v1
      _ -> coe MAlonzo.RTE.mazUnreachableError
name1356 = "Algebra.Structures.IsSemiringWithoutOne.*-isSemigroup"
d1356 v0
  = case coe v0 of
      C773 v1 v2 v3 v4 -> coe v2
      _ -> coe MAlonzo.RTE.mazUnreachableError
name1358 = "Algebra.Structures.IsSemiringWithoutOne.distrib"
d1358 v0
  = case coe v0 of
      C773 v1 v2 v3 v4 -> coe v3
      _ -> coe MAlonzo.RTE.mazUnreachableError
name1360 = "Algebra.Structures.IsSemiringWithoutOne.zero"
d1360 v0
  = case coe v0 of
      C773 v1 v2 v3 v4 -> coe v4
      _ -> coe MAlonzo.RTE.mazUnreachableError
name1364 = "Algebra.Structures.IsSemiringWithoutOne._.assoc"
d1364 v0 = coe d142 (coe d454 (coe d1354 v0))
name1366 = "Algebra.Structures.IsSemiringWithoutOne._.comm"
d1366 v0 = coe d458 (coe d1354 v0)
name1368 = "Algebra.Structures.IsSemiringWithoutOne._.\8729-cong"
d1368 v0 = coe d144 (coe d454 (coe d1354 v0))
name1370 = "Algebra.Structures.IsSemiringWithoutOne._.identity"
d1370 v0 v1 v2 v3 v4 v5 v6 v7 = du1370 v4 v6 v7
du1370 v0 v1 v2 = coe du476 v0 v1 (coe d1354 v2)
name1372 = "Algebra.Structures.IsSemiringWithoutOne._.isMonoid"
d1372 v0 v1 v2 v3 v4 v5 v6 v7 = du1372 v4 v6 v7
du1372 v0 v1 v2 = coe du506 v0 v1 (coe d1354 v2)
name1374 = "Algebra.Structures.IsSemiringWithoutOne._.isSemigroup"
d1374 v0 = coe d454 (coe d1354 v0)
name1376
  = "Algebra.Structures.IsSemiringWithoutOne._.isEquivalence"
d1376 v0 = coe d140 (coe d454 (coe d1354 v0))
name1378 = "Algebra.Structures.IsSemiringWithoutOne._.refl"
d1378 v0
  = coe
      MAlonzo.Code.Relation.Binary.Core.d516
      (coe d140 (coe d454 (coe d1354 v0)))
name1380 = "Algebra.Structures.IsSemiringWithoutOne._.reflexive"
d1380 v0 v1 v2 v3 v4 v5 v6 v7 = du1380 v7
du1380 v0
  = let v1 = coe d1354 v0 in
    let v2 = coe d454 v1 in
    \ v3 v4 v5 ->
      coe MAlonzo.Code.Relation.Binary.Core.du522 (coe d140 v2) v3
name1382 = "Algebra.Structures.IsSemiringWithoutOne._.sym"
d1382 v0
  = coe
      MAlonzo.Code.Relation.Binary.Core.d518
      (coe d140 (coe d454 (coe d1354 v0)))
name1384 = "Algebra.Structures.IsSemiringWithoutOne._.trans"
d1384 v0
  = coe
      MAlonzo.Code.Relation.Binary.Core.d520
      (coe d140 (coe d454 (coe d1354 v0)))
name1388 = "Algebra.Structures.IsSemiringWithoutOne._.assoc"
d1388 v0 = coe d142 (coe d1356 v0)
name1390 = "Algebra.Structures.IsSemiringWithoutOne._.\8729-cong"
d1390 v0 = coe d144 (coe d1356 v0)
name1392 = "Algebra.Structures.IsSemiringWithoutOne.isNearSemiring"
d1392 v0 v1 v2 v3 v4 v5 v6 v7 = du1392 v4 v6 v7
du1392 v0 v1 v2
  = coe
      C693 (coe du506 v0 v1 (coe d1354 v2)) (coe d1356 v2)
      (coe MAlonzo.Code.Data.Product.d28 (coe d1358 v2))
      (coe MAlonzo.Code.Data.Product.d26 (coe d1360 v2))
name1410 = "Algebra.Structures.IsSemiringWithoutAnnihilatingZero"
d1410 a0 a1 a2 a3 a4 a5 a6 a7 = ()
data T1410 a0 a1 a2 = C893 a0 a1 a2
name1432 = "Algebra.Structures._._DistributesOver_"
d1432 = erased
name1542
  = "Algebra.Structures.IsSemiringWithoutAnnihilatingZero.+-isCommutativeMonoid"
d1542 v0
  = case coe v0 of
      C893 v1 v2 v3 -> coe v1
      _ -> coe MAlonzo.RTE.mazUnreachableError
name1544
  = "Algebra.Structures.IsSemiringWithoutAnnihilatingZero.*-isMonoid"
d1544 v0
  = case coe v0 of
      C893 v1 v2 v3 -> coe v2
      _ -> coe MAlonzo.RTE.mazUnreachableError
name1546
  = "Algebra.Structures.IsSemiringWithoutAnnihilatingZero.distrib"
d1546 v0
  = case coe v0 of
      C893 v1 v2 v3 -> coe v3
      _ -> coe MAlonzo.RTE.mazUnreachableError
name1550
  = "Algebra.Structures.IsSemiringWithoutAnnihilatingZero._.assoc"
d1550 v0 = coe d142 (coe d454 (coe d1542 v0))
name1552
  = "Algebra.Structures.IsSemiringWithoutAnnihilatingZero._.comm"
d1552 v0 = coe d458 (coe d1542 v0)
name1554
  = "Algebra.Structures.IsSemiringWithoutAnnihilatingZero._.\8729-cong"
d1554 v0 = coe d144 (coe d454 (coe d1542 v0))
name1556
  = "Algebra.Structures.IsSemiringWithoutAnnihilatingZero._.identity"
d1556 v0 v1 v2 v3 v4 v5 v6 v7 v8 = du1556 v4 v6 v8
du1556 v0 v1 v2 = coe du476 v0 v1 (coe d1542 v2)
name1558
  = "Algebra.Structures.IsSemiringWithoutAnnihilatingZero._.isMonoid"
d1558 v0 v1 v2 v3 v4 v5 v6 v7 v8 = du1558 v4 v6 v8
du1558 v0 v1 v2 = coe du506 v0 v1 (coe d1542 v2)
name1560
  = "Algebra.Structures.IsSemiringWithoutAnnihilatingZero._.isSemigroup"
d1560 v0 = coe d454 (coe d1542 v0)
name1562
  = "Algebra.Structures.IsSemiringWithoutAnnihilatingZero._.isEquivalence"
d1562 v0 = coe d140 (coe d454 (coe d1542 v0))
name1564
  = "Algebra.Structures.IsSemiringWithoutAnnihilatingZero._.refl"
d1564 v0
  = coe
      MAlonzo.Code.Relation.Binary.Core.d516
      (coe d140 (coe d454 (coe d1542 v0)))
name1566
  = "Algebra.Structures.IsSemiringWithoutAnnihilatingZero._.reflexive"
d1566 v0 v1 v2 v3 v4 v5 v6 v7 v8 = du1566 v8
du1566 v0
  = let v1 = coe d1542 v0 in
    let v2 = coe d454 v1 in
    \ v3 v4 v5 ->
      coe MAlonzo.Code.Relation.Binary.Core.du522 (coe d140 v2) v3
name1568
  = "Algebra.Structures.IsSemiringWithoutAnnihilatingZero._.sym"
d1568 v0
  = coe
      MAlonzo.Code.Relation.Binary.Core.d518
      (coe d140 (coe d454 (coe d1542 v0)))
name1570
  = "Algebra.Structures.IsSemiringWithoutAnnihilatingZero._.trans"
d1570 v0
  = coe
      MAlonzo.Code.Relation.Binary.Core.d520
      (coe d140 (coe d454 (coe d1542 v0)))
name1574
  = "Algebra.Structures.IsSemiringWithoutAnnihilatingZero._.assoc"
d1574 v0 = coe d142 (coe d294 (coe d1544 v0))
name1576
  = "Algebra.Structures.IsSemiringWithoutAnnihilatingZero._.\8729-cong"
d1576 v0 = coe d144 (coe d294 (coe d1544 v0))
name1578
  = "Algebra.Structures.IsSemiringWithoutAnnihilatingZero._.identity"
d1578 v0 = coe d296 (coe d1544 v0)
name1580
  = "Algebra.Structures.IsSemiringWithoutAnnihilatingZero._.isSemigroup"
d1580 v0 = coe d294 (coe d1544 v0)
name1598 = "Algebra.Structures.IsSemiring"
d1598 a0 a1 a2 a3 a4 a5 a6 a7 = ()
data T1598 a0 a1 = C967 a0 a1
name1662 = "Algebra.Structures._.Zero"
d1662 = erased
name1728
  = "Algebra.Structures.IsSemiring.isSemiringWithoutAnnihilatingZero"
d1728 v0
  = case coe v0 of
      C967 v1 v2 -> coe v1
      _ -> coe MAlonzo.RTE.mazUnreachableError
name1730 = "Algebra.Structures.IsSemiring.zero"
d1730 v0
  = case coe v0 of
      C967 v1 v2 -> coe v2
      _ -> coe MAlonzo.RTE.mazUnreachableError
name1734 = "Algebra.Structures.IsSemiring._.assoc"
d1734 v0 = coe d142 (coe d294 (coe d1544 (coe d1728 v0)))
name1736 = "Algebra.Structures.IsSemiring._.\8729-cong"
d1736 v0 = coe d144 (coe d294 (coe d1544 (coe d1728 v0)))
name1738 = "Algebra.Structures.IsSemiring._.identity"
d1738 v0 = coe d296 (coe d1544 (coe d1728 v0))
name1740 = "Algebra.Structures.IsSemiring._.*-isMonoid"
d1740 v0 = coe d1544 (coe d1728 v0)
name1742 = "Algebra.Structures.IsSemiring._.isSemigroup"
d1742 v0 = coe d294 (coe d1544 (coe d1728 v0))
name1744 = "Algebra.Structures.IsSemiring._.assoc"
d1744 v0 = coe d142 (coe d454 (coe d1542 (coe d1728 v0)))
name1746 = "Algebra.Structures.IsSemiring._.comm"
d1746 v0 = coe d458 (coe d1542 (coe d1728 v0))
name1748 = "Algebra.Structures.IsSemiring._.\8729-cong"
d1748 v0 = coe d144 (coe d454 (coe d1542 (coe d1728 v0)))
name1750 = "Algebra.Structures.IsSemiring._.identity"
d1750 v0 v1 v2 v3 v4 v5 v6 v7 v8 = du1750 v4 v6 v8
du1750 v0 v1 v2
  = let v3 = coe d1728 v2 in coe du476 v0 v1 (coe d1542 v3)
name1752 = "Algebra.Structures.IsSemiring._.+-isCommutativeMonoid"
d1752 v0 = coe d1542 (coe d1728 v0)
name1754 = "Algebra.Structures.IsSemiring._.isMonoid"
d1754 v0 v1 v2 v3 v4 v5 v6 v7 v8 = du1754 v4 v6 v8
du1754 v0 v1 v2
  = let v3 = coe d1728 v2 in coe du506 v0 v1 (coe d1542 v3)
name1756 = "Algebra.Structures.IsSemiring._.isSemigroup"
d1756 v0 = coe d454 (coe d1542 (coe d1728 v0))
name1758 = "Algebra.Structures.IsSemiring._.distrib"
d1758 v0 = coe d1546 (coe d1728 v0)
name1760 = "Algebra.Structures.IsSemiring._.isEquivalence"
d1760 v0 = coe d140 (coe d454 (coe d1542 (coe d1728 v0)))
name1762 = "Algebra.Structures.IsSemiring._.refl"
d1762 v0
  = coe
      MAlonzo.Code.Relation.Binary.Core.d516
      (coe d140 (coe d454 (coe d1542 (coe d1728 v0))))
name1764 = "Algebra.Structures.IsSemiring._.reflexive"
d1764 v0 v1 v2 v3 v4 v5 v6 v7 v8 = du1764 v8
du1764 v0
  = let v1 = coe d1728 v0 in
    let v2 = coe d1542 v1 in
    let v3 = coe d454 v2 in
    \ v4 v5 v6 ->
      coe MAlonzo.Code.Relation.Binary.Core.du522 (coe d140 v3) v4
name1766 = "Algebra.Structures.IsSemiring._.sym"
d1766 v0
  = coe
      MAlonzo.Code.Relation.Binary.Core.d518
      (coe d140 (coe d454 (coe d1542 (coe d1728 v0))))
name1768 = "Algebra.Structures.IsSemiring._.trans"
d1768 v0
  = coe
      MAlonzo.Code.Relation.Binary.Core.d520
      (coe d140 (coe d454 (coe d1542 (coe d1728 v0))))
name1770 = "Algebra.Structures.IsSemiring.isSemiringWithoutOne"
d1770 v0
  = coe
      C773 (coe d1542 (coe d1728 v0))
      (coe d294 (coe d1544 (coe d1728 v0))) (coe d1546 (coe d1728 v0))
      (coe d1730 v0)
name1774 = "Algebra.Structures.IsSemiring._.isNearSemiring"
d1774 v0 v1 v2 v3 v4 v5 v6 v7 v8 = du1774 v4 v6 v8
du1774 v0 v1 v2
  = coe
      du1392 v0 v1
      (coe
         C773 (coe d1542 (coe d1728 v2))
         (coe d294 (coe d1544 (coe d1728 v2))) (coe d1546 (coe d1728 v2))
         (coe d1730 v2))
name1790 = "Algebra.Structures.IsCommutativeSemiringWithoutOne"
d1790 a0 a1 a2 a3 a4 a5 a6 = ()
data T1790 a0 a1 = C1079 a0 a1
name1822 = "Algebra.Structures._.Commutative"
d1822 = erased
name1918
  = "Algebra.Structures.IsCommutativeSemiringWithoutOne.isSemiringWithoutOne"
d1918 v0
  = case coe v0 of
      C1079 v1 v2 -> coe v1
      _ -> coe MAlonzo.RTE.mazUnreachableError
name1920
  = "Algebra.Structures.IsCommutativeSemiringWithoutOne.*-comm"
d1920 v0
  = case coe v0 of
      C1079 v1 v2 -> coe v2
      _ -> coe MAlonzo.RTE.mazUnreachableError
name1924
  = "Algebra.Structures.IsCommutativeSemiringWithoutOne._.assoc"
d1924 v0 = coe d142 (coe d1356 (coe d1918 v0))
name1926
  = "Algebra.Structures.IsCommutativeSemiringWithoutOne._.\8729-cong"
d1926 v0 = coe d144 (coe d1356 (coe d1918 v0))
name1928
  = "Algebra.Structures.IsCommutativeSemiringWithoutOne._.*-isSemigroup"
d1928 v0 = coe d1356 (coe d1918 v0)
name1930
  = "Algebra.Structures.IsCommutativeSemiringWithoutOne._.assoc"
d1930 v0 = coe d142 (coe d454 (coe d1354 (coe d1918 v0)))
name1932
  = "Algebra.Structures.IsCommutativeSemiringWithoutOne._.comm"
d1932 v0 = coe d458 (coe d1354 (coe d1918 v0))
name1934
  = "Algebra.Structures.IsCommutativeSemiringWithoutOne._.\8729-cong"
d1934 v0 = coe d144 (coe d454 (coe d1354 (coe d1918 v0)))
name1936
  = "Algebra.Structures.IsCommutativeSemiringWithoutOne._.identity"
d1936 v0 v1 v2 v3 v4 v5 v6 v7 = du1936 v4 v6 v7
du1936 v0 v1 v2
  = let v3 = coe d1918 v2 in coe du476 v0 v1 (coe d1354 v3)
name1938
  = "Algebra.Structures.IsCommutativeSemiringWithoutOne._.+-isCommutativeMonoid"
d1938 v0 = coe d1354 (coe d1918 v0)
name1940
  = "Algebra.Structures.IsCommutativeSemiringWithoutOne._.isMonoid"
d1940 v0 v1 v2 v3 v4 v5 v6 v7 = du1940 v4 v6 v7
du1940 v0 v1 v2
  = let v3 = coe d1918 v2 in coe du506 v0 v1 (coe d1354 v3)
name1942
  = "Algebra.Structures.IsCommutativeSemiringWithoutOne._.isSemigroup"
d1942 v0 = coe d454 (coe d1354 (coe d1918 v0))
name1944
  = "Algebra.Structures.IsCommutativeSemiringWithoutOne._.distrib"
d1944 v0 = coe d1358 (coe d1918 v0)
name1946
  = "Algebra.Structures.IsCommutativeSemiringWithoutOne._.isEquivalence"
d1946 v0 = coe d140 (coe d454 (coe d1354 (coe d1918 v0)))
name1948
  = "Algebra.Structures.IsCommutativeSemiringWithoutOne._.isNearSemiring"
d1948 v0 v1 v2 v3 v4 v5 v6 v7 = du1948 v4 v6 v7
du1948 v0 v1 v2 = coe du1392 v0 v1 (coe d1918 v2)
name1950
  = "Algebra.Structures.IsCommutativeSemiringWithoutOne._.refl"
d1950 v0
  = coe
      MAlonzo.Code.Relation.Binary.Core.d516
      (coe d140 (coe d454 (coe d1354 (coe d1918 v0))))
name1952
  = "Algebra.Structures.IsCommutativeSemiringWithoutOne._.reflexive"
d1952 v0 v1 v2 v3 v4 v5 v6 v7 = du1952 v7
du1952 v0
  = let v1 = coe d1918 v0 in
    let v2 = coe d1354 v1 in
    let v3 = coe d454 v2 in
    \ v4 v5 v6 ->
      coe MAlonzo.Code.Relation.Binary.Core.du522 (coe d140 v3) v4
name1954
  = "Algebra.Structures.IsCommutativeSemiringWithoutOne._.sym"
d1954 v0
  = coe
      MAlonzo.Code.Relation.Binary.Core.d518
      (coe d140 (coe d454 (coe d1354 (coe d1918 v0))))
name1956
  = "Algebra.Structures.IsCommutativeSemiringWithoutOne._.trans"
d1956 v0
  = coe
      MAlonzo.Code.Relation.Binary.Core.d520
      (coe d140 (coe d454 (coe d1354 (coe d1918 v0))))
name1958
  = "Algebra.Structures.IsCommutativeSemiringWithoutOne._.zero"
d1958 v0 = coe d1360 (coe d1918 v0)
name1976 = "Algebra.Structures.IsCommutativeSemiring"
d1976 a0 a1 a2 a3 a4 a5 a6 a7 = ()
data T1976 a0 a1 a2 a3 = C1155 a0 a1 a2 a3
name2000 = "Algebra.Structures._._DistributesOver\691_"
d2000 = erased
name2030 = "Algebra.Structures._.LeftZero"
d2030 = erased
name2060
  = "Algebra.Structures.IsCommutativeSemiring._._DistributesOver_"
d2060 = erased
name2102 = "Algebra.Structures.IsCommutativeSemiring._.Zero"
d2102 = erased
name2110
  = "Algebra.Structures.IsCommutativeSemiring.+-isCommutativeMonoid"
d2110 v0
  = case coe v0 of
      C1155 v1 v2 v3 v4 -> coe v1
      _ -> coe MAlonzo.RTE.mazUnreachableError
name2112
  = "Algebra.Structures.IsCommutativeSemiring.*-isCommutativeMonoid"
d2112 v0
  = case coe v0 of
      C1155 v1 v2 v3 v4 -> coe v2
      _ -> coe MAlonzo.RTE.mazUnreachableError
name2114 = "Algebra.Structures.IsCommutativeSemiring.distrib\691"
d2114 v0
  = case coe v0 of
      C1155 v1 v2 v3 v4 -> coe v3
      _ -> coe MAlonzo.RTE.mazUnreachableError
name2116 = "Algebra.Structures.IsCommutativeSemiring.zero\737"
d2116 v0
  = case coe v0 of
      C1155 v1 v2 v3 v4 -> coe v4
      _ -> coe MAlonzo.RTE.mazUnreachableError
name2128
  = "Algebra.Structures.IsCommutativeSemiring.+-CM.isEquivalence"
d2128 v0 = coe d140 (coe d454 (coe d2110 v0))
name2142
  = "Algebra.Structures.IsCommutativeSemiring.+-CM.\8729-cong"
d2142 v0 = coe d144 (coe d454 (coe d2110 v0))
name2148 = "Algebra.Structures.IsCommutativeSemiring.*-CM.comm"
d2148 v0 = coe d458 (coe d2112 v0)
name2156 = "Algebra.Structures.IsCommutativeSemiring.*-CM.isMonoid"
d2156 v0 v1 v2 v3 v4 v5 v6 v7 v8 = du2156 v5 v7 v8
du2156 v0 v1 v2 = coe du506 v0 v1 (coe d2112 v2)
name2174 = "Algebra.Structures.IsCommutativeSemiring._._\8718"
d2174 v0 v1 v2 v3 v4 v5 v6 v7 v8 = du2174 v8
du2174 v0
  = let v1
          = coe
              MAlonzo.Code.Relation.Binary.C143
              (coe d140 (coe d454 (coe d2110 v0))) in
    \ v2 ->
      coe
        MAlonzo.Code.Relation.Binary.PreorderReasoning.C56
        (coe
           MAlonzo.Code.Relation.Binary.d38
           (coe
              MAlonzo.Code.Relation.Binary.d92
              (coe MAlonzo.Code.Relation.Binary.du150 v1))
           v2 v2
           (coe
              MAlonzo.Code.Relation.Binary.Core.d516
              (coe
                 MAlonzo.Code.Relation.Binary.d36
                 (coe
                    MAlonzo.Code.Relation.Binary.d92
                    (coe MAlonzo.Code.Relation.Binary.du150 v1)))
              v2))
name2176
  = "Algebra.Structures.IsCommutativeSemiring._._\8764\10216_\10217_"
d2176 v0 v1 v2 v3 v4 v5 v6 v7 v8 = du2176 v8
du2176 v0
  = let v1
          = coe
              MAlonzo.Code.Relation.Binary.C143
              (coe d140 (coe d454 (coe d2110 v0))) in
    coe
      MAlonzo.Code.Relation.Binary.PreorderReasoning.du72
      (coe MAlonzo.Code.Relation.Binary.du150 v1)
name2190 = "Algebra.Structures.IsCommutativeSemiring.distrib"
d2190 v0 v1 v2 v3 v4 v5 v6 v7 v8 = du2190 v4 v5 v8
du2190 v0 v1 v2
  = coe
      MAlonzo.Code.Data.Product.C30 (coe du2196 v0 v1 v2) (coe d2114 v2)
name2196 = "Algebra.Structures.IsCommutativeSemiring._.distrib\737"
d2196 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11
  = du2196 v4 v5 v8 v9 v10 v11
du2196 v0 v1 v2 v3 v4 v5
  = coe
      MAlonzo.Code.Relation.Binary.PreorderReasoning.d62
      (let v6
             = coe
                 MAlonzo.Code.Relation.Binary.C143
                 (coe d140 (coe d454 (coe d2110 v2))) in
       MAlonzo.Code.Relation.Binary.PreorderReasoning.du72
         (MAlonzo.Code.Relation.Binary.du150 v6) (v1 v3 (v0 v4 v5))
         (v1 (v0 v4 v5) v3) (v0 (v1 v3 v4) (v1 v3 v5))
         (d458 (d2112 v2) v3 (v0 v4 v5))
         (let v7
                = coe
                    MAlonzo.Code.Relation.Binary.C143
                    (coe d140 (coe d454 (coe d2110 v2))) in
          MAlonzo.Code.Relation.Binary.PreorderReasoning.du72
            (MAlonzo.Code.Relation.Binary.du150 v7) (v1 (v0 v4 v5) v3)
            (v0 (v1 v4 v3) (v1 v5 v3)) (v0 (v1 v3 v4) (v1 v3 v5))
            (d2114 v2 v3 v4 v5)
            (let v8
                   = coe
                       MAlonzo.Code.Relation.Binary.C143
                       (coe d140 (coe d454 (coe d2110 v2))) in
             MAlonzo.Code.Relation.Binary.PreorderReasoning.du72
               (MAlonzo.Code.Relation.Binary.du150 v8) (v0 (v1 v4 v3) (v1 v5 v3))
               (v0 (v1 v3 v4) (v1 v3 v5)) (v0 (v1 v3 v4) (v1 v3 v5))
               (MAlonzo.Code.Function.du176
                  (d458 (d2112 v2) v4 v3)
                  (d144
                     (d454 (d2110 v2)) (v1 v4 v3) (v1 v3 v4) (v1 v5 v3) (v1 v3 v5))
                  (d458 (d2112 v2) v5 v3))
               (let v9
                      = coe
                          MAlonzo.Code.Relation.Binary.C143
                          (coe d140 (coe d454 (coe d2110 v2))) in
                let v10 = coe v0 (coe v1 v3 v4) (coe v1 v3 v5) in
                MAlonzo.Code.Relation.Binary.PreorderReasoning.C56
                  (MAlonzo.Code.Relation.Binary.d38
                     (MAlonzo.Code.Relation.Binary.d92
                        (MAlonzo.Code.Relation.Binary.du150 v9))
                     v10 v10
                     (MAlonzo.Code.Relation.Binary.Core.d516
                        (MAlonzo.Code.Relation.Binary.d36
                           (MAlonzo.Code.Relation.Binary.d92
                              (MAlonzo.Code.Relation.Binary.du150 v9)))
                        v10))))))
name2204 = "Algebra.Structures.IsCommutativeSemiring.zero"
d2204 v0 v1 v2 v3 v4 v5 v6 v7 v8 = du2204 v5 v6 v8
du2204 v0 v1 v2
  = coe
      MAlonzo.Code.Data.Product.C30 (coe d2116 v2) (coe du2210 v0 v1 v2)
name2210 = "Algebra.Structures.IsCommutativeSemiring._.zero\691"
d2210 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 = du2210 v5 v6 v8 v9
du2210 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Relation.Binary.PreorderReasoning.d62
      (let v4
             = coe
                 MAlonzo.Code.Relation.Binary.C143
                 (coe d140 (coe d454 (coe d2110 v2))) in
       MAlonzo.Code.Relation.Binary.PreorderReasoning.du72
         (MAlonzo.Code.Relation.Binary.du150 v4) (v0 v3 v1) (v0 v1 v3) v1
         (d458 (d2112 v2) v3 v1)
         (let v5
                = coe
                    MAlonzo.Code.Relation.Binary.C143
                    (coe d140 (coe d454 (coe d2110 v2))) in
          MAlonzo.Code.Relation.Binary.PreorderReasoning.du72
            (MAlonzo.Code.Relation.Binary.du150 v5) (v0 v1 v3) v1 v1
            (d2116 v2 v3)
            (let v6
                   = coe
                       MAlonzo.Code.Relation.Binary.C143
                       (coe d140 (coe d454 (coe d2110 v2))) in
             MAlonzo.Code.Relation.Binary.PreorderReasoning.C56
               (MAlonzo.Code.Relation.Binary.d38
                  (MAlonzo.Code.Relation.Binary.d92
                     (MAlonzo.Code.Relation.Binary.du150 v6))
                  v1 v1
                  (MAlonzo.Code.Relation.Binary.Core.d516
                     (MAlonzo.Code.Relation.Binary.d36
                        (MAlonzo.Code.Relation.Binary.d92
                           (MAlonzo.Code.Relation.Binary.du150 v6)))
                     v1)))))
name2214 = "Algebra.Structures.IsCommutativeSemiring.isSemiring"
d2214 v0 v1 v2 v3 v4 v5 v6 v7 v8 = du2214 v4 v5 v6 v7 v8
du2214 v0 v1 v2 v3 v4
  = coe
      C967
      (coe
         C893 (coe d2110 v4) (coe du506 v1 v3 (coe d2112 v4))
         (coe du2190 v0 v1 v4))
      (coe du2204 v1 v2 v4)
name2218 = "Algebra.Structures.IsCommutativeSemiring._.assoc"
d2218 v0 v1 v2 v3 v4 v5 v6 v7 v8 = du2218 v4 v5 v6 v7 v8
du2218 v0 v1 v2 v3 v4
  = coe
      d142 (coe d294 (coe d1544 (coe d1728 (coe du2214 v0 v1 v2 v3 v4))))
name2220 = "Algebra.Structures.IsCommutativeSemiring._.\8729-cong"
d2220 v0 v1 v2 v3 v4 v5 v6 v7 v8 = du2220 v4 v5 v6 v7 v8
du2220 v0 v1 v2 v3 v4
  = coe
      d144 (coe d294 (coe d1544 (coe d1728 (coe du2214 v0 v1 v2 v3 v4))))
name2222 = "Algebra.Structures.IsCommutativeSemiring._.identity"
d2222 v0 v1 v2 v3 v4 v5 v6 v7 v8 = du2222 v4 v5 v6 v7 v8
du2222 v0 v1 v2 v3 v4
  = coe d296 (coe d1544 (coe d1728 (coe du2214 v0 v1 v2 v3 v4)))
name2224 = "Algebra.Structures.IsCommutativeSemiring._.*-isMonoid"
d2224 v0 v1 v2 v3 v4 v5 v6 v7 v8 = du2224 v4 v5 v6 v7 v8
du2224 v0 v1 v2 v3 v4
  = coe d1544 (coe d1728 (coe du2214 v0 v1 v2 v3 v4))
name2226 = "Algebra.Structures.IsCommutativeSemiring._.isSemigroup"
d2226 v0 v1 v2 v3 v4 v5 v6 v7 v8 = du2226 v4 v5 v6 v7 v8
du2226 v0 v1 v2 v3 v4
  = coe d294 (coe d1544 (coe d1728 (coe du2214 v0 v1 v2 v3 v4)))
name2228 = "Algebra.Structures.IsCommutativeSemiring._.assoc"
d2228 v0 v1 v2 v3 v4 v5 v6 v7 v8 = du2228 v4 v5 v6 v7 v8
du2228 v0 v1 v2 v3 v4
  = coe
      d142 (coe d454 (coe d1542 (coe d1728 (coe du2214 v0 v1 v2 v3 v4))))
name2230 = "Algebra.Structures.IsCommutativeSemiring._.comm"
d2230 v0 v1 v2 v3 v4 v5 v6 v7 v8 = du2230 v4 v5 v6 v7 v8
du2230 v0 v1 v2 v3 v4
  = coe d458 (coe d1542 (coe d1728 (coe du2214 v0 v1 v2 v3 v4)))
name2232 = "Algebra.Structures.IsCommutativeSemiring._.\8729-cong"
d2232 v0 v1 v2 v3 v4 v5 v6 v7 v8 = du2232 v4 v5 v6 v7 v8
du2232 v0 v1 v2 v3 v4
  = coe
      d144 (coe d454 (coe d1542 (coe d1728 (coe du2214 v0 v1 v2 v3 v4))))
name2234 = "Algebra.Structures.IsCommutativeSemiring._.identity"
d2234 v0 v1 v2 v3 v4 v5 v6 v7 v8 = du2234 v4 v5 v6 v7 v8
du2234 v0 v1 v2 v3 v4
  = let v5 = coe du2214 v0 v1 v2 v3 v4 in
    let v6 = coe d1728 v5 in coe du476 v0 v2 (coe d1542 v6)
name2236 = "Algebra.Structures.IsCommutativeSemiring._.isMonoid"
d2236 v0 v1 v2 v3 v4 v5 v6 v7 v8 = du2236 v4 v5 v6 v7 v8
du2236 v0 v1 v2 v3 v4
  = let v5 = coe du2214 v0 v1 v2 v3 v4 in
    let v6 = coe d1728 v5 in coe du506 v0 v2 (coe d1542 v6)
name2238 = "Algebra.Structures.IsCommutativeSemiring._.isSemigroup"
d2238 v0 v1 v2 v3 v4 v5 v6 v7 v8 = du2238 v4 v5 v6 v7 v8
du2238 v0 v1 v2 v3 v4
  = coe d454 (coe d1542 (coe d1728 (coe du2214 v0 v1 v2 v3 v4)))
name2240
  = "Algebra.Structures.IsCommutativeSemiring._.isEquivalence"
d2240 v0 v1 v2 v3 v4 v5 v6 v7 v8 = du2240 v4 v5 v6 v7 v8
du2240 v0 v1 v2 v3 v4
  = coe
      d140 (coe d454 (coe d1542 (coe d1728 (coe du2214 v0 v1 v2 v3 v4))))
name2242
  = "Algebra.Structures.IsCommutativeSemiring._.isNearSemiring"
d2242 v0 v1 v2 v3 v4 v5 v6 v7 v8 = du2242 v4 v5 v6 v7 v8
du2242 v0 v1 v2 v3 v4
  = let v5 = coe du2214 v0 v1 v2 v3 v4 in
    coe
      du1392 v0 v2
      (coe
         C773 (coe d1542 (coe d1728 v5))
         (coe d294 (coe d1544 (coe d1728 v5))) (coe d1546 (coe d1728 v5))
         (coe d1730 v5))
name2244
  = "Algebra.Structures.IsCommutativeSemiring._.isSemiringWithoutAnnihilatingZero"
d2244 v0 v1 v2 v3 v4 v5 v6 v7 v8 = du2244 v4 v5 v6 v7 v8
du2244 v0 v1 v2 v3 v4 = coe d1728 (coe du2214 v0 v1 v2 v3 v4)
name2246
  = "Algebra.Structures.IsCommutativeSemiring._.isSemiringWithoutOne"
d2246 v0 v1 v2 v3 v4 v5 v6 v7 v8 = du2246 v4 v5 v6 v7 v8
du2246 v0 v1 v2 v3 v4
  = coe
      C773 (coe d1542 (coe d1728 (coe du2214 v0 v1 v2 v3 v4)))
      (coe d294 (coe d1544 (coe d1728 (coe du2214 v0 v1 v2 v3 v4))))
      (coe d1546 (coe d1728 (coe du2214 v0 v1 v2 v3 v4)))
      (coe d1730 (coe du2214 v0 v1 v2 v3 v4))
name2248 = "Algebra.Structures.IsCommutativeSemiring._.refl"
d2248 v0 v1 v2 v3 v4 v5 v6 v7 v8 = du2248 v4 v5 v6 v7 v8
du2248 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Relation.Binary.Core.d516
      (coe
         d140
         (coe d454 (coe d1542 (coe d1728 (coe du2214 v0 v1 v2 v3 v4)))))
name2250 = "Algebra.Structures.IsCommutativeSemiring._.reflexive"
d2250 v0 v1 v2 v3 v4 v5 v6 v7 v8 = du2250 v4 v5 v6 v7 v8
du2250 v0 v1 v2 v3 v4
  = let v5 = coe du2214 v0 v1 v2 v3 v4 in
    let v6 = coe d1728 v5 in
    let v7 = coe d1542 v6 in
    let v8 = coe d454 v7 in
    \ v9 v10 v11 ->
      coe MAlonzo.Code.Relation.Binary.Core.du522 (coe d140 v8) v9
name2252 = "Algebra.Structures.IsCommutativeSemiring._.sym"
d2252 v0 v1 v2 v3 v4 v5 v6 v7 v8 = du2252 v4 v5 v6 v7 v8
du2252 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Relation.Binary.Core.d518
      (coe
         d140
         (coe d454 (coe d1542 (coe d1728 (coe du2214 v0 v1 v2 v3 v4)))))
name2254 = "Algebra.Structures.IsCommutativeSemiring._.trans"
d2254 v0 v1 v2 v3 v4 v5 v6 v7 v8 = du2254 v4 v5 v6 v7 v8
du2254 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Relation.Binary.Core.d520
      (coe
         d140
         (coe d454 (coe d1542 (coe d1728 (coe du2214 v0 v1 v2 v3 v4)))))
name2256
  = "Algebra.Structures.IsCommutativeSemiring.isCommutativeSemiringWithoutOne"
d2256 v0 v1 v2 v3 v4 v5 v6 v7 v8 = du2256 v4 v5 v6 v7 v8
du2256 v0 v1 v2 v3 v4
  = coe
      C1079
      (coe
         C773 (coe d1542 (coe d1728 (coe du2214 v0 v1 v2 v3 v4)))
         (coe d294 (coe d1544 (coe d1728 (coe du2214 v0 v1 v2 v3 v4))))
         (coe d1546 (coe d1728 (coe du2214 v0 v1 v2 v3 v4)))
         (coe d1730 (coe du2214 v0 v1 v2 v3 v4)))
      (coe d458 (coe d2112 v4))
name2276 = "Algebra.Structures.IsRing"
d2276 a0 a1 a2 a3 a4 a5 a6 a7 a8 = ()
data T2276 a0 a1 a2 = C1479 a0 a1 a2
name2300 = "Algebra.Structures._._DistributesOver_"
d2300 = erased
name2402 = "Algebra.Structures.IsRing._.Zero"
d2402 = erased
name2410 = "Algebra.Structures.IsRing.+-isAbelianGroup"
d2410 v0
  = case coe v0 of
      C1479 v1 v2 v3 -> coe v1
      _ -> coe MAlonzo.RTE.mazUnreachableError
name2412 = "Algebra.Structures.IsRing.*-isMonoid"
d2412 v0
  = case coe v0 of
      C1479 v1 v2 v3 -> coe v2
      _ -> coe MAlonzo.RTE.mazUnreachableError
name2414 = "Algebra.Structures.IsRing.distrib"
d2414 v0
  = case coe v0 of
      C1479 v1 v2 v3 -> coe v3
      _ -> coe MAlonzo.RTE.mazUnreachableError
name2418 = "Algebra.Structures.IsRing._._-_"
d2418 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 = du2418 v4 v6
du2418 v0 v1 = coe du846 v0 v1
name2420 = "Algebra.Structures.IsRing._.assoc"
d2420 v0 = coe d142 (coe d294 (coe d820 (coe d994 (coe d2410 v0))))
name2422 = "Algebra.Structures.IsRing._.comm"
d2422 v0 = coe d996 (coe d2410 v0)
name2424 = "Algebra.Structures.IsRing._.\8729-cong"
d2424 v0 = coe d144 (coe d294 (coe d820 (coe d994 (coe d2410 v0))))
name2426 = "Algebra.Structures.IsRing._.identity"
d2426 v0 = coe d296 (coe d820 (coe d994 (coe d2410 v0)))
name2428 = "Algebra.Structures.IsRing._.isCommutativeMonoid"
d2428 v0
  = coe
      C221 (coe d294 (coe d820 (coe d994 (coe d2410 v0))))
      (coe
         MAlonzo.Code.Data.Product.d26
         (coe d296 (coe d820 (coe d994 (coe d2410 v0)))))
      (coe d996 (coe d2410 v0))
name2430 = "Algebra.Structures.IsRing._.isGroup"
d2430 v0 = coe d994 (coe d2410 v0)
name2432 = "Algebra.Structures.IsRing._.isMonoid"
d2432 v0 = coe d820 (coe d994 (coe d2410 v0))
name2434 = "Algebra.Structures.IsRing._.isSemigroup"
d2434 v0 = coe d294 (coe d820 (coe d994 (coe d2410 v0)))
name2436 = "Algebra.Structures.IsRing._.\8315\185-cong"
d2436 v0 = coe d824 (coe d994 (coe d2410 v0))
name2438 = "Algebra.Structures.IsRing._.inverse"
d2438 v0 = coe d822 (coe d994 (coe d2410 v0))
name2440 = "Algebra.Structures.IsRing._.isEquivalence"
d2440 v0 = coe d140 (coe d294 (coe d820 (coe d994 (coe d2410 v0))))
name2442 = "Algebra.Structures.IsRing._.refl"
d2442 v0
  = coe
      MAlonzo.Code.Relation.Binary.Core.d516
      (coe d140 (coe d294 (coe d820 (coe d994 (coe d2410 v0)))))
name2444 = "Algebra.Structures.IsRing._.reflexive"
d2444 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 = du2444 v9
du2444 v0
  = let v1 = coe d2410 v0 in
    let v2 = coe d994 v1 in
    let v3 = coe d820 v2 in
    let v4 = coe d294 v3 in
    \ v5 v6 v7 ->
      coe MAlonzo.Code.Relation.Binary.Core.du522 (coe d140 v4) v5
name2446 = "Algebra.Structures.IsRing._.sym"
d2446 v0
  = coe
      MAlonzo.Code.Relation.Binary.Core.d518
      (coe d140 (coe d294 (coe d820 (coe d994 (coe d2410 v0)))))
name2448 = "Algebra.Structures.IsRing._.trans"
d2448 v0
  = coe
      MAlonzo.Code.Relation.Binary.Core.d520
      (coe d140 (coe d294 (coe d820 (coe d994 (coe d2410 v0)))))
name2452 = "Algebra.Structures.IsRing._.assoc"
d2452 v0 = coe d142 (coe d294 (coe d2412 v0))
name2454 = "Algebra.Structures.IsRing._.\8729-cong"
d2454 v0 = coe d144 (coe d294 (coe d2412 v0))
name2456 = "Algebra.Structures.IsRing._.identity"
d2456 v0 = coe d296 (coe d2412 v0)
name2458 = "Algebra.Structures.IsRing._.isSemigroup"
d2458 v0 = coe d294 (coe d2412 v0)
name2460 = "Algebra.Structures.IsRing.zero"
d2460 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 = du2460 v4 v5 v6 v7 v9
du2460 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Data.Product.C30 (coe du2486 v0 v1 v2 v3 v4)
      (coe du2490 v0 v1 v2 v3 v4)
name2470 = "Algebra.Structures.IsRing._._._\8718"
d2470 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 = du2470 v9
du2470 v0
  = let v1
          = coe
              MAlonzo.Code.Relation.Binary.C143
              (coe d140 (coe d294 (coe d820 (coe d994 (coe d2410 v0))))) in
    \ v2 ->
      coe
        MAlonzo.Code.Relation.Binary.PreorderReasoning.C56
        (coe
           MAlonzo.Code.Relation.Binary.d38
           (coe
              MAlonzo.Code.Relation.Binary.d92
              (coe MAlonzo.Code.Relation.Binary.du150 v1))
           v2 v2
           (coe
              MAlonzo.Code.Relation.Binary.Core.d516
              (coe
                 MAlonzo.Code.Relation.Binary.d36
                 (coe
                    MAlonzo.Code.Relation.Binary.d92
                    (coe MAlonzo.Code.Relation.Binary.du150 v1)))
              v2))
name2472 = "Algebra.Structures.IsRing._._._\8764\10216_\10217_"
d2472 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 = du2472 v9
du2472 v0
  = let v1
          = coe
              MAlonzo.Code.Relation.Binary.C143
              (coe d140 (coe d294 (coe d820 (coe d994 (coe d2410 v0))))) in
    coe
      MAlonzo.Code.Relation.Binary.PreorderReasoning.du72
      (coe MAlonzo.Code.Relation.Binary.du150 v1)
name2486 = "Algebra.Structures.IsRing._.zero\737"
d2486 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 = du2486 v4 v5 v6 v7 v9 v10
du2486 v0 v1 v2 v3 v4 v5
  = coe
      MAlonzo.Code.Relation.Binary.PreorderReasoning.d62
      (let v6
             = coe
                 MAlonzo.Code.Relation.Binary.C143
                 (coe d140 (coe d294 (coe d820 (coe d994 (coe d2410 v4))))) in
       MAlonzo.Code.Relation.Binary.PreorderReasoning.du72
         (MAlonzo.Code.Relation.Binary.du150 v6) (v1 v3 v5)
         (v0 (v1 v3 v5) v3) v3
         (MAlonzo.Code.Function.du158
            (MAlonzo.Code.Relation.Binary.Core.d518
               (d140 (d294 (d820 (d994 (d2410 v4))))) (v0 (v1 v3 v5) v3)
               (v1 v3 v5))
            (MAlonzo.Code.Data.Product.d28
               (d296 (d820 (d994 (d2410 v4)))) (v1 v3 v5)))
         (let v7
                = coe
                    MAlonzo.Code.Relation.Binary.C143
                    (coe d140 (coe d294 (coe d820 (coe d994 (coe d2410 v4))))) in
          MAlonzo.Code.Relation.Binary.PreorderReasoning.du72
            (MAlonzo.Code.Relation.Binary.du150 v7) (v0 (v1 v3 v5) v3)
            (v0 (v1 v3 v5) (v0 (v1 v3 v5) (v2 (v1 v3 v5)))) v3
            (MAlonzo.Code.Function.du176
               (MAlonzo.Code.Relation.Binary.Core.d516
                  (d140 (d294 (d820 (d994 (d2410 v4))))) (v1 v3 v5))
               (d144
                  (d294 (d820 (d994 (d2410 v4)))) (v1 v3 v5) (v1 v3 v5) v3
                  (v0 (v1 v3 v5) (v2 (v1 v3 v5))))
               (MAlonzo.Code.Relation.Binary.Core.d518
                  (d140 (d294 (d820 (d994 (d2410 v4)))))
                  (v0 (v1 v3 v5) (v2 (v1 v3 v5))) v3
                  (MAlonzo.Code.Data.Product.d28
                     (d822 (d994 (d2410 v4))) (v1 v3 v5))))
            (let v8
                   = coe
                       MAlonzo.Code.Relation.Binary.C143
                       (coe d140 (coe d294 (coe d820 (coe d994 (coe d2410 v4))))) in
             MAlonzo.Code.Relation.Binary.PreorderReasoning.du72
               (MAlonzo.Code.Relation.Binary.du150 v8)
               (v0 (v1 v3 v5) (v0 (v1 v3 v5) (v2 (v1 v3 v5))))
               (v0 (v0 (v1 v3 v5) (v1 v3 v5)) (v2 (v1 v3 v5))) v3
               (MAlonzo.Code.Function.du158
                  (MAlonzo.Code.Relation.Binary.Core.d518
                     (d140 (d294 (d820 (d994 (d2410 v4)))))
                     (v0 (v0 (v1 v3 v5) (v1 v3 v5)) (v2 (v1 v3 v5)))
                     (v0 (v1 v3 v5) (v0 (v1 v3 v5) (v2 (v1 v3 v5)))))
                  (d142
                     (d294 (d820 (d994 (d2410 v4)))) (v1 v3 v5) (v1 v3 v5)
                     (v2 (v1 v3 v5))))
               (let v9
                      = coe
                          MAlonzo.Code.Relation.Binary.C143
                          (coe d140 (coe d294 (coe d820 (coe d994 (coe d2410 v4))))) in
                MAlonzo.Code.Relation.Binary.PreorderReasoning.du72
                  (MAlonzo.Code.Relation.Binary.du150 v9)
                  (v0 (v0 (v1 v3 v5) (v1 v3 v5)) (v2 (v1 v3 v5)))
                  (v0 (v1 (v0 v3 v3) v5) (v2 (v1 v3 v5))) v3
                  (MAlonzo.Code.Function.du176
                     (MAlonzo.Code.Relation.Binary.Core.d518
                        (d140 (d294 (d820 (d994 (d2410 v4))))) (v1 (v0 v3 v3) v5)
                        (v0 (v1 v3 v5) (v1 v3 v5))
                        (MAlonzo.Code.Data.Product.d28 (d2414 v4) v5 v3 v3))
                     (d144
                        (d294 (d820 (d994 (d2410 v4)))) (v0 (v1 v3 v5) (v1 v3 v5))
                        (v1 (v0 v3 v3) v5) (v2 (v1 v3 v5)) (v2 (v1 v3 v5)))
                     (MAlonzo.Code.Relation.Binary.Core.d516
                        (d140 (d294 (d820 (d994 (d2410 v4))))) (v2 (v1 v3 v5))))
                  (let v10
                         = coe
                             MAlonzo.Code.Relation.Binary.C143
                             (coe d140 (coe d294 (coe d820 (coe d994 (coe d2410 v4))))) in
                   MAlonzo.Code.Relation.Binary.PreorderReasoning.du72
                     (MAlonzo.Code.Relation.Binary.du150 v10)
                     (v0 (v1 (v0 v3 v3) v5) (v2 (v1 v3 v5)))
                     (v0 (v1 v3 v5) (v2 (v1 v3 v5))) v3
                     (MAlonzo.Code.Function.du176
                        (MAlonzo.Code.Function.du176
                           (MAlonzo.Code.Data.Product.d28 (d296 (d820 (d994 (d2410 v4)))) v3)
                           (d144 (d294 (d2412 v4)) (v0 v3 v3) v3 v5 v5)
                           (MAlonzo.Code.Relation.Binary.Core.d516
                              (d140 (d294 (d820 (d994 (d2410 v4))))) v5))
                        (d144
                           (d294 (d820 (d994 (d2410 v4)))) (v1 (v0 v3 v3) v5) (v1 v3 v5)
                           (v2 (v1 v3 v5)) (v2 (v1 v3 v5)))
                        (MAlonzo.Code.Relation.Binary.Core.d516
                           (d140 (d294 (d820 (d994 (d2410 v4))))) (v2 (v1 v3 v5))))
                     (let v11
                            = coe
                                MAlonzo.Code.Relation.Binary.C143
                                (coe d140 (coe d294 (coe d820 (coe d994 (coe d2410 v4))))) in
                      MAlonzo.Code.Relation.Binary.PreorderReasoning.du72
                        (MAlonzo.Code.Relation.Binary.du150 v11)
                        (v0 (v1 v3 v5) (v2 (v1 v3 v5))) v3 v3
                        (MAlonzo.Code.Data.Product.d28 (d822 (d994 (d2410 v4))) (v1 v3 v5))
                        (let v12
                               = coe
                                   MAlonzo.Code.Relation.Binary.C143
                                   (coe d140 (coe d294 (coe d820 (coe d994 (coe d2410 v4))))) in
                         MAlonzo.Code.Relation.Binary.PreorderReasoning.C56
                           (MAlonzo.Code.Relation.Binary.d38
                              (MAlonzo.Code.Relation.Binary.d92
                                 (MAlonzo.Code.Relation.Binary.du150 v12))
                              v3 v3
                              (MAlonzo.Code.Relation.Binary.Core.d516
                                 (MAlonzo.Code.Relation.Binary.d36
                                    (MAlonzo.Code.Relation.Binary.d92
                                       (MAlonzo.Code.Relation.Binary.du150 v12)))
                                 v3)))))))))
name2490 = "Algebra.Structures.IsRing._.zero\691"
d2490 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 = du2490 v4 v5 v6 v7 v9 v10
du2490 v0 v1 v2 v3 v4 v5
  = coe
      MAlonzo.Code.Relation.Binary.PreorderReasoning.d62
      (let v6
             = coe
                 MAlonzo.Code.Relation.Binary.C143
                 (coe d140 (coe d294 (coe d820 (coe d994 (coe d2410 v4))))) in
       MAlonzo.Code.Relation.Binary.PreorderReasoning.du72
         (MAlonzo.Code.Relation.Binary.du150 v6) (v1 v5 v3)
         (v0 (v1 v5 v3) v3) v3
         (MAlonzo.Code.Function.du158
            (MAlonzo.Code.Relation.Binary.Core.d518
               (d140 (d294 (d820 (d994 (d2410 v4))))) (v0 (v1 v5 v3) v3)
               (v1 v5 v3))
            (MAlonzo.Code.Data.Product.d28
               (d296 (d820 (d994 (d2410 v4)))) (v1 v5 v3)))
         (let v7
                = coe
                    MAlonzo.Code.Relation.Binary.C143
                    (coe d140 (coe d294 (coe d820 (coe d994 (coe d2410 v4))))) in
          MAlonzo.Code.Relation.Binary.PreorderReasoning.du72
            (MAlonzo.Code.Relation.Binary.du150 v7) (v0 (v1 v5 v3) v3)
            (v0 (v1 v5 v3) (v0 (v1 v5 v3) (v2 (v1 v5 v3)))) v3
            (MAlonzo.Code.Function.du176
               (MAlonzo.Code.Relation.Binary.Core.d516
                  (d140 (d294 (d820 (d994 (d2410 v4))))) (v1 v5 v3))
               (d144
                  (d294 (d820 (d994 (d2410 v4)))) (v1 v5 v3) (v1 v5 v3) v3
                  (v0 (v1 v5 v3) (v2 (v1 v5 v3))))
               (MAlonzo.Code.Relation.Binary.Core.d518
                  (d140 (d294 (d820 (d994 (d2410 v4)))))
                  (v0 (v1 v5 v3) (v2 (v1 v5 v3))) v3
                  (MAlonzo.Code.Data.Product.d28
                     (d822 (d994 (d2410 v4))) (v1 v5 v3))))
            (let v8
                   = coe
                       MAlonzo.Code.Relation.Binary.C143
                       (coe d140 (coe d294 (coe d820 (coe d994 (coe d2410 v4))))) in
             MAlonzo.Code.Relation.Binary.PreorderReasoning.du72
               (MAlonzo.Code.Relation.Binary.du150 v8)
               (v0 (v1 v5 v3) (v0 (v1 v5 v3) (v2 (v1 v5 v3))))
               (v0 (v0 (v1 v5 v3) (v1 v5 v3)) (v2 (v1 v5 v3))) v3
               (MAlonzo.Code.Function.du158
                  (MAlonzo.Code.Relation.Binary.Core.d518
                     (d140 (d294 (d820 (d994 (d2410 v4)))))
                     (v0 (v0 (v1 v5 v3) (v1 v5 v3)) (v2 (v1 v5 v3)))
                     (v0 (v1 v5 v3) (v0 (v1 v5 v3) (v2 (v1 v5 v3)))))
                  (d142
                     (d294 (d820 (d994 (d2410 v4)))) (v1 v5 v3) (v1 v5 v3)
                     (v2 (v1 v5 v3))))
               (let v9
                      = coe
                          MAlonzo.Code.Relation.Binary.C143
                          (coe d140 (coe d294 (coe d820 (coe d994 (coe d2410 v4))))) in
                MAlonzo.Code.Relation.Binary.PreorderReasoning.du72
                  (MAlonzo.Code.Relation.Binary.du150 v9)
                  (v0 (v0 (v1 v5 v3) (v1 v5 v3)) (v2 (v1 v5 v3)))
                  (v0 (v1 v5 (v0 v3 v3)) (v2 (v1 v5 v3))) v3
                  (MAlonzo.Code.Function.du176
                     (MAlonzo.Code.Relation.Binary.Core.d518
                        (d140 (d294 (d820 (d994 (d2410 v4))))) (v1 v5 (v0 v3 v3))
                        (v0 (v1 v5 v3) (v1 v5 v3))
                        (MAlonzo.Code.Data.Product.d26 (d2414 v4) v5 v3 v3))
                     (d144
                        (d294 (d820 (d994 (d2410 v4)))) (v0 (v1 v5 v3) (v1 v5 v3))
                        (v1 v5 (v0 v3 v3)) (v2 (v1 v5 v3)) (v2 (v1 v5 v3)))
                     (MAlonzo.Code.Relation.Binary.Core.d516
                        (d140 (d294 (d820 (d994 (d2410 v4))))) (v2 (v1 v5 v3))))
                  (let v10
                         = coe
                             MAlonzo.Code.Relation.Binary.C143
                             (coe d140 (coe d294 (coe d820 (coe d994 (coe d2410 v4))))) in
                   MAlonzo.Code.Relation.Binary.PreorderReasoning.du72
                     (MAlonzo.Code.Relation.Binary.du150 v10)
                     (v0 (v1 v5 (v0 v3 v3)) (v2 (v1 v5 v3)))
                     (v0 (v1 v5 v3) (v2 (v1 v5 v3))) v3
                     (MAlonzo.Code.Function.du176
                        (MAlonzo.Code.Function.du176
                           (MAlonzo.Code.Relation.Binary.Core.d516
                              (d140 (d294 (d820 (d994 (d2410 v4))))) v5)
                           (d144 (d294 (d2412 v4)) v5 v5 (v0 v3 v3) v3)
                           (MAlonzo.Code.Data.Product.d28 (d296 (d820 (d994 (d2410 v4)))) v3))
                        (d144
                           (d294 (d820 (d994 (d2410 v4)))) (v1 v5 (v0 v3 v3)) (v1 v5 v3)
                           (v2 (v1 v5 v3)) (v2 (v1 v5 v3)))
                        (MAlonzo.Code.Relation.Binary.Core.d516
                           (d140 (d294 (d820 (d994 (d2410 v4))))) (v2 (v1 v5 v3))))
                     (let v11
                            = coe
                                MAlonzo.Code.Relation.Binary.C143
                                (coe d140 (coe d294 (coe d820 (coe d994 (coe d2410 v4))))) in
                      MAlonzo.Code.Relation.Binary.PreorderReasoning.du72
                        (MAlonzo.Code.Relation.Binary.du150 v11)
                        (v0 (v1 v5 v3) (v2 (v1 v5 v3))) v3 v3
                        (MAlonzo.Code.Data.Product.d28 (d822 (d994 (d2410 v4))) (v1 v5 v3))
                        (let v12
                               = coe
                                   MAlonzo.Code.Relation.Binary.C143
                                   (coe d140 (coe d294 (coe d820 (coe d994 (coe d2410 v4))))) in
                         MAlonzo.Code.Relation.Binary.PreorderReasoning.C56
                           (MAlonzo.Code.Relation.Binary.d38
                              (MAlonzo.Code.Relation.Binary.d92
                                 (MAlonzo.Code.Relation.Binary.du150 v12))
                              v3 v3
                              (MAlonzo.Code.Relation.Binary.Core.d516
                                 (MAlonzo.Code.Relation.Binary.d36
                                    (MAlonzo.Code.Relation.Binary.d92
                                       (MAlonzo.Code.Relation.Binary.du150 v12)))
                                 v3)))))))))
name2494
  = "Algebra.Structures.IsRing.isSemiringWithoutAnnihilatingZero"
d2494 v0
  = coe
      C893
      (coe
         C221 (coe d294 (coe d820 (coe d994 (coe d2410 v0))))
         (coe
            MAlonzo.Code.Data.Product.d26
            (coe d296 (coe d820 (coe d994 (coe d2410 v0)))))
         (coe d996 (coe d2410 v0)))
      (coe d2412 v0) (coe d2414 v0)
name2496 = "Algebra.Structures.IsRing.isSemiring"
d2496 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 = du2496 v4 v5 v6 v7 v9
du2496 v0 v1 v2 v3 v4
  = coe
      C967
      (coe
         C893
         (coe
            C221 (coe d294 (coe d820 (coe d994 (coe d2410 v4))))
            (coe
               MAlonzo.Code.Data.Product.d26
               (coe d296 (coe d820 (coe d994 (coe d2410 v4)))))
            (coe d996 (coe d2410 v4)))
         (coe d2412 v4) (coe d2414 v4))
      (coe du2460 v0 v1 v2 v3 v4)
name2500 = "Algebra.Structures.IsRing._.isNearSemiring"
d2500 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 = du2500 v4 v5 v6 v7 v9
du2500 v0 v1 v2 v3 v4
  = let v5 = coe du2496 v0 v1 v2 v3 v4 in
    coe
      du1392 v0 v3
      (coe
         C773 (coe d1542 (coe d1728 v5))
         (coe d294 (coe d1544 (coe d1728 v5))) (coe d1546 (coe d1728 v5))
         (coe d1730 v5))
name2502 = "Algebra.Structures.IsRing._.isSemiringWithoutOne"
d2502 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 = du2502 v4 v5 v6 v7 v9
du2502 v0 v1 v2 v3 v4
  = coe
      C773 (coe d1542 (coe d1728 (coe du2496 v0 v1 v2 v3 v4)))
      (coe d294 (coe d1544 (coe d1728 (coe du2496 v0 v1 v2 v3 v4))))
      (coe d1546 (coe d1728 (coe du2496 v0 v1 v2 v3 v4)))
      (coe d1730 (coe du2496 v0 v1 v2 v3 v4))
name2522 = "Algebra.Structures.IsCommutativeRing"
d2522 a0 a1 a2 a3 a4 a5 a6 a7 a8 = ()
data T2522 a0 a1 = C1845 a0 a1
name2558 = "Algebra.Structures._.Commutative"
d2558 = erased
name2654 = "Algebra.Structures.IsCommutativeRing.isRing"
d2654 v0
  = case coe v0 of
      C1845 v1 v2 -> coe v1
      _ -> coe MAlonzo.RTE.mazUnreachableError
name2656 = "Algebra.Structures.IsCommutativeRing.*-comm"
d2656 v0
  = case coe v0 of
      C1845 v1 v2 -> coe v2
      _ -> coe MAlonzo.RTE.mazUnreachableError
name2660 = "Algebra.Structures.IsCommutativeRing._._-_"
d2660 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 = du2660 v4 v6
du2660 v0 v1 = coe du846 v0 v1
name2662 = "Algebra.Structures.IsCommutativeRing._.assoc"
d2662 v0 = coe d142 (coe d294 (coe d2412 (coe d2654 v0)))
name2664 = "Algebra.Structures.IsCommutativeRing._.\8729-cong"
d2664 v0 = coe d144 (coe d294 (coe d2412 (coe d2654 v0)))
name2666 = "Algebra.Structures.IsCommutativeRing._.identity"
d2666 v0 = coe d296 (coe d2412 (coe d2654 v0))
name2668 = "Algebra.Structures.IsCommutativeRing._.*-isMonoid"
d2668 v0 = coe d2412 (coe d2654 v0)
name2670 = "Algebra.Structures.IsCommutativeRing._.isSemigroup"
d2670 v0 = coe d294 (coe d2412 (coe d2654 v0))
name2672 = "Algebra.Structures.IsCommutativeRing._.assoc"
d2672 v0
  = coe
      d142 (coe d294 (coe d820 (coe d994 (coe d2410 (coe d2654 v0)))))
name2674 = "Algebra.Structures.IsCommutativeRing._.comm"
d2674 v0 = coe d996 (coe d2410 (coe d2654 v0))
name2676 = "Algebra.Structures.IsCommutativeRing._.\8729-cong"
d2676 v0
  = coe
      d144 (coe d294 (coe d820 (coe d994 (coe d2410 (coe d2654 v0)))))
name2678 = "Algebra.Structures.IsCommutativeRing._.identity"
d2678 v0
  = coe d296 (coe d820 (coe d994 (coe d2410 (coe d2654 v0))))
name2680
  = "Algebra.Structures.IsCommutativeRing._.+-isAbelianGroup"
d2680 v0 = coe d2410 (coe d2654 v0)
name2682
  = "Algebra.Structures.IsCommutativeRing._.isCommutativeMonoid"
d2682 v0
  = coe
      C221 (coe d294 (coe d820 (coe d994 (coe d2410 (coe d2654 v0)))))
      (coe
         MAlonzo.Code.Data.Product.d26
         (coe d296 (coe d820 (coe d994 (coe d2410 (coe d2654 v0))))))
      (coe d996 (coe d2410 (coe d2654 v0)))
name2684 = "Algebra.Structures.IsCommutativeRing._.isGroup"
d2684 v0 = coe d994 (coe d2410 (coe d2654 v0))
name2686 = "Algebra.Structures.IsCommutativeRing._.isMonoid"
d2686 v0 = coe d820 (coe d994 (coe d2410 (coe d2654 v0)))
name2688 = "Algebra.Structures.IsCommutativeRing._.isSemigroup"
d2688 v0
  = coe d294 (coe d820 (coe d994 (coe d2410 (coe d2654 v0))))
name2690 = "Algebra.Structures.IsCommutativeRing._.\8315\185-cong"
d2690 v0 = coe d824 (coe d994 (coe d2410 (coe d2654 v0)))
name2692 = "Algebra.Structures.IsCommutativeRing._.inverse"
d2692 v0 = coe d822 (coe d994 (coe d2410 (coe d2654 v0)))
name2694 = "Algebra.Structures.IsCommutativeRing._.distrib"
d2694 v0 = coe d2414 (coe d2654 v0)
name2696 = "Algebra.Structures.IsCommutativeRing._.isEquivalence"
d2696 v0
  = coe
      d140 (coe d294 (coe d820 (coe d994 (coe d2410 (coe d2654 v0)))))
name2698 = "Algebra.Structures.IsCommutativeRing._.isNearSemiring"
d2698 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 = du2698 v4 v5 v6 v7 v9
du2698 v0 v1 v2 v3 v4
  = let v5 = coe d2654 v4 in
    let v6 = coe du2496 v0 v1 v2 v3 v5 in
    coe
      du1392 v0 v3
      (coe
         C773 (coe d1542 (coe d1728 v6))
         (coe d294 (coe d1544 (coe d1728 v6))) (coe d1546 (coe d1728 v6))
         (coe d1730 v6))
name2700 = "Algebra.Structures.IsCommutativeRing._.isSemiring"
d2700 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 = du2700 v4 v5 v6 v7 v9
du2700 v0 v1 v2 v3 v4 = coe du2496 v0 v1 v2 v3 (coe d2654 v4)
name2702
  = "Algebra.Structures.IsCommutativeRing._.isSemiringWithoutAnnihilatingZero"
d2702 v0
  = coe
      C893
      (coe
         C221 (coe d294 (coe d820 (coe d994 (coe d2410 (coe d2654 v0)))))
         (coe
            MAlonzo.Code.Data.Product.d26
            (coe d296 (coe d820 (coe d994 (coe d2410 (coe d2654 v0))))))
         (coe d996 (coe d2410 (coe d2654 v0))))
      (coe d2412 (coe d2654 v0)) (coe d2414 (coe d2654 v0))
name2704
  = "Algebra.Structures.IsCommutativeRing._.isSemiringWithoutOne"
d2704 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 = du2704 v4 v5 v6 v7 v9
du2704 v0 v1 v2 v3 v4
  = let v5 = coe d2654 v4 in
    coe
      C773 (coe d1542 (coe d1728 (coe du2496 v0 v1 v2 v3 v5)))
      (coe d294 (coe d1544 (coe d1728 (coe du2496 v0 v1 v2 v3 v5))))
      (coe d1546 (coe d1728 (coe du2496 v0 v1 v2 v3 v5)))
      (coe d1730 (coe du2496 v0 v1 v2 v3 v5))
name2706 = "Algebra.Structures.IsCommutativeRing._.refl"
d2706 v0
  = coe
      MAlonzo.Code.Relation.Binary.Core.d516
      (coe
         d140 (coe d294 (coe d820 (coe d994 (coe d2410 (coe d2654 v0))))))
name2708 = "Algebra.Structures.IsCommutativeRing._.reflexive"
d2708 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 = du2708 v9
du2708 v0
  = let v1 = coe d2654 v0 in
    let v2 = coe d2410 v1 in
    let v3 = coe d994 v2 in
    let v4 = coe d820 v3 in
    let v5 = coe d294 v4 in
    \ v6 v7 v8 ->
      coe MAlonzo.Code.Relation.Binary.Core.du522 (coe d140 v5) v6
name2710 = "Algebra.Structures.IsCommutativeRing._.sym"
d2710 v0
  = coe
      MAlonzo.Code.Relation.Binary.Core.d518
      (coe
         d140 (coe d294 (coe d820 (coe d994 (coe d2410 (coe d2654 v0))))))
name2712 = "Algebra.Structures.IsCommutativeRing._.trans"
d2712 v0
  = coe
      MAlonzo.Code.Relation.Binary.Core.d520
      (coe
         d140 (coe d294 (coe d820 (coe d994 (coe d2410 (coe d2654 v0))))))
name2714 = "Algebra.Structures.IsCommutativeRing._.zero"
d2714 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 = du2714 v4 v5 v6 v7 v9
du2714 v0 v1 v2 v3 v4 = coe du2460 v0 v1 v2 v3 (coe d2654 v4)
name2716
  = "Algebra.Structures.IsCommutativeRing.isCommutativeSemiring"
d2716 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 = du2716 v4 v5 v6 v7 v9
du2716 v0 v1 v2 v3 v4
  = coe
      C1155
      (coe
         C221 (coe d294 (coe d820 (coe d994 (coe d2410 (coe d2654 v4)))))
         (coe
            MAlonzo.Code.Data.Product.d26
            (coe d296 (coe d820 (coe d994 (coe d2410 (coe d2654 v4))))))
         (coe d996 (coe d2410 (coe d2654 v4))))
      (coe
         C221 (coe d294 (coe d2412 (coe d2654 v4)))
         (coe
            MAlonzo.Code.Data.Product.d26
            (coe d296 (coe d2412 (coe d2654 v4))))
         (coe d2656 v4))
      (coe MAlonzo.Code.Data.Product.d28 (coe d2414 (coe d2654 v4)))
      (coe
         MAlonzo.Code.Data.Product.d26
         (coe du2460 v0 v1 v2 v3 (coe d2654 v4)))
name2720
  = "Algebra.Structures.IsCommutativeRing._.*-isCommutativeMonoid"
d2720 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 = du2720 v4 v5 v6 v7 v9
du2720 v0 v1 v2 v3 v4 = coe d2112 (coe du2716 v0 v1 v2 v3 v4)
name2722
  = "Algebra.Structures.IsCommutativeRing._.isCommutativeSemiringWithoutOne"
d2722 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 = du2722 v4 v5 v6 v7 v8 v9
du2722 v0 v1 v2 v3 v4 v5
  = coe du2256 v0 v1 v3 v4 (coe du2716 v0 v1 v2 v3 v5)
name2736 = "Algebra.Structures.IsLattice"
d2736 a0 a1 a2 a3 a4 a5 = ()
data T2736 a0 a1 a2 a3 a4 a5 a6 a7 = C1999 a0 a1 a2 a3 a4 a5 a6 a7
name2762 = "Algebra.Structures._.Absorptive"
d2762 = erased
name2764 = "Algebra.Structures._.Associative"
d2764 = erased
name2766 = "Algebra.Structures._.Commutative"
d2766 = erased
name2874 = "Algebra.Structures.IsLattice.isEquivalence"
d2874 v0
  = case coe v0 of
      C1999 v1 v2 v3 v4 v5 v6 v7 v8 -> coe v1
      _ -> coe MAlonzo.RTE.mazUnreachableError
name2876 = "Algebra.Structures.IsLattice.\8744-comm"
d2876 v0
  = case coe v0 of
      C1999 v1 v2 v3 v4 v5 v6 v7 v8 -> coe v2
      _ -> coe MAlonzo.RTE.mazUnreachableError
name2878 = "Algebra.Structures.IsLattice.\8744-assoc"
d2878 v0
  = case coe v0 of
      C1999 v1 v2 v3 v4 v5 v6 v7 v8 -> coe v3
      _ -> coe MAlonzo.RTE.mazUnreachableError
name2880 = "Algebra.Structures.IsLattice.\8744-cong"
d2880 v0
  = case coe v0 of
      C1999 v1 v2 v3 v4 v5 v6 v7 v8 -> coe v4
      _ -> coe MAlonzo.RTE.mazUnreachableError
name2882 = "Algebra.Structures.IsLattice.\8743-comm"
d2882 v0
  = case coe v0 of
      C1999 v1 v2 v3 v4 v5 v6 v7 v8 -> coe v5
      _ -> coe MAlonzo.RTE.mazUnreachableError
name2884 = "Algebra.Structures.IsLattice.\8743-assoc"
d2884 v0
  = case coe v0 of
      C1999 v1 v2 v3 v4 v5 v6 v7 v8 -> coe v6
      _ -> coe MAlonzo.RTE.mazUnreachableError
name2886 = "Algebra.Structures.IsLattice.\8743-cong"
d2886 v0
  = case coe v0 of
      C1999 v1 v2 v3 v4 v5 v6 v7 v8 -> coe v7
      _ -> coe MAlonzo.RTE.mazUnreachableError
name2888 = "Algebra.Structures.IsLattice.absorptive"
d2888 v0
  = case coe v0 of
      C1999 v1 v2 v3 v4 v5 v6 v7 v8 -> coe v8
      _ -> coe MAlonzo.RTE.mazUnreachableError
name2892 = "Algebra.Structures.IsLattice._.refl"
d2892 v0
  = coe MAlonzo.Code.Relation.Binary.Core.d516 (coe d2874 v0)
name2894 = "Algebra.Structures.IsLattice._.reflexive"
d2894 v0 v1 v2 v3 v4 v5 v6 = du2894 v6
du2894 v0 v1 v2 v3
  = coe MAlonzo.Code.Relation.Binary.Core.du522 (coe d2874 v0) v1
name2896 = "Algebra.Structures.IsLattice._.sym"
d2896 v0
  = coe MAlonzo.Code.Relation.Binary.Core.d518 (coe d2874 v0)
name2898 = "Algebra.Structures.IsLattice._.trans"
d2898 v0
  = coe MAlonzo.Code.Relation.Binary.Core.d520 (coe d2874 v0)
name2912 = "Algebra.Structures.IsDistributiveLattice"
d2912 a0 a1 a2 a3 a4 a5 = ()
data T2912 a0 a1 = C2083 a0 a1
name2932 = "Algebra.Structures._._DistributesOver\691_"
d2932 = erased
name3038 = "Algebra.Structures.IsDistributiveLattice.isLattice"
d3038 v0
  = case coe v0 of
      C2083 v1 v2 -> coe v1
      _ -> coe MAlonzo.RTE.mazUnreachableError
name3040
  = "Algebra.Structures.IsDistributiveLattice.\8744-\8743-distrib\691"
d3040 v0
  = case coe v0 of
      C2083 v1 v2 -> coe v2
      _ -> coe MAlonzo.RTE.mazUnreachableError
name3044 = "Algebra.Structures.IsDistributiveLattice._.absorptive"
d3044 v0 = coe d2888 (coe d3038 v0)
name3046
  = "Algebra.Structures.IsDistributiveLattice._.isEquivalence"
d3046 v0 = coe d2874 (coe d3038 v0)
name3048 = "Algebra.Structures.IsDistributiveLattice._.refl"
d3048 v0
  = coe
      MAlonzo.Code.Relation.Binary.Core.d516 (coe d2874 (coe d3038 v0))
name3050 = "Algebra.Structures.IsDistributiveLattice._.reflexive"
d3050 v0 v1 v2 v3 v4 v5 v6 = du3050 v6
du3050 v0
  = let v1 = coe d3038 v0 in
    \ v2 v3 v4 ->
      coe MAlonzo.Code.Relation.Binary.Core.du522 (coe d2874 v1) v2
name3052 = "Algebra.Structures.IsDistributiveLattice._.sym"
d3052 v0
  = coe
      MAlonzo.Code.Relation.Binary.Core.d518 (coe d2874 (coe d3038 v0))
name3054 = "Algebra.Structures.IsDistributiveLattice._.trans"
d3054 v0
  = coe
      MAlonzo.Code.Relation.Binary.Core.d520 (coe d2874 (coe d3038 v0))
name3056 = "Algebra.Structures.IsDistributiveLattice._.\8743-assoc"
d3056 v0 = coe d2884 (coe d3038 v0)
name3058 = "Algebra.Structures.IsDistributiveLattice._.\8743-comm"
d3058 v0 = coe d2882 (coe d3038 v0)
name3060 = "Algebra.Structures.IsDistributiveLattice._.\8743-cong"
d3060 v0 = coe d2886 (coe d3038 v0)
name3062 = "Algebra.Structures.IsDistributiveLattice._.\8744-assoc"
d3062 v0 = coe d2878 (coe d3038 v0)
name3064 = "Algebra.Structures.IsDistributiveLattice._.\8744-comm"
d3064 v0 = coe d2876 (coe d3038 v0)
name3066 = "Algebra.Structures.IsDistributiveLattice._.\8744-cong"
d3066 v0 = coe d2880 (coe d3038 v0)
name3086 = "Algebra.Structures.IsBooleanAlgebra"
d3086 a0 a1 a2 a3 a4 a5 a6 a7 a8 = ()
data T3086 a0 a1 a2 a3 = C2165 a0 a1 a2 a3
name3146 = "Algebra.Structures._.RightInverse"
d3146 = erased
name3222
  = "Algebra.Structures.IsBooleanAlgebra.isDistributiveLattice"
d3222 v0
  = case coe v0 of
      C2165 v1 v2 v3 v4 -> coe v1
      _ -> coe MAlonzo.RTE.mazUnreachableError
name3224
  = "Algebra.Structures.IsBooleanAlgebra.\8744-complement\691"
d3224 v0
  = case coe v0 of
      C2165 v1 v2 v3 v4 -> coe v2
      _ -> coe MAlonzo.RTE.mazUnreachableError
name3226
  = "Algebra.Structures.IsBooleanAlgebra.\8743-complement\691"
d3226 v0
  = case coe v0 of
      C2165 v1 v2 v3 v4 -> coe v3
      _ -> coe MAlonzo.RTE.mazUnreachableError
name3228 = "Algebra.Structures.IsBooleanAlgebra.\172-cong"
d3228 v0
  = case coe v0 of
      C2165 v1 v2 v3 v4 -> coe v4
      _ -> coe MAlonzo.RTE.mazUnreachableError
name3232 = "Algebra.Structures.IsBooleanAlgebra._.absorptive"
d3232 v0 = coe d2888 (coe d3038 (coe d3222 v0))
name3234 = "Algebra.Structures.IsBooleanAlgebra._.isEquivalence"
d3234 v0 = coe d2874 (coe d3038 (coe d3222 v0))
name3236 = "Algebra.Structures.IsBooleanAlgebra._.isLattice"
d3236 v0 = coe d3038 (coe d3222 v0)
name3238 = "Algebra.Structures.IsBooleanAlgebra._.refl"
d3238 v0
  = coe
      MAlonzo.Code.Relation.Binary.Core.d516
      (coe d2874 (coe d3038 (coe d3222 v0)))
name3240 = "Algebra.Structures.IsBooleanAlgebra._.reflexive"
d3240 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 = du3240 v9
du3240 v0
  = let v1 = coe d3222 v0 in
    let v2 = coe d3038 v1 in
    \ v3 v4 v5 ->
      coe MAlonzo.Code.Relation.Binary.Core.du522 (coe d2874 v2) v3
name3242 = "Algebra.Structures.IsBooleanAlgebra._.sym"
d3242 v0
  = coe
      MAlonzo.Code.Relation.Binary.Core.d518
      (coe d2874 (coe d3038 (coe d3222 v0)))
name3244 = "Algebra.Structures.IsBooleanAlgebra._.trans"
d3244 v0
  = coe
      MAlonzo.Code.Relation.Binary.Core.d520
      (coe d2874 (coe d3038 (coe d3222 v0)))
name3246 = "Algebra.Structures.IsBooleanAlgebra._.\8743-assoc"
d3246 v0 = coe d2884 (coe d3038 (coe d3222 v0))
name3248 = "Algebra.Structures.IsBooleanAlgebra._.\8743-comm"
d3248 v0 = coe d2882 (coe d3038 (coe d3222 v0))
name3250 = "Algebra.Structures.IsBooleanAlgebra._.\8743-cong"
d3250 v0 = coe d2886 (coe d3038 (coe d3222 v0))
name3252 = "Algebra.Structures.IsBooleanAlgebra._.\8744-assoc"
d3252 v0 = coe d2878 (coe d3038 (coe d3222 v0))
name3254 = "Algebra.Structures.IsBooleanAlgebra._.\8744-comm"
d3254 v0 = coe d2876 (coe d3038 (coe d3222 v0))
name3256 = "Algebra.Structures.IsBooleanAlgebra._.\8744-cong"
d3256 v0 = coe d2880 (coe d3038 (coe d3222 v0))
name3258
  = "Algebra.Structures.IsBooleanAlgebra._.\8744-\8743-distrib\691"
d3258 v0 = coe d3040 (coe d3222 v0)