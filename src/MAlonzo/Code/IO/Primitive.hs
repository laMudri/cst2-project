{-# LANGUAGE EmptyDataDecls, ExistentialQuantification,
             ScopedTypeVariables, NoMonomorphismRestriction, Rank2Types #-}
module MAlonzo.Code.IO.Primitive where

import MAlonzo.RTE (coe, erased, addInt, subInt, mulInt, quotInt,
                    remInt, geqInt, ltInt, eqInt, eqFloat)
import qualified Control.Exception
import qualified Data.Text
import qualified Data.Text.IO
import qualified MAlonzo.RTE
import qualified System.Environment
import qualified System.IO
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Builtin.Char
import qualified MAlonzo.Code.Agda.Builtin.IO
import qualified MAlonzo.Code.Agda.Builtin.String
import qualified MAlonzo.Code.Agda.Primitive
import qualified MAlonzo.Code.Data.Colist
import qualified MAlonzo.Code.Foreign.Haskell

readFiniteFile :: Data.Text.Text -> IO Data.Text.Text
readFiniteFile f = do
  h <- System.IO.openFile (Data.Text.unpack f) System.IO.ReadMode
  Control.Exception.bracketOnError (return ()) (\_ -> System.IO.hClose h)
                                               (\_ -> System.IO.hFileSize h)
  Data.Text.IO.hGetContents h
name8 = "IO.Primitive.return"
d8 ::
  (forall xa. (() -> (forall xA. (() -> (xA -> (MAlonzo.Code.Agda.Builtin.IO.AgdaIO xa xA))))))
d8 = (\_ _ -> return)
name18 = "IO.Primitive._>>=_"
d18 ::
  (forall xa. (() -> (forall xb. (() -> (forall xA. (() -> (forall xB. (() -> ((MAlonzo.Code.Agda.Builtin.IO.AgdaIO xa xA) -> ((xA -> (MAlonzo.Code.Agda.Builtin.IO.AgdaIO xb xB)) -> (MAlonzo.Code.Agda.Builtin.IO.AgdaIO xb xB)))))))))))
d18 = (\_ _ _ _ -> (>>=))
name20 = "IO.Primitive.getContents"
d20 ::
  (MAlonzo.Code.Agda.Builtin.IO.AgdaIO () (MAlonzo.Code.Data.Colist.AgdaColist () Char))
d20 = getContents
name22 = "IO.Primitive.readFile"
d22 ::
  (Data.Text.Text -> (MAlonzo.Code.Agda.Builtin.IO.AgdaIO () (MAlonzo.Code.Data.Colist.AgdaColist () Char)))
d22 = (readFile . Data.Text.unpack)
name24 = "IO.Primitive.writeFile"
d24 ::
  (Data.Text.Text -> ((MAlonzo.Code.Data.Colist.AgdaColist () Char) -> (MAlonzo.Code.Agda.Builtin.IO.AgdaIO () ())))
d24 = (\x -> writeFile (Data.Text.unpack x))
name26 = "IO.Primitive.appendFile"
d26 ::
  (Data.Text.Text -> ((MAlonzo.Code.Data.Colist.AgdaColist () Char) -> (MAlonzo.Code.Agda.Builtin.IO.AgdaIO () ())))
d26 = (\x -> appendFile (Data.Text.unpack x))
name28 = "IO.Primitive.putStr"
d28 ::
  ((MAlonzo.Code.Data.Colist.AgdaColist () Char) -> (MAlonzo.Code.Agda.Builtin.IO.AgdaIO () ()))
d28 = putStr
name30 = "IO.Primitive.putStrLn"
d30 ::
  ((MAlonzo.Code.Data.Colist.AgdaColist () Char) -> (MAlonzo.Code.Agda.Builtin.IO.AgdaIO () ()))
d30 = putStrLn
name32 = "IO.Primitive.readFiniteFile"
d32 ::
  (Data.Text.Text -> (MAlonzo.Code.Agda.Builtin.IO.AgdaIO () Data.Text.Text))
d32 = readFiniteFile