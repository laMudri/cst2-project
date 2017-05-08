{-# LANGUAGE EmptyDataDecls, ExistentialQuantification,
             ScopedTypeVariables, NoMonomorphismRestriction, Rank2Types #-}
module MAlonzo.Code.Data.Vec where

import MAlonzo.RTE (coe, erased, addInt, subInt, mulInt, quotInt,
                    remInt, geqInt, ltInt, eqInt, eqFloat)
import qualified Control.Exception
import qualified Data.Text
import qualified Data.Text.IO
import qualified MAlonzo.RTE
import qualified System.Environment
import qualified System.IO
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Builtin.List
import qualified MAlonzo.Code.Category.Applicative.Indexed
import qualified MAlonzo.Code.Data.Fin
import qualified MAlonzo.Code.Data.List.Base
import qualified MAlonzo.Code.Data.Nat.Base
import qualified MAlonzo.Code.Data.Product
import qualified MAlonzo.Code.Function

name8 = "Data.Vec.Vec"
d8 a0 a1 a2 = ()
data T8 a0 a1 a2 = C14 | C22 a0 a1 a2
name30 = "Data.Vec._\8712_"
d30 a0 a1 a2 a3 a4 = ()
data T30 a0 a1 a2 a3 a4 = C42 a0 a1 a2 | C54 a0 a1 a2 a3 a4
name62 = "Data.Vec._[_]=_"
d62 a0 a1 a2 a3 a4 a5 = ()
data T62 a0 a1 a2 a3 a4 a5 = C74 a0 a1 a2 | C88 a0 a1 a2 a3 a4 a5
name96 = "Data.Vec.head"
d96 v0 v1 v2 v3 = du96 v3
du96 v0
  = case coe v0 of
      C22 v1 v2 v3 -> coe v2
      _ -> coe MAlonzo.RTE.mazUnreachableError
name108 = "Data.Vec.tail"
d108 v0 v1 v2 v3 = du108 v3
du108 v0
  = case coe v0 of
      C22 v1 v2 v3 -> coe v3
      _ -> coe MAlonzo.RTE.mazUnreachableError
name118 = "Data.Vec.[_]"
d118 v0 v1 v2 = du118 v2
du118 v0 = coe C22 (0 :: Integer) v0 C14
name130 = "Data.Vec._++_"
d130 v0 v1 v2 v3 v4 v5 = du130 v2 v4 v5
du130 v0 v1 v2
  = case coe v1 of
      C14 -> coe v2
      C22 v3 v4 v5 -> coe C22 (coe addInt v0 v3) v4 (coe du130 v0 v5 v2)
      _ -> coe MAlonzo.RTE.mazUnreachableError
name150 = "Data.Vec._\8859_"
d150 v0 v1 v2 v3 v4 v5 v6 = du150 v5 v6
du150 v0 v1
  = case coe v0 of
      C14 -> coe v0
      C22 v2 v3 v4
        -> case coe v1 of
             C22 v5 v6 v7 -> coe C22 v2 (coe v3 v6) (coe du150 v4 v7)
             _ -> coe MAlonzo.RTE.mazUnreachableError
      _ -> coe MAlonzo.RTE.mazUnreachableError
name166 = "Data.Vec.replicate"
d166 v0 v1 v2 v3 = du166 v1 v3
du166 v0 v1
  = case coe v0 of
      0 -> coe C14
      _ -> let v2 = coe subInt v0 (1 :: Integer) in
           coe C22 v2 v1 (coe du166 v2 v1)
name180 = "Data.Vec.applicative"
d180 v0 v1 = du180 v1
du180 v0
  = coe
      MAlonzo.Code.Category.Applicative.Indexed.C15
      (\ v1 v2 v3 -> coe du166 v0 v3)
      (\ v1 v2 v3 v4 v5 v6 v7 -> coe du150 v6 v7)
name192 = "Data.Vec.map"
d192 v0 v1 v2 v3 v4 v5 v6 = du192 v2 v5 v6
du192 v0 v1 v2 = coe du150 (coe du166 v0 v1) v2
name212 = "Data.Vec.zipWith"
d212 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 = du212 v3 v7 v8 v9
du212 v0 v1 v2 v3 = coe du150 (coe du150 (coe du166 v0 v1) v2) v3
name230 = "Data.Vec.zip"
d230 v0 v1 v2 v3 v4 = du230 v2
du230 v0 = coe du212 v0 MAlonzo.Code.Data.Product.C30
name242 = "Data.Vec.unzip"
d242 v0 v1 v2 v3 v4 v5 = du242 v5
du242 v0
  = case coe v0 of
      C14 -> coe MAlonzo.Code.Data.Product.C30 v0 v0
      C22 v1 v2 v3
        -> coe
             MAlonzo.Code.Data.Product.du188
             (coe C22 v1 (coe MAlonzo.Code.Data.Product.d26 v2))
             (\ v4 -> coe C22 v1 (coe MAlonzo.Code.Data.Product.d28 v2))
             (coe du242 v3)
      _ -> coe MAlonzo.RTE.mazUnreachableError
name262 = "Data.Vec.foldr"
d262 v0 v1 v2 v3 v4 v5 v6 v7 = du262 v5 v6 v7
du262 v0 v1 v2
  = case coe v2 of
      C14 -> coe v1
      C22 v3 v4 v5 -> coe v0 v3 v4 (coe du262 v0 v1 v5)
      _ -> coe MAlonzo.RTE.mazUnreachableError
name286 = "Data.Vec.foldr\8321"
d286 v0 v1 v2 v3 v4 = du286 v3 v4
du286 v0 v1
  = case coe v1 of
      C22 v2 v3 v4
        -> case coe v4 of
             C14 -> coe v3
             C22 v5 v6 v7 -> coe v0 v3 (coe du286 v0 v4)
             _ -> coe MAlonzo.RTE.mazUnreachableError
      _ -> coe MAlonzo.RTE.mazUnreachableError
name312 = "Data.Vec.foldl"
d312 v0 v1 v2 v3 v4 v5 v6 v7 = du312 v5 v6 v7
du312 v0 v1 v2
  = case coe v2 of
      C14 -> coe v1
      C22 v3 v4 v5
        -> coe
             du312 (\ v6 -> coe v0 (coe addInt (1 :: Integer) v6))
             (coe v0 (0 :: Integer) v1 v4) v5
      _ -> coe MAlonzo.RTE.mazUnreachableError
name338 = "Data.Vec.foldl\8321"
d338 v0 v1 v2 v3 v4 = du338 v3 v4
du338 v0 v1
  = case coe v1 of
      C22 v2 v3 v4 -> coe du312 (\ v5 -> v0) v3 v4
      _ -> coe MAlonzo.RTE.mazUnreachableError
name354 = "Data.Vec.concat"
d354 v0 v1 v2 v3 v4 = du354 v1 v4
du354 v0 v1
  = case coe v1 of
      C14 -> coe v1
      C22 v2 v3 v4 -> coe du130 (coe mulInt v2 v0) v3 (coe du354 v0 v4)
      _ -> coe MAlonzo.RTE.mazUnreachableError
name374 = "Data.Vec.splitAt"
d374 v0 v1 v2 v3 v4 = du374 v2 v4
du374 v0 v1
  = case coe v0 of
      0 -> coe
             MAlonzo.Code.Data.Product.C30 C14
             (coe MAlonzo.Code.Data.Product.C30 v1 erased)
      _ -> let v2 = coe subInt v0 (1 :: Integer) in
           case coe v1 of
             C22 v3 v4 v5
               -> let v6 = coe du374 v2 v5 in
                  case coe v6 of
                    MAlonzo.Code.Data.Product.C30 v7 v8
                      -> case coe v8 of
                           MAlonzo.Code.Data.Product.C30 v9 v10
                             -> coe
                                  MAlonzo.Code.Data.Product.C30 (coe C22 v2 v4 v7)
                                  (coe MAlonzo.Code.Data.Product.C30 v9 erased)
                           _ -> coe MAlonzo.RTE.mazUnreachableError
                    _ -> coe MAlonzo.RTE.mazUnreachableError
             _ -> coe MAlonzo.RTE.mazUnreachableError
name404 = "Data.Vec.take"
d404 v0 v1 v2 v3 v4 = du404 v2 v4
du404 v0 v1
  = let v2 = coe du374 v0 v1 in
    case coe v2 of
      MAlonzo.Code.Data.Product.C30 v3 v4
        -> case coe v4 of
             MAlonzo.Code.Data.Product.C30 v5 v6 -> coe v3
             _ -> coe MAlonzo.RTE.mazUnreachableError
      _ -> coe MAlonzo.RTE.mazUnreachableError
name428 = "Data.Vec.drop"
d428 v0 v1 v2 v3 v4 = du428 v2 v4
du428 v0 v1
  = let v2 = coe du374 v0 v1 in
    case coe v2 of
      MAlonzo.Code.Data.Product.C30 v3 v4
        -> case coe v4 of
             MAlonzo.Code.Data.Product.C30 v5 v6 -> coe v5
             _ -> coe MAlonzo.RTE.mazUnreachableError
      _ -> coe MAlonzo.RTE.mazUnreachableError
name456 = "Data.Vec.group"
d456 v0 v1 v2 v3 v4 = du456 v2 v3 v4
du456 v0 v1 v2
  = case coe v0 of
      0 -> coe seq v2 (coe MAlonzo.Code.Data.Product.C30 C14 erased)
      _ -> let v3 = coe subInt v0 (1 :: Integer) in
           let v4 = coe du374 v1 v2 in
           case coe v4 of
             MAlonzo.Code.Data.Product.C30 v5 v6
               -> case coe v6 of
                    MAlonzo.Code.Data.Product.C30 v7 v8
                      -> let v9 = coe du456 v3 v1 v7 in
                         case coe v9 of
                           MAlonzo.Code.Data.Product.C30 v10 v11
                             -> coe MAlonzo.Code.Data.Product.C30 (coe C22 v3 v5 v10) erased
                           _ -> coe MAlonzo.RTE.mazUnreachableError
                    _ -> coe MAlonzo.RTE.mazUnreachableError
             _ -> coe MAlonzo.RTE.mazUnreachableError
name496 = "Data.Vec.split"
d496 v0 v1 v2 v3 = du496 v3
du496 v0
  = case coe v0 of
      C14 -> coe MAlonzo.Code.Data.Product.C30 v0 v0
      C22 v1 v2 v3
        -> case coe v3 of
             C14
               -> coe
                    MAlonzo.Code.Data.Product.C30 (coe C22 (0 :: Integer) v2 v3) v3
             C22 v4 v5 v6
               -> coe
                    MAlonzo.Code.Data.Product.du188
                    (coe C22 (coe MAlonzo.Code.Data.Nat.Base.d220 v4) v2)
                    (\ v7 -> coe C22 (coe MAlonzo.Code.Data.Nat.Base.d216 v4) v5)
                    (coe du496 v6)
             _ -> coe MAlonzo.RTE.mazUnreachableError
      _ -> coe MAlonzo.RTE.mazUnreachableError
name512 = "Data.Vec.reverse"
d512 v0 v1 v2 = du512
du512 = coe du312 (\ v0 v1 v2 -> coe C22 v0 v2 v1) C14
name522 = "Data.Vec.sum"
d522 v0 = du522
du522 = coe du262 (\ v0 -> addInt) (0 :: Integer)
name530 = "Data.Vec.toList"
d530 v0 v1 v2 v3 = du530 v3
du530 v0
  = case coe v0 of
      C14 -> coe []
      C22 v1 v2 v3 -> coe (:) v2 (coe du530 v3)
      _ -> coe MAlonzo.RTE.mazUnreachableError
name542 = "Data.Vec.fromList"
d542 v0 v1 v2 = du542 v2
du542 v0
  = case coe v0 of
      [] -> coe C14
      (:) v1 v2
        -> coe
             C22 (coe MAlonzo.Code.Data.List.Base.du226 v2) v1 (coe du542 v2)
      _ -> coe MAlonzo.RTE.mazUnreachableError
name554 = "Data.Vec._\8759\691_"
d554 v0 v1 v2 v3 v4 = du554 v3 v4
du554 v0 v1
  = case coe v0 of
      C14 -> coe du118 v1
      C22 v2 v3 v4
        -> coe C22 (coe addInt (1 :: Integer) v2) v3 (coe du554 v4 v1)
      _ -> coe MAlonzo.RTE.mazUnreachableError
name576 = "Data.Vec.initLast"
d576 v0 v1 v2 v3 = du576 v1 v3
du576 v0 v1
  = case coe v0 of
      0 -> case coe v1 of
             C22 v2 v3 v4
               -> coe
                    seq v4
                    (coe
                       MAlonzo.Code.Data.Product.C30 C14
                       (coe MAlonzo.Code.Data.Product.C30 v3 erased))
             _ -> coe MAlonzo.RTE.mazUnreachableError
      _ -> let v2 = coe subInt v0 (1 :: Integer) in
           case coe v1 of
             C22 v3 v4 v5
               -> let v6 = coe du576 v2 v5 in
                  case coe v6 of
                    MAlonzo.Code.Data.Product.C30 v7 v8
                      -> case coe v8 of
                           MAlonzo.Code.Data.Product.C30 v9 v10
                             -> coe
                                  MAlonzo.Code.Data.Product.C30 (coe C22 v2 v4 v7)
                                  (coe MAlonzo.Code.Data.Product.C30 v9 erased)
                           _ -> coe MAlonzo.RTE.mazUnreachableError
                    _ -> coe MAlonzo.RTE.mazUnreachableError
             _ -> coe MAlonzo.RTE.mazUnreachableError
name604 = "Data.Vec.init"
d604 v0 v1 v2 v3 = du604 v1 v3
du604 v0 v1
  = let v2 = coe du576 v0 v1 in
    case coe v2 of
      MAlonzo.Code.Data.Product.C30 v3 v4
        -> case coe v4 of
             MAlonzo.Code.Data.Product.C30 v5 v6 -> coe v3
             _ -> coe MAlonzo.RTE.mazUnreachableError
      _ -> coe MAlonzo.RTE.mazUnreachableError
name622 = "Data.Vec.last"
d622 v0 v1 v2 v3 = du622 v1 v3
du622 v0 v1
  = let v2 = coe du576 v0 v1 in
    case coe v2 of
      MAlonzo.Code.Data.Product.C30 v3 v4
        -> case coe v4 of
             MAlonzo.Code.Data.Product.C30 v5 v6 -> coe v5
             _ -> coe MAlonzo.RTE.mazUnreachableError
      _ -> coe MAlonzo.RTE.mazUnreachableError
name646 = "Data.Vec._>>=_"
d646 v0 v1 v2 v3 v4 v5 v6 v7 = du646 v2 v3 v6 v7
du646 v0 v1 v2 v3 = coe du354 v1 (coe du192 v0 v3 v2)
name664 = "Data.Vec._\8859*_"
d664 v0 v1 v2 v3 v4 v5 v6 v7 = du664 v2 v3 v6 v7
du664 v0 v1 v2 v3 = coe du646 v0 v1 v2 (\ v4 -> coe du192 v1 v4 v3)
name684 = "Data.Vec.allPairs"
d684 v0 v1 v2 v3 v4 v5 v6 v7 = du684 v4 v5 v6 v7
du684 v0 v1 v2 v3
  = coe
      du664 v0 v1 (coe du192 v0 MAlonzo.Code.Data.Product.C30 v2) v3
name698 = "Data.Vec._\8910_"
d698 v0 v1 v2 v3 v4 v5 = du698 v2 v4 v5
du698 v0 v1 v2
  = case coe v1 of
      C14 -> coe v2
      C22 v3 v4 v5
        -> coe
             C22 (coe MAlonzo.Code.Data.Nat.Base.d188 v0 v3) v4
             (coe du698 v3 v2 v5)
      _ -> coe MAlonzo.RTE.mazUnreachableError
name714 = "Data.Vec.lookup"
d714 v0 v1 v2 v3 v4 = du714 v3 v4
du714 v0 v1
  = case coe v0 of
      MAlonzo.Code.Data.Fin.C8 v2
        -> case coe v1 of
             C22 v3 v4 v5 -> coe v4
             _ -> coe MAlonzo.RTE.mazUnreachableError
      MAlonzo.Code.Data.Fin.C14 v2 v3
        -> case coe v1 of
             C22 v4 v5 v6 -> coe du714 v3 v6
             _ -> coe MAlonzo.RTE.mazUnreachableError
      _ -> coe MAlonzo.RTE.mazUnreachableError
name732 = "Data.Vec.tabulate"
d732 v0 v1 v2 v3 = du732 v0 v3
du732 v0 v1
  = case coe v0 of
      0 -> coe C14
      _ -> let v2 = coe subInt v0 (1 :: Integer) in
           coe
             C22 v2 (coe v1 (coe MAlonzo.Code.Data.Fin.C8 v2))
             (coe
                du732 v2
                (coe
                   MAlonzo.Code.Function.du38 (\ v3 -> v1)
                   (coe MAlonzo.Code.Data.Fin.C14 v2)))
name746 = "Data.Vec._[_]\8788_"
d746 v0 v1 v2 v3 v4 v5 = du746 v3 v4 v5
du746 v0 v1 v2
  = case coe v1 of
      MAlonzo.Code.Data.Fin.C8 v3
        -> case coe v0 of
             C22 v4 v5 v6 -> coe C22 v4 v2 v6
             _ -> coe MAlonzo.RTE.mazUnreachableError
      MAlonzo.Code.Data.Fin.C14 v3 v4
        -> case coe v0 of
             C22 v5 v6 v7 -> coe C22 v5 v6 (coe du746 v7 v4 v2)
             _ -> coe MAlonzo.RTE.mazUnreachableError
      _ -> coe MAlonzo.RTE.mazUnreachableError
name764 = "Data.Vec.allFin"
d764 v0 = coe du732 v0 (\ v1 -> v1)