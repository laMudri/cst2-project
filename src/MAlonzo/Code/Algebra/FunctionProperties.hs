{-# LANGUAGE EmptyDataDecls, ExistentialQuantification,
             ScopedTypeVariables, NoMonomorphismRestriction, Rank2Types #-}
module MAlonzo.Code.Algebra.FunctionProperties where

import MAlonzo.RTE (coe, erased, addInt, subInt, mulInt, quotInt,
                    remInt, geqInt, ltInt, eqInt, eqFloat)
import qualified Control.Exception
import qualified Data.Text
import qualified Data.Text.IO
import qualified MAlonzo.RTE
import qualified System.Environment
import qualified System.IO
import qualified Data.Text

name12 = "Algebra.FunctionProperties.Associative"
d12 = erased
name22 = "Algebra.FunctionProperties.Commutative"
d22 = erased
name30 = "Algebra.FunctionProperties.LeftIdentity"
d30 = erased
name38 = "Algebra.FunctionProperties.RightIdentity"
d38 = erased
name46 = "Algebra.FunctionProperties.Identity"
d46 = erased
name52 = "Algebra.FunctionProperties.LeftZero"
d52 = erased
name60 = "Algebra.FunctionProperties.RightZero"
d60 = erased
name68 = "Algebra.FunctionProperties.Zero"
d68 = erased
name74 = "Algebra.FunctionProperties.LeftInverse"
d74 = erased
name84 = "Algebra.FunctionProperties.RightInverse"
d84 = erased
name94 = "Algebra.FunctionProperties.Inverse"
d94 = erased
name102 = "Algebra.FunctionProperties._DistributesOver\737_"
d102 = erased
name114 = "Algebra.FunctionProperties._DistributesOver\691_"
d114 = erased
name126 = "Algebra.FunctionProperties._DistributesOver_"
d126 = erased
name132 = "Algebra.FunctionProperties._IdempotentOn_"
d132 = erased
name138 = "Algebra.FunctionProperties.Idempotent"
d138 = erased
name144 = "Algebra.FunctionProperties.IdempotentFun"
d144 = erased
name150 = "Algebra.FunctionProperties.Selective"
d150 = erased
name158 = "Algebra.FunctionProperties._Absorbs_"
d158 = erased
name168 = "Algebra.FunctionProperties.Absorptive"
d168 = erased
name174 = "Algebra.FunctionProperties.Involutive"
d174 = erased
name180 = "Algebra.FunctionProperties.Congruent\8321"
d180 = erased
name184 = "Algebra.FunctionProperties.Congruent\8322"
d184 = erased