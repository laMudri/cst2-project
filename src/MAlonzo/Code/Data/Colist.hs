{-# LANGUAGE EmptyDataDecls, ExistentialQuantification,
             ScopedTypeVariables, NoMonomorphismRestriction, Rank2Types #-}
module MAlonzo.Code.Data.Colist where

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
import qualified MAlonzo.Code.Agda.Builtin.Coinduction
import qualified MAlonzo.Code.Agda.Builtin.List
import qualified MAlonzo.Code.Agda.Primitive
import qualified MAlonzo.Code.Category.Applicative.Indexed
import qualified MAlonzo.Code.Category.Monad.Indexed
import qualified MAlonzo.Code.Data.BoundedVec.Inefficient
import qualified MAlonzo.Code.Data.Conat
import qualified MAlonzo.Code.Data.List.NonEmpty
import qualified MAlonzo.Code.Data.Maybe.Base
import qualified MAlonzo.Code.Data.Nat.Base
import qualified MAlonzo.Code.Data.Nat.Properties
import qualified MAlonzo.Code.Data.Product
import qualified MAlonzo.Code.Data.Sum
import qualified MAlonzo.Code.Function
import qualified MAlonzo.Code.Function.Equality
import qualified MAlonzo.Code.Function.Inverse
import qualified MAlonzo.Code.Relation.Binary
import qualified MAlonzo.Code.Relation.Binary.Core
import qualified MAlonzo.Code.Relation.Binary.PreorderReasoning
import qualified MAlonzo.Code.Relation.Binary.PropositionalEquality
import qualified MAlonzo.Code.Relation.Nullary
import qualified MAlonzo.Code.Relation.Nullary.Negation

type AgdaColist a b = [b]
name10 = "Data.Colist.\172\172Monad._._<$_"
d10 = erased
name12 = "Data.Colist.\172\172Monad._._<$>_"
d12 = erased
name14 = "Data.Colist.\172\172Monad._._<=<_"
d14 = erased
name16 = "Data.Colist.\172\172Monad._._<\8859_"
d16 = erased
name18 = "Data.Colist.\172\172Monad._._=<<_"
d18 = erased
name20 = "Data.Colist.\172\172Monad._._>=>_"
d20 = erased
name22 = "Data.Colist.\172\172Monad._._>>_"
d22 = erased
name24 = "Data.Colist.\172\172Monad._._>>=_"
d24 = erased
name26 = "Data.Colist.\172\172Monad._._\8855_"
d26 = erased
name28 = "Data.Colist.\172\172Monad._._\8859_"
d28 = erased
name30 = "Data.Colist.\172\172Monad._._\8859>_"
d30 = erased
name32 = "Data.Colist.\172\172Monad._.join"
d32 = erased
name34 = "Data.Colist.\172\172Monad._.pure"
d34 = erased
name36 = "Data.Colist.\172\172Monad._.rawFunctor"
d36 v0 = du36
du36
  = let v0 = coe MAlonzo.Code.Relation.Nullary.Negation.du220 in
    coe
      MAlonzo.Code.Category.Applicative.Indexed.du74
      (coe MAlonzo.Code.Category.Monad.Indexed.du146 v0)
name38 = "Data.Colist.\172\172Monad._.rawIApplicative"
d38 v0 = du38
du38
  = let v0 = coe MAlonzo.Code.Relation.Nullary.Negation.du220 in
    coe MAlonzo.Code.Category.Monad.Indexed.du146 v0
name40 = "Data.Colist.\172\172Monad._.return"
d40 = erased
name42 = "Data.Colist.\172\172Monad._.zipWith"
d42 = erased
name48 = "Data.Colist.Colist"
d48 a0 a1 = ()
check54 ::
  (forall xa. (forall xA. (MAlonzo.Code.Data.Colist.AgdaColist xa xA)))
check54 = []
check60 ::
  (forall xa. (forall xA. (xA -> ((MAlonzo.Code.Data.Colist.AgdaColist xa xA) -> (MAlonzo.Code.Data.Colist.AgdaColist xa xA)))))
check60 = (:)
cover48 :: MAlonzo.Code.Data.Colist.AgdaColist a1 a2 -> ()
cover48 x
  = case x of
      [] -> ()
      (:) _ _ -> ()
name54 = "Data.Colist.Colist.[]"
d54 ::
  (forall xa. (forall xA. (MAlonzo.Code.Data.Colist.AgdaColist xa xA)))
d54 = []
name60 = "Data.Colist.Colist._\8759_"
d60 ::
  (forall xa. (forall xA. (xA -> ((MAlonzo.Code.Data.Colist.AgdaColist xa xA) -> (MAlonzo.Code.Data.Colist.AgdaColist xa xA)))))
d60 = (:)
name70 = "Data.Colist.Any"
d70 a0 a1 a2 a3 a4 = ()
data T70 a0 a1 a2 = C86 a0 a1 a2 | C94 a0 a1 a2
name104 = "Data.Colist.All"
d104 a0 a1 a2 a3 a4 = ()
data T104 a0 a1 a2 a3 = C114 | C124 a0 a1 a2 a3
name130 = "Data.Colist.null"
d130 v0 v1 v2 = du130 v2
du130 v0
  = case coe v0 of
      [] -> coe True
      (:) v1 v2 -> coe False
      _ -> coe MAlonzo.RTE.mazUnreachableError
name136 = "Data.Colist.length"
d136 v0 v1 v2 = du136 v0 v2
du136 v0 v1
  = case coe v1 of
      [] -> coe MAlonzo.Code.Data.Conat.C6
      (:) v2 v3 -> coe MAlonzo.Code.Data.Conat.C10 (coe du207 v0 v3)
      _ -> coe MAlonzo.RTE.mazUnreachableError
name150 = "Data.Colist.map"
d150 v0 v1 v2 v3 v4 v5 = du150 v0 v1 v4 v5
du150 v0 v1 v2 v3
  = case coe v3 of
      [] -> coe v3
      (:) v4 v5 -> coe (:) (coe v2 v4) (coe du421 v0 v1 v2 v5)
      _ -> coe MAlonzo.RTE.mazUnreachableError
name164 = "Data.Colist.fromList"
d164 v0 v1 v2 = du164 v0 v2
du164 v0 v1
  = case coe v1 of
      [] -> coe []
      (:) v2 v3 -> coe (:) v2 (coe du671 v0 v3)
      _ -> coe MAlonzo.RTE.mazUnreachableError
name176 = "Data.Colist.take"
d176 v0 v1 v2 v3 = du176 v2 v3
du176 v0 v1
  = case coe v0 of
      0 -> coe
             MAlonzo.Code.Data.BoundedVec.Inefficient.C18 (0 :: Integer)
      _ -> let v2 = coe subInt v0 (1 :: Integer) in
           case coe v1 of
             [] -> coe MAlonzo.Code.Data.BoundedVec.Inefficient.C18 v0
             (:) v3 v4
               -> coe
                    MAlonzo.Code.Data.BoundedVec.Inefficient.C26 v2 v3
                    (coe du176 v2 (coe MAlonzo.Code.Agda.Builtin.Coinduction.d22 v4))
             _ -> coe MAlonzo.RTE.mazUnreachableError
name192 = "Data.Colist.replicate"
d192 v0 v1 v2 v3 = du192 v0 v2 v3
du192 v0 v1 v2
  = case coe v1 of
      MAlonzo.Code.Data.Conat.C6 -> coe []
      MAlonzo.Code.Data.Conat.C10 v3 -> coe (:) v2 (coe du1043 v0 v3 v2)
      _ -> coe MAlonzo.RTE.mazUnreachableError
name204 = "Data.Colist.lookup"
d204 v0 v1 v2 v3 = du204 v2 v3
du204 v0 v1
  = case coe v1 of
      [] -> coe Nothing
      (:) v2 v3
        -> case coe v0 of
             0 -> coe Just v2
             _ -> let v4 = coe subInt v0 (1 :: Integer) in
                  coe du204 v4 (coe MAlonzo.Code.Agda.Builtin.Coinduction.d22 v3)
      _ -> coe MAlonzo.RTE.mazUnreachableError
name207 = "Data.Colist._.\9839-0"
d207 v0 v1 v2 v3 = du207 v0 v3
du207 v0 v1
  = coe
      MAlonzo.Code.Agda.Builtin.Coinduction.d16
      (coe du136 v0 (coe MAlonzo.Code.Agda.Builtin.Coinduction.d22 v1))
name222 = "Data.Colist._++_"
d222 v0 v1 v2 v3 = du222 v0 v2 v3
du222 v0 v1 v2
  = case coe v1 of
      [] -> coe v2
      (:) v3 v4 -> coe (:) v3 (coe du1451 v0 v4 v2)
      _ -> coe MAlonzo.RTE.mazUnreachableError
name236 = "Data.Colist._\8910_"
d236 v0 v1 v2 v3 = du236 v0 v2 v3
du236 v0 v1 v2
  = case coe v1 of
      [] -> coe v2
      (:) v3 v4 -> coe (:) v3 (coe du1647 v0 v4 v2)
      _ -> coe MAlonzo.RTE.mazUnreachableError
name250 = "Data.Colist.concat"
d250 v0 v1 v2 = du250 v0 v2
du250 v0 v1
  = case coe v1 of
      [] -> coe v1
      (:) v2 v3
        -> case coe v2 of
             MAlonzo.Code.Data.List.NonEmpty.C24 v4 v5
               -> case coe v5 of
                    [] -> coe (:) v4 (coe du1859 v0 v3)
                    (:) v6 v7 -> coe (:) v4 (coe du1963 v0 v6 v7 v3)
                    _ -> coe MAlonzo.RTE.mazUnreachableError
             _ -> coe MAlonzo.RTE.mazUnreachableError
      _ -> coe MAlonzo.RTE.mazUnreachableError
name268 = "Data.Colist.[_]"
d268 v0 v1 v2 = du268 v2
du268 v0 = coe (:) v0 du2269
name288 = "Data.Colist.Any-map"
d288 v0 v1 v2 v3 v4 v5 v6 v7 = du288 v0 v1 v6 v7
du288 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Function.Inverse.C173
      (coe
         MAlonzo.Code.Relation.Binary.PropositionalEquality.du210
         (coe
            MAlonzo.Code.Relation.Binary.C143
            (coe MAlonzo.Code.Relation.Binary.Core.C889 erased erased erased))
         (coe du302 v3))
      (coe
         MAlonzo.Code.Relation.Binary.PropositionalEquality.du210
         (coe
            MAlonzo.Code.Relation.Binary.C143
            (coe MAlonzo.Code.Relation.Binary.Core.C889 erased erased erased))
         (coe du318 v0 v1 v2 v3))
      (coe MAlonzo.Code.Function.Inverse.C109 erased erased)
name302 = "Data.Colist._.to"
d302 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 = du302 v8 v9
du302 v0 v1
  = case coe v0 of
      (:) v2 v3
        -> case coe v1 of
             C86 v4 v5 v6 -> coe C86 v2 v3 v6
             C94 v4 v5 v6
               -> coe
                    C94 v2 v3
                    (coe du302 (coe MAlonzo.Code.Agda.Builtin.Coinduction.d22 v3) v6)
             _ -> coe MAlonzo.RTE.mazUnreachableError
      _ -> coe MAlonzo.RTE.mazUnreachableError
name318 = "Data.Colist._.from"
d318 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 = du318 v0 v1 v6 v8 v9
du318 v0 v1 v2 v3 v4
  = case coe v3 of
      (:) v5 v6
        -> case coe v4 of
             C86 v7 v8 v9 -> coe C86 (coe v2 v5) (coe du421 v0 v1 v2 v6) v9
             C94 v7 v8 v9
               -> coe
                    C94 (coe v2 v5) (coe du421 v0 v1 v2 v6)
                    (coe
                       du318 v0 v1 v2 (coe MAlonzo.Code.Agda.Builtin.Coinduction.d22 v6)
                       v9)
             _ -> coe MAlonzo.RTE.mazUnreachableError
      _ -> coe MAlonzo.RTE.mazUnreachableError
name336 = "Data.Colist._.from\8728to"
d336 = erased
name354 = "Data.Colist._.to\8728from"
d354 = erased
name380 = "Data.Colist.Any-\8910"
d380 v0 v1 v2 v3 v4 v5 = du380 v0 v1 v4 v5
du380 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Function.Inverse.C173
      (coe
         MAlonzo.Code.Relation.Binary.PropositionalEquality.du210
         (coe
            MAlonzo.Code.Relation.Binary.C143
            (coe MAlonzo.Code.Relation.Binary.Core.C889 erased erased erased))
         (coe du392 v2 v3))
      (coe
         MAlonzo.Code.Relation.Binary.PropositionalEquality.du210
         (coe
            MAlonzo.Code.Relation.Binary.C143
            (coe MAlonzo.Code.Relation.Binary.Core.C889 erased erased erased))
         (coe du438 v0 v1 v2 v3))
      (coe MAlonzo.Code.Function.Inverse.C109 erased erased)
name392 = "Data.Colist._.to"
d392 v0 v1 v2 v3 v4 v5 v6 = du392 v4 v5 v6
du392 v0 v1 v2
  = case coe v0 of
      [] -> coe Right v2
      (:) v3 v4
        -> case coe v2 of
             C86 v5 v6 v7 -> coe Left (coe C86 v3 v4 v7)
             C94 v5 v6 v7
               -> coe
                    MAlonzo.Code.Data.Sum.du74 Right
                    (coe MAlonzo.Code.Function.du38 (\ v8 -> Left) (coe C94 v3 v4))
                    (coe
                       du392 v1 (coe MAlonzo.Code.Agda.Builtin.Coinduction.d22 v4) v7)
             _ -> coe MAlonzo.RTE.mazUnreachableError
      _ -> coe MAlonzo.RTE.mazUnreachableError
name412 = "Data.Colist._.from-left"
d412 v0 v1 v2 v3 v4 v5 v6 = du412 v0 v1 v5 v6
du412 v0 v1 v2 v3
  = case coe v3 of
      C86 v4 v5 v6 -> coe C86 v4 (coe du1647 v0 v5 v2) v6
      C94 v4 v5 v6
        -> coe
             C94 v4 (coe du1647 v0 v5 v2)
             (coe
                du418 v0 v1 v2 (coe MAlonzo.Code.Agda.Builtin.Coinduction.d22 v5)
                v6)
      _ -> coe MAlonzo.RTE.mazUnreachableError
name418 = "Data.Colist._.from-right"
d418 v0 v1 v2 v3 v4 v5 v6 = du418 v0 v1 v4 v5 v6
du418 v0 v1 v2 v3 v4
  = case coe v2 of
      [] -> coe v4
      (:) v5 v6
        -> coe
             C94 v5 (coe du1647 v0 v6 v3)
             (coe
                du412 v0 v1 (coe MAlonzo.Code.Agda.Builtin.Coinduction.d22 v6) v4)
      _ -> coe MAlonzo.RTE.mazUnreachableError
name421 = "Data.Colist._.\9839-1"
d421 v0 v1 v2 v3 v4 v5 v6 = du421 v0 v1 v4 v6
du421 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Agda.Builtin.Coinduction.d16
      (coe
         du150 v0 v1 v2 (coe MAlonzo.Code.Agda.Builtin.Coinduction.d22 v3))
name438 = "Data.Colist._.from"
d438 v0 v1 v2 v3 v4 v5 = du438 v0 v1 v4 v5
du438 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Data.Sum.du48 (coe du412 v0 v1 v3)
      (coe du418 v0 v1 v2 v3)
name448 = "Data.Colist._.from\8728to"
d448 = erased
name492 = "Data.Colist._.to\8728from-left"
d492 = erased
name500 = "Data.Colist._.to\8728from-right"
d500 = erased
name532 = "Data.Colist._.to\8728from"
d532 = erased
name546 = "Data.Colist._\8776_"
d546 a0 a1 a2 a3 = ()
data T546 a0 a1 a2 a3 = C552 | C562 a0 a1 a2 a3
name566 = "Data.Colist.setoid"
d566 v0 v1 = du566 v0
du566 v0
  = coe
      MAlonzo.Code.Relation.Binary.C143
      (coe
         MAlonzo.Code.Relation.Binary.Core.C889 (coe du574 v0)
         (\ v1 v2 v3 -> coe du580 v0 v3)
         (\ v1 v2 v3 v4 v5 -> coe du586 v0 v4 v5))
name574 = "Data.Colist._.refl"
d574 v0 v1 v2 = du574 v0 v2
du574 v0 v1
  = case coe v1 of
      [] -> coe C552
      (:) v2 v3 -> coe C562 v2 v3 v3 (coe du10927 v0 v3)
      _ -> coe MAlonzo.RTE.mazUnreachableError
name580 = "Data.Colist._.sym"
d580 v0 v1 v2 v3 v4 = du580 v0 v4
du580 v0 v1
  = case coe v1 of
      C552 -> coe v1
      C562 v2 v3 v4 v5 -> coe C562 v2 v4 v3 (coe du11107 v0 v3 v4 v5)
      _ -> coe MAlonzo.RTE.mazUnreachableError
name586 = "Data.Colist._.trans"
d586 v0 v1 v2 v3 v4 v5 v6 = du586 v0 v5 v6
du586 v0 v1 v2
  = case coe v1 of
      C552 -> coe seq v2 v1
      C562 v3 v4 v5 v6
        -> case coe v2 of
             C562 v7 v8 v9 v10
               -> coe C562 v3 v4 v9 (coe du11543 v0 v5 v9 v4 v6 v10)
             _ -> coe MAlonzo.RTE.mazUnreachableError
      _ -> coe MAlonzo.RTE.mazUnreachableError
name602 = "Data.Colist.\8776-Reasoning.R._IsRelatedTo_"
d602 a0 a1 a2 a3 = ()
name604 = "Data.Colist.\8776-Reasoning.R._\8718"
d604 v0 v1 = du604 v0
du604 v0
  = let v1 = coe du566 v0 in
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
name606 = "Data.Colist.\8776-Reasoning.R._\8764\10216_\10217_"
d606 v0 v1 = du606 v0
du606 v0
  = let v1 = coe du566 v0 in
    coe
      MAlonzo.Code.Relation.Binary.PreorderReasoning.du72
      (coe MAlonzo.Code.Relation.Binary.du150 v1)
name608 = "Data.Colist.\8776-Reasoning.R._\8776\10216_\10217_"
d608 v0 v1 = du608 v0
du608 v0
  = let v1 = coe du566 v0 in
    coe
      MAlonzo.Code.Relation.Binary.PreorderReasoning.du84
      (coe MAlonzo.Code.Relation.Binary.du150 v1)
name610 = "Data.Colist.\8776-Reasoning.R._\8776\10216\10217_"
d610 v0 v1 v2 = du610 v2
du610 v0 = coe v0
name612 = "Data.Colist.\8776-Reasoning.R.begin_"
d612 v0 v1 = du612
du612 = MAlonzo.Code.Relation.Binary.PreorderReasoning.d62
name630 = "Data.Colist.map-cong"
d630 v0 v1 v2 v3 v4 v5 v6 v7 = du630 v0 v1 v4 v7
du630 v0 v1 v2 v3
  = case coe v3 of
      C552 -> coe v3
      C562 v4 v5 v6 v7
        -> coe
             C562 (coe v2 v4) (coe du421 v0 v1 v2 v5) (coe du421 v0 v1 v2 v6)
             (coe du12471 v0 v5 v6 v1 v2 v7)
      _ -> coe MAlonzo.RTE.mazUnreachableError
name658 = "Data.Colist.Any-resp"
d658 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 = du658 v8 v9 v10
du658 v0 v1 v2
  = case coe v2 of
      C86 v3 v4 v5
        -> case coe v1 of
             C562 v6 v7 v8 v9 -> coe C86 v6 v8 (coe v0 v6 v5)
             _ -> coe MAlonzo.RTE.mazUnreachableError
      C94 v3 v4 v5
        -> case coe v1 of
             C562 v6 v7 v8 v9
               -> coe
                    C94 v6 v8
                    (coe
                       du658 v0 (coe MAlonzo.Code.Agda.Builtin.Coinduction.d22 v9) v5)
             _ -> coe MAlonzo.RTE.mazUnreachableError
      _ -> coe MAlonzo.RTE.mazUnreachableError
name671 = "Data.Colist._.\9839-2"
d671 v0 v1 v2 v3 = du671 v0 v3
du671 v0 v1
  = coe MAlonzo.Code.Agda.Builtin.Coinduction.d16 (coe du164 v0 v1)
name694 = "Data.Colist.Any-cong"
d694 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 = du694 v0 v6 v7 v8 v9
du694 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Function.Inverse.C173
      (coe
         MAlonzo.Code.Relation.Binary.PropositionalEquality.du210
         (coe
            MAlonzo.Code.Relation.Binary.C143
            (coe MAlonzo.Code.Relation.Binary.Core.C889 erased erased erased))
         (coe
            du658
            (\ v5 ->
               coe
                 MAlonzo.Code.Function.Equality.d38
                 (coe MAlonzo.Code.Function.Inverse.d78 (coe v3 v5)))
            v4))
      (coe
         MAlonzo.Code.Relation.Binary.PropositionalEquality.du210
         (coe
            MAlonzo.Code.Relation.Binary.C143
            (coe MAlonzo.Code.Relation.Binary.Core.C889 erased erased erased))
         (coe
            du658
            (\ v5 ->
               coe
                 MAlonzo.Code.Function.Equality.d38
                 (coe MAlonzo.Code.Function.Inverse.d80 (coe v3 v5)))
            (coe
               MAlonzo.Code.Relation.Binary.Core.d518
               (coe MAlonzo.Code.Relation.Binary.d136 (coe du566 v0)) v1 v2 v4)))
      (coe MAlonzo.Code.Function.Inverse.C109 erased erased)
name708 = "Data.Colist._._.sym"
d708 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 = du708 v0
du708 v0
  = coe
      MAlonzo.Code.Relation.Binary.Core.d518
      (coe MAlonzo.Code.Relation.Binary.d136 (coe du566 v0))
name732 = "Data.Colist._.resp\8728resp"
d732 = erased
name764 = "Data.Colist.index"
d764 v0 v1 v2 v3 v4 v5 = du764 v5
du764 v0
  = case coe v0 of
      C86 v1 v2 v3 -> 0 :: Integer
      C94 v1 v2 v3 -> coe addInt (1 :: Integer) (coe du764 v3)
      _ -> coe MAlonzo.RTE.mazUnreachableError
name782 = "Data.Colist.lookup-index"
d782 v0 v1 v2 v3 v4 v5 = du782 v5
du782 v0
  = case coe v0 of
      C86 v1 v2 v3 -> coe MAlonzo.Code.Data.Maybe.Base.C132 v1 erased
      C94 v1 v2 v3 -> coe du782 v3
      _ -> coe MAlonzo.RTE.mazUnreachableError
name812 = "Data.Colist.index-Any-resp"
d812 = erased
name840 = "Data.Colist.index-Any-\8910"
d840 v0 v1 v2 v3 v4 v5 v6 = du840 v0 v1 v4 v5 v6
du840 v0 v1 v2 v3 v4
  = case coe v2 of
      [] -> coe MAlonzo.Code.Data.Nat.Base.C68
      (:) v5 v6
        -> case coe v4 of
             C86 v7 v8 v9 -> coe MAlonzo.Code.Data.Nat.Base.C68
             C94 v7 v8 v9
               -> let v10
                        = coe
                            MAlonzo.Code.Function.Equality.d38
                            (coe
                               MAlonzo.Code.Function.Inverse.d78
                               (coe
                                  du380 v0 v1 v3
                                  (coe MAlonzo.Code.Agda.Builtin.Coinduction.d22 v6)))
                            v9 in
                  let v11
                        = coe
                            du840 v0 v1 v3 (coe MAlonzo.Code.Agda.Builtin.Coinduction.d22 v6)
                            v9 in
                  case coe v10 of
                    Left v12 -> coe MAlonzo.Code.Data.Nat.Base.C74 (coe du764 v9) v11
                    Right v12 -> coe MAlonzo.Code.Data.Nat.Properties.du474 v11
                    _ -> coe MAlonzo.RTE.mazUnreachableError
             _ -> coe MAlonzo.RTE.mazUnreachableError
      _ -> coe MAlonzo.RTE.mazUnreachableError
name890 = "Data.Colist._\8712_"
d890 = erased
name900 = "Data.Colist._\8838_"
d900 = erased
name912 = "Data.Colist._\8849_"
d912 a0 a1 a2 a3 = ()
data T912 a0 a1 a2 a3 = C920 a0 | C930 a0 a1 a2 a3
name944 = "Data.Colist.Any-\8712"
d944 v0 v1 v2 v3 v4 = du944
du944
  = coe
      MAlonzo.Code.Function.Inverse.C173
      (coe
         MAlonzo.Code.Relation.Binary.PropositionalEquality.du210
         (coe
            MAlonzo.Code.Relation.Binary.C143
            (coe MAlonzo.Code.Relation.Binary.Core.C889 erased erased erased))
         du956)
      (coe
         MAlonzo.Code.Relation.Binary.PropositionalEquality.du210
         (coe
            MAlonzo.Code.Relation.Binary.C143
            (coe MAlonzo.Code.Relation.Binary.Core.C889 erased erased erased))
         (\ v0 ->
            coe
              du966
              (coe
                 MAlonzo.Code.Data.Product.d26
                 (coe MAlonzo.Code.Data.Product.d28 v0))
              (coe
                 MAlonzo.Code.Data.Product.d28
                 (coe MAlonzo.Code.Data.Product.d28 v0))))
      (coe MAlonzo.Code.Function.Inverse.C109 erased erased)
name956 = "Data.Colist._.to"
d956 v0 v1 v2 v3 v4 v5 v6 = du956 v6
du956 v0
  = case coe v0 of
      C86 v1 v2 v3
        -> coe
             MAlonzo.Code.Data.Product.C30 v1
             (coe MAlonzo.Code.Data.Product.C30 (coe C86 v1 v2 erased) v3)
      C94 v1 v2 v3
        -> coe
             MAlonzo.Code.Data.Product.du188 (\ v4 -> v4)
             (\ v4 ->
                coe
                  MAlonzo.Code.Data.Product.du188 (coe C94 v1 v2) (\ v5 v6 -> v6))
             (coe du956 v3)
      _ -> coe MAlonzo.RTE.mazUnreachableError
name966 = "Data.Colist._.from"
d966 v0 v1 v2 v3 v4 v5 v6 v7 v8 = du966 v7 v8
du966 v0 v1
  = case coe v0 of
      C86 v2 v3 v4 -> coe C86 v2 v3 v1
      C94 v2 v3 v4 -> coe C94 v2 v3 (coe du966 v4 v1)
      _ -> coe MAlonzo.RTE.mazUnreachableError
name982 = "Data.Colist._.to\8728from"
d982 = erased
name1000 = "Data.Colist._.from\8728to"
d1000 = erased
name1024 = "Data.Colist.\8849\8658\8838"
d1024 v0 v1 v2 v3 v4 v5 v6 = du1024 v4 v6
du1024 v0 v1
  = case coe v0 of
      C930 v2 v3 v4 v5
        -> case coe v1 of
             C86 v6 v7 v8 -> coe C86 v2 v4 v8
             C94 v6 v7 v8
               -> coe
                    C94 v2 v4
                    (coe du1024 (coe MAlonzo.Code.Agda.Builtin.Coinduction.d22 v5) v8)
             _ -> coe MAlonzo.RTE.mazUnreachableError
      _ -> coe MAlonzo.RTE.mazUnreachableError
name1038 = "Data.Colist.\8849-Poset"
d1038 v0 v1 = du1038 v0
du1038 v0
  = coe
      MAlonzo.Code.Relation.Binary.C345
      (coe
         MAlonzo.Code.Relation.Binary.C327
         (coe
            MAlonzo.Code.Relation.Binary.C17
            (coe MAlonzo.Code.Relation.Binary.d136 (coe du566 v0))
            (\ v1 v2 v3 -> coe du1046 v0 v3)
            (\ v1 v2 v3 v4 v5 -> coe du1052 v0 v3 v4 v5))
         (\ v1 v2 v3 v4 -> coe du1060 v0 v3 v4))
name1043 = "Data.Colist._.\9839-3"
d1043 v0 v1 v2 v3 = du1043 v0 v2 v3
du1043 v0 v1 v2
  = coe
      MAlonzo.Code.Agda.Builtin.Coinduction.d16
      (coe
         du192 v0 (coe MAlonzo.Code.Agda.Builtin.Coinduction.d22 v1) v2)
name1046 = "Data.Colist._.reflexive"
d1046 v0 v1 v2 v3 v4 = du1046 v0 v4
du1046 v0 v1
  = case coe v1 of
      C552 -> coe C920 []
      C562 v2 v3 v4 v5 -> coe C930 v2 v3 v4 (coe du26551 v0 v3 v4 v5)
      _ -> coe MAlonzo.RTE.mazUnreachableError
name1052 = "Data.Colist._.trans"
d1052 v0 v1 v2 v3 v4 v5 v6 = du1052 v0 v4 v5 v6
du1052 v0 v1 v2 v3
  = case coe v2 of
      C920 v4 -> coe C920 v1
      C930 v4 v5 v6 v7
        -> case coe v3 of
             C930 v8 v9 v10 v11
               -> coe C930 v4 v5 v10 (coe du26987 v0 v6 v10 v5 v7 v11)
             _ -> coe MAlonzo.RTE.mazUnreachableError
      _ -> coe MAlonzo.RTE.mazUnreachableError
name1060 = "Data.Colist._.antisym"
d1060 v0 v1 v2 v3 v4 v5 = du1060 v0 v4 v5
du1060 v0 v1 v2
  = case coe v1 of
      C920 v3
        -> case coe v2 of
             C920 v4 -> coe C552
             _ -> coe MAlonzo.RTE.mazUnreachableError
      C930 v3 v4 v5 v6
        -> case coe v2 of
             C930 v7 v8 v9 v10
               -> coe C562 v3 v4 v5 (coe du27701 v0 v5 v4 v6 v10)
             _ -> coe MAlonzo.RTE.mazUnreachableError
      _ -> coe MAlonzo.RTE.mazUnreachableError
name1076 = "Data.Colist.\8849-Reasoning.R._IsRelatedTo_"
d1076 a0 a1 a2 a3 = ()
name1078 = "Data.Colist.\8849-Reasoning.R._\8718"
d1078 v0 v1 v2 = du1078 v0 v2
du1078 v0 v1
  = coe
      MAlonzo.Code.Relation.Binary.PreorderReasoning.C56
      (coe
         MAlonzo.Code.Relation.Binary.d38
         (coe
            MAlonzo.Code.Relation.Binary.d268
            (coe MAlonzo.Code.Relation.Binary.d322 (coe du1038 v0)))
         v1 v1
         (coe
            MAlonzo.Code.Relation.Binary.Core.d516
            (coe
               MAlonzo.Code.Relation.Binary.d36
               (coe
                  MAlonzo.Code.Relation.Binary.d268
                  (coe MAlonzo.Code.Relation.Binary.d322 (coe du1038 v0))))
            v1))
name1080 = "Data.Colist.\8849-Reasoning.R._\8776\10216_\10217_"
d1080 v0 v1 = du1080 v0
du1080 v0
  = let v1 = coe du1038 v0 in
    coe
      MAlonzo.Code.Relation.Binary.PreorderReasoning.du84
      (coe
         MAlonzo.Code.Relation.Binary.C125
         (coe
            MAlonzo.Code.Relation.Binary.d268
            (coe MAlonzo.Code.Relation.Binary.d322 v1)))
name1082 = "Data.Colist.\8849-Reasoning.R._\8776\10216\10217_"
d1082 v0 v1 v2 = du1082 v2
du1082 v0 = coe v0
name1084 = "Data.Colist.\8849-Reasoning.R._\8764\10216_\10217_"
d1084 v0 v1 = du1084 v0
du1084 v0
  = let v1 = coe du1038 v0 in
    coe
      MAlonzo.Code.Relation.Binary.PreorderReasoning.du72
      (coe
         MAlonzo.Code.Relation.Binary.C125
         (coe
            MAlonzo.Code.Relation.Binary.d268
            (coe MAlonzo.Code.Relation.Binary.d322 v1)))
name1086 = "Data.Colist.\8849-Reasoning.R.begin_"
d1086 v0 v1 = du1086
du1086 = MAlonzo.Code.Relation.Binary.PreorderReasoning.d62
name1096 = "Data.Colist.\8838-Preorder"
d1096 v0 v1 = du1096 v0
du1096 v0
  = coe
      MAlonzo.Code.Relation.Binary.C125
      (coe
         MAlonzo.Code.Relation.Binary.C17
         (coe MAlonzo.Code.Relation.Binary.d136 (coe du566 v0))
         (\ v1 v2 v3 v4 ->
            coe
              du1024
              (coe
                 MAlonzo.Code.Relation.Binary.d38
                 (coe
                    MAlonzo.Code.Relation.Binary.d268
                    (coe MAlonzo.Code.Relation.Binary.d322 (coe du1038 v0)))
                 v1 v2 v3))
         (\ v1 v2 v3 v4 v5 v6 ->
            coe MAlonzo.Code.Function.du38 (\ v7 -> coe v5 v6) (coe v4 v6)))
name1124 = "Data.Colist._.\8849P.reflexive"
d1124 v0 v1 = du1124 v0
du1124 v0
  = coe
      MAlonzo.Code.Relation.Binary.d38
      (coe
         MAlonzo.Code.Relation.Binary.d268
         (coe MAlonzo.Code.Relation.Binary.d322 (coe du1038 v0)))
name1150 = "Data.Colist.\8838-Reasoning.R._IsRelatedTo_"
d1150 a0 a1 a2 a3 = ()
name1152 = "Data.Colist.\8838-Reasoning.R._\8718"
d1152 v0 v1 v2 = du1152 v0 v2
du1152 v0 v1
  = coe
      MAlonzo.Code.Relation.Binary.PreorderReasoning.C56
      (coe
         MAlonzo.Code.Relation.Binary.d38
         (coe MAlonzo.Code.Relation.Binary.d92 (coe du1096 v0)) v1 v1
         (coe
            MAlonzo.Code.Relation.Binary.Core.d516
            (coe
               MAlonzo.Code.Relation.Binary.d36
               (coe MAlonzo.Code.Relation.Binary.d92 (coe du1096 v0)))
            v1))
name1154 = "Data.Colist.\8838-Reasoning.R._\8764\10216_\10217_"
d1154 v0 v1 = du1154 v0
du1154 v0
  = coe
      MAlonzo.Code.Relation.Binary.PreorderReasoning.du72 (coe du1096 v0)
name1156 = "Data.Colist.\8838-Reasoning.R._\8776\10216_\10217_"
d1156 v0 v1 = du1156 v0
du1156 v0
  = coe
      MAlonzo.Code.Relation.Binary.PreorderReasoning.du84 (coe du1096 v0)
name1158 = "Data.Colist.\8838-Reasoning.R._\8776\10216\10217_"
d1158 v0 v1 v2 = du1158 v2
du1158 v0 = coe v0
name1160 = "Data.Colist.\8838-Reasoning.R.begin_"
d1160 v0 v1 = du1160
du1160 = MAlonzo.Code.Relation.Binary.PreorderReasoning.d62
name1178 = "Data.Colist.\8838-Reasoning._\8712\10216_\10217_"
d1178 v0 v1 v2 v3 v4 v5 v6 = du1178 v2 v5 v6
du1178 v0 v1 v2
  = coe MAlonzo.Code.Relation.Binary.PreorderReasoning.d62 v2 v0 v1
name1196 = "Data.Colist.take-\8849"
d1196 v0 v1 v2 v3 = du1196 v0 v2 v3
du1196 v0 v1 v2
  = case coe v1 of
      0 -> coe C920 v2
      _ -> let v3 = coe subInt v1 (1 :: Integer) in
           case coe v2 of
             [] -> coe C920 v2
             (:) v4 v5
               -> coe
                    C930 v4
                    (coe
                       du671 v0
                       (coe
                          MAlonzo.Code.Data.BoundedVec.Inefficient.du58
                          (coe du176 v3 (coe MAlonzo.Code.Agda.Builtin.Coinduction.d22 v5))))
                    v5 (coe du28685 v0 v3 v5)
             _ -> coe MAlonzo.RTE.mazUnreachableError
name1212 = "Data.Colist.Finite"
d1212 a0 a1 a2 = ()
data T1212 a0 a1 a2 = C1218 | C1226 a0 a1 a2
name1232 = "Data.Colist.Infinite"
d1232 a0 a1 a2 = ()
data T1232 a0 a1 a2 = C1244 a0 a1 a2
name1252 = "Data.Colist.not-finite-is-infinite"
d1252 v0 v1 v2 v3 = du1252 v0 v2
du1252 v0 v1
  = case coe v1 of
      (:) v2 v3 -> coe C1244 v2 v3 (coe du29011 v0 v3)
      _ -> coe MAlonzo.RTE.mazUnreachableError
name1274 = "Data.Colist.finite-or-infinite"
d1274 = erased
name1282 = "Data.Colist._.helper"
d1282 v0 v1 v2 v3 = du1282 v0 v2 v3
du1282 v0 v1 v2
  = case coe v2 of
      MAlonzo.Code.Relation.Nullary.C22 v3 -> coe Left v3
      MAlonzo.Code.Relation.Nullary.C26
        -> coe MAlonzo.Code.Function.du158 Right (coe du1252 v0 v1)
      _ -> coe MAlonzo.RTE.mazUnreachableError
name1294 = "Data.Colist.not-finite-and-infinite"
d1294 = erased
name1451 = "Data.Colist._.\9839-4"
d1451 v0 v1 v2 v3 v4 = du1451 v0 v3 v4
du1451 v0 v1 v2
  = coe
      MAlonzo.Code.Agda.Builtin.Coinduction.d16
      (coe
         du222 v0 (coe MAlonzo.Code.Agda.Builtin.Coinduction.d22 v1) v2)
name1647 = "Data.Colist._.\9839-5"
d1647 v0 v1 v2 v3 v4 = du1647 v0 v3 v4
du1647 v0 v1 v2
  = coe
      MAlonzo.Code.Agda.Builtin.Coinduction.d16
      (coe
         du236 v0 v2 (coe MAlonzo.Code.Agda.Builtin.Coinduction.d22 v1))
name1859 = "Data.Colist._.\9839-6"
d1859 v0 v1 v2 v3 = du1859 v0 v3
du1859 v0 v1
  = coe
      MAlonzo.Code.Agda.Builtin.Coinduction.d16
      (coe du250 v0 (coe MAlonzo.Code.Agda.Builtin.Coinduction.d22 v1))
name1963 = "Data.Colist._.\9839-7"
d1963 v0 v1 v2 v3 v4 v5 = du1963 v0 v3 v4 v5
du1963 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Agda.Builtin.Coinduction.d16
      (coe
         du250 v0
         (coe (:) (coe MAlonzo.Code.Data.List.NonEmpty.C24 v1 v2) v3))
name2269 = "Data.Colist._.\9839-8"
d2269 v0 v1 v2 = du2269
du2269 = coe MAlonzo.Code.Agda.Builtin.Coinduction.d16 []
name10927 = "Data.Colist._._.\9839-23"
d10927 v0 v1 v2 v3 = du10927 v0 v3
du10927 v0 v1
  = coe
      MAlonzo.Code.Agda.Builtin.Coinduction.d16
      (coe du574 v0 (coe MAlonzo.Code.Agda.Builtin.Coinduction.d22 v1))
name11107 = "Data.Colist._._.\9839-25"
d11107 v0 v1 v2 v3 v4 v5 = du11107 v0 v3 v4 v5
du11107 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Agda.Builtin.Coinduction.d16
      (coe du580 v0 (coe MAlonzo.Code.Agda.Builtin.Coinduction.d22 v3))
name11543 = "Data.Colist._._.\9839-27"
d11543 v0 v1 v2 v3 v4 v5 v6 v7 = du11543 v0 v3 v4 v5 v6 v7
du11543 v0 v1 v2 v3 v4 v5
  = coe
      MAlonzo.Code.Agda.Builtin.Coinduction.d16
      (coe
         du586 v0 (coe MAlonzo.Code.Agda.Builtin.Coinduction.d22 v4)
         (coe MAlonzo.Code.Agda.Builtin.Coinduction.d22 v5))
name12471 = "Data.Colist._.\9839-29"
d12471 v0 v1 v2 v3 v4 v5 v6 v7 v8 = du12471 v0 v3 v4 v5 v7 v8
du12471 v0 v1 v2 v3 v4 v5
  = coe
      MAlonzo.Code.Agda.Builtin.Coinduction.d16
      (coe
         du630 v0 v3 v4 (coe MAlonzo.Code.Agda.Builtin.Coinduction.d22 v5))
name26551 = "Data.Colist._._.\9839-46"
d26551 v0 v1 v2 v3 v4 v5 = du26551 v0 v3 v4 v5
du26551 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Agda.Builtin.Coinduction.d16
      (coe du1046 v0 (coe MAlonzo.Code.Agda.Builtin.Coinduction.d22 v3))
name26987 = "Data.Colist._._.\9839-48"
d26987 v0 v1 v2 v3 v4 v5 v6 v7 = du26987 v0 v3 v4 v5 v6 v7
du26987 v0 v1 v2 v3 v4 v5
  = coe
      MAlonzo.Code.Agda.Builtin.Coinduction.d16
      (coe
         du1052 v0 (coe MAlonzo.Code.Agda.Builtin.Coinduction.d22 v2)
         (coe MAlonzo.Code.Agda.Builtin.Coinduction.d22 v4)
         (coe MAlonzo.Code.Agda.Builtin.Coinduction.d22 v5))
name27701 = "Data.Colist._._.\9839-50"
d27701 v0 v1 v2 v3 v4 v5 v6 = du27701 v0 v2 v4 v5 v6
du27701 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Agda.Builtin.Coinduction.d16
      (coe
         du1060 v0 (coe MAlonzo.Code.Agda.Builtin.Coinduction.d22 v3)
         (coe MAlonzo.Code.Agda.Builtin.Coinduction.d22 v4))
name28685 = "Data.Colist._.\9839-52"
d28685 v0 v1 v2 v3 v4 = du28685 v0 v2 v4
du28685 v0 v1 v2
  = coe
      MAlonzo.Code.Agda.Builtin.Coinduction.d16
      (coe
         du1196 v0 v1 (coe MAlonzo.Code.Agda.Builtin.Coinduction.d22 v2))
name29011 = "Data.Colist._.\9839-54"
d29011 v0 v1 v2 v3 v4 = du29011 v0 v3
du29011 v0 v1
  = coe
      MAlonzo.Code.Agda.Builtin.Coinduction.d16
      (coe du1252 v0 (coe MAlonzo.Code.Agda.Builtin.Coinduction.d22 v1))