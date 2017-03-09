-- From gallais/agdARGS

module Arguments where

  open import Data.List
  open import Data.String
  open import IO
  import IO.Primitive as Prim

  {-# IMPORT System.Environment #-}
  {-# IMPORT Data.Text #-}

  postulate primGetArgs : Prim.IO (List String)

  {-# COMPILED primGetArgs (fmap Data.Text.pack <$> System.Environment.getArgs) #-}

  getArgs : IO (List String)
  getArgs = lift primGetArgs
