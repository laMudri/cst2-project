{-# LANGUAGE EmptyDataDecls, ExistentialQuantification,
             ScopedTypeVariables, NoMonomorphismRestriction, Rank2Types #-}
module MAlonzo.Code.Relation.Binary.Lattice where

import MAlonzo.RTE (coe, erased, addInt, subInt, mulInt, quotInt,
                    remInt, geqInt, ltInt, eqInt, eqFloat)
import qualified Control.Exception
import qualified Data.Text
import qualified Data.Text.IO
import qualified MAlonzo.RTE
import qualified System.Environment
import qualified System.IO
import qualified Data.Text
import qualified MAlonzo.Code.Relation.Binary
import qualified MAlonzo.Code.Relation.Binary.Core

name12 = "Relation.Binary.Lattice.Supremum"
d12 = erased
name30 = "Relation.Binary.Lattice.Infimum"
d30 = erased
name40 = "Relation.Binary.Lattice.Maximum"
d40 = erased
name54 = "Relation.Binary.Lattice.Minimum"
d54 = erased
name72 = "Relation.Binary.Lattice.IsJoinSemilattice"
d72 a0 a1 a2 a3 a4 a5 a6 = ()
data T72 a0 a1 = C125 a0 a1
name92 = "Relation.Binary.Lattice.IsJoinSemilattice.isPartialOrder"
d92 v0
  = case coe v0 of
      C125 v1 v2 -> coe v1
      _ -> coe MAlonzo.RTE.mazUnreachableError
name94 = "Relation.Binary.Lattice.IsJoinSemilattice.supremum"
d94 v0
  = case coe v0 of
      C125 v1 v2 -> coe v2
      _ -> coe MAlonzo.RTE.mazUnreachableError
name98 = "Relation.Binary.Lattice.IsJoinSemilattice._.antisym"
d98 v0 = coe MAlonzo.Code.Relation.Binary.d270 (coe d92 v0)
name100
  = "Relation.Binary.Lattice.IsJoinSemilattice._.isEquivalence"
d100 v0
  = coe
      MAlonzo.Code.Relation.Binary.d36
      (coe MAlonzo.Code.Relation.Binary.d268 (coe d92 v0))
name102 = "Relation.Binary.Lattice.IsJoinSemilattice._.isPreorder"
d102 v0 = coe MAlonzo.Code.Relation.Binary.d268 (coe d92 v0)
name104 = "Relation.Binary.Lattice.IsJoinSemilattice._.refl"
d104 v0 v1
  = coe
      MAlonzo.Code.Relation.Binary.d38
      (coe MAlonzo.Code.Relation.Binary.d268 (coe d92 v0)) v1 v1
      (coe
         MAlonzo.Code.Relation.Binary.Core.d516
         (coe
            MAlonzo.Code.Relation.Binary.d36
            (coe MAlonzo.Code.Relation.Binary.d268 (coe d92 v0)))
         v1)
name106 = "Relation.Binary.Lattice.IsJoinSemilattice._.reflexive"
d106 v0
  = coe
      MAlonzo.Code.Relation.Binary.d38
      (coe MAlonzo.Code.Relation.Binary.d268 (coe d92 v0))
name108 = "Relation.Binary.Lattice.IsJoinSemilattice._.trans"
d108 v0
  = coe
      MAlonzo.Code.Relation.Binary.d40
      (coe MAlonzo.Code.Relation.Binary.d268 (coe d92 v0))
name110
  = "Relation.Binary.Lattice.IsJoinSemilattice._.\8764-resp-\8776"
d110 v0 v1 v2 v3 v4 v5 v6 v7 = du110 v7
du110 v0
  = let v1 = coe d92 v0 in
    coe
      MAlonzo.Code.Relation.Binary.du54
      (coe MAlonzo.Code.Relation.Binary.d268 v1)
name114 = "Relation.Binary.Lattice.IsJoinSemilattice._.Eq.refl"
d114 v0
  = coe
      MAlonzo.Code.Relation.Binary.Core.d516
      (coe
         MAlonzo.Code.Relation.Binary.d36
         (coe MAlonzo.Code.Relation.Binary.d268 (coe d92 v0)))
name116
  = "Relation.Binary.Lattice.IsJoinSemilattice._.Eq.reflexive"
d116 v0 v1 v2 v3 v4 v5 v6 v7 = du116 v7
du116 v0
  = let v1 = coe d92 v0 in
    let v2 = coe MAlonzo.Code.Relation.Binary.d268 v1 in
    \ v3 v4 v5 ->
      coe
        MAlonzo.Code.Relation.Binary.Core.du522
        (coe MAlonzo.Code.Relation.Binary.d36 v2) v3
name118 = "Relation.Binary.Lattice.IsJoinSemilattice._.Eq.sym"
d118 v0
  = coe
      MAlonzo.Code.Relation.Binary.Core.d518
      (coe
         MAlonzo.Code.Relation.Binary.d36
         (coe MAlonzo.Code.Relation.Binary.d268 (coe d92 v0)))
name120 = "Relation.Binary.Lattice.IsJoinSemilattice._.Eq.trans"
d120 v0
  = coe
      MAlonzo.Code.Relation.Binary.Core.d520
      (coe
         MAlonzo.Code.Relation.Binary.d36
         (coe MAlonzo.Code.Relation.Binary.d268 (coe d92 v0)))
name128 = "Relation.Binary.Lattice.JoinSemilattice"
d128 a0 a1 a2 = ()
data T128 a0 a1 a2 a3 a4 = C143 a0 a1
name146 = "Relation.Binary.Lattice.JoinSemilattice.Carrier"
d146 = erased
name148 = "Relation.Binary.Lattice.JoinSemilattice._\8776_"
d148 = erased
name150 = "Relation.Binary.Lattice.JoinSemilattice._\8804_"
d150 = erased
name152 = "Relation.Binary.Lattice.JoinSemilattice._\8744_"
d152 v0
  = case coe v0 of
      C143 v4 v5 -> coe v4
      _ -> coe MAlonzo.RTE.mazUnreachableError
name154
  = "Relation.Binary.Lattice.JoinSemilattice.isJoinSemilattice"
d154 v0
  = case coe v0 of
      C143 v4 v5 -> coe v5
      _ -> coe MAlonzo.RTE.mazUnreachableError
name158 = "Relation.Binary.Lattice.JoinSemilattice._.antisym"
d158 v0
  = coe MAlonzo.Code.Relation.Binary.d270 (coe d92 (coe d154 v0))
name160 = "Relation.Binary.Lattice.JoinSemilattice._.isEquivalence"
d160 v0
  = coe
      MAlonzo.Code.Relation.Binary.d36
      (coe MAlonzo.Code.Relation.Binary.d268 (coe d92 (coe d154 v0)))
name162
  = "Relation.Binary.Lattice.JoinSemilattice._.isPartialOrder"
d162 v0 = coe d92 (coe d154 v0)
name164 = "Relation.Binary.Lattice.JoinSemilattice._.isPreorder"
d164 v0
  = coe MAlonzo.Code.Relation.Binary.d268 (coe d92 (coe d154 v0))
name166 = "Relation.Binary.Lattice.JoinSemilattice._.refl"
d166 v0 v1
  = coe
      MAlonzo.Code.Relation.Binary.d38
      (coe MAlonzo.Code.Relation.Binary.d268 (coe d92 (coe d154 v0))) v1
      v1
      (coe
         MAlonzo.Code.Relation.Binary.Core.d516
         (coe
            MAlonzo.Code.Relation.Binary.d36
            (coe MAlonzo.Code.Relation.Binary.d268 (coe d92 (coe d154 v0))))
         v1)
name168 = "Relation.Binary.Lattice.JoinSemilattice._.reflexive"
d168 v0
  = coe
      MAlonzo.Code.Relation.Binary.d38
      (coe MAlonzo.Code.Relation.Binary.d268 (coe d92 (coe d154 v0)))
name170 = "Relation.Binary.Lattice.JoinSemilattice._.supremum"
d170 v0 = coe d94 (coe d154 v0)
name172 = "Relation.Binary.Lattice.JoinSemilattice._.trans"
d172 v0
  = coe
      MAlonzo.Code.Relation.Binary.d40
      (coe MAlonzo.Code.Relation.Binary.d268 (coe d92 (coe d154 v0)))
name174
  = "Relation.Binary.Lattice.JoinSemilattice._.\8764-resp-\8776"
d174 v0 v1 v2 v3 = du174 v3
du174 v0
  = let v1 = coe d154 v0 in
    let v2 = coe d92 v1 in
    coe
      MAlonzo.Code.Relation.Binary.du54
      (coe MAlonzo.Code.Relation.Binary.d268 v2)
name178 = "Relation.Binary.Lattice.JoinSemilattice._.Eq.refl"
d178 v0
  = coe
      MAlonzo.Code.Relation.Binary.Core.d516
      (coe
         MAlonzo.Code.Relation.Binary.d36
         (coe MAlonzo.Code.Relation.Binary.d268 (coe d92 (coe d154 v0))))
name180 = "Relation.Binary.Lattice.JoinSemilattice._.Eq.reflexive"
d180 v0 v1 v2 v3 = du180 v3
du180 v0
  = let v1 = coe d154 v0 in
    let v2 = coe d92 v1 in
    let v3 = coe MAlonzo.Code.Relation.Binary.d268 v2 in
    \ v4 v5 v6 ->
      coe
        MAlonzo.Code.Relation.Binary.Core.du522
        (coe MAlonzo.Code.Relation.Binary.d36 v3) v4
name182 = "Relation.Binary.Lattice.JoinSemilattice._.Eq.sym"
d182 v0
  = coe
      MAlonzo.Code.Relation.Binary.Core.d518
      (coe
         MAlonzo.Code.Relation.Binary.d36
         (coe MAlonzo.Code.Relation.Binary.d268 (coe d92 (coe d154 v0))))
name184 = "Relation.Binary.Lattice.JoinSemilattice._.Eq.trans"
d184 v0
  = coe
      MAlonzo.Code.Relation.Binary.Core.d520
      (coe
         MAlonzo.Code.Relation.Binary.d36
         (coe MAlonzo.Code.Relation.Binary.d268 (coe d92 (coe d154 v0))))
name186 = "Relation.Binary.Lattice.JoinSemilattice.poset"
d186 v0
  = coe MAlonzo.Code.Relation.Binary.C345 (coe d92 (coe d154 v0))
name190 = "Relation.Binary.Lattice.JoinSemilattice._.preorder"
d190 v0
  = coe
      MAlonzo.Code.Relation.Binary.C125
      (coe MAlonzo.Code.Relation.Binary.d268 (coe d92 (coe d154 v0)))
name206 = "Relation.Binary.Lattice.IsMeetSemilattice"
d206 a0 a1 a2 a3 a4 a5 a6 = ()
data T206 a0 a1 = C187 a0 a1
name226
  = "Relation.Binary.Lattice.IsMeetSemilattice.isPartialOrder"
d226 v0
  = case coe v0 of
      C187 v1 v2 -> coe v1
      _ -> coe MAlonzo.RTE.mazUnreachableError
name228 = "Relation.Binary.Lattice.IsMeetSemilattice.infimum"
d228 v0
  = case coe v0 of
      C187 v1 v2 -> coe v2
      _ -> coe MAlonzo.RTE.mazUnreachableError
name232 = "Relation.Binary.Lattice.IsMeetSemilattice._.antisym"
d232 v0 = coe MAlonzo.Code.Relation.Binary.d270 (coe d226 v0)
name234
  = "Relation.Binary.Lattice.IsMeetSemilattice._.isEquivalence"
d234 v0
  = coe
      MAlonzo.Code.Relation.Binary.d36
      (coe MAlonzo.Code.Relation.Binary.d268 (coe d226 v0))
name236 = "Relation.Binary.Lattice.IsMeetSemilattice._.isPreorder"
d236 v0 = coe MAlonzo.Code.Relation.Binary.d268 (coe d226 v0)
name238 = "Relation.Binary.Lattice.IsMeetSemilattice._.refl"
d238 v0 v1
  = coe
      MAlonzo.Code.Relation.Binary.d38
      (coe MAlonzo.Code.Relation.Binary.d268 (coe d226 v0)) v1 v1
      (coe
         MAlonzo.Code.Relation.Binary.Core.d516
         (coe
            MAlonzo.Code.Relation.Binary.d36
            (coe MAlonzo.Code.Relation.Binary.d268 (coe d226 v0)))
         v1)
name240 = "Relation.Binary.Lattice.IsMeetSemilattice._.reflexive"
d240 v0
  = coe
      MAlonzo.Code.Relation.Binary.d38
      (coe MAlonzo.Code.Relation.Binary.d268 (coe d226 v0))
name242 = "Relation.Binary.Lattice.IsMeetSemilattice._.trans"
d242 v0
  = coe
      MAlonzo.Code.Relation.Binary.d40
      (coe MAlonzo.Code.Relation.Binary.d268 (coe d226 v0))
name244
  = "Relation.Binary.Lattice.IsMeetSemilattice._.\8764-resp-\8776"
d244 v0 v1 v2 v3 v4 v5 v6 v7 = du244 v7
du244 v0
  = let v1 = coe d226 v0 in
    coe
      MAlonzo.Code.Relation.Binary.du54
      (coe MAlonzo.Code.Relation.Binary.d268 v1)
name248 = "Relation.Binary.Lattice.IsMeetSemilattice._.Eq.refl"
d248 v0
  = coe
      MAlonzo.Code.Relation.Binary.Core.d516
      (coe
         MAlonzo.Code.Relation.Binary.d36
         (coe MAlonzo.Code.Relation.Binary.d268 (coe d226 v0)))
name250
  = "Relation.Binary.Lattice.IsMeetSemilattice._.Eq.reflexive"
d250 v0 v1 v2 v3 v4 v5 v6 v7 = du250 v7
du250 v0
  = let v1 = coe d226 v0 in
    let v2 = coe MAlonzo.Code.Relation.Binary.d268 v1 in
    \ v3 v4 v5 ->
      coe
        MAlonzo.Code.Relation.Binary.Core.du522
        (coe MAlonzo.Code.Relation.Binary.d36 v2) v3
name252 = "Relation.Binary.Lattice.IsMeetSemilattice._.Eq.sym"
d252 v0
  = coe
      MAlonzo.Code.Relation.Binary.Core.d518
      (coe
         MAlonzo.Code.Relation.Binary.d36
         (coe MAlonzo.Code.Relation.Binary.d268 (coe d226 v0)))
name254 = "Relation.Binary.Lattice.IsMeetSemilattice._.Eq.trans"
d254 v0
  = coe
      MAlonzo.Code.Relation.Binary.Core.d520
      (coe
         MAlonzo.Code.Relation.Binary.d36
         (coe MAlonzo.Code.Relation.Binary.d268 (coe d226 v0)))
name262 = "Relation.Binary.Lattice.MeetSemilattice"
d262 a0 a1 a2 = ()
data T262 a0 a1 a2 a3 a4 = C205 a0 a1
name280 = "Relation.Binary.Lattice.MeetSemilattice.Carrier"
d280 = erased
name282 = "Relation.Binary.Lattice.MeetSemilattice._\8776_"
d282 = erased
name284 = "Relation.Binary.Lattice.MeetSemilattice._\8804_"
d284 = erased
name286 = "Relation.Binary.Lattice.MeetSemilattice._\8743_"
d286 v0
  = case coe v0 of
      C205 v4 v5 -> coe v4
      _ -> coe MAlonzo.RTE.mazUnreachableError
name288
  = "Relation.Binary.Lattice.MeetSemilattice.isMeetSemilattice"
d288 v0
  = case coe v0 of
      C205 v4 v5 -> coe v5
      _ -> coe MAlonzo.RTE.mazUnreachableError
name292 = "Relation.Binary.Lattice.MeetSemilattice._.antisym"
d292 v0
  = coe MAlonzo.Code.Relation.Binary.d270 (coe d226 (coe d288 v0))
name294 = "Relation.Binary.Lattice.MeetSemilattice._.infimum"
d294 v0 = coe d228 (coe d288 v0)
name296 = "Relation.Binary.Lattice.MeetSemilattice._.isEquivalence"
d296 v0
  = coe
      MAlonzo.Code.Relation.Binary.d36
      (coe MAlonzo.Code.Relation.Binary.d268 (coe d226 (coe d288 v0)))
name298
  = "Relation.Binary.Lattice.MeetSemilattice._.isPartialOrder"
d298 v0 = coe d226 (coe d288 v0)
name300 = "Relation.Binary.Lattice.MeetSemilattice._.isPreorder"
d300 v0
  = coe MAlonzo.Code.Relation.Binary.d268 (coe d226 (coe d288 v0))
name302 = "Relation.Binary.Lattice.MeetSemilattice._.refl"
d302 v0 v1
  = coe
      MAlonzo.Code.Relation.Binary.d38
      (coe MAlonzo.Code.Relation.Binary.d268 (coe d226 (coe d288 v0))) v1
      v1
      (coe
         MAlonzo.Code.Relation.Binary.Core.d516
         (coe
            MAlonzo.Code.Relation.Binary.d36
            (coe MAlonzo.Code.Relation.Binary.d268 (coe d226 (coe d288 v0))))
         v1)
name304 = "Relation.Binary.Lattice.MeetSemilattice._.reflexive"
d304 v0
  = coe
      MAlonzo.Code.Relation.Binary.d38
      (coe MAlonzo.Code.Relation.Binary.d268 (coe d226 (coe d288 v0)))
name306 = "Relation.Binary.Lattice.MeetSemilattice._.trans"
d306 v0
  = coe
      MAlonzo.Code.Relation.Binary.d40
      (coe MAlonzo.Code.Relation.Binary.d268 (coe d226 (coe d288 v0)))
name308
  = "Relation.Binary.Lattice.MeetSemilattice._.\8764-resp-\8776"
d308 v0 v1 v2 v3 = du308 v3
du308 v0
  = let v1 = coe d288 v0 in
    let v2 = coe d226 v1 in
    coe
      MAlonzo.Code.Relation.Binary.du54
      (coe MAlonzo.Code.Relation.Binary.d268 v2)
name312 = "Relation.Binary.Lattice.MeetSemilattice._.Eq.refl"
d312 v0
  = coe
      MAlonzo.Code.Relation.Binary.Core.d516
      (coe
         MAlonzo.Code.Relation.Binary.d36
         (coe MAlonzo.Code.Relation.Binary.d268 (coe d226 (coe d288 v0))))
name314 = "Relation.Binary.Lattice.MeetSemilattice._.Eq.reflexive"
d314 v0 v1 v2 v3 = du314 v3
du314 v0
  = let v1 = coe d288 v0 in
    let v2 = coe d226 v1 in
    let v3 = coe MAlonzo.Code.Relation.Binary.d268 v2 in
    \ v4 v5 v6 ->
      coe
        MAlonzo.Code.Relation.Binary.Core.du522
        (coe MAlonzo.Code.Relation.Binary.d36 v3) v4
name316 = "Relation.Binary.Lattice.MeetSemilattice._.Eq.sym"
d316 v0
  = coe
      MAlonzo.Code.Relation.Binary.Core.d518
      (coe
         MAlonzo.Code.Relation.Binary.d36
         (coe MAlonzo.Code.Relation.Binary.d268 (coe d226 (coe d288 v0))))
name318 = "Relation.Binary.Lattice.MeetSemilattice._.Eq.trans"
d318 v0
  = coe
      MAlonzo.Code.Relation.Binary.Core.d520
      (coe
         MAlonzo.Code.Relation.Binary.d36
         (coe MAlonzo.Code.Relation.Binary.d268 (coe d226 (coe d288 v0))))
name320 = "Relation.Binary.Lattice.MeetSemilattice.poset"
d320 v0
  = coe MAlonzo.Code.Relation.Binary.C345 (coe d226 (coe d288 v0))
name324 = "Relation.Binary.Lattice.MeetSemilattice._.preorder"
d324 v0
  = coe
      MAlonzo.Code.Relation.Binary.C125
      (coe MAlonzo.Code.Relation.Binary.d268 (coe d226 (coe d288 v0)))
name342 = "Relation.Binary.Lattice.IsBoundedJoinSemilattice"
d342 a0 a1 a2 a3 a4 a5 a6 a7 = ()
data T342 a0 a1 = C249 a0 a1
name364
  = "Relation.Binary.Lattice.IsBoundedJoinSemilattice.isJoinSemilattice"
d364 v0
  = case coe v0 of
      C249 v1 v2 -> coe v1
      _ -> coe MAlonzo.RTE.mazUnreachableError
name366
  = "Relation.Binary.Lattice.IsBoundedJoinSemilattice.minimum"
d366 v0
  = case coe v0 of
      C249 v1 v2 -> coe v2
      _ -> coe MAlonzo.RTE.mazUnreachableError
name370
  = "Relation.Binary.Lattice.IsBoundedJoinSemilattice._.antisym"
d370 v0
  = coe MAlonzo.Code.Relation.Binary.d270 (coe d92 (coe d364 v0))
name372
  = "Relation.Binary.Lattice.IsBoundedJoinSemilattice._.isEquivalence"
d372 v0
  = coe
      MAlonzo.Code.Relation.Binary.d36
      (coe MAlonzo.Code.Relation.Binary.d268 (coe d92 (coe d364 v0)))
name374
  = "Relation.Binary.Lattice.IsBoundedJoinSemilattice._.isPartialOrder"
d374 v0 = coe d92 (coe d364 v0)
name376
  = "Relation.Binary.Lattice.IsBoundedJoinSemilattice._.isPreorder"
d376 v0
  = coe MAlonzo.Code.Relation.Binary.d268 (coe d92 (coe d364 v0))
name378 = "Relation.Binary.Lattice.IsBoundedJoinSemilattice._.refl"
d378 v0 v1
  = coe
      MAlonzo.Code.Relation.Binary.d38
      (coe MAlonzo.Code.Relation.Binary.d268 (coe d92 (coe d364 v0))) v1
      v1
      (coe
         MAlonzo.Code.Relation.Binary.Core.d516
         (coe
            MAlonzo.Code.Relation.Binary.d36
            (coe MAlonzo.Code.Relation.Binary.d268 (coe d92 (coe d364 v0))))
         v1)
name380
  = "Relation.Binary.Lattice.IsBoundedJoinSemilattice._.reflexive"
d380 v0
  = coe
      MAlonzo.Code.Relation.Binary.d38
      (coe MAlonzo.Code.Relation.Binary.d268 (coe d92 (coe d364 v0)))
name382
  = "Relation.Binary.Lattice.IsBoundedJoinSemilattice._.supremum"
d382 v0 = coe d94 (coe d364 v0)
name384
  = "Relation.Binary.Lattice.IsBoundedJoinSemilattice._.trans"
d384 v0
  = coe
      MAlonzo.Code.Relation.Binary.d40
      (coe MAlonzo.Code.Relation.Binary.d268 (coe d92 (coe d364 v0)))
name386
  = "Relation.Binary.Lattice.IsBoundedJoinSemilattice._.\8764-resp-\8776"
d386 v0 v1 v2 v3 v4 v5 v6 v7 v8 = du386 v8
du386 v0
  = let v1 = coe d364 v0 in
    let v2 = coe d92 v1 in
    coe
      MAlonzo.Code.Relation.Binary.du54
      (coe MAlonzo.Code.Relation.Binary.d268 v2)
name390
  = "Relation.Binary.Lattice.IsBoundedJoinSemilattice._.Eq.refl"
d390 v0
  = coe
      MAlonzo.Code.Relation.Binary.Core.d516
      (coe
         MAlonzo.Code.Relation.Binary.d36
         (coe MAlonzo.Code.Relation.Binary.d268 (coe d92 (coe d364 v0))))
name392
  = "Relation.Binary.Lattice.IsBoundedJoinSemilattice._.Eq.reflexive"
d392 v0 v1 v2 v3 v4 v5 v6 v7 v8 = du392 v8
du392 v0
  = let v1 = coe d364 v0 in
    let v2 = coe d92 v1 in
    let v3 = coe MAlonzo.Code.Relation.Binary.d268 v2 in
    \ v4 v5 v6 ->
      coe
        MAlonzo.Code.Relation.Binary.Core.du522
        (coe MAlonzo.Code.Relation.Binary.d36 v3) v4
name394
  = "Relation.Binary.Lattice.IsBoundedJoinSemilattice._.Eq.sym"
d394 v0
  = coe
      MAlonzo.Code.Relation.Binary.Core.d518
      (coe
         MAlonzo.Code.Relation.Binary.d36
         (coe MAlonzo.Code.Relation.Binary.d268 (coe d92 (coe d364 v0))))
name396
  = "Relation.Binary.Lattice.IsBoundedJoinSemilattice._.Eq.trans"
d396 v0
  = coe
      MAlonzo.Code.Relation.Binary.Core.d520
      (coe
         MAlonzo.Code.Relation.Binary.d36
         (coe MAlonzo.Code.Relation.Binary.d268 (coe d92 (coe d364 v0))))
name404 = "Relation.Binary.Lattice.BoundedJoinSemilattice"
d404 a0 a1 a2 = ()
data T404 a0 a1 a2 a3 a4 a5 = C267 a0 a1 a2
name424 = "Relation.Binary.Lattice.BoundedJoinSemilattice.Carrier"
d424 = erased
name426 = "Relation.Binary.Lattice.BoundedJoinSemilattice._\8776_"
d426 = erased
name428 = "Relation.Binary.Lattice.BoundedJoinSemilattice._\8804_"
d428 = erased
name430 = "Relation.Binary.Lattice.BoundedJoinSemilattice._\8744_"
d430 v0
  = case coe v0 of
      C267 v4 v5 v6 -> coe v4
      _ -> coe MAlonzo.RTE.mazUnreachableError
name432 = "Relation.Binary.Lattice.BoundedJoinSemilattice.\8869"
d432 v0
  = case coe v0 of
      C267 v4 v5 v6 -> coe v5
      _ -> coe MAlonzo.RTE.mazUnreachableError
name434
  = "Relation.Binary.Lattice.BoundedJoinSemilattice.isBoundedJoinSemilattice"
d434 v0
  = case coe v0 of
      C267 v4 v5 v6 -> coe v6
      _ -> coe MAlonzo.RTE.mazUnreachableError
name438
  = "Relation.Binary.Lattice.BoundedJoinSemilattice._.antisym"
d438 v0
  = coe
      MAlonzo.Code.Relation.Binary.d270
      (coe d92 (coe d364 (coe d434 v0)))
name440
  = "Relation.Binary.Lattice.BoundedJoinSemilattice._.isEquivalence"
d440 v0
  = coe
      MAlonzo.Code.Relation.Binary.d36
      (coe
         MAlonzo.Code.Relation.Binary.d268
         (coe d92 (coe d364 (coe d434 v0))))
name442
  = "Relation.Binary.Lattice.BoundedJoinSemilattice._.isJoinSemilattice"
d442 v0 = coe d364 (coe d434 v0)
name444
  = "Relation.Binary.Lattice.BoundedJoinSemilattice._.isPartialOrder"
d444 v0 = coe d92 (coe d364 (coe d434 v0))
name446
  = "Relation.Binary.Lattice.BoundedJoinSemilattice._.isPreorder"
d446 v0
  = coe
      MAlonzo.Code.Relation.Binary.d268
      (coe d92 (coe d364 (coe d434 v0)))
name448
  = "Relation.Binary.Lattice.BoundedJoinSemilattice._.minimum"
d448 v0 = coe d366 (coe d434 v0)
name450 = "Relation.Binary.Lattice.BoundedJoinSemilattice._.refl"
d450 v0 v1
  = coe
      MAlonzo.Code.Relation.Binary.d38
      (coe
         MAlonzo.Code.Relation.Binary.d268
         (coe d92 (coe d364 (coe d434 v0))))
      v1 v1
      (coe
         MAlonzo.Code.Relation.Binary.Core.d516
         (coe
            MAlonzo.Code.Relation.Binary.d36
            (coe
               MAlonzo.Code.Relation.Binary.d268
               (coe d92 (coe d364 (coe d434 v0)))))
         v1)
name452
  = "Relation.Binary.Lattice.BoundedJoinSemilattice._.reflexive"
d452 v0
  = coe
      MAlonzo.Code.Relation.Binary.d38
      (coe
         MAlonzo.Code.Relation.Binary.d268
         (coe d92 (coe d364 (coe d434 v0))))
name454
  = "Relation.Binary.Lattice.BoundedJoinSemilattice._.supremum"
d454 v0 = coe d94 (coe d364 (coe d434 v0))
name456 = "Relation.Binary.Lattice.BoundedJoinSemilattice._.trans"
d456 v0
  = coe
      MAlonzo.Code.Relation.Binary.d40
      (coe
         MAlonzo.Code.Relation.Binary.d268
         (coe d92 (coe d364 (coe d434 v0))))
name458
  = "Relation.Binary.Lattice.BoundedJoinSemilattice._.\8764-resp-\8776"
d458 v0 v1 v2 v3 = du458 v3
du458 v0
  = let v1 = coe d434 v0 in
    let v2 = coe d364 v1 in
    let v3 = coe d92 v2 in
    coe
      MAlonzo.Code.Relation.Binary.du54
      (coe MAlonzo.Code.Relation.Binary.d268 v3)
name462
  = "Relation.Binary.Lattice.BoundedJoinSemilattice._.Eq.refl"
d462 v0
  = coe
      MAlonzo.Code.Relation.Binary.Core.d516
      (coe
         MAlonzo.Code.Relation.Binary.d36
         (coe
            MAlonzo.Code.Relation.Binary.d268
            (coe d92 (coe d364 (coe d434 v0)))))
name464
  = "Relation.Binary.Lattice.BoundedJoinSemilattice._.Eq.reflexive"
d464 v0 v1 v2 v3 = du464 v3
du464 v0
  = let v1 = coe d434 v0 in
    let v2 = coe d364 v1 in
    let v3 = coe d92 v2 in
    let v4 = coe MAlonzo.Code.Relation.Binary.d268 v3 in
    \ v5 v6 v7 ->
      coe
        MAlonzo.Code.Relation.Binary.Core.du522
        (coe MAlonzo.Code.Relation.Binary.d36 v4) v5
name466 = "Relation.Binary.Lattice.BoundedJoinSemilattice._.Eq.sym"
d466 v0
  = coe
      MAlonzo.Code.Relation.Binary.Core.d518
      (coe
         MAlonzo.Code.Relation.Binary.d36
         (coe
            MAlonzo.Code.Relation.Binary.d268
            (coe d92 (coe d364 (coe d434 v0)))))
name468
  = "Relation.Binary.Lattice.BoundedJoinSemilattice._.Eq.trans"
d468 v0
  = coe
      MAlonzo.Code.Relation.Binary.Core.d520
      (coe
         MAlonzo.Code.Relation.Binary.d36
         (coe
            MAlonzo.Code.Relation.Binary.d268
            (coe d92 (coe d364 (coe d434 v0)))))
name470
  = "Relation.Binary.Lattice.BoundedJoinSemilattice.joinSemiLattice"
d470 v0 = coe C143 (coe d430 v0) (coe d364 (coe d434 v0))
name474 = "Relation.Binary.Lattice.BoundedJoinSemilattice._.poset"
d474 v0
  = coe
      MAlonzo.Code.Relation.Binary.C345
      (coe d92 (coe d364 (coe d434 v0)))
name476
  = "Relation.Binary.Lattice.BoundedJoinSemilattice._.preorder"
d476 v0
  = coe
      MAlonzo.Code.Relation.Binary.C125
      (coe
         MAlonzo.Code.Relation.Binary.d268
         (coe d92 (coe d364 (coe d434 v0))))
name494 = "Relation.Binary.Lattice.IsBoundedMeetSemilattice"
d494 a0 a1 a2 a3 a4 a5 a6 a7 = ()
data T494 a0 a1 = C313 a0 a1
name516
  = "Relation.Binary.Lattice.IsBoundedMeetSemilattice.isMeetSemilattice"
d516 v0
  = case coe v0 of
      C313 v1 v2 -> coe v1
      _ -> coe MAlonzo.RTE.mazUnreachableError
name518
  = "Relation.Binary.Lattice.IsBoundedMeetSemilattice.maximum"
d518 v0
  = case coe v0 of
      C313 v1 v2 -> coe v2
      _ -> coe MAlonzo.RTE.mazUnreachableError
name522
  = "Relation.Binary.Lattice.IsBoundedMeetSemilattice._.antisym"
d522 v0
  = coe MAlonzo.Code.Relation.Binary.d270 (coe d226 (coe d516 v0))
name524
  = "Relation.Binary.Lattice.IsBoundedMeetSemilattice._.infimum"
d524 v0 = coe d228 (coe d516 v0)
name526
  = "Relation.Binary.Lattice.IsBoundedMeetSemilattice._.isEquivalence"
d526 v0
  = coe
      MAlonzo.Code.Relation.Binary.d36
      (coe MAlonzo.Code.Relation.Binary.d268 (coe d226 (coe d516 v0)))
name528
  = "Relation.Binary.Lattice.IsBoundedMeetSemilattice._.isPartialOrder"
d528 v0 = coe d226 (coe d516 v0)
name530
  = "Relation.Binary.Lattice.IsBoundedMeetSemilattice._.isPreorder"
d530 v0
  = coe MAlonzo.Code.Relation.Binary.d268 (coe d226 (coe d516 v0))
name532 = "Relation.Binary.Lattice.IsBoundedMeetSemilattice._.refl"
d532 v0 v1
  = coe
      MAlonzo.Code.Relation.Binary.d38
      (coe MAlonzo.Code.Relation.Binary.d268 (coe d226 (coe d516 v0))) v1
      v1
      (coe
         MAlonzo.Code.Relation.Binary.Core.d516
         (coe
            MAlonzo.Code.Relation.Binary.d36
            (coe MAlonzo.Code.Relation.Binary.d268 (coe d226 (coe d516 v0))))
         v1)
name534
  = "Relation.Binary.Lattice.IsBoundedMeetSemilattice._.reflexive"
d534 v0
  = coe
      MAlonzo.Code.Relation.Binary.d38
      (coe MAlonzo.Code.Relation.Binary.d268 (coe d226 (coe d516 v0)))
name536
  = "Relation.Binary.Lattice.IsBoundedMeetSemilattice._.trans"
d536 v0
  = coe
      MAlonzo.Code.Relation.Binary.d40
      (coe MAlonzo.Code.Relation.Binary.d268 (coe d226 (coe d516 v0)))
name538
  = "Relation.Binary.Lattice.IsBoundedMeetSemilattice._.\8764-resp-\8776"
d538 v0 v1 v2 v3 v4 v5 v6 v7 v8 = du538 v8
du538 v0
  = let v1 = coe d516 v0 in
    let v2 = coe d226 v1 in
    coe
      MAlonzo.Code.Relation.Binary.du54
      (coe MAlonzo.Code.Relation.Binary.d268 v2)
name542
  = "Relation.Binary.Lattice.IsBoundedMeetSemilattice._.Eq.refl"
d542 v0
  = coe
      MAlonzo.Code.Relation.Binary.Core.d516
      (coe
         MAlonzo.Code.Relation.Binary.d36
         (coe MAlonzo.Code.Relation.Binary.d268 (coe d226 (coe d516 v0))))
name544
  = "Relation.Binary.Lattice.IsBoundedMeetSemilattice._.Eq.reflexive"
d544 v0 v1 v2 v3 v4 v5 v6 v7 v8 = du544 v8
du544 v0
  = let v1 = coe d516 v0 in
    let v2 = coe d226 v1 in
    let v3 = coe MAlonzo.Code.Relation.Binary.d268 v2 in
    \ v4 v5 v6 ->
      coe
        MAlonzo.Code.Relation.Binary.Core.du522
        (coe MAlonzo.Code.Relation.Binary.d36 v3) v4
name546
  = "Relation.Binary.Lattice.IsBoundedMeetSemilattice._.Eq.sym"
d546 v0
  = coe
      MAlonzo.Code.Relation.Binary.Core.d518
      (coe
         MAlonzo.Code.Relation.Binary.d36
         (coe MAlonzo.Code.Relation.Binary.d268 (coe d226 (coe d516 v0))))
name548
  = "Relation.Binary.Lattice.IsBoundedMeetSemilattice._.Eq.trans"
d548 v0
  = coe
      MAlonzo.Code.Relation.Binary.Core.d520
      (coe
         MAlonzo.Code.Relation.Binary.d36
         (coe MAlonzo.Code.Relation.Binary.d268 (coe d226 (coe d516 v0))))
name556 = "Relation.Binary.Lattice.BoundedMeetSemilattice"
d556 a0 a1 a2 = ()
data T556 a0 a1 a2 a3 a4 a5 = C331 a0 a1 a2
name576 = "Relation.Binary.Lattice.BoundedMeetSemilattice.Carrier"
d576 = erased
name578 = "Relation.Binary.Lattice.BoundedMeetSemilattice._\8776_"
d578 = erased
name580 = "Relation.Binary.Lattice.BoundedMeetSemilattice._\8804_"
d580 = erased
name582 = "Relation.Binary.Lattice.BoundedMeetSemilattice._\8743_"
d582 v0
  = case coe v0 of
      C331 v4 v5 v6 -> coe v4
      _ -> coe MAlonzo.RTE.mazUnreachableError
name584 = "Relation.Binary.Lattice.BoundedMeetSemilattice.\8868"
d584 v0
  = case coe v0 of
      C331 v4 v5 v6 -> coe v5
      _ -> coe MAlonzo.RTE.mazUnreachableError
name586
  = "Relation.Binary.Lattice.BoundedMeetSemilattice.isBoundedMeetSemilattice"
d586 v0
  = case coe v0 of
      C331 v4 v5 v6 -> coe v6
      _ -> coe MAlonzo.RTE.mazUnreachableError
name590
  = "Relation.Binary.Lattice.BoundedMeetSemilattice._.antisym"
d590 v0
  = coe
      MAlonzo.Code.Relation.Binary.d270
      (coe d226 (coe d516 (coe d586 v0)))
name592
  = "Relation.Binary.Lattice.BoundedMeetSemilattice._.infimum"
d592 v0 = coe d228 (coe d516 (coe d586 v0))
name594
  = "Relation.Binary.Lattice.BoundedMeetSemilattice._.isEquivalence"
d594 v0
  = coe
      MAlonzo.Code.Relation.Binary.d36
      (coe
         MAlonzo.Code.Relation.Binary.d268
         (coe d226 (coe d516 (coe d586 v0))))
name596
  = "Relation.Binary.Lattice.BoundedMeetSemilattice._.isMeetSemilattice"
d596 v0 = coe d516 (coe d586 v0)
name598
  = "Relation.Binary.Lattice.BoundedMeetSemilattice._.isPartialOrder"
d598 v0 = coe d226 (coe d516 (coe d586 v0))
name600
  = "Relation.Binary.Lattice.BoundedMeetSemilattice._.isPreorder"
d600 v0
  = coe
      MAlonzo.Code.Relation.Binary.d268
      (coe d226 (coe d516 (coe d586 v0)))
name602
  = "Relation.Binary.Lattice.BoundedMeetSemilattice._.maximum"
d602 v0 = coe d518 (coe d586 v0)
name604 = "Relation.Binary.Lattice.BoundedMeetSemilattice._.refl"
d604 v0 v1
  = coe
      MAlonzo.Code.Relation.Binary.d38
      (coe
         MAlonzo.Code.Relation.Binary.d268
         (coe d226 (coe d516 (coe d586 v0))))
      v1 v1
      (coe
         MAlonzo.Code.Relation.Binary.Core.d516
         (coe
            MAlonzo.Code.Relation.Binary.d36
            (coe
               MAlonzo.Code.Relation.Binary.d268
               (coe d226 (coe d516 (coe d586 v0)))))
         v1)
name606
  = "Relation.Binary.Lattice.BoundedMeetSemilattice._.reflexive"
d606 v0
  = coe
      MAlonzo.Code.Relation.Binary.d38
      (coe
         MAlonzo.Code.Relation.Binary.d268
         (coe d226 (coe d516 (coe d586 v0))))
name608 = "Relation.Binary.Lattice.BoundedMeetSemilattice._.trans"
d608 v0
  = coe
      MAlonzo.Code.Relation.Binary.d40
      (coe
         MAlonzo.Code.Relation.Binary.d268
         (coe d226 (coe d516 (coe d586 v0))))
name610
  = "Relation.Binary.Lattice.BoundedMeetSemilattice._.\8764-resp-\8776"
d610 v0 v1 v2 v3 = du610 v3
du610 v0
  = let v1 = coe d586 v0 in
    let v2 = coe d516 v1 in
    let v3 = coe d226 v2 in
    coe
      MAlonzo.Code.Relation.Binary.du54
      (coe MAlonzo.Code.Relation.Binary.d268 v3)
name614
  = "Relation.Binary.Lattice.BoundedMeetSemilattice._.Eq.refl"
d614 v0
  = coe
      MAlonzo.Code.Relation.Binary.Core.d516
      (coe
         MAlonzo.Code.Relation.Binary.d36
         (coe
            MAlonzo.Code.Relation.Binary.d268
            (coe d226 (coe d516 (coe d586 v0)))))
name616
  = "Relation.Binary.Lattice.BoundedMeetSemilattice._.Eq.reflexive"
d616 v0 v1 v2 v3 = du616 v3
du616 v0
  = let v1 = coe d586 v0 in
    let v2 = coe d516 v1 in
    let v3 = coe d226 v2 in
    let v4 = coe MAlonzo.Code.Relation.Binary.d268 v3 in
    \ v5 v6 v7 ->
      coe
        MAlonzo.Code.Relation.Binary.Core.du522
        (coe MAlonzo.Code.Relation.Binary.d36 v4) v5
name618 = "Relation.Binary.Lattice.BoundedMeetSemilattice._.Eq.sym"
d618 v0
  = coe
      MAlonzo.Code.Relation.Binary.Core.d518
      (coe
         MAlonzo.Code.Relation.Binary.d36
         (coe
            MAlonzo.Code.Relation.Binary.d268
            (coe d226 (coe d516 (coe d586 v0)))))
name620
  = "Relation.Binary.Lattice.BoundedMeetSemilattice._.Eq.trans"
d620 v0
  = coe
      MAlonzo.Code.Relation.Binary.Core.d520
      (coe
         MAlonzo.Code.Relation.Binary.d36
         (coe
            MAlonzo.Code.Relation.Binary.d268
            (coe d226 (coe d516 (coe d586 v0)))))
name622
  = "Relation.Binary.Lattice.BoundedMeetSemilattice.meetSemiLattice"
d622 v0 = coe C205 (coe d582 v0) (coe d516 (coe d586 v0))
name626 = "Relation.Binary.Lattice.BoundedMeetSemilattice._.poset"
d626 v0
  = coe
      MAlonzo.Code.Relation.Binary.C345
      (coe d226 (coe d516 (coe d586 v0)))
name628
  = "Relation.Binary.Lattice.BoundedMeetSemilattice._.preorder"
d628 v0
  = coe
      MAlonzo.Code.Relation.Binary.C125
      (coe
         MAlonzo.Code.Relation.Binary.d268
         (coe d226 (coe d516 (coe d586 v0))))
name646 = "Relation.Binary.Lattice.IsLattice"
d646 a0 a1 a2 a3 a4 a5 a6 a7 = ()
data T646 a0 a1 a2 = C381 a0 a1 a2
name670 = "Relation.Binary.Lattice.IsLattice.isPartialOrder"
d670 v0
  = case coe v0 of
      C381 v1 v2 v3 -> coe v1
      _ -> coe MAlonzo.RTE.mazUnreachableError
name672 = "Relation.Binary.Lattice.IsLattice.supremum"
d672 v0
  = case coe v0 of
      C381 v1 v2 v3 -> coe v2
      _ -> coe MAlonzo.RTE.mazUnreachableError
name674 = "Relation.Binary.Lattice.IsLattice.infimum"
d674 v0
  = case coe v0 of
      C381 v1 v2 v3 -> coe v3
      _ -> coe MAlonzo.RTE.mazUnreachableError
name676 = "Relation.Binary.Lattice.IsLattice.isJoinSemilattice"
d676 v0 = coe C125 (coe d670 v0) (coe d672 v0)
name678 = "Relation.Binary.Lattice.IsLattice.isMeetSemilattice"
d678 v0 = coe C187 (coe d670 v0) (coe d674 v0)
name682 = "Relation.Binary.Lattice.IsLattice._.antisym"
d682 v0 = coe MAlonzo.Code.Relation.Binary.d270 (coe d670 v0)
name684 = "Relation.Binary.Lattice.IsLattice._.isEquivalence"
d684 v0
  = coe
      MAlonzo.Code.Relation.Binary.d36
      (coe MAlonzo.Code.Relation.Binary.d268 (coe d670 v0))
name686 = "Relation.Binary.Lattice.IsLattice._.isPreorder"
d686 v0 = coe MAlonzo.Code.Relation.Binary.d268 (coe d670 v0)
name688 = "Relation.Binary.Lattice.IsLattice._.refl"
d688 v0 v1
  = coe
      MAlonzo.Code.Relation.Binary.d38
      (coe MAlonzo.Code.Relation.Binary.d268 (coe d670 v0)) v1 v1
      (coe
         MAlonzo.Code.Relation.Binary.Core.d516
         (coe
            MAlonzo.Code.Relation.Binary.d36
            (coe MAlonzo.Code.Relation.Binary.d268 (coe d670 v0)))
         v1)
name690 = "Relation.Binary.Lattice.IsLattice._.reflexive"
d690 v0
  = coe
      MAlonzo.Code.Relation.Binary.d38
      (coe MAlonzo.Code.Relation.Binary.d268 (coe d670 v0))
name692 = "Relation.Binary.Lattice.IsLattice._.trans"
d692 v0
  = coe
      MAlonzo.Code.Relation.Binary.d40
      (coe MAlonzo.Code.Relation.Binary.d268 (coe d670 v0))
name694 = "Relation.Binary.Lattice.IsLattice._.\8764-resp-\8776"
d694 v0 v1 v2 v3 v4 v5 v6 v7 v8 = du694 v8
du694 v0
  = let v1 = coe d670 v0 in
    coe
      MAlonzo.Code.Relation.Binary.du54
      (coe MAlonzo.Code.Relation.Binary.d268 v1)
name698 = "Relation.Binary.Lattice.IsLattice._.Eq.refl"
d698 v0
  = coe
      MAlonzo.Code.Relation.Binary.Core.d516
      (coe
         MAlonzo.Code.Relation.Binary.d36
         (coe MAlonzo.Code.Relation.Binary.d268 (coe d670 v0)))
name700 = "Relation.Binary.Lattice.IsLattice._.Eq.reflexive"
d700 v0 v1 v2 v3 v4 v5 v6 v7 v8 = du700 v8
du700 v0
  = let v1 = coe d670 v0 in
    let v2 = coe MAlonzo.Code.Relation.Binary.d268 v1 in
    \ v3 v4 v5 ->
      coe
        MAlonzo.Code.Relation.Binary.Core.du522
        (coe MAlonzo.Code.Relation.Binary.d36 v2) v3
name702 = "Relation.Binary.Lattice.IsLattice._.Eq.sym"
d702 v0
  = coe
      MAlonzo.Code.Relation.Binary.Core.d518
      (coe
         MAlonzo.Code.Relation.Binary.d36
         (coe MAlonzo.Code.Relation.Binary.d268 (coe d670 v0)))
name704 = "Relation.Binary.Lattice.IsLattice._.Eq.trans"
d704 v0
  = coe
      MAlonzo.Code.Relation.Binary.Core.d520
      (coe
         MAlonzo.Code.Relation.Binary.d36
         (coe MAlonzo.Code.Relation.Binary.d268 (coe d670 v0)))
name712 = "Relation.Binary.Lattice.Lattice"
d712 a0 a1 a2 = ()
data T712 a0 a1 a2 a3 a4 a5 = C489 a0 a1 a2
name732 = "Relation.Binary.Lattice.Lattice.Carrier"
d732 = erased
name734 = "Relation.Binary.Lattice.Lattice._\8776_"
d734 = erased
name736 = "Relation.Binary.Lattice.Lattice._\8804_"
d736 = erased
name738 = "Relation.Binary.Lattice.Lattice._\8744_"
d738 v0
  = case coe v0 of
      C489 v4 v5 v6 -> coe v4
      _ -> coe MAlonzo.RTE.mazUnreachableError
name740 = "Relation.Binary.Lattice.Lattice._\8743_"
d740 v0
  = case coe v0 of
      C489 v4 v5 v6 -> coe v5
      _ -> coe MAlonzo.RTE.mazUnreachableError
name742 = "Relation.Binary.Lattice.Lattice.isLattice"
d742 v0
  = case coe v0 of
      C489 v4 v5 v6 -> coe v6
      _ -> coe MAlonzo.RTE.mazUnreachableError
name746 = "Relation.Binary.Lattice.Lattice._.antisym"
d746 v0
  = coe MAlonzo.Code.Relation.Binary.d270 (coe d670 (coe d742 v0))
name748 = "Relation.Binary.Lattice.Lattice._.infimum"
d748 v0 = coe d674 (coe d742 v0)
name750 = "Relation.Binary.Lattice.Lattice._.isEquivalence"
d750 v0
  = coe
      MAlonzo.Code.Relation.Binary.d36
      (coe MAlonzo.Code.Relation.Binary.d268 (coe d670 (coe d742 v0)))
name752 = "Relation.Binary.Lattice.Lattice._.isJoinSemilattice"
d752 v0
  = coe C125 (coe d670 (coe d742 v0)) (coe d672 (coe d742 v0))
name754 = "Relation.Binary.Lattice.Lattice._.isMeetSemilattice"
d754 v0
  = coe C187 (coe d670 (coe d742 v0)) (coe d674 (coe d742 v0))
name756 = "Relation.Binary.Lattice.Lattice._.isPartialOrder"
d756 v0 = coe d670 (coe d742 v0)
name758 = "Relation.Binary.Lattice.Lattice._.isPreorder"
d758 v0
  = coe MAlonzo.Code.Relation.Binary.d268 (coe d670 (coe d742 v0))
name760 = "Relation.Binary.Lattice.Lattice._.refl"
d760 v0 v1
  = coe
      MAlonzo.Code.Relation.Binary.d38
      (coe MAlonzo.Code.Relation.Binary.d268 (coe d670 (coe d742 v0))) v1
      v1
      (coe
         MAlonzo.Code.Relation.Binary.Core.d516
         (coe
            MAlonzo.Code.Relation.Binary.d36
            (coe MAlonzo.Code.Relation.Binary.d268 (coe d670 (coe d742 v0))))
         v1)
name762 = "Relation.Binary.Lattice.Lattice._.reflexive"
d762 v0
  = coe
      MAlonzo.Code.Relation.Binary.d38
      (coe MAlonzo.Code.Relation.Binary.d268 (coe d670 (coe d742 v0)))
name764 = "Relation.Binary.Lattice.Lattice._.supremum"
d764 v0 = coe d672 (coe d742 v0)
name766 = "Relation.Binary.Lattice.Lattice._.trans"
d766 v0
  = coe
      MAlonzo.Code.Relation.Binary.d40
      (coe MAlonzo.Code.Relation.Binary.d268 (coe d670 (coe d742 v0)))
name768 = "Relation.Binary.Lattice.Lattice._.\8764-resp-\8776"
d768 v0 v1 v2 v3 = du768 v3
du768 v0
  = let v1 = coe d742 v0 in
    let v2 = coe d670 v1 in
    coe
      MAlonzo.Code.Relation.Binary.du54
      (coe MAlonzo.Code.Relation.Binary.d268 v2)
name772 = "Relation.Binary.Lattice.Lattice._.Eq.refl"
d772 v0
  = coe
      MAlonzo.Code.Relation.Binary.Core.d516
      (coe
         MAlonzo.Code.Relation.Binary.d36
         (coe MAlonzo.Code.Relation.Binary.d268 (coe d670 (coe d742 v0))))
name774 = "Relation.Binary.Lattice.Lattice._.Eq.reflexive"
d774 v0 v1 v2 v3 = du774 v3
du774 v0
  = let v1 = coe d742 v0 in
    let v2 = coe d670 v1 in
    let v3 = coe MAlonzo.Code.Relation.Binary.d268 v2 in
    \ v4 v5 v6 ->
      coe
        MAlonzo.Code.Relation.Binary.Core.du522
        (coe MAlonzo.Code.Relation.Binary.d36 v3) v4
name776 = "Relation.Binary.Lattice.Lattice._.Eq.sym"
d776 v0
  = coe
      MAlonzo.Code.Relation.Binary.Core.d518
      (coe
         MAlonzo.Code.Relation.Binary.d36
         (coe MAlonzo.Code.Relation.Binary.d268 (coe d670 (coe d742 v0))))
name778 = "Relation.Binary.Lattice.Lattice._.Eq.trans"
d778 v0
  = coe
      MAlonzo.Code.Relation.Binary.Core.d520
      (coe
         MAlonzo.Code.Relation.Binary.d36
         (coe MAlonzo.Code.Relation.Binary.d268 (coe d670 (coe d742 v0))))
name780 = "Relation.Binary.Lattice.Lattice.joinSemilattice"
d780 v0
  = coe
      C143 (coe d738 v0)
      (coe C125 (coe d670 (coe d742 v0)) (coe d672 (coe d742 v0)))
name782 = "Relation.Binary.Lattice.Lattice.meetSemilattice"
d782 v0
  = coe
      C205 (coe d740 v0)
      (coe C187 (coe d670 (coe d742 v0)) (coe d674 (coe d742 v0)))
name786 = "Relation.Binary.Lattice.Lattice._.poset"
d786 v0
  = coe MAlonzo.Code.Relation.Binary.C345 (coe d670 (coe d742 v0))
name788 = "Relation.Binary.Lattice.Lattice._.preorder"
d788 v0
  = coe
      MAlonzo.Code.Relation.Binary.C125
      (coe MAlonzo.Code.Relation.Binary.d268 (coe d670 (coe d742 v0)))
name810 = "Relation.Binary.Lattice.IsBoundedLattice"
d810 a0 a1 a2 a3 a4 a5 a6 a7 a8 a9 = ()
data T810 a0 a1 a2 = C555 a0 a1 a2
name838 = "Relation.Binary.Lattice.IsBoundedLattice.isLattice"
d838 v0
  = case coe v0 of
      C555 v1 v2 v3 -> coe v1
      _ -> coe MAlonzo.RTE.mazUnreachableError
name840 = "Relation.Binary.Lattice.IsBoundedLattice.maximum"
d840 v0
  = case coe v0 of
      C555 v1 v2 v3 -> coe v2
      _ -> coe MAlonzo.RTE.mazUnreachableError
name842 = "Relation.Binary.Lattice.IsBoundedLattice.minimum"
d842 v0
  = case coe v0 of
      C555 v1 v2 v3 -> coe v3
      _ -> coe MAlonzo.RTE.mazUnreachableError
name846 = "Relation.Binary.Lattice.IsBoundedLattice._.antisym"
d846 v0
  = coe MAlonzo.Code.Relation.Binary.d270 (coe d670 (coe d838 v0))
name848 = "Relation.Binary.Lattice.IsBoundedLattice._.infimum"
d848 v0 = coe d674 (coe d838 v0)
name850
  = "Relation.Binary.Lattice.IsBoundedLattice._.isEquivalence"
d850 v0
  = coe
      MAlonzo.Code.Relation.Binary.d36
      (coe MAlonzo.Code.Relation.Binary.d268 (coe d670 (coe d838 v0)))
name852
  = "Relation.Binary.Lattice.IsBoundedLattice._.isJoinSemilattice"
d852 v0
  = coe C125 (coe d670 (coe d838 v0)) (coe d672 (coe d838 v0))
name854
  = "Relation.Binary.Lattice.IsBoundedLattice._.isMeetSemilattice"
d854 v0
  = coe C187 (coe d670 (coe d838 v0)) (coe d674 (coe d838 v0))
name856
  = "Relation.Binary.Lattice.IsBoundedLattice._.isPartialOrder"
d856 v0 = coe d670 (coe d838 v0)
name858 = "Relation.Binary.Lattice.IsBoundedLattice._.isPreorder"
d858 v0
  = coe MAlonzo.Code.Relation.Binary.d268 (coe d670 (coe d838 v0))
name860 = "Relation.Binary.Lattice.IsBoundedLattice._.refl"
d860 v0 v1
  = coe
      MAlonzo.Code.Relation.Binary.d38
      (coe MAlonzo.Code.Relation.Binary.d268 (coe d670 (coe d838 v0))) v1
      v1
      (coe
         MAlonzo.Code.Relation.Binary.Core.d516
         (coe
            MAlonzo.Code.Relation.Binary.d36
            (coe MAlonzo.Code.Relation.Binary.d268 (coe d670 (coe d838 v0))))
         v1)
name862 = "Relation.Binary.Lattice.IsBoundedLattice._.reflexive"
d862 v0
  = coe
      MAlonzo.Code.Relation.Binary.d38
      (coe MAlonzo.Code.Relation.Binary.d268 (coe d670 (coe d838 v0)))
name864 = "Relation.Binary.Lattice.IsBoundedLattice._.supremum"
d864 v0 = coe d672 (coe d838 v0)
name866 = "Relation.Binary.Lattice.IsBoundedLattice._.trans"
d866 v0
  = coe
      MAlonzo.Code.Relation.Binary.d40
      (coe MAlonzo.Code.Relation.Binary.d268 (coe d670 (coe d838 v0)))
name868
  = "Relation.Binary.Lattice.IsBoundedLattice._.\8764-resp-\8776"
d868 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 = du868 v10
du868 v0
  = let v1 = coe d838 v0 in
    let v2 = coe d670 v1 in
    coe
      MAlonzo.Code.Relation.Binary.du54
      (coe MAlonzo.Code.Relation.Binary.d268 v2)
name872 = "Relation.Binary.Lattice.IsBoundedLattice._.Eq.refl"
d872 v0
  = coe
      MAlonzo.Code.Relation.Binary.Core.d516
      (coe
         MAlonzo.Code.Relation.Binary.d36
         (coe MAlonzo.Code.Relation.Binary.d268 (coe d670 (coe d838 v0))))
name874 = "Relation.Binary.Lattice.IsBoundedLattice._.Eq.reflexive"
d874 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 = du874 v10
du874 v0
  = let v1 = coe d838 v0 in
    let v2 = coe d670 v1 in
    let v3 = coe MAlonzo.Code.Relation.Binary.d268 v2 in
    \ v4 v5 v6 ->
      coe
        MAlonzo.Code.Relation.Binary.Core.du522
        (coe MAlonzo.Code.Relation.Binary.d36 v3) v4
name876 = "Relation.Binary.Lattice.IsBoundedLattice._.Eq.sym"
d876 v0
  = coe
      MAlonzo.Code.Relation.Binary.Core.d518
      (coe
         MAlonzo.Code.Relation.Binary.d36
         (coe MAlonzo.Code.Relation.Binary.d268 (coe d670 (coe d838 v0))))
name878 = "Relation.Binary.Lattice.IsBoundedLattice._.Eq.trans"
d878 v0
  = coe
      MAlonzo.Code.Relation.Binary.Core.d520
      (coe
         MAlonzo.Code.Relation.Binary.d36
         (coe MAlonzo.Code.Relation.Binary.d268 (coe d670 (coe d838 v0))))
name880
  = "Relation.Binary.Lattice.IsBoundedLattice.isBoundedJoinSemilattice"
d880 v0
  = coe
      C249 (coe C125 (coe d670 (coe d838 v0)) (coe d672 (coe d838 v0)))
      (coe d842 v0)
name882
  = "Relation.Binary.Lattice.IsBoundedLattice.isBoundedMeetSemilattice"
d882 v0
  = coe
      C313 (coe C187 (coe d670 (coe d838 v0)) (coe d674 (coe d838 v0)))
      (coe d840 v0)
name890 = "Relation.Binary.Lattice.BoundedLattice"
d890 a0 a1 a2 = ()
data T890 a0 a1 a2 a3 a4 a5 a6 a7 = C679 a0 a1 a2 a3 a4
name914 = "Relation.Binary.Lattice.BoundedLattice.Carrier"
d914 = erased
name916 = "Relation.Binary.Lattice.BoundedLattice._\8776_"
d916 = erased
name918 = "Relation.Binary.Lattice.BoundedLattice._\8804_"
d918 = erased
name920 = "Relation.Binary.Lattice.BoundedLattice._\8744_"
d920 v0
  = case coe v0 of
      C679 v4 v5 v6 v7 v8 -> coe v4
      _ -> coe MAlonzo.RTE.mazUnreachableError
name922 = "Relation.Binary.Lattice.BoundedLattice._\8743_"
d922 v0
  = case coe v0 of
      C679 v4 v5 v6 v7 v8 -> coe v5
      _ -> coe MAlonzo.RTE.mazUnreachableError
name924 = "Relation.Binary.Lattice.BoundedLattice.\8868"
d924 v0
  = case coe v0 of
      C679 v4 v5 v6 v7 v8 -> coe v6
      _ -> coe MAlonzo.RTE.mazUnreachableError
name926 = "Relation.Binary.Lattice.BoundedLattice.\8869"
d926 v0
  = case coe v0 of
      C679 v4 v5 v6 v7 v8 -> coe v7
      _ -> coe MAlonzo.RTE.mazUnreachableError
name928 = "Relation.Binary.Lattice.BoundedLattice.isBoundedLattice"
d928 v0
  = case coe v0 of
      C679 v4 v5 v6 v7 v8 -> coe v8
      _ -> coe MAlonzo.RTE.mazUnreachableError
name932 = "Relation.Binary.Lattice.BoundedLattice._.antisym"
d932 v0
  = coe
      MAlonzo.Code.Relation.Binary.d270
      (coe d670 (coe d838 (coe d928 v0)))
name934 = "Relation.Binary.Lattice.BoundedLattice._.infimum"
d934 v0 = coe d674 (coe d838 (coe d928 v0))
name936
  = "Relation.Binary.Lattice.BoundedLattice._.isBoundedJoinSemilattice"
d936 v0
  = coe
      C249
      (coe
         C125 (coe d670 (coe d838 (coe d928 v0)))
         (coe d672 (coe d838 (coe d928 v0))))
      (coe d842 (coe d928 v0))
name938
  = "Relation.Binary.Lattice.BoundedLattice._.isBoundedMeetSemilattice"
d938 v0
  = coe
      C313
      (coe
         C187 (coe d670 (coe d838 (coe d928 v0)))
         (coe d674 (coe d838 (coe d928 v0))))
      (coe d840 (coe d928 v0))
name940 = "Relation.Binary.Lattice.BoundedLattice._.isEquivalence"
d940 v0
  = coe
      MAlonzo.Code.Relation.Binary.d36
      (coe
         MAlonzo.Code.Relation.Binary.d268
         (coe d670 (coe d838 (coe d928 v0))))
name942
  = "Relation.Binary.Lattice.BoundedLattice._.isJoinSemilattice"
d942 v0
  = coe
      C125 (coe d670 (coe d838 (coe d928 v0)))
      (coe d672 (coe d838 (coe d928 v0)))
name944 = "Relation.Binary.Lattice.BoundedLattice._.isLattice"
d944 v0 = coe d838 (coe d928 v0)
name946
  = "Relation.Binary.Lattice.BoundedLattice._.isMeetSemilattice"
d946 v0
  = coe
      C187 (coe d670 (coe d838 (coe d928 v0)))
      (coe d674 (coe d838 (coe d928 v0)))
name948 = "Relation.Binary.Lattice.BoundedLattice._.isPartialOrder"
d948 v0 = coe d670 (coe d838 (coe d928 v0))
name950 = "Relation.Binary.Lattice.BoundedLattice._.isPreorder"
d950 v0
  = coe
      MAlonzo.Code.Relation.Binary.d268
      (coe d670 (coe d838 (coe d928 v0)))
name952 = "Relation.Binary.Lattice.BoundedLattice._.maximum"
d952 v0 = coe d840 (coe d928 v0)
name954 = "Relation.Binary.Lattice.BoundedLattice._.minimum"
d954 v0 = coe d842 (coe d928 v0)
name956 = "Relation.Binary.Lattice.BoundedLattice._.refl"
d956 v0 v1
  = coe
      MAlonzo.Code.Relation.Binary.d38
      (coe
         MAlonzo.Code.Relation.Binary.d268
         (coe d670 (coe d838 (coe d928 v0))))
      v1 v1
      (coe
         MAlonzo.Code.Relation.Binary.Core.d516
         (coe
            MAlonzo.Code.Relation.Binary.d36
            (coe
               MAlonzo.Code.Relation.Binary.d268
               (coe d670 (coe d838 (coe d928 v0)))))
         v1)
name958 = "Relation.Binary.Lattice.BoundedLattice._.reflexive"
d958 v0
  = coe
      MAlonzo.Code.Relation.Binary.d38
      (coe
         MAlonzo.Code.Relation.Binary.d268
         (coe d670 (coe d838 (coe d928 v0))))
name960 = "Relation.Binary.Lattice.BoundedLattice._.supremum"
d960 v0 = coe d672 (coe d838 (coe d928 v0))
name962 = "Relation.Binary.Lattice.BoundedLattice._.trans"
d962 v0
  = coe
      MAlonzo.Code.Relation.Binary.d40
      (coe
         MAlonzo.Code.Relation.Binary.d268
         (coe d670 (coe d838 (coe d928 v0))))
name964
  = "Relation.Binary.Lattice.BoundedLattice._.\8764-resp-\8776"
d964 v0 v1 v2 v3 = du964 v3
du964 v0
  = let v1 = coe d928 v0 in
    let v2 = coe d838 v1 in
    let v3 = coe d670 v2 in
    coe
      MAlonzo.Code.Relation.Binary.du54
      (coe MAlonzo.Code.Relation.Binary.d268 v3)
name968 = "Relation.Binary.Lattice.BoundedLattice._.Eq.refl"
d968 v0
  = coe
      MAlonzo.Code.Relation.Binary.Core.d516
      (coe
         MAlonzo.Code.Relation.Binary.d36
         (coe
            MAlonzo.Code.Relation.Binary.d268
            (coe d670 (coe d838 (coe d928 v0)))))
name970 = "Relation.Binary.Lattice.BoundedLattice._.Eq.reflexive"
d970 v0 v1 v2 v3 = du970 v3
du970 v0
  = let v1 = coe d928 v0 in
    let v2 = coe d838 v1 in
    let v3 = coe d670 v2 in
    let v4 = coe MAlonzo.Code.Relation.Binary.d268 v3 in
    \ v5 v6 v7 ->
      coe
        MAlonzo.Code.Relation.Binary.Core.du522
        (coe MAlonzo.Code.Relation.Binary.d36 v4) v5
name972 = "Relation.Binary.Lattice.BoundedLattice._.Eq.sym"
d972 v0
  = coe
      MAlonzo.Code.Relation.Binary.Core.d518
      (coe
         MAlonzo.Code.Relation.Binary.d36
         (coe
            MAlonzo.Code.Relation.Binary.d268
            (coe d670 (coe d838 (coe d928 v0)))))
name974 = "Relation.Binary.Lattice.BoundedLattice._.Eq.trans"
d974 v0
  = coe
      MAlonzo.Code.Relation.Binary.Core.d520
      (coe
         MAlonzo.Code.Relation.Binary.d36
         (coe
            MAlonzo.Code.Relation.Binary.d268
            (coe d670 (coe d838 (coe d928 v0)))))
name976
  = "Relation.Binary.Lattice.BoundedLattice.boundedJoinSemilattice"
d976 v0
  = coe
      C267 (coe d920 v0) (coe d926 v0)
      (coe
         C249
         (coe
            C125 (coe d670 (coe d838 (coe d928 v0)))
            (coe d672 (coe d838 (coe d928 v0))))
         (coe d842 (coe d928 v0)))
name978
  = "Relation.Binary.Lattice.BoundedLattice.boundedMeetSemilattice"
d978 v0
  = coe
      C331 (coe d922 v0) (coe d924 v0)
      (coe
         C313
         (coe
            C187 (coe d670 (coe d838 (coe d928 v0)))
            (coe d674 (coe d838 (coe d928 v0))))
         (coe d840 (coe d928 v0)))