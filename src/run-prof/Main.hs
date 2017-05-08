module Main where

import Control.Monad
import System.Environment
import System.FilePath
import System.Process

writeTestData :: FilePath -> IO ()
writeTestData name =
  writeFile "TestData.agda" $ unlines
    [ "module TestData where"
    , "  open import TestData." ++ name ++ " public"
    ]

agdaCompile :: IO ()
agdaCompile = callCommand "agda --include-path=. --include-path=/home/james/.nix-profile/share/agda/ --compile --ghc-dont-call-ghc Main.agda"

haskellCompile :: IO ()
haskellCompile = callCommand "ghc -prof -fprof-auto -rtsopts --make -o Main MAlonzo/Code/Main.hs -main-is MAlonzo.Code.Main"

runMain :: IO ()
runMain = callCommand "./Main x +RTS -pa"

mvProf :: FilePath -> IO ()
mvProf name = callProcess "mv" ["Main.prof" , "prof/" ++ name ++ ".prof"]

main :: IO ()
main = do
  fp : _ <- getArgs
  putStrLn fp
  guard $ takeExtension fp == ".agda"
  let baseName = takeBaseName fp

  writeTestData baseName
  agdaCompile
  haskellCompile
  runMain
  mvProf baseName
