{-# LANGUAGE EmptyDataDecls, ExistentialQuantification,
             ScopedTypeVariables, NoMonomorphismRestriction, Rank2Types #-}
module MAlonzo.Code.Function.LeftInverse where

import MAlonzo.RTE (coe, erased, addInt, subInt, mulInt, quotInt,
                    remInt, geqInt, ltInt, eqInt, eqFloat)
import qualified Control.Exception
import qualified Data.Text
import qualified Data.Text.IO
import qualified MAlonzo.RTE
import qualified System.Environment
import qualified System.IO
import qualified Data.Text
import qualified MAlonzo.Code.Function.Equality
import qualified MAlonzo.Code.Function.Equivalence
import qualified MAlonzo.Code.Function.Injection
import qualified MAlonzo.Code.Relation.Binary
import qualified MAlonzo.Code.Relation.Binary.Core
import qualified MAlonzo.Code.Relation.Binary.PreorderReasoning

name16 = "Function.LeftInverse._LeftInverseOf_"
d16 = erased
name30 = "Function.LeftInverse._._._\8776_"
d30 = erased
name64 = "Function.LeftInverse._RightInverseOf_"
d64 = erased
name82 = "Function.LeftInverse.LeftInverse"
d82 a0 a1 a2 a3 a4 a5 = ()
data T82 a0 a1 a2 = C195 a0 a1 a2
name102 = "Function.LeftInverse.LeftInverse.to"
d102 v0
  = case coe v0 of
      C195 v1 v2 v3 -> coe v1
      _ -> coe MAlonzo.RTE.mazUnreachableError
name104 = "Function.LeftInverse.LeftInverse.from"
d104 v0
  = case coe v0 of
      C195 v1 v2 v3 -> coe v2
      _ -> coe MAlonzo.RTE.mazUnreachableError
name106 = "Function.LeftInverse.LeftInverse.left-inverse-of"
d106 v0
  = case coe v0 of
      C195 v1 v2 v3 -> coe v3
      _ -> coe MAlonzo.RTE.mazUnreachableError
name110 = "Function.LeftInverse.LeftInverse.F._\8776_"
d110 = erased
name126 = "Function.LeftInverse.LeftInverse.F.sym"
d126 v0 v1 v2 v3 v4 v5 v6 = du126 v4
du126 v0
  = coe
      MAlonzo.Code.Relation.Binary.Core.d518
      (coe MAlonzo.Code.Relation.Binary.d136 v0)
name132 = "Function.LeftInverse.LeftInverse.T._\8776_"
d132 = erased
name148 = "Function.LeftInverse.LeftInverse.T.sym"
d148 v0 v1 v2 v3 v4 v5 v6 = du148 v5
du148 v0
  = coe
      MAlonzo.Code.Relation.Binary.Core.d518
      (coe MAlonzo.Code.Relation.Binary.d136 v0)
name156 = "Function.LeftInverse.LeftInverse._._\8718"
d156 v0 v1 v2 v3 v4 v5 v6 v7 = du156 v4 v7
du156 v0 v1
  = coe
      MAlonzo.Code.Relation.Binary.PreorderReasoning.C56
      (coe
         MAlonzo.Code.Relation.Binary.d38
         (coe
            MAlonzo.Code.Relation.Binary.d92
            (coe MAlonzo.Code.Relation.Binary.du150 v0))
         v1 v1
         (coe
            MAlonzo.Code.Relation.Binary.Core.d516
            (coe
               MAlonzo.Code.Relation.Binary.d36
               (coe
                  MAlonzo.Code.Relation.Binary.d92
                  (coe MAlonzo.Code.Relation.Binary.du150 v0)))
            v1))
name158 = "Function.LeftInverse.LeftInverse._._\8764\10216_\10217_"
d158 v0 v1 v2 v3 v4 v5 v6 = du158 v4
du158 v0
  = coe
      MAlonzo.Code.Relation.Binary.PreorderReasoning.du72
      (coe MAlonzo.Code.Relation.Binary.du150 v0)
name172 = "Function.LeftInverse.LeftInverse.injective"
d172 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 = du172 v4 v6 v7 v8 v9
du172 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Relation.Binary.PreorderReasoning.d62
      (coe
         MAlonzo.Code.Relation.Binary.PreorderReasoning.du72
         (coe MAlonzo.Code.Relation.Binary.du150 v0) v2
         (coe
            MAlonzo.Code.Function.Equality.d38 (coe d104 v1)
            (coe MAlonzo.Code.Function.Equality.d38 (coe d102 v1) v2))
         v3
         (coe
            MAlonzo.Code.Relation.Binary.Core.d518
            (coe MAlonzo.Code.Relation.Binary.d136 v0)
            (coe
               MAlonzo.Code.Function.Equality.d38 (coe d104 v1)
               (coe MAlonzo.Code.Function.Equality.d38 (coe d102 v1) v2))
            v2 (coe d106 v1 v2))
         (coe
            MAlonzo.Code.Relation.Binary.PreorderReasoning.du72
            (coe MAlonzo.Code.Relation.Binary.du150 v0)
            (coe
               MAlonzo.Code.Function.Equality.d38 (coe d104 v1)
               (coe MAlonzo.Code.Function.Equality.d38 (coe d102 v1) v2))
            (coe
               MAlonzo.Code.Function.Equality.d38 (coe d104 v1)
               (coe MAlonzo.Code.Function.Equality.d38 (coe d102 v1) v3))
            v3
            (coe
               MAlonzo.Code.Function.Equality.d40 (coe d104 v1)
               (coe MAlonzo.Code.Function.Equality.d38 (coe d102 v1) v2)
               (coe MAlonzo.Code.Function.Equality.d38 (coe d102 v1) v3) v4)
            (coe
               MAlonzo.Code.Relation.Binary.PreorderReasoning.du72
               (coe MAlonzo.Code.Relation.Binary.du150 v0)
               (coe
                  MAlonzo.Code.Function.Equality.d38 (coe d104 v1)
                  (coe MAlonzo.Code.Function.Equality.d38 (coe d102 v1) v3))
               v3 v3 (coe d106 v1 v3)
               (coe
                  MAlonzo.Code.Relation.Binary.PreorderReasoning.C56
                  (coe
                     MAlonzo.Code.Relation.Binary.d38
                     (coe
                        MAlonzo.Code.Relation.Binary.d92
                        (coe MAlonzo.Code.Relation.Binary.du150 v0))
                     v3 v3
                     (coe
                        MAlonzo.Code.Relation.Binary.Core.d516
                        (coe
                           MAlonzo.Code.Relation.Binary.d36
                           (coe
                              MAlonzo.Code.Relation.Binary.d92
                              (coe MAlonzo.Code.Relation.Binary.du150 v0)))
                        v3))))))
name180 = "Function.LeftInverse.LeftInverse.injection"
d180 v0 v1 v2 v3 v4 v5 v6 = du180 v4 v6
du180 v0 v1
  = coe
      MAlonzo.Code.Function.Injection.C73 (coe d102 v1) (coe du172 v0 v1)
name182 = "Function.LeftInverse.LeftInverse.equivalence"
d182 v0
  = coe
      MAlonzo.Code.Function.Equivalence.C1 (coe d102 v0) (coe d104 v0)
name188 = "Function.LeftInverse.LeftInverse.to-from"
d188 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 = du188 v4 v5 v6 v7 v8 v9
du188 v0 v1 v2 v3 v4 v5
  = coe
      MAlonzo.Code.Relation.Binary.PreorderReasoning.d62
      (coe
         MAlonzo.Code.Relation.Binary.PreorderReasoning.du72
         (coe MAlonzo.Code.Relation.Binary.du150 v0)
         (coe MAlonzo.Code.Function.Equality.d38 (coe d104 v2) v4)
         (coe
            MAlonzo.Code.Function.Equality.d38 (coe d104 v2)
            (coe MAlonzo.Code.Function.Equality.d38 (coe d102 v2) v3))
         v3
         (coe
            MAlonzo.Code.Function.Equality.d40 (coe d104 v2) v4
            (coe MAlonzo.Code.Function.Equality.d38 (coe d102 v2) v3)
            (coe
               MAlonzo.Code.Relation.Binary.Core.d518
               (coe MAlonzo.Code.Relation.Binary.d136 v1)
               (coe MAlonzo.Code.Function.Equality.d38 (coe d102 v2) v3) v4 v5))
         (coe
            MAlonzo.Code.Relation.Binary.PreorderReasoning.du72
            (coe MAlonzo.Code.Relation.Binary.du150 v0)
            (coe
               MAlonzo.Code.Function.Equality.d38 (coe d104 v2)
               (coe MAlonzo.Code.Function.Equality.d38 (coe d102 v2) v3))
            v3 v3 (coe d106 v2 v3)
            (coe
               MAlonzo.Code.Relation.Binary.PreorderReasoning.C56
               (coe
                  MAlonzo.Code.Relation.Binary.d38
                  (coe
                     MAlonzo.Code.Relation.Binary.d92
                     (coe MAlonzo.Code.Relation.Binary.du150 v0))
                  v3 v3
                  (coe
                     MAlonzo.Code.Relation.Binary.Core.d516
                     (coe
                        MAlonzo.Code.Relation.Binary.d36
                        (coe
                           MAlonzo.Code.Relation.Binary.d92
                           (coe MAlonzo.Code.Relation.Binary.du150 v0)))
                     v3)))))
name208 = "Function.LeftInverse.RightInverse"
d208 = erased
name218 = "Function.LeftInverse._\8606_"
d218 = erased
name230 = "Function.LeftInverse.id"
d230 v0 v1 v2 = du230 v2
du230 v0
  = coe
      C195 MAlonzo.Code.Function.Equality.du62
      MAlonzo.Code.Function.Equality.du62
      (\ v1 ->
         coe
           MAlonzo.Code.Relation.Binary.Core.d516
           (coe MAlonzo.Code.Relation.Binary.d136 v0)
           (coe
              MAlonzo.Code.Function.Equality.d38
              MAlonzo.Code.Function.Equality.du62
              (coe
                 MAlonzo.Code.Function.Equality.d38
                 MAlonzo.Code.Function.Equality.du62 v1)))
name254 = "Function.LeftInverse._\8728_"
d254 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 = du254 v6 v9 v10
du254 v0 v1 v2
  = coe
      C195
      (coe
         MAlonzo.Code.Function.Equality.du82 (coe d102 v1) (coe d102 v2))
      (coe
         MAlonzo.Code.Function.Equality.du82 (coe d104 v2) (coe d104 v1))
      (\ v3 ->
         coe
           MAlonzo.Code.Relation.Binary.PreorderReasoning.d62
           (coe
              MAlonzo.Code.Relation.Binary.PreorderReasoning.du72
              (coe MAlonzo.Code.Relation.Binary.du150 v0)
              (coe
                 MAlonzo.Code.Function.Equality.d38 (coe d104 v2)
                 (coe
                    MAlonzo.Code.Function.Equality.d38 (coe d104 v1)
                    (coe
                       MAlonzo.Code.Function.Equality.d38 (coe d102 v1)
                       (coe MAlonzo.Code.Function.Equality.d38 (coe d102 v2) v3))))
              (coe
                 MAlonzo.Code.Function.Equality.d38 (coe d104 v2)
                 (coe MAlonzo.Code.Function.Equality.d38 (coe d102 v2) v3))
              v3
              (coe
                 MAlonzo.Code.Function.Equality.d40 (coe d104 v2)
                 (coe
                    MAlonzo.Code.Function.Equality.d38 (coe d104 v1)
                    (coe
                       MAlonzo.Code.Function.Equality.d38 (coe d102 v1)
                       (coe MAlonzo.Code.Function.Equality.d38 (coe d102 v2) v3)))
                 (coe MAlonzo.Code.Function.Equality.d38 (coe d102 v2) v3)
                 (coe
                    d106 v1 (coe MAlonzo.Code.Function.Equality.d38 (coe d102 v2) v3)))
              (coe
                 MAlonzo.Code.Relation.Binary.PreorderReasoning.du72
                 (coe MAlonzo.Code.Relation.Binary.du150 v0)
                 (coe
                    MAlonzo.Code.Function.Equality.d38 (coe d104 v2)
                    (coe MAlonzo.Code.Function.Equality.d38 (coe d102 v2) v3))
                 v3 v3 (coe d106 v2 v3)
                 (coe
                    MAlonzo.Code.Relation.Binary.PreorderReasoning.C56
                    (coe
                       MAlonzo.Code.Relation.Binary.d38
                       (coe
                          MAlonzo.Code.Relation.Binary.d92
                          (coe MAlonzo.Code.Relation.Binary.du150 v0))
                       v3 v3
                       (coe
                          MAlonzo.Code.Relation.Binary.Core.d516
                          (coe
                             MAlonzo.Code.Relation.Binary.d36
                             (coe
                                MAlonzo.Code.Relation.Binary.d92
                                (coe MAlonzo.Code.Relation.Binary.du150 v0)))
                          v3))))))
name270 = "Function.LeftInverse._._._\8718"
d270 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 = du270 v6 v11
du270 v0 v1
  = coe
      MAlonzo.Code.Relation.Binary.PreorderReasoning.C56
      (coe
         MAlonzo.Code.Relation.Binary.d38
         (coe
            MAlonzo.Code.Relation.Binary.d92
            (coe MAlonzo.Code.Relation.Binary.du150 v0))
         v1 v1
         (coe
            MAlonzo.Code.Relation.Binary.Core.d516
            (coe
               MAlonzo.Code.Relation.Binary.d36
               (coe
                  MAlonzo.Code.Relation.Binary.d92
                  (coe MAlonzo.Code.Relation.Binary.du150 v0)))
            v1))
name272 = "Function.LeftInverse._._._\8764\10216_\10217_"
d272 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 = du272 v6
du272 v0
  = coe
      MAlonzo.Code.Relation.Binary.PreorderReasoning.du72
      (coe MAlonzo.Code.Relation.Binary.du150 v0)