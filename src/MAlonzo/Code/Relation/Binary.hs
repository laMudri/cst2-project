{-# LANGUAGE EmptyDataDecls, ExistentialQuantification,
             ScopedTypeVariables, NoMonomorphismRestriction, Rank2Types #-}
module MAlonzo.Code.Relation.Binary where

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
import qualified MAlonzo.Code.Relation.Binary.Consequences
import qualified MAlonzo.Code.Relation.Binary.Core
import qualified MAlonzo.Code.Relation.Binary.Indexed.Core
import qualified MAlonzo.Code.Relation.Binary.PropositionalEquality.Core

name16 = "Relation.Binary.IsPreorder"
d16 a0 a1 a2 a3 a4 a5 = ()
data T16 a0 a1 a2 = C17 a0 a1 a2
name36 = "Relation.Binary.IsPreorder.isEquivalence"
d36 v0
  = case coe v0 of
      C17 v1 v2 v3 -> coe v1
      _ -> coe MAlonzo.RTE.mazUnreachableError
name38 = "Relation.Binary.IsPreorder.reflexive"
d38 v0
  = case coe v0 of
      C17 v1 v2 v3 -> coe v2
      _ -> coe MAlonzo.RTE.mazUnreachableError
name40 = "Relation.Binary.IsPreorder.trans"
d40 v0
  = case coe v0 of
      C17 v1 v2 v3 -> coe v3
      _ -> coe MAlonzo.RTE.mazUnreachableError
name44 = "Relation.Binary.IsPreorder.Eq.refl"
d44 v0 = coe MAlonzo.Code.Relation.Binary.Core.d516 (coe d36 v0)
name46 = "Relation.Binary.IsPreorder.Eq.reflexive"
d46 v0 v1 v2 v3 v4 v5 v6 = du46 v6
du46 v0 v1 v2 v3
  = coe MAlonzo.Code.Relation.Binary.Core.du522 (coe d36 v0) v1
name48 = "Relation.Binary.IsPreorder.Eq.sym"
d48 v0 = coe MAlonzo.Code.Relation.Binary.Core.d518 (coe d36 v0)
name50 = "Relation.Binary.IsPreorder.Eq.trans"
d50 v0 = coe MAlonzo.Code.Relation.Binary.Core.d520 (coe d36 v0)
name52 = "Relation.Binary.IsPreorder.refl"
d52 v0 v1
  = coe
      d38 v0 v1 v1
      (coe MAlonzo.Code.Relation.Binary.Core.d516 (coe d36 v0) v1)
name54 = "Relation.Binary.IsPreorder.\8764-resp-\8776"
d54 v0 v1 v2 v3 v4 v5 v6 = du54 v6
du54 v0
  = coe
      MAlonzo.Code.Data.Product.C30
      (\ v1 v2 v3 v4 v5 -> coe d40 v0 v1 v2 v3 v5 (coe d38 v0 v2 v3 v4))
      (\ v1 v2 v3 v4 ->
         coe
           d40 v0 v3 v2 v1
           (coe
              MAlonzo.Code.Function.du158 (coe d38 v0 v3 v2)
              (coe
                 MAlonzo.Code.Relation.Binary.Core.d518 (coe d36 v0) v2 v3 v4)))
name70 = "Relation.Binary.Preorder"
d70 a0 a1 a2 = ()
newtype T70 a0 a1 a2 a3 = C125 a0
name86 = "Relation.Binary.Preorder.Carrier"
d86 = erased
name88 = "Relation.Binary.Preorder._\8776_"
d88 = erased
name90 = "Relation.Binary.Preorder._\8764_"
d90 = erased
name92 = "Relation.Binary.Preorder.isPreorder"
d92 v0
  = case coe v0 of
      C125 v4 -> coe v4
      _ -> coe MAlonzo.RTE.mazUnreachableError
name96 = "Relation.Binary.Preorder._.isEquivalence"
d96 v0 = coe d36 (coe d92 v0)
name98 = "Relation.Binary.Preorder._.refl"
d98 v0 v1
  = coe
      d38 (coe d92 v0) v1 v1
      (coe
         MAlonzo.Code.Relation.Binary.Core.d516 (coe d36 (coe d92 v0)) v1)
name100 = "Relation.Binary.Preorder._.reflexive"
d100 v0 = coe d38 (coe d92 v0)
name102 = "Relation.Binary.Preorder._.trans"
d102 v0 = coe d40 (coe d92 v0)
name104 = "Relation.Binary.Preorder._.\8764-resp-\8776"
d104 v0 v1 v2 v3 = du104 v3
du104 v0 = coe du54 (coe d92 v0)
name108 = "Relation.Binary.Preorder._.Eq.refl"
d108 v0
  = coe MAlonzo.Code.Relation.Binary.Core.d516 (coe d36 (coe d92 v0))
name110 = "Relation.Binary.Preorder._.Eq.reflexive"
d110 v0 v1 v2 v3 = du110 v3
du110 v0
  = let v1 = coe d92 v0 in
    \ v2 v3 v4 ->
      coe MAlonzo.Code.Relation.Binary.Core.du522 (coe d36 v1) v2
name112 = "Relation.Binary.Preorder._.Eq.sym"
d112 v0
  = coe MAlonzo.Code.Relation.Binary.Core.d518 (coe d36 (coe d92 v0))
name114 = "Relation.Binary.Preorder._.Eq.trans"
d114 v0
  = coe MAlonzo.Code.Relation.Binary.Core.d520 (coe d36 (coe d92 v0))
name120 = "Relation.Binary.Setoid"
d120 a0 a1 = ()
newtype T120 a0 a1 a2 = C143 a0
name132 = "Relation.Binary.Setoid.Carrier"
d132 = erased
name134 = "Relation.Binary.Setoid._\8776_"
d134 = erased
name136 = "Relation.Binary.Setoid.isEquivalence"
d136 v0
  = case coe v0 of
      C143 v3 -> coe v3
      _ -> coe MAlonzo.RTE.mazUnreachableError
name140 = "Relation.Binary.Setoid._.refl"
d140 v0 = coe MAlonzo.Code.Relation.Binary.Core.d516 (coe d136 v0)
name142 = "Relation.Binary.Setoid._.reflexive"
d142 v0 v1 v2 = du142 v2
du142 v0 v1 v2 v3
  = coe MAlonzo.Code.Relation.Binary.Core.du522 (coe d136 v0) v1
name144 = "Relation.Binary.Setoid._.sym"
d144 v0 = coe MAlonzo.Code.Relation.Binary.Core.d518 (coe d136 v0)
name146 = "Relation.Binary.Setoid._.trans"
d146 v0 = coe MAlonzo.Code.Relation.Binary.Core.d520 (coe d136 v0)
name148 = "Relation.Binary.Setoid.isPreorder"
d148 v0 v1 v2 = du148 v2
du148 v0
  = coe
      C17 MAlonzo.Code.Relation.Binary.PropositionalEquality.Core.du50
      (\ v1 v2 v3 ->
         coe MAlonzo.Code.Relation.Binary.Core.du522 (coe d136 v0) v1)
      (coe MAlonzo.Code.Relation.Binary.Core.d520 (coe d136 v0))
name150 = "Relation.Binary.Setoid.preorder"
d150 v0 v1 v2 = du150 v2
du150 v0 = coe C125 (coe du148 v0)
name156 = "Relation.Binary.Setoid.indexedSetoid"
d156 v0 v1 v2 = du156 v0
du156 v0
  = coe
      MAlonzo.Code.Relation.Binary.Indexed.Core.C459
      (coe
         MAlonzo.Code.Relation.Binary.Indexed.Core.C243
         (\ v1 -> coe MAlonzo.Code.Relation.Binary.Core.d516 (coe d136 v0))
         (\ v1 v2 ->
            coe MAlonzo.Code.Relation.Binary.Core.d518 (coe d136 v0))
         (\ v1 v2 v3 ->
            coe MAlonzo.Code.Relation.Binary.Core.d520 (coe d136 v0)))
name168 = "Relation.Binary.IsDecEquivalence"
d168 a0 a1 a2 a3 = ()
data T168 a0 a1 = C273 a0 a1
name182 = "Relation.Binary.IsDecEquivalence.isEquivalence"
d182 v0
  = case coe v0 of
      C273 v1 v2 -> coe v1
      _ -> coe MAlonzo.RTE.mazUnreachableError
name184 = "Relation.Binary.IsDecEquivalence._\8799_"
d184 v0
  = case coe v0 of
      C273 v1 v2 -> coe v2
      _ -> coe MAlonzo.RTE.mazUnreachableError
name188 = "Relation.Binary.IsDecEquivalence._.refl"
d188 v0 = coe MAlonzo.Code.Relation.Binary.Core.d516 (coe d182 v0)
name190 = "Relation.Binary.IsDecEquivalence._.reflexive"
d190 v0 v1 v2 v3 v4 = du190 v4
du190 v0 v1 v2 v3
  = coe MAlonzo.Code.Relation.Binary.Core.du522 (coe d182 v0) v1
name192 = "Relation.Binary.IsDecEquivalence._.sym"
d192 v0 = coe MAlonzo.Code.Relation.Binary.Core.d518 (coe d182 v0)
name194 = "Relation.Binary.IsDecEquivalence._.trans"
d194 v0 = coe MAlonzo.Code.Relation.Binary.Core.d520 (coe d182 v0)
name200 = "Relation.Binary.DecSetoid"
d200 a0 a1 = ()
newtype T200 a0 a1 a2 = C287 a0
name212 = "Relation.Binary.DecSetoid.Carrier"
d212 = erased
name214 = "Relation.Binary.DecSetoid._\8776_"
d214 = erased
name216 = "Relation.Binary.DecSetoid.isDecEquivalence"
d216 v0
  = case coe v0 of
      C287 v3 -> coe v3
      _ -> coe MAlonzo.RTE.mazUnreachableError
name220 = "Relation.Binary.DecSetoid._._\8799_"
d220 v0 = coe d184 (coe d216 v0)
name222 = "Relation.Binary.DecSetoid._.isEquivalence"
d222 v0 = coe d182 (coe d216 v0)
name224 = "Relation.Binary.DecSetoid._.refl"
d224 v0
  = coe
      MAlonzo.Code.Relation.Binary.Core.d516 (coe d182 (coe d216 v0))
name226 = "Relation.Binary.DecSetoid._.reflexive"
d226 v0 v1 v2 = du226 v2
du226 v0
  = let v1 = coe d216 v0 in
    \ v2 v3 v4 ->
      coe MAlonzo.Code.Relation.Binary.Core.du522 (coe d182 v1) v2
name228 = "Relation.Binary.DecSetoid._.sym"
d228 v0
  = coe
      MAlonzo.Code.Relation.Binary.Core.d518 (coe d182 (coe d216 v0))
name230 = "Relation.Binary.DecSetoid._.trans"
d230 v0
  = coe
      MAlonzo.Code.Relation.Binary.Core.d520 (coe d182 (coe d216 v0))
name232 = "Relation.Binary.DecSetoid.setoid"
d232 v0 = coe C143 (coe d182 (coe d216 v0))
name236 = "Relation.Binary.DecSetoid._.preorder"
d236 v0 v1 v2 = du236 v2
du236 v0 = coe du150 (coe C143 (coe d182 (coe d216 v0)))
name250 = "Relation.Binary.IsPartialOrder"
d250 a0 a1 a2 a3 a4 a5 = ()
data T250 a0 a1 = C327 a0 a1
name268 = "Relation.Binary.IsPartialOrder.isPreorder"
d268 v0
  = case coe v0 of
      C327 v1 v2 -> coe v1
      _ -> coe MAlonzo.RTE.mazUnreachableError
name270 = "Relation.Binary.IsPartialOrder.antisym"
d270 v0
  = case coe v0 of
      C327 v1 v2 -> coe v2
      _ -> coe MAlonzo.RTE.mazUnreachableError
name274 = "Relation.Binary.IsPartialOrder._.isEquivalence"
d274 v0 = coe d36 (coe d268 v0)
name276 = "Relation.Binary.IsPartialOrder._.refl"
d276 v0 v1
  = coe
      d38 (coe d268 v0) v1 v1
      (coe
         MAlonzo.Code.Relation.Binary.Core.d516 (coe d36 (coe d268 v0)) v1)
name278 = "Relation.Binary.IsPartialOrder._.reflexive"
d278 v0 = coe d38 (coe d268 v0)
name280 = "Relation.Binary.IsPartialOrder._.trans"
d280 v0 = coe d40 (coe d268 v0)
name282 = "Relation.Binary.IsPartialOrder._.\8764-resp-\8776"
d282 v0 v1 v2 v3 v4 v5 v6 = du282 v6
du282 v0 = coe du54 (coe d268 v0)
name286 = "Relation.Binary.IsPartialOrder._.Eq.refl"
d286 v0
  = coe
      MAlonzo.Code.Relation.Binary.Core.d516 (coe d36 (coe d268 v0))
name288 = "Relation.Binary.IsPartialOrder._.Eq.reflexive"
d288 v0 v1 v2 v3 v4 v5 v6 = du288 v6
du288 v0
  = let v1 = coe d268 v0 in
    \ v2 v3 v4 ->
      coe MAlonzo.Code.Relation.Binary.Core.du522 (coe d36 v1) v2
name290 = "Relation.Binary.IsPartialOrder._.Eq.sym"
d290 v0
  = coe
      MAlonzo.Code.Relation.Binary.Core.d518 (coe d36 (coe d268 v0))
name292 = "Relation.Binary.IsPartialOrder._.Eq.trans"
d292 v0
  = coe
      MAlonzo.Code.Relation.Binary.Core.d520 (coe d36 (coe d268 v0))
name300 = "Relation.Binary.Poset"
d300 a0 a1 a2 = ()
newtype T300 a0 a1 a2 a3 = C345 a0
name316 = "Relation.Binary.Poset.Carrier"
d316 = erased
name318 = "Relation.Binary.Poset._\8776_"
d318 = erased
name320 = "Relation.Binary.Poset._\8804_"
d320 = erased
name322 = "Relation.Binary.Poset.isPartialOrder"
d322 v0
  = case coe v0 of
      C345 v4 -> coe v4
      _ -> coe MAlonzo.RTE.mazUnreachableError
name326 = "Relation.Binary.Poset._.antisym"
d326 v0 = coe d270 (coe d322 v0)
name328 = "Relation.Binary.Poset._.isEquivalence"
d328 v0 = coe d36 (coe d268 (coe d322 v0))
name330 = "Relation.Binary.Poset._.isPreorder"
d330 v0 = coe d268 (coe d322 v0)
name332 = "Relation.Binary.Poset._.refl"
d332 v0 v1
  = coe
      d38 (coe d268 (coe d322 v0)) v1 v1
      (coe
         MAlonzo.Code.Relation.Binary.Core.d516
         (coe d36 (coe d268 (coe d322 v0))) v1)
name334 = "Relation.Binary.Poset._.reflexive"
d334 v0 = coe d38 (coe d268 (coe d322 v0))
name336 = "Relation.Binary.Poset._.trans"
d336 v0 = coe d40 (coe d268 (coe d322 v0))
name338 = "Relation.Binary.Poset._.\8764-resp-\8776"
d338 v0 v1 v2 v3 = du338 v3
du338 v0 = let v1 = coe d322 v0 in coe du54 (coe d268 v1)
name342 = "Relation.Binary.Poset._.Eq.refl"
d342 v0
  = coe
      MAlonzo.Code.Relation.Binary.Core.d516
      (coe d36 (coe d268 (coe d322 v0)))
name344 = "Relation.Binary.Poset._.Eq.reflexive"
d344 v0 v1 v2 v3 = du344 v3
du344 v0
  = let v1 = coe d322 v0 in
    let v2 = coe d268 v1 in
    \ v3 v4 v5 ->
      coe MAlonzo.Code.Relation.Binary.Core.du522 (coe d36 v2) v3
name346 = "Relation.Binary.Poset._.Eq.sym"
d346 v0
  = coe
      MAlonzo.Code.Relation.Binary.Core.d518
      (coe d36 (coe d268 (coe d322 v0)))
name348 = "Relation.Binary.Poset._.Eq.trans"
d348 v0
  = coe
      MAlonzo.Code.Relation.Binary.Core.d520
      (coe d36 (coe d268 (coe d322 v0)))
name350 = "Relation.Binary.Poset.preorder"
d350 v0 = coe C125 (coe d268 (coe d322 v0))
name364 = "Relation.Binary.IsDecPartialOrder"
d364 a0 a1 a2 a3 a4 a5 = ()
data T364 a0 a1 a2 = C391 a0 a1 a2
name384 = "Relation.Binary.IsDecPartialOrder.isPartialOrder"
d384 v0
  = case coe v0 of
      C391 v1 v2 v3 -> coe v1
      _ -> coe MAlonzo.RTE.mazUnreachableError
name386 = "Relation.Binary.IsDecPartialOrder._\8799_"
d386 v0
  = case coe v0 of
      C391 v1 v2 v3 -> coe v2
      _ -> coe MAlonzo.RTE.mazUnreachableError
name388 = "Relation.Binary.IsDecPartialOrder._\8804?_"
d388 v0
  = case coe v0 of
      C391 v1 v2 v3 -> coe v3
      _ -> coe MAlonzo.RTE.mazUnreachableError
name392 = "Relation.Binary.IsDecPartialOrder.PO.antisym"
d392 v0 = coe d270 (coe d384 v0)
name394 = "Relation.Binary.IsDecPartialOrder.PO.isEquivalence"
d394 v0 = coe d36 (coe d268 (coe d384 v0))
name396 = "Relation.Binary.IsDecPartialOrder.PO.isPreorder"
d396 v0 = coe d268 (coe d384 v0)
name398 = "Relation.Binary.IsDecPartialOrder.PO.refl"
d398 v0 v1
  = coe
      d38 (coe d268 (coe d384 v0)) v1 v1
      (coe
         MAlonzo.Code.Relation.Binary.Core.d516
         (coe d36 (coe d268 (coe d384 v0))) v1)
name400 = "Relation.Binary.IsDecPartialOrder.PO.reflexive"
d400 v0 = coe d38 (coe d268 (coe d384 v0))
name402 = "Relation.Binary.IsDecPartialOrder.PO.trans"
d402 v0 = coe d40 (coe d268 (coe d384 v0))
name404 = "Relation.Binary.IsDecPartialOrder.PO.\8764-resp-\8776"
d404 v0 v1 v2 v3 v4 v5 v6 = du404 v6
du404 v0 = let v1 = coe d384 v0 in coe du54 (coe d268 v1)
name418 = "Relation.Binary.IsDecPartialOrder.Eq.isDecEquivalence"
d418 v0 = coe C273 (coe d36 (coe d268 (coe d384 v0))) (coe d386 v0)
name422 = "Relation.Binary.IsDecPartialOrder.Eq._._\8799_"
d422 v0 = coe d386 v0
name424 = "Relation.Binary.IsDecPartialOrder.Eq._.isEquivalence"
d424 v0 = coe d36 (coe d268 (coe d384 v0))
name426 = "Relation.Binary.IsDecPartialOrder.Eq._.refl"
d426 v0
  = coe
      MAlonzo.Code.Relation.Binary.Core.d516
      (coe d36 (coe d268 (coe d384 v0)))
name428 = "Relation.Binary.IsDecPartialOrder.Eq._.reflexive"
d428 v0 v1 v2 v3 v4 v5 v6 = du428 v6
du428 v0
  = let v1
          = coe C273 (coe d36 (coe d268 (coe d384 v0))) (coe d386 v0) in
    \ v2 v3 v4 ->
      coe MAlonzo.Code.Relation.Binary.Core.du522 (coe d182 v1) v2
name430 = "Relation.Binary.IsDecPartialOrder.Eq._.sym"
d430 v0
  = coe
      MAlonzo.Code.Relation.Binary.Core.d518
      (coe d36 (coe d268 (coe d384 v0)))
name432 = "Relation.Binary.IsDecPartialOrder.Eq._.trans"
d432 v0
  = coe
      MAlonzo.Code.Relation.Binary.Core.d520
      (coe d36 (coe d268 (coe d384 v0)))
name440 = "Relation.Binary.DecPoset"
d440 a0 a1 a2 = ()
newtype T440 a0 a1 a2 a3 = C443 a0
name456 = "Relation.Binary.DecPoset.Carrier"
d456 = erased
name458 = "Relation.Binary.DecPoset._\8776_"
d458 = erased
name460 = "Relation.Binary.DecPoset._\8804_"
d460 = erased
name462 = "Relation.Binary.DecPoset.isDecPartialOrder"
d462 v0
  = case coe v0 of
      C443 v4 -> coe v4
      _ -> coe MAlonzo.RTE.mazUnreachableError
name466 = "Relation.Binary.DecPoset.DPO._\8799_"
d466 v0 = coe d386 (coe d462 v0)
name468 = "Relation.Binary.DecPoset.DPO._\8804?_"
d468 v0 = coe d388 (coe d462 v0)
name470 = "Relation.Binary.DecPoset.DPO.antisym"
d470 v0 = coe d270 (coe d384 (coe d462 v0))
name472 = "Relation.Binary.DecPoset.DPO.isEquivalence"
d472 v0 = coe d36 (coe d268 (coe d384 (coe d462 v0)))
name474 = "Relation.Binary.DecPoset.DPO.isPartialOrder"
d474 v0 = coe d384 (coe d462 v0)
name476 = "Relation.Binary.DecPoset.DPO.isPreorder"
d476 v0 = coe d268 (coe d384 (coe d462 v0))
name478 = "Relation.Binary.DecPoset.DPO.refl"
d478 v0 v1
  = coe
      d38 (coe d268 (coe d384 (coe d462 v0))) v1 v1
      (coe
         MAlonzo.Code.Relation.Binary.Core.d516
         (coe d36 (coe d268 (coe d384 (coe d462 v0)))) v1)
name480 = "Relation.Binary.DecPoset.DPO.reflexive"
d480 v0 = coe d38 (coe d268 (coe d384 (coe d462 v0)))
name482 = "Relation.Binary.DecPoset.DPO.trans"
d482 v0 = coe d40 (coe d268 (coe d384 (coe d462 v0)))
name484 = "Relation.Binary.DecPoset.DPO.\8764-resp-\8776"
d484 v0 v1 v2 v3 = du484 v3
du484 v0
  = let v1 = coe d462 v0 in
    let v2 = coe d384 v1 in coe du54 (coe d268 v2)
name490 = "Relation.Binary.DecPoset.DPO.Eq.isDecEquivalence"
d490 v0
  = coe
      C273 (coe d36 (coe d268 (coe d384 (coe d462 v0))))
      (coe d386 (coe d462 v0))
name502 = "Relation.Binary.DecPoset.poset"
d502 v0 = coe C345 (coe d384 (coe d462 v0))
name506 = "Relation.Binary.DecPoset._.preorder"
d506 v0 = coe C125 (coe d268 (coe d384 (coe d462 v0)))
name510 = "Relation.Binary.DecPoset.Eq.decSetoid"
d510 v0
  = coe
      C287
      (coe
         C273 (coe d36 (coe d268 (coe d384 (coe d462 v0))))
         (coe d386 (coe d462 v0)))
name514 = "Relation.Binary.DecPoset.Eq._._\8776_"
d514 = erased
name516 = "Relation.Binary.DecPoset.Eq._._\8799_"
d516 v0 = coe d386 (coe d462 v0)
name518 = "Relation.Binary.DecPoset.Eq._.Carrier"
d518 = erased
name520 = "Relation.Binary.DecPoset.Eq._.isDecEquivalence"
d520 v0
  = coe
      C273 (coe d36 (coe d268 (coe d384 (coe d462 v0))))
      (coe d386 (coe d462 v0))
name522 = "Relation.Binary.DecPoset.Eq._.isEquivalence"
d522 v0 = coe d36 (coe d268 (coe d384 (coe d462 v0)))
name524 = "Relation.Binary.DecPoset.Eq._.preorder"
d524 v0 v1 v2 v3 = du524 v3
du524 v0
  = let v1
          = coe
              C287
              (coe
                 C273 (coe d36 (coe d268 (coe d384 (coe d462 v0))))
                 (coe d386 (coe d462 v0))) in
    coe du150 (coe C143 (coe d182 (coe d216 v1)))
name526 = "Relation.Binary.DecPoset.Eq._.refl"
d526 v0
  = coe
      MAlonzo.Code.Relation.Binary.Core.d516
      (coe d36 (coe d268 (coe d384 (coe d462 v0))))
name528 = "Relation.Binary.DecPoset.Eq._.reflexive"
d528 v0 v1 v2 v3 = du528 v3
du528 v0
  = let v1
          = coe
              C287
              (coe
                 C273 (coe d36 (coe d268 (coe d384 (coe d462 v0))))
                 (coe d386 (coe d462 v0))) in
    let v2 = coe d216 v1 in
    \ v3 v4 v5 ->
      coe MAlonzo.Code.Relation.Binary.Core.du522 (coe d182 v2) v3
name530 = "Relation.Binary.DecPoset.Eq._.setoid"
d530 v0 = coe C143 (coe d36 (coe d268 (coe d384 (coe d462 v0))))
name532 = "Relation.Binary.DecPoset.Eq._.sym"
d532 v0
  = coe
      MAlonzo.Code.Relation.Binary.Core.d518
      (coe d36 (coe d268 (coe d384 (coe d462 v0))))
name534 = "Relation.Binary.DecPoset.Eq._.trans"
d534 v0
  = coe
      MAlonzo.Code.Relation.Binary.Core.d520
      (coe d36 (coe d268 (coe d384 (coe d462 v0))))
name548 = "Relation.Binary.IsStrictPartialOrder"
d548 a0 a1 a2 a3 a4 a5 = ()
data T548 a0 a1 a2 a3 = C513 a0 a1 a2
name570 = "Relation.Binary.IsStrictPartialOrder.isEquivalence"
d570 v0
  = case coe v0 of
      C513 v1 v3 v4 -> coe v1
      _ -> coe MAlonzo.RTE.mazUnreachableError
name572 = "Relation.Binary.IsStrictPartialOrder.irrefl"
d572 = erased
name574 = "Relation.Binary.IsStrictPartialOrder.trans"
d574 v0
  = case coe v0 of
      C513 v1 v3 v4 -> coe v3
      _ -> coe MAlonzo.RTE.mazUnreachableError
name576 = "Relation.Binary.IsStrictPartialOrder.<-resp-\8776"
d576 v0
  = case coe v0 of
      C513 v1 v3 v4 -> coe v4
      _ -> coe MAlonzo.RTE.mazUnreachableError
name580 = "Relation.Binary.IsStrictPartialOrder.Eq.refl"
d580 v0 = coe MAlonzo.Code.Relation.Binary.Core.d516 (coe d570 v0)
name582 = "Relation.Binary.IsStrictPartialOrder.Eq.reflexive"
d582 v0 v1 v2 v3 v4 v5 v6 = du582 v6
du582 v0 v1 v2 v3
  = coe MAlonzo.Code.Relation.Binary.Core.du522 (coe d570 v0) v1
name584 = "Relation.Binary.IsStrictPartialOrder.Eq.sym"
d584 v0 = coe MAlonzo.Code.Relation.Binary.Core.d518 (coe d570 v0)
name586 = "Relation.Binary.IsStrictPartialOrder.Eq.trans"
d586 v0 = coe MAlonzo.Code.Relation.Binary.Core.d520 (coe d570 v0)
name594 = "Relation.Binary.StrictPartialOrder"
d594 a0 a1 a2 = ()
newtype T594 a0 a1 a2 a3 = C535 a0
name610 = "Relation.Binary.StrictPartialOrder.Carrier"
d610 = erased
name612 = "Relation.Binary.StrictPartialOrder._\8776_"
d612 = erased
name614 = "Relation.Binary.StrictPartialOrder._<_"
d614 = erased
name616 = "Relation.Binary.StrictPartialOrder.isStrictPartialOrder"
d616 v0
  = case coe v0 of
      C535 v4 -> coe v4
      _ -> coe MAlonzo.RTE.mazUnreachableError
name620 = "Relation.Binary.StrictPartialOrder._.<-resp-\8776"
d620 v0 = coe d576 (coe d616 v0)
name622 = "Relation.Binary.StrictPartialOrder._.irrefl"
d622 = erased
name624 = "Relation.Binary.StrictPartialOrder._.isEquivalence"
d624 v0 = coe d570 (coe d616 v0)
name626 = "Relation.Binary.StrictPartialOrder._.trans"
d626 v0 = coe d574 (coe d616 v0)
name630 = "Relation.Binary.StrictPartialOrder._.Eq.refl"
d630 v0
  = coe
      MAlonzo.Code.Relation.Binary.Core.d516 (coe d570 (coe d616 v0))
name632 = "Relation.Binary.StrictPartialOrder._.Eq.reflexive"
d632 v0 v1 v2 v3 = du632 v3
du632 v0
  = let v1 = coe d616 v0 in
    \ v2 v3 v4 ->
      coe MAlonzo.Code.Relation.Binary.Core.du522 (coe d570 v1) v2
name634 = "Relation.Binary.StrictPartialOrder._.Eq.sym"
d634 v0
  = coe
      MAlonzo.Code.Relation.Binary.Core.d518 (coe d570 (coe d616 v0))
name636 = "Relation.Binary.StrictPartialOrder._.Eq.trans"
d636 v0
  = coe
      MAlonzo.Code.Relation.Binary.Core.d520 (coe d570 (coe d616 v0))
name638 = "Relation.Binary.StrictPartialOrder.asymmetric"
d638 = erased
name656 = "Relation.Binary.IsDecStrictPartialOrder"
d656 a0 a1 a2 a3 a4 a5 = ()
data T656 a0 a1 a2 = C615 a0 a1 a2
name676
  = "Relation.Binary.IsDecStrictPartialOrder.isStrictPartialOrder"
d676 v0
  = case coe v0 of
      C615 v1 v2 v3 -> coe v1
      _ -> coe MAlonzo.RTE.mazUnreachableError
name678 = "Relation.Binary.IsDecStrictPartialOrder._\8799_"
d678 v0
  = case coe v0 of
      C615 v1 v2 v3 -> coe v2
      _ -> coe MAlonzo.RTE.mazUnreachableError
name680 = "Relation.Binary.IsDecStrictPartialOrder._<?_"
d680 v0
  = case coe v0 of
      C615 v1 v2 v3 -> coe v3
      _ -> coe MAlonzo.RTE.mazUnreachableError
name684
  = "Relation.Binary.IsDecStrictPartialOrder.SPO.<-resp-\8776"
d684 v0 = coe d576 (coe d676 v0)
name686 = "Relation.Binary.IsDecStrictPartialOrder.SPO.irrefl"
d686 = erased
name688
  = "Relation.Binary.IsDecStrictPartialOrder.SPO.isEquivalence"
d688 v0 = coe d570 (coe d676 v0)
name690 = "Relation.Binary.IsDecStrictPartialOrder.SPO.trans"
d690 v0 = coe d574 (coe d676 v0)
name704
  = "Relation.Binary.IsDecStrictPartialOrder.Eq.isDecEquivalence"
d704 v0 = coe C273 (coe d570 (coe d676 v0)) (coe d678 v0)
name708 = "Relation.Binary.IsDecStrictPartialOrder.Eq._._\8799_"
d708 v0 = coe d678 v0
name710
  = "Relation.Binary.IsDecStrictPartialOrder.Eq._.isEquivalence"
d710 v0 = coe d570 (coe d676 v0)
name712 = "Relation.Binary.IsDecStrictPartialOrder.Eq._.refl"
d712 v0
  = coe
      MAlonzo.Code.Relation.Binary.Core.d516 (coe d570 (coe d676 v0))
name714 = "Relation.Binary.IsDecStrictPartialOrder.Eq._.reflexive"
d714 v0 v1 v2 v3 v4 v5 v6 = du714 v6
du714 v0
  = let v1 = coe C273 (coe d570 (coe d676 v0)) (coe d678 v0) in
    \ v2 v3 v4 ->
      coe MAlonzo.Code.Relation.Binary.Core.du522 (coe d182 v1) v2
name716 = "Relation.Binary.IsDecStrictPartialOrder.Eq._.sym"
d716 v0
  = coe
      MAlonzo.Code.Relation.Binary.Core.d518 (coe d570 (coe d676 v0))
name718 = "Relation.Binary.IsDecStrictPartialOrder.Eq._.trans"
d718 v0
  = coe
      MAlonzo.Code.Relation.Binary.Core.d520 (coe d570 (coe d676 v0))
name726 = "Relation.Binary.DecStrictPartialOrder"
d726 a0 a1 a2 = ()
newtype T726 a0 a1 a2 a3 = C667 a0
name742 = "Relation.Binary.DecStrictPartialOrder.Carrier"
d742 = erased
name744 = "Relation.Binary.DecStrictPartialOrder._\8776_"
d744 = erased
name746 = "Relation.Binary.DecStrictPartialOrder._<_"
d746 = erased
name748
  = "Relation.Binary.DecStrictPartialOrder.isDecStrictPartialOrder"
d748 v0
  = case coe v0 of
      C667 v4 -> coe v4
      _ -> coe MAlonzo.RTE.mazUnreachableError
name752 = "Relation.Binary.DecStrictPartialOrder.DSPO._<?_"
d752 v0 = coe d680 (coe d748 v0)
name754 = "Relation.Binary.DecStrictPartialOrder.DSPO._\8799_"
d754 v0 = coe d678 (coe d748 v0)
name756 = "Relation.Binary.DecStrictPartialOrder.DSPO.<-resp-\8776"
d756 v0 = coe d576 (coe d676 (coe d748 v0))
name758 = "Relation.Binary.DecStrictPartialOrder.DSPO.irrefl"
d758 = erased
name760
  = "Relation.Binary.DecStrictPartialOrder.DSPO.isEquivalence"
d760 v0 = coe d570 (coe d676 (coe d748 v0))
name762
  = "Relation.Binary.DecStrictPartialOrder.DSPO.isStrictPartialOrder"
d762 v0 = coe d676 (coe d748 v0)
name764 = "Relation.Binary.DecStrictPartialOrder.DSPO.trans"
d764 v0 = coe d574 (coe d676 (coe d748 v0))
name770
  = "Relation.Binary.DecStrictPartialOrder.DSPO.Eq.isDecEquivalence"
d770 v0
  = coe
      C273 (coe d570 (coe d676 (coe d748 v0))) (coe d678 (coe d748 v0))
name782
  = "Relation.Binary.DecStrictPartialOrder.strictPartialOrder"
d782 v0 = coe C535 (coe d676 (coe d748 v0))
name786 = "Relation.Binary.DecStrictPartialOrder.Eq.decSetoid"
d786 v0
  = coe
      C287
      (coe
         C273 (coe d570 (coe d676 (coe d748 v0))) (coe d678 (coe d748 v0)))
name790 = "Relation.Binary.DecStrictPartialOrder.Eq._._\8776_"
d790 = erased
name792 = "Relation.Binary.DecStrictPartialOrder.Eq._._\8799_"
d792 v0 = coe d678 (coe d748 v0)
name794 = "Relation.Binary.DecStrictPartialOrder.Eq._.Carrier"
d794 = erased
name796
  = "Relation.Binary.DecStrictPartialOrder.Eq._.isDecEquivalence"
d796 v0
  = coe
      C273 (coe d570 (coe d676 (coe d748 v0))) (coe d678 (coe d748 v0))
name798
  = "Relation.Binary.DecStrictPartialOrder.Eq._.isEquivalence"
d798 v0 = coe d570 (coe d676 (coe d748 v0))
name800 = "Relation.Binary.DecStrictPartialOrder.Eq._.preorder"
d800 v0 v1 v2 v3 = du800 v3
du800 v0
  = let v1
          = coe
              C287
              (coe
                 C273 (coe d570 (coe d676 (coe d748 v0)))
                 (coe d678 (coe d748 v0))) in
    coe du150 (coe C143 (coe d182 (coe d216 v1)))
name802 = "Relation.Binary.DecStrictPartialOrder.Eq._.refl"
d802 v0
  = coe
      MAlonzo.Code.Relation.Binary.Core.d516
      (coe d570 (coe d676 (coe d748 v0)))
name804 = "Relation.Binary.DecStrictPartialOrder.Eq._.reflexive"
d804 v0 v1 v2 v3 = du804 v3
du804 v0
  = let v1
          = coe
              C287
              (coe
                 C273 (coe d570 (coe d676 (coe d748 v0)))
                 (coe d678 (coe d748 v0))) in
    let v2 = coe d216 v1 in
    \ v3 v4 v5 ->
      coe MAlonzo.Code.Relation.Binary.Core.du522 (coe d182 v2) v3
name806 = "Relation.Binary.DecStrictPartialOrder.Eq._.setoid"
d806 v0 = coe C143 (coe d570 (coe d676 (coe d748 v0)))
name808 = "Relation.Binary.DecStrictPartialOrder.Eq._.sym"
d808 v0
  = coe
      MAlonzo.Code.Relation.Binary.Core.d518
      (coe d570 (coe d676 (coe d748 v0)))
name810 = "Relation.Binary.DecStrictPartialOrder.Eq._.trans"
d810 v0
  = coe
      MAlonzo.Code.Relation.Binary.Core.d520
      (coe d570 (coe d676 (coe d748 v0)))
name824 = "Relation.Binary.IsTotalOrder"
d824 a0 a1 a2 a3 a4 a5 = ()
data T824 a0 a1 = C725 a0 a1
name842 = "Relation.Binary.IsTotalOrder.isPartialOrder"
d842 v0
  = case coe v0 of
      C725 v1 v2 -> coe v1
      _ -> coe MAlonzo.RTE.mazUnreachableError
name844 = "Relation.Binary.IsTotalOrder.total"
d844 v0
  = case coe v0 of
      C725 v1 v2 -> coe v2
      _ -> coe MAlonzo.RTE.mazUnreachableError
name848 = "Relation.Binary.IsTotalOrder._.antisym"
d848 v0 = coe d270 (coe d842 v0)
name850 = "Relation.Binary.IsTotalOrder._.isEquivalence"
d850 v0 = coe d36 (coe d268 (coe d842 v0))
name852 = "Relation.Binary.IsTotalOrder._.isPreorder"
d852 v0 = coe d268 (coe d842 v0)
name854 = "Relation.Binary.IsTotalOrder._.refl"
d854 v0 v1
  = coe
      d38 (coe d268 (coe d842 v0)) v1 v1
      (coe
         MAlonzo.Code.Relation.Binary.Core.d516
         (coe d36 (coe d268 (coe d842 v0))) v1)
name856 = "Relation.Binary.IsTotalOrder._.reflexive"
d856 v0 = coe d38 (coe d268 (coe d842 v0))
name858 = "Relation.Binary.IsTotalOrder._.trans"
d858 v0 = coe d40 (coe d268 (coe d842 v0))
name860 = "Relation.Binary.IsTotalOrder._.\8764-resp-\8776"
d860 v0 v1 v2 v3 v4 v5 v6 = du860 v6
du860 v0 = let v1 = coe d842 v0 in coe du54 (coe d268 v1)
name864 = "Relation.Binary.IsTotalOrder._.Eq.refl"
d864 v0
  = coe
      MAlonzo.Code.Relation.Binary.Core.d516
      (coe d36 (coe d268 (coe d842 v0)))
name866 = "Relation.Binary.IsTotalOrder._.Eq.reflexive"
d866 v0 v1 v2 v3 v4 v5 v6 = du866 v6
du866 v0
  = let v1 = coe d842 v0 in
    let v2 = coe d268 v1 in
    \ v3 v4 v5 ->
      coe MAlonzo.Code.Relation.Binary.Core.du522 (coe d36 v2) v3
name868 = "Relation.Binary.IsTotalOrder._.Eq.sym"
d868 v0
  = coe
      MAlonzo.Code.Relation.Binary.Core.d518
      (coe d36 (coe d268 (coe d842 v0)))
name870 = "Relation.Binary.IsTotalOrder._.Eq.trans"
d870 v0
  = coe
      MAlonzo.Code.Relation.Binary.Core.d520
      (coe d36 (coe d268 (coe d842 v0)))
name878 = "Relation.Binary.TotalOrder"
d878 a0 a1 a2 = ()
newtype T878 a0 a1 a2 a3 = C743 a0
name894 = "Relation.Binary.TotalOrder.Carrier"
d894 = erased
name896 = "Relation.Binary.TotalOrder._\8776_"
d896 = erased
name898 = "Relation.Binary.TotalOrder._\8804_"
d898 = erased
name900 = "Relation.Binary.TotalOrder.isTotalOrder"
d900 v0
  = case coe v0 of
      C743 v4 -> coe v4
      _ -> coe MAlonzo.RTE.mazUnreachableError
name904 = "Relation.Binary.TotalOrder._.antisym"
d904 v0 = coe d270 (coe d842 (coe d900 v0))
name906 = "Relation.Binary.TotalOrder._.isEquivalence"
d906 v0 = coe d36 (coe d268 (coe d842 (coe d900 v0)))
name908 = "Relation.Binary.TotalOrder._.isPartialOrder"
d908 v0 = coe d842 (coe d900 v0)
name910 = "Relation.Binary.TotalOrder._.isPreorder"
d910 v0 = coe d268 (coe d842 (coe d900 v0))
name912 = "Relation.Binary.TotalOrder._.refl"
d912 v0 v1
  = coe
      d38 (coe d268 (coe d842 (coe d900 v0))) v1 v1
      (coe
         MAlonzo.Code.Relation.Binary.Core.d516
         (coe d36 (coe d268 (coe d842 (coe d900 v0)))) v1)
name914 = "Relation.Binary.TotalOrder._.reflexive"
d914 v0 = coe d38 (coe d268 (coe d842 (coe d900 v0)))
name916 = "Relation.Binary.TotalOrder._.total"
d916 v0 = coe d844 (coe d900 v0)
name918 = "Relation.Binary.TotalOrder._.trans"
d918 v0 = coe d40 (coe d268 (coe d842 (coe d900 v0)))
name920 = "Relation.Binary.TotalOrder._.\8764-resp-\8776"
d920 v0 v1 v2 v3 = du920 v3
du920 v0
  = let v1 = coe d900 v0 in
    let v2 = coe d842 v1 in coe du54 (coe d268 v2)
name924 = "Relation.Binary.TotalOrder._.Eq.refl"
d924 v0
  = coe
      MAlonzo.Code.Relation.Binary.Core.d516
      (coe d36 (coe d268 (coe d842 (coe d900 v0))))
name926 = "Relation.Binary.TotalOrder._.Eq.reflexive"
d926 v0 v1 v2 v3 = du926 v3
du926 v0
  = let v1 = coe d900 v0 in
    let v2 = coe d842 v1 in
    let v3 = coe d268 v2 in
    \ v4 v5 v6 ->
      coe MAlonzo.Code.Relation.Binary.Core.du522 (coe d36 v3) v4
name928 = "Relation.Binary.TotalOrder._.Eq.sym"
d928 v0
  = coe
      MAlonzo.Code.Relation.Binary.Core.d518
      (coe d36 (coe d268 (coe d842 (coe d900 v0))))
name930 = "Relation.Binary.TotalOrder._.Eq.trans"
d930 v0
  = coe
      MAlonzo.Code.Relation.Binary.Core.d520
      (coe d36 (coe d268 (coe d842 (coe d900 v0))))
name932 = "Relation.Binary.TotalOrder.poset"
d932 v0 = coe C345 (coe d842 (coe d900 v0))
name936 = "Relation.Binary.TotalOrder._.preorder"
d936 v0 = coe C125 (coe d268 (coe d842 (coe d900 v0)))
name950 = "Relation.Binary.IsDecTotalOrder"
d950 a0 a1 a2 a3 a4 a5 = ()
data T950 a0 a1 a2 = C789 a0 a1 a2
name970 = "Relation.Binary.IsDecTotalOrder.isTotalOrder"
d970 v0
  = case coe v0 of
      C789 v1 v2 v3 -> coe v1
      _ -> coe MAlonzo.RTE.mazUnreachableError
name972 = "Relation.Binary.IsDecTotalOrder._\8799_"
d972 v0
  = case coe v0 of
      C789 v1 v2 v3 -> coe v2
      _ -> coe MAlonzo.RTE.mazUnreachableError
name974 = "Relation.Binary.IsDecTotalOrder._\8804?_"
d974 v0
  = case coe v0 of
      C789 v1 v2 v3 -> coe v3
      _ -> coe MAlonzo.RTE.mazUnreachableError
name978 = "Relation.Binary.IsDecTotalOrder.TO.antisym"
d978 v0 = coe d270 (coe d842 (coe d970 v0))
name980 = "Relation.Binary.IsDecTotalOrder.TO.isEquivalence"
d980 v0 = coe d36 (coe d268 (coe d842 (coe d970 v0)))
name982 = "Relation.Binary.IsDecTotalOrder.TO.isPartialOrder"
d982 v0 = coe d842 (coe d970 v0)
name984 = "Relation.Binary.IsDecTotalOrder.TO.isPreorder"
d984 v0 = coe d268 (coe d842 (coe d970 v0))
name986 = "Relation.Binary.IsDecTotalOrder.TO.refl"
d986 v0 v1
  = coe
      d38 (coe d268 (coe d842 (coe d970 v0))) v1 v1
      (coe
         MAlonzo.Code.Relation.Binary.Core.d516
         (coe d36 (coe d268 (coe d842 (coe d970 v0)))) v1)
name988 = "Relation.Binary.IsDecTotalOrder.TO.reflexive"
d988 v0 = coe d38 (coe d268 (coe d842 (coe d970 v0)))
name990 = "Relation.Binary.IsDecTotalOrder.TO.total"
d990 v0 = coe d844 (coe d970 v0)
name992 = "Relation.Binary.IsDecTotalOrder.TO.trans"
d992 v0 = coe d40 (coe d268 (coe d842 (coe d970 v0)))
name994 = "Relation.Binary.IsDecTotalOrder.TO.\8764-resp-\8776"
d994 v0 v1 v2 v3 v4 v5 v6 = du994 v6
du994 v0
  = let v1 = coe d970 v0 in
    let v2 = coe d842 v1 in coe du54 (coe d268 v2)
name1008 = "Relation.Binary.IsDecTotalOrder.Eq.isDecEquivalence"
d1008 v0
  = coe
      C273 (coe d36 (coe d268 (coe d842 (coe d970 v0)))) (coe d972 v0)
name1012 = "Relation.Binary.IsDecTotalOrder.Eq._._\8799_"
d1012 v0 = coe d972 v0
name1014 = "Relation.Binary.IsDecTotalOrder.Eq._.isEquivalence"
d1014 v0 = coe d36 (coe d268 (coe d842 (coe d970 v0)))
name1016 = "Relation.Binary.IsDecTotalOrder.Eq._.refl"
d1016 v0
  = coe
      MAlonzo.Code.Relation.Binary.Core.d516
      (coe d36 (coe d268 (coe d842 (coe d970 v0))))
name1018 = "Relation.Binary.IsDecTotalOrder.Eq._.reflexive"
d1018 v0 v1 v2 v3 v4 v5 v6 = du1018 v6
du1018 v0
  = let v1
          = coe
              C273 (coe d36 (coe d268 (coe d842 (coe d970 v0)))) (coe d972 v0) in
    \ v2 v3 v4 ->
      coe MAlonzo.Code.Relation.Binary.Core.du522 (coe d182 v1) v2
name1020 = "Relation.Binary.IsDecTotalOrder.Eq._.sym"
d1020 v0
  = coe
      MAlonzo.Code.Relation.Binary.Core.d518
      (coe d36 (coe d268 (coe d842 (coe d970 v0))))
name1022 = "Relation.Binary.IsDecTotalOrder.Eq._.trans"
d1022 v0
  = coe
      MAlonzo.Code.Relation.Binary.Core.d520
      (coe d36 (coe d268 (coe d842 (coe d970 v0))))
name1030 = "Relation.Binary.DecTotalOrder"
d1030 a0 a1 a2 = ()
newtype T1030 a0 a1 a2 a3 = C841 a0
name1046 = "Relation.Binary.DecTotalOrder.Carrier"
d1046 = erased
name1048 = "Relation.Binary.DecTotalOrder._\8776_"
d1048 = erased
name1050 = "Relation.Binary.DecTotalOrder._\8804_"
d1050 = erased
name1052 = "Relation.Binary.DecTotalOrder.isDecTotalOrder"
d1052 v0
  = case coe v0 of
      C841 v4 -> coe v4
      _ -> coe MAlonzo.RTE.mazUnreachableError
name1056 = "Relation.Binary.DecTotalOrder.DTO._\8799_"
d1056 v0 = coe d972 (coe d1052 v0)
name1058 = "Relation.Binary.DecTotalOrder.DTO._\8804?_"
d1058 v0 = coe d974 (coe d1052 v0)
name1060 = "Relation.Binary.DecTotalOrder.DTO.antisym"
d1060 v0 = coe d270 (coe d842 (coe d970 (coe d1052 v0)))
name1062 = "Relation.Binary.DecTotalOrder.DTO.isEquivalence"
d1062 v0 = coe d36 (coe d268 (coe d842 (coe d970 (coe d1052 v0))))
name1064 = "Relation.Binary.DecTotalOrder.DTO.isPartialOrder"
d1064 v0 = coe d842 (coe d970 (coe d1052 v0))
name1066 = "Relation.Binary.DecTotalOrder.DTO.isPreorder"
d1066 v0 = coe d268 (coe d842 (coe d970 (coe d1052 v0)))
name1068 = "Relation.Binary.DecTotalOrder.DTO.isTotalOrder"
d1068 v0 = coe d970 (coe d1052 v0)
name1070 = "Relation.Binary.DecTotalOrder.DTO.refl"
d1070 v0 v1
  = coe
      d38 (coe d268 (coe d842 (coe d970 (coe d1052 v0)))) v1 v1
      (coe
         MAlonzo.Code.Relation.Binary.Core.d516
         (coe d36 (coe d268 (coe d842 (coe d970 (coe d1052 v0))))) v1)
name1072 = "Relation.Binary.DecTotalOrder.DTO.reflexive"
d1072 v0 = coe d38 (coe d268 (coe d842 (coe d970 (coe d1052 v0))))
name1074 = "Relation.Binary.DecTotalOrder.DTO.total"
d1074 v0 = coe d844 (coe d970 (coe d1052 v0))
name1076 = "Relation.Binary.DecTotalOrder.DTO.trans"
d1076 v0 = coe d40 (coe d268 (coe d842 (coe d970 (coe d1052 v0))))
name1078 = "Relation.Binary.DecTotalOrder.DTO.\8764-resp-\8776"
d1078 v0 v1 v2 v3 = du1078 v3
du1078 v0
  = let v1 = coe d1052 v0 in
    let v2 = coe d970 v1 in
    let v3 = coe d842 v2 in coe du54 (coe d268 v3)
name1084 = "Relation.Binary.DecTotalOrder.DTO.Eq.isDecEquivalence"
d1084 v0
  = coe
      C273 (coe d36 (coe d268 (coe d842 (coe d970 (coe d1052 v0)))))
      (coe d972 (coe d1052 v0))
name1096 = "Relation.Binary.DecTotalOrder.totalOrder"
d1096 v0 = coe C743 (coe d970 (coe d1052 v0))
name1100 = "Relation.Binary.DecTotalOrder._.poset"
d1100 v0 = coe C345 (coe d842 (coe d970 (coe d1052 v0)))
name1102 = "Relation.Binary.DecTotalOrder._.preorder"
d1102 v0 = coe C125 (coe d268 (coe d842 (coe d970 (coe d1052 v0))))
name1106 = "Relation.Binary.DecTotalOrder.Eq.decSetoid"
d1106 v0
  = coe
      C287
      (coe
         C273 (coe d36 (coe d268 (coe d842 (coe d970 (coe d1052 v0)))))
         (coe d972 (coe d1052 v0)))
name1110 = "Relation.Binary.DecTotalOrder.Eq._._\8776_"
d1110 = erased
name1112 = "Relation.Binary.DecTotalOrder.Eq._._\8799_"
d1112 v0 = coe d972 (coe d1052 v0)
name1114 = "Relation.Binary.DecTotalOrder.Eq._.Carrier"
d1114 = erased
name1116 = "Relation.Binary.DecTotalOrder.Eq._.isDecEquivalence"
d1116 v0
  = coe
      C273 (coe d36 (coe d268 (coe d842 (coe d970 (coe d1052 v0)))))
      (coe d972 (coe d1052 v0))
name1118 = "Relation.Binary.DecTotalOrder.Eq._.isEquivalence"
d1118 v0 = coe d36 (coe d268 (coe d842 (coe d970 (coe d1052 v0))))
name1120 = "Relation.Binary.DecTotalOrder.Eq._.preorder"
d1120 v0 v1 v2 v3 = du1120 v3
du1120 v0
  = let v1
          = coe
              C287
              (coe
                 C273 (coe d36 (coe d268 (coe d842 (coe d970 (coe d1052 v0)))))
                 (coe d972 (coe d1052 v0))) in
    coe du150 (coe C143 (coe d182 (coe d216 v1)))
name1122 = "Relation.Binary.DecTotalOrder.Eq._.refl"
d1122 v0
  = coe
      MAlonzo.Code.Relation.Binary.Core.d516
      (coe d36 (coe d268 (coe d842 (coe d970 (coe d1052 v0)))))
name1124 = "Relation.Binary.DecTotalOrder.Eq._.reflexive"
d1124 v0 v1 v2 v3 = du1124 v3
du1124 v0
  = let v1
          = coe
              C287
              (coe
                 C273 (coe d36 (coe d268 (coe d842 (coe d970 (coe d1052 v0)))))
                 (coe d972 (coe d1052 v0))) in
    let v2 = coe d216 v1 in
    \ v3 v4 v5 ->
      coe MAlonzo.Code.Relation.Binary.Core.du522 (coe d182 v2) v3
name1126 = "Relation.Binary.DecTotalOrder.Eq._.setoid"
d1126 v0
  = coe
      C143 (coe d36 (coe d268 (coe d842 (coe d970 (coe d1052 v0)))))
name1128 = "Relation.Binary.DecTotalOrder.Eq._.sym"
d1128 v0
  = coe
      MAlonzo.Code.Relation.Binary.Core.d518
      (coe d36 (coe d268 (coe d842 (coe d970 (coe d1052 v0)))))
name1130 = "Relation.Binary.DecTotalOrder.Eq._.trans"
d1130 v0
  = coe
      MAlonzo.Code.Relation.Binary.Core.d520
      (coe d36 (coe d268 (coe d842 (coe d970 (coe d1052 v0)))))
name1144 = "Relation.Binary.IsStrictTotalOrder"
d1144 a0 a1 a2 a3 a4 a5 = ()
data T1144 a0 a1 a2 = C903 a0 a1 a2
name1164 = "Relation.Binary.IsStrictTotalOrder.isEquivalence"
d1164 v0
  = case coe v0 of
      C903 v1 v2 v3 -> coe v1
      _ -> coe MAlonzo.RTE.mazUnreachableError
name1166 = "Relation.Binary.IsStrictTotalOrder.trans"
d1166 v0
  = case coe v0 of
      C903 v1 v2 v3 -> coe v2
      _ -> coe MAlonzo.RTE.mazUnreachableError
name1168 = "Relation.Binary.IsStrictTotalOrder.compare"
d1168 v0
  = case coe v0 of
      C903 v1 v2 v3 -> coe v3
      _ -> coe MAlonzo.RTE.mazUnreachableError
name1170 = "Relation.Binary.IsStrictTotalOrder._\8799_"
d1170 v0 v1 v2 v3 v4 v5 v6 = du1170 v6
du1170 v0
  = coe
      MAlonzo.Code.Relation.Binary.Consequences.du540 (coe d1168 v0)
name1172 = "Relation.Binary.IsStrictTotalOrder._<?_"
d1172 v0 v1 v2 v3 v4 v5 v6 = du1172 v6
du1172 v0
  = coe
      MAlonzo.Code.Relation.Binary.Consequences.du588 (coe d1168 v0)
name1174 = "Relation.Binary.IsStrictTotalOrder.isDecEquivalence"
d1174 v0 v1 v2 v3 v4 v5 v6 = du1174 v6
du1174 v0 = coe C273 (coe d1164 v0) (coe du1170 v0)
name1178 = "Relation.Binary.IsStrictTotalOrder.Eq._\8799_"
d1178 v0 v1 v2 v3 v4 v5 v6 = du1178 v6
du1178 v0 = coe d184 (coe du1174 v0)
name1180 = "Relation.Binary.IsStrictTotalOrder.Eq.isEquivalence"
d1180 v0 v1 v2 v3 v4 v5 v6 = du1180 v6
du1180 v0 = coe d182 (coe du1174 v0)
name1182 = "Relation.Binary.IsStrictTotalOrder.Eq.refl"
d1182 v0 v1 v2 v3 v4 v5 v6 = du1182 v6
du1182 v0
  = coe
      MAlonzo.Code.Relation.Binary.Core.d516 (coe d182 (coe du1174 v0))
name1184 = "Relation.Binary.IsStrictTotalOrder.Eq.reflexive"
d1184 v0 v1 v2 v3 v4 v5 v6 = du1184 v6
du1184 v0
  = let v1 = coe du1174 v0 in
    \ v2 v3 v4 ->
      coe MAlonzo.Code.Relation.Binary.Core.du522 (coe d182 v1) v2
name1186 = "Relation.Binary.IsStrictTotalOrder.Eq.sym"
d1186 v0 v1 v2 v3 v4 v5 v6 = du1186 v6
du1186 v0
  = coe
      MAlonzo.Code.Relation.Binary.Core.d518 (coe d182 (coe du1174 v0))
name1188 = "Relation.Binary.IsStrictTotalOrder.Eq.trans"
d1188 v0 v1 v2 v3 v4 v5 v6 = du1188 v6
du1188 v0
  = coe
      MAlonzo.Code.Relation.Binary.Core.d520 (coe d182 (coe du1174 v0))
name1190 = "Relation.Binary.IsStrictTotalOrder.<-resp-\8776"
d1190 v0 v1 v2 v3 v4 v5 v6 = du1190 v2 v6
du1190 v0 v1
  = coe
      MAlonzo.Code.Relation.Binary.Consequences.du410 v0 (coe d1168 v1)
name1192
  = "Relation.Binary.IsStrictTotalOrder.isStrictPartialOrder"
d1192 v0 v1 v2 v3 v4 v5 v6 = du1192 v2 v6
du1192 v0 v1
  = coe C513 (coe d1164 v1) (coe d1166 v1) (coe du1190 v0 v1)
name1196 = "Relation.Binary.IsStrictTotalOrder._.irrefl"
d1196 = erased
name1204 = "Relation.Binary.StrictTotalOrder"
d1204 a0 a1 a2 = ()
newtype T1204 a0 a1 a2 a3 = C1165 a0
name1220 = "Relation.Binary.StrictTotalOrder.Carrier"
d1220 = erased
name1222 = "Relation.Binary.StrictTotalOrder._\8776_"
d1222 = erased
name1224 = "Relation.Binary.StrictTotalOrder._<_"
d1224 = erased
name1226 = "Relation.Binary.StrictTotalOrder.isStrictTotalOrder"
d1226 v0
  = case coe v0 of
      C1165 v4 -> coe v4
      _ -> coe MAlonzo.RTE.mazUnreachableError
name1230 = "Relation.Binary.StrictTotalOrder._._<?_"
d1230 v0 v1 v2 v3 = du1230 v3
du1230 v0 = coe du1172 (coe d1226 v0)
name1232 = "Relation.Binary.StrictTotalOrder._._\8799_"
d1232 v0 v1 v2 v3 = du1232 v3
du1232 v0 = coe du1170 (coe d1226 v0)
name1234 = "Relation.Binary.StrictTotalOrder._.<-resp-\8776"
d1234 v0 v1 v2 v3 = du1234 v2 v3
du1234 v0 v1 = coe du1190 v0 (coe d1226 v1)
name1236 = "Relation.Binary.StrictTotalOrder._.compare"
d1236 v0 = coe d1168 (coe d1226 v0)
name1238 = "Relation.Binary.StrictTotalOrder._.irrefl"
d1238 = erased
name1240 = "Relation.Binary.StrictTotalOrder._.isDecEquivalence"
d1240 v0 v1 v2 v3 = du1240 v3
du1240 v0 = coe du1174 (coe d1226 v0)
name1242 = "Relation.Binary.StrictTotalOrder._.isEquivalence"
d1242 v0 = coe d1164 (coe d1226 v0)
name1244
  = "Relation.Binary.StrictTotalOrder._.isStrictPartialOrder"
d1244 v0 v1 v2 v3 = du1244 v2 v3
du1244 v0 v1 = coe du1192 v0 (coe d1226 v1)
name1246 = "Relation.Binary.StrictTotalOrder._.trans"
d1246 v0 = coe d1166 (coe d1226 v0)
name1248 = "Relation.Binary.StrictTotalOrder.strictPartialOrder"
d1248 v0 v1 v2 v3 = du1248 v2 v3
du1248 v0 v1 = coe C535 (coe du1192 v0 (coe d1226 v1))
name1250 = "Relation.Binary.StrictTotalOrder.decSetoid"
d1250 v0 v1 v2 v3 = du1250 v3
du1250 v0 = coe C287 (coe du1174 (coe d1226 v0))
name1254 = "Relation.Binary.StrictTotalOrder.Eq._\8776_"
d1254 = erased
name1256 = "Relation.Binary.StrictTotalOrder.Eq._\8799_"
d1256 v0 v1 v2 v3 = du1256 v3
du1256 v0 = coe d184 (coe d216 (coe du1250 v0))
name1258 = "Relation.Binary.StrictTotalOrder.Eq.Carrier"
d1258 = erased
name1260 = "Relation.Binary.StrictTotalOrder.Eq.isDecEquivalence"
d1260 v0 v1 v2 v3 = du1260 v3
du1260 v0 = coe d216 (coe du1250 v0)
name1262 = "Relation.Binary.StrictTotalOrder.Eq.isEquivalence"
d1262 v0 v1 v2 v3 = du1262 v3
du1262 v0 = coe d182 (coe d216 (coe du1250 v0))
name1264 = "Relation.Binary.StrictTotalOrder.Eq.preorder"
d1264 v0 v1 v2 v3 = du1264 v3
du1264 v0
  = let v1 = coe du1250 v0 in
    coe du150 (coe C143 (coe d182 (coe d216 v1)))
name1266 = "Relation.Binary.StrictTotalOrder.Eq.refl"
d1266 v0 v1 v2 v3 = du1266 v3
du1266 v0
  = coe
      MAlonzo.Code.Relation.Binary.Core.d516
      (coe d182 (coe d216 (coe du1250 v0)))
name1268 = "Relation.Binary.StrictTotalOrder.Eq.reflexive"
d1268 v0 v1 v2 v3 = du1268 v3
du1268 v0
  = let v1 = coe du1250 v0 in
    let v2 = coe d216 v1 in
    \ v3 v4 v5 ->
      coe MAlonzo.Code.Relation.Binary.Core.du522 (coe d182 v2) v3
name1270 = "Relation.Binary.StrictTotalOrder.Eq.setoid"
d1270 v0 v1 v2 v3 = du1270 v3
du1270 v0 = coe C143 (coe d182 (coe d216 (coe du1250 v0)))
name1272 = "Relation.Binary.StrictTotalOrder.Eq.sym"
d1272 v0 v1 v2 v3 = du1272 v3
du1272 v0
  = coe
      MAlonzo.Code.Relation.Binary.Core.d518
      (coe d182 (coe d216 (coe du1250 v0)))
name1274 = "Relation.Binary.StrictTotalOrder.Eq.trans"
d1274 v0 v1 v2 v3 = du1274 v3
du1274 v0
  = coe
      MAlonzo.Code.Relation.Binary.Core.d520
      (coe d182 (coe d216 (coe du1250 v0)))