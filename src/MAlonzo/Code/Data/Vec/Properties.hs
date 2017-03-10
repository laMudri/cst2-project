{-# LANGUAGE EmptyDataDecls, ExistentialQuantification,
             ScopedTypeVariables, NoMonomorphismRestriction, Rank2Types #-}
module MAlonzo.Code.Data.Vec.Properties where

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
import qualified MAlonzo.Code.Data.Empty
import qualified MAlonzo.Code.Data.Fin
import qualified MAlonzo.Code.Data.List.Any
import qualified MAlonzo.Code.Data.List.Base
import qualified MAlonzo.Code.Data.Product
import qualified MAlonzo.Code.Data.Vec
import qualified MAlonzo.Code.Data.Vec.Equality
import qualified MAlonzo.Code.Function
import qualified MAlonzo.Code.Function.Inverse
import qualified MAlonzo.Code.Relation.Binary
import qualified MAlonzo.Code.Relation.Binary.Core
import qualified MAlonzo.Code.Relation.Binary.PropositionalEquality

name42 = "Data.Vec.Properties.UsingVectorEquality._._\8776_"
d42 a0 a1 a2 a3 a4 a5 a6 = ()
name48 = "Data.Vec.Properties.UsingVectorEquality._.refl"
d48 v0 v1 v2 = du48 v2
du48 v0 v1 v2 = coe MAlonzo.Code.Data.Vec.Equality.du78 v0 v2
name68 = "Data.Vec.Properties.UsingVectorEquality.replicate-lemma"
d68 v0 v1 v2 v3 v4 v5 v6 = du68 v2 v3 v4 v5 v6
du68 v0 v1 v2 v3 v4
  = case coe v2 of
      0 -> coe
             MAlonzo.Code.Data.Vec.Equality.du78 v0
             (coe MAlonzo.Code.Data.Vec.C22 v1 v3 v4)
      _ -> let v5 = coe subInt v2 (1 :: Integer) in
           coe
             MAlonzo.Code.Data.Vec.Equality.C60 v3 (coe addInt v1 v2)
             (coe
                MAlonzo.Code.Data.Vec.du130 (coe addInt (1 :: Integer) v1)
                (coe MAlonzo.Code.Data.Vec.du166 v5 v3)
                (coe MAlonzo.Code.Data.Vec.C22 v1 v3 v4))
             v3 (coe addInt v1 v2)
             (coe
                MAlonzo.Code.Data.Vec.du130 v1
                (coe MAlonzo.Code.Data.Vec.du166 v2 v3) v4)
             (coe
                MAlonzo.Code.Relation.Binary.Core.d516
                (coe MAlonzo.Code.Relation.Binary.d136 v0) v3)
             (coe du68 v0 v1 v5 v3 v4)
name84 = "Data.Vec.Properties.UsingVectorEquality.xs++[]=xs"
d84 v0 v1 v2 v3 v4 = du84 v2 v4
du84 v0 v1
  = case coe v1 of
      MAlonzo.Code.Data.Vec.C14 -> coe MAlonzo.Code.Data.Vec.Equality.C42
      MAlonzo.Code.Data.Vec.C22 v2 v3 v4
        -> coe
             MAlonzo.Code.Data.Vec.Equality.C60 v3 v2
             (coe
                MAlonzo.Code.Data.Vec.du130 (0 :: Integer) v4
                MAlonzo.Code.Data.Vec.C14)
             v3 v2 v4
             (coe
                MAlonzo.Code.Relation.Binary.Core.d516
                (coe MAlonzo.Code.Relation.Binary.d136 v0) v3)
             (coe du84 v0 v4)
      _ -> coe MAlonzo.RTE.mazUnreachableError
name104 = "Data.Vec.Properties.UsingVectorEquality.map-++-commute"
d104 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 = du104 v2 v5 v7 v8 v9
du104 v0 v1 v2 v3 v4
  = case coe v3 of
      MAlonzo.Code.Data.Vec.C14
        -> coe
             MAlonzo.Code.Data.Vec.Equality.du78 v0
             (coe
                MAlonzo.Code.Data.Vec.du192 v1 v2
                (coe MAlonzo.Code.Data.Vec.du130 v1 v3 v4))
      MAlonzo.Code.Data.Vec.C22 v5 v6 v7
        -> coe
             MAlonzo.Code.Data.Vec.Equality.C60 (coe v2 v6) (coe addInt v1 v5)
             (coe
                MAlonzo.Code.Data.Vec.du192 (coe addInt v1 v5) v2
                (coe MAlonzo.Code.Data.Vec.du130 v1 v7 v4))
             (coe v2 v6) (coe addInt v1 v5)
             (coe
                MAlonzo.Code.Data.Vec.du130 v1
                (coe MAlonzo.Code.Data.Vec.du192 v5 v2 v7)
                (coe MAlonzo.Code.Data.Vec.du192 v1 v2 v4))
             (coe
                MAlonzo.Code.Relation.Binary.Core.d516
                (coe MAlonzo.Code.Relation.Binary.d136 v0) (coe v2 v6))
             (coe du104 v0 v1 v2 v7 v4)
      _ -> coe MAlonzo.RTE.mazUnreachableError
name128 = "Data.Vec.Properties.\8759-injective"
d128 v0 v1 v2 v3 v4 v5 v6 v7 = du128
du128 = coe MAlonzo.Code.Data.Product.C30 erased erased
name136 = "Data.Vec.Properties.lookup-morphism"
d136 v0 v1 v2 = du136 v2
du136 v0
  = coe
      MAlonzo.Code.Category.Applicative.Indexed.C391
      (\ v1 v2 v3 -> coe MAlonzo.Code.Data.Vec.du714 v0)
name152 = "Data.Vec.Properties._.lookup-replicate"
d152 = erased
name174 = "Data.Vec.Properties._.lookup-\8859"
d174 = erased
name204 = "Data.Vec.Properties.lookup\8728tabulate"
d204 = erased
name220 = "Data.Vec.Properties.tabulate\8728lookup"
d220 = erased
name230 = "Data.Vec.Properties.lookup-allFin"
d230 = erased
name248 = "Data.Vec.Properties.lookup-++-<"
d248 = erased
name286 = "Data.Vec.Properties.lookup-++-\8805"
d286 = erased
name324 = "Data.Vec.Properties.lookup-++-inject+"
d324 = erased
name356 = "Data.Vec.Properties.lookup-++-+\8242"
d356 = erased
name386 = "Data.Vec.Properties.lookup\8728update"
d386 = erased
name412 = "Data.Vec.Properties.lookup\8728update\8242"
d412 = erased
name466 = "Data.Vec.Properties.map-cong"
d466 = erased
name482 = "Data.Vec.Properties.map-id"
d482 = erased
name506 = "Data.Vec.Properties.map-\8728"
d506 = erased
name534 = "Data.Vec.Properties.tabulate-\8728"
d534 = erased
name554 = "Data.Vec.Properties.tabulate-allFin"
d554 = erased
name560 = "Data.Vec.Properties.allFin-map"
d560 = erased
name574 = "Data.Vec.Properties.map-lookup-allFin"
d574 = erased
name600 = "Data.Vec.Properties.\8712-tabulate"
d600 v0 v1 v2 v3 v4 = du600 v3 v4
du600 v0 v1
  = case coe v1 of
      MAlonzo.Code.Data.Fin.C8 v2
        -> coe
             MAlonzo.Code.Data.Vec.C42 v2 (coe v0 v1)
             (coe
                MAlonzo.Code.Data.Vec.du732 v2
                (coe
                   MAlonzo.Code.Function.du38 (\ v3 -> v0)
                   (coe MAlonzo.Code.Data.Fin.C14 v2)))
      MAlonzo.Code.Data.Fin.C14 v2 v3
        -> coe
             MAlonzo.Code.Data.Vec.C54 v2
             (coe
                MAlonzo.Code.Function.du38 (\ v4 -> v0)
                (coe MAlonzo.Code.Data.Fin.C14 v2) v3)
             (coe v0 (coe MAlonzo.Code.Data.Fin.C8 v2))
             (coe
                MAlonzo.Code.Data.Vec.du732 v2
                (coe
                   MAlonzo.Code.Function.du38 (\ v4 -> v0)
                   (coe MAlonzo.Code.Data.Fin.C14 v2)))
             (coe
                du600
                (coe
                   MAlonzo.Code.Function.du38 (\ v4 -> v0)
                   (coe MAlonzo.Code.Data.Fin.C14 v2))
                v3)
      _ -> coe MAlonzo.RTE.mazUnreachableError
name612 = "Data.Vec.Properties.\8712-allFin"
d612 v0 = du612
du612 = coe du600 (\ v0 -> v0)
name630 = "Data.Vec.Properties.\8712-map"
d630 v0 v1 v2 v3 v4 v5 v6 v7 v8 = du630 v5 v7 v8
du630 v0 v1 v2
  = case coe v2 of
      MAlonzo.Code.Data.Vec.C42 v3 v4 v5
        -> coe
             MAlonzo.Code.Data.Vec.C42 v3 (coe v1 v0)
             (coe
                MAlonzo.Code.Data.Vec.du150 (coe MAlonzo.Code.Data.Vec.du166 v3 v1)
                v5)
      MAlonzo.Code.Data.Vec.C54 v3 v4 v5 v6 v7
        -> coe
             MAlonzo.Code.Data.Vec.C54 v3 (coe v1 v0) (coe v1 v5)
             (coe MAlonzo.Code.Data.Vec.du192 v3 v1 v6) (coe du630 v0 v1 v7)
      _ -> coe MAlonzo.RTE.mazUnreachableError
name652 = "Data.Vec.Properties.\8712-++\8343"
d652 v0 v1 v2 v3 v4 v5 v6 v7 = du652 v2 v4 v6 v7
du652 v0 v1 v2 v3
  = case coe v3 of
      MAlonzo.Code.Data.Vec.C42 v4 v5 v6
        -> coe
             MAlonzo.Code.Data.Vec.C42 (coe addInt v0 v4) v1
             (coe MAlonzo.Code.Data.Vec.du130 v0 v6 v2)
      MAlonzo.Code.Data.Vec.C54 v4 v5 v6 v7 v8
        -> coe
             MAlonzo.Code.Data.Vec.C54 (coe addInt v0 v4) v1 v6
             (coe MAlonzo.Code.Data.Vec.du130 v0 v7 v2) (coe du652 v0 v1 v2 v8)
      _ -> coe MAlonzo.RTE.mazUnreachableError
name670 = "Data.Vec.Properties.\8712-++\7523"
d670 v0 v1 v2 v3 v4 v5 v6 v7 = du670 v2 v4 v5 v6 v7
du670 v0 v1 v2 v3 v4
  = case coe v2 of
      MAlonzo.Code.Data.Vec.C14 -> coe v4
      MAlonzo.Code.Data.Vec.C22 v5 v6 v7
        -> coe
             MAlonzo.Code.Data.Vec.C54 (coe addInt v0 v5) v1 v6
             (coe MAlonzo.Code.Data.Vec.du130 v0 v7 v3)
             (coe du670 v0 v1 v7 v3 v4)
      _ -> coe MAlonzo.RTE.mazUnreachableError
name700 = "Data.Vec.Properties.\8712-allPairs"
d700 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11
  = du700 v5 v6 v7 v8 v9 v10 v11
du700 v0 v1 v2 v3 v4 v5 v6
  = case coe v5 of
      MAlonzo.Code.Data.Vec.C42 v7 v8 v9
        -> case coe v1 of
             MAlonzo.Code.Data.Vec.C22 v10 v11 v12
               -> coe
                    du652 (coe mulInt v10 v0)
                    (coe MAlonzo.Code.Data.Product.C30 v11 v4)
                    (coe
                       MAlonzo.Code.Data.Vec.du354 v0
                       (coe
                          MAlonzo.Code.Data.Vec.du150
                          (coe
                             MAlonzo.Code.Data.Vec.du166 v10
                             (\ v13 -> coe MAlonzo.Code.Data.Vec.du192 v0 v13 v2))
                          (coe
                             MAlonzo.Code.Data.Vec.du150
                             (coe MAlonzo.Code.Data.Vec.du166 v10 MAlonzo.Code.Data.Product.C30)
                             v12)))
                    (coe
                       du630 v4 (\ v13 -> coe MAlonzo.Code.Data.Product.C30 v11 v13) v6)
             _ -> coe MAlonzo.RTE.mazUnreachableError
      MAlonzo.Code.Data.Vec.C54 v7 v8 v9 v10 v11
        -> case coe v1 of
             MAlonzo.Code.Data.Vec.C22 v12 v13 v14
               -> coe
                    du670 (coe mulInt v12 v0) (coe MAlonzo.Code.Data.Product.C30 v3 v4)
                    (coe
                       MAlonzo.Code.Data.Vec.du192 v0
                       (\ v15 -> coe MAlonzo.Code.Data.Product.C30 v13 v15) v2)
                    (coe MAlonzo.Code.Data.Vec.du684 v12 v0 v14 v2)
                    (coe du700 v0 v14 v2 v3 v4 v11 v6)
             _ -> coe MAlonzo.RTE.mazUnreachableError
      _ -> coe MAlonzo.RTE.mazUnreachableError
name732 = "Data.Vec.Properties.sum-++-commute"
d732 = erased
name772 = "Data.Vec.Properties._._.assoc"
d772 = erased
name876 = "Data.Vec.Properties.foldr-cong"
d876 = erased
name924 = "Data.Vec.Properties.foldl-cong"
d924 = erased
name962 = "Data.Vec.Properties.foldr-universal"
d962 = erased
name1026 = "Data.Vec.Properties.foldr-fusion"
d1026 = erased
name1050 = "Data.Vec.Properties.idIsFold"
d1050 = erased
name1066 = "Data.Vec.Properties.\8712\8658List-\8712"
d1066 v0 v1 v2 v3 v4 v5 = du1066 v3 v5
du1066 v0 v1
  = case coe v1 of
      MAlonzo.Code.Data.Vec.C42 v2 v3 v4
        -> coe
             MAlonzo.Code.Data.List.Any.C30 v0
             (coe MAlonzo.Code.Data.Vec.du530 v4) erased
      MAlonzo.Code.Data.Vec.C54 v2 v3 v4 v5 v6
        -> coe
             MAlonzo.Code.Data.List.Any.C38 v4
             (coe MAlonzo.Code.Data.Vec.du530 v5) (coe du1066 v0 v6)
      _ -> coe MAlonzo.RTE.mazUnreachableError
name1078 = "Data.Vec.Properties.List-\8712\8658\8712"
d1078 v0 v1 v2 v3 v4 = du1078 v2 v4
du1078 v0 v1
  = case coe v1 of
      MAlonzo.Code.Data.List.Any.C30 v2 v3 v4
        -> coe
             MAlonzo.Code.Data.Vec.C42
             (coe
                MAlonzo.Code.Data.List.Base.du144
                (\ v5 v6 -> coe addInt (1 :: Integer) v6) (0 :: Integer) v3)
             v2 (coe MAlonzo.Code.Data.Vec.du542 v3)
      MAlonzo.Code.Data.List.Any.C38 v2 v3 v4
        -> coe
             MAlonzo.Code.Data.Vec.C54
             (coe MAlonzo.Code.Data.List.Base.du226 v3) v0 v2
             (coe MAlonzo.Code.Data.Vec.du542 v3) (coe du1078 v0 v4)
      _ -> coe MAlonzo.RTE.mazUnreachableError
name1098 = "Data.Vec.Properties.proof-irrelevance-[]="
d1098 = erased
name1116 = "Data.Vec.Properties.[]=\8596lookup"
d1116 v0 v1 v2 v3 v4 v5 = du1116 v2 v4 v5
du1116 v0 v1 v2
  = coe
      MAlonzo.Code.Function.Inverse.C173
      (coe
         MAlonzo.Code.Relation.Binary.PropositionalEquality.du210
         (coe
            MAlonzo.Code.Relation.Binary.C143
            (coe MAlonzo.Code.Relation.Binary.Core.C889 erased erased erased))
         erased)
      (coe
         MAlonzo.Code.Relation.Binary.PropositionalEquality.du210
         (coe
            MAlonzo.Code.Relation.Binary.C143
            (coe MAlonzo.Code.Relation.Binary.Core.C889 erased erased erased))
         (\ v3 -> coe du1144 v1 v0 v2))
      (coe MAlonzo.Code.Function.Inverse.C109 erased erased)
name1134 = "Data.Vec.Properties._.to"
d1134 = erased
name1144 = "Data.Vec.Properties._.from"
d1144 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 = du1144 v4 v7 v8
du1144 v0 v1 v2
  = case coe v1 of
      MAlonzo.Code.Data.Fin.C8 v3
        -> case coe v2 of
             MAlonzo.Code.Data.Vec.C22 v4 v5 v6
               -> coe MAlonzo.Code.Data.Vec.C74 v3 v0 v6
             _ -> coe MAlonzo.RTE.mazUnreachableError
      MAlonzo.Code.Data.Fin.C14 v3 v4
        -> case coe v2 of
             MAlonzo.Code.Data.Vec.C22 v5 v6 v7
               -> coe
                    MAlonzo.Code.Data.Vec.C88 v3 v4 v0 v6 v7 (coe du1144 v0 v4 v7)
             _ -> coe MAlonzo.RTE.mazUnreachableError
      _ -> coe MAlonzo.RTE.mazUnreachableError
name1170 = "Data.Vec.Properties.[]\8788-idempotent"
d1170 = erased
name1198 = "Data.Vec.Properties.[]\8788-commutes"
d1198 = erased
name1240 = "Data.Vec.Properties.[]\8788-updates"
d1240 v0 v1 v2 v3 v4 v5 = du1240 v3 v4 v5
du1240 v0 v1 v2
  = case coe v0 of
      MAlonzo.Code.Data.Vec.C22 v3 v4 v5
        -> case coe v1 of
             MAlonzo.Code.Data.Fin.C8 v6
               -> coe MAlonzo.Code.Data.Vec.C74 v3 v2 v5
             MAlonzo.Code.Data.Fin.C14 v6 v7
               -> coe
                    MAlonzo.Code.Data.Vec.C88 v3 v7 v2 v4
                    (coe MAlonzo.Code.Data.Vec.du746 v5 v7 v2) (coe du1240 v5 v7 v2)
             _ -> coe MAlonzo.RTE.mazUnreachableError
      _ -> coe MAlonzo.RTE.mazUnreachableError
name1268 = "Data.Vec.Properties.[]\8788-minimal"
d1268 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9
  = du1268 v1 v3 v4 v5 v6 v7 v8 v9
du1268 v0 v1 v2 v3 v4 v5 v6 v7
  = case coe v1 of
      MAlonzo.Code.Data.Vec.C22 v8 v9 v10
        -> case coe v3 of
             MAlonzo.Code.Data.Fin.C8 v11
               -> case coe v7 of
                    MAlonzo.Code.Data.Vec.C74 v12 v13 v14
                      -> coe
                           MAlonzo.Code.Function.du158
                           (coe MAlonzo.Code.Data.Empty.d10 v0 erased) (coe v6 erased)
                    MAlonzo.Code.Data.Vec.C88 v12 v13 v14 v15 v16 v17
                      -> case coe v2 of
                           MAlonzo.Code.Data.Fin.C14 v18 v19
                             -> coe MAlonzo.Code.Data.Vec.C88 v8 v19 v4 v5 v10 v17
                           _ -> coe MAlonzo.RTE.mazUnreachableError
                    _ -> coe MAlonzo.RTE.mazUnreachableError
             MAlonzo.Code.Data.Fin.C14 v11 v12
               -> case coe v7 of
                    MAlonzo.Code.Data.Vec.C74 v13 v14 v15
                      -> coe
                           MAlonzo.Code.Data.Vec.C74 v8 v9
                           (coe MAlonzo.Code.Data.Vec.du746 v10 v12 v5)
                    MAlonzo.Code.Data.Vec.C88 v13 v14 v15 v16 v17 v18
                      -> case coe v2 of
                           MAlonzo.Code.Data.Fin.C14 v19 v20
                             -> coe
                                  MAlonzo.Code.Data.Vec.C88 v8 v20 v4 v9
                                  (coe MAlonzo.Code.Data.Vec.du746 v10 v12 v5)
                                  (coe du1268 v0 v10 v20 v12 v4 v5 erased v18)
                           _ -> coe MAlonzo.RTE.mazUnreachableError
                    _ -> coe MAlonzo.RTE.mazUnreachableError
             _ -> coe MAlonzo.RTE.mazUnreachableError
      _ -> coe MAlonzo.RTE.mazUnreachableError
name1320 = "Data.Vec.Properties.map-[]\8788"
d1320 = erased
name1348 = "Data.Vec.Properties.[]\8788-lookup"
d1348 = erased
name1376 = "Data.Vec.Properties.[]\8788-++-inject+"
d1376 = erased
name1406 = "Data.Vec.Properties.unzip\8728zip"
d1406 = erased
name1426 = "Data.Vec.Properties.zip\8728unzip"
d1426 = erased
name1442 = "Data.Vec.Properties.\215v\8596v\215"
d1442 v0 v1 v2 v3 = du1442 v1
du1442 v0
  = coe
      MAlonzo.Code.Function.Inverse.C173
      (coe
         MAlonzo.Code.Relation.Binary.PropositionalEquality.du210
         (coe
            MAlonzo.Code.Relation.Binary.C143
            (coe MAlonzo.Code.Relation.Binary.Core.C889 erased erased erased))
         (coe
            MAlonzo.Code.Data.Product.du340
            (coe MAlonzo.Code.Data.Vec.du230 v0)))
      (coe
         MAlonzo.Code.Relation.Binary.PropositionalEquality.du210
         (coe
            MAlonzo.Code.Relation.Binary.C143
            (coe MAlonzo.Code.Relation.Binary.Core.C889 erased erased erased))
         MAlonzo.Code.Data.Vec.du242)
      (coe
         MAlonzo.Code.Function.Inverse.C109
         (coe MAlonzo.Code.Data.Product.du340 erased) erased)
name1456 = "Data.Vec.Properties.map-proj\8321-zip"
d1456 = erased
name1478 = "Data.Vec.Properties.map-proj\8322-zip"
d1478 = erased
name1504 = "Data.Vec.Properties.map-<,>-zip"
d1504 = erased
name1538 = "Data.Vec.Properties.map-zip"
d1538 = erased
name1578 = "Data.Vec.Properties.map-unzip"
d1578 = erased
name1610 = "Data.Vec.Properties.lookup-unzip"
d1610 = erased
name1640 = "Data.Vec.Properties.lookup-zip"
d1640 = erased