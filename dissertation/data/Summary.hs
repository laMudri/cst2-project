{-# LANGUAGE TupleSections #-}
module Summary where

import Data.List
import Data.Maybe

import Text.CSV
import Text.Parsec

data GraphType = C | B | U
  deriving (Show, Read, Eq, Ord)
data Algorithm = Dijkstra | Mohri Bool | MohriK Bool Int
  deriving (Eq, Ord)

instance Show Algorithm where
  show Dijkstra = "dijkstra"
  show (Mohri b) = "mohri" ++ (if b then "p" else "")
  show (MohriK b k) =
    "mohri" ++ (if b then "p" else "") ++ "KShortest" ++ show k

algorithmParser :: Parsec String () Algorithm
algorithmParser =
  do { string "dijkstra"
     ; return Dijkstra
     }
  <|>
  do { string "mohri"
     ; p <- option False (string "p" >> return True)
     ; k <- optionMaybe (string "KShortest" >> read <$> many1 digit)
     ; return $ case k of
                     Nothing -> Mohri p
                     Just k -> MohriK p k
     }

instance Read Algorithm where
  readsPrec n s = case parse parser "" s of
                       Left _ -> []
                       Right r -> maybeToList r
    where
    parser :: Parsec String () (Maybe (Algorithm , String))
    parser = do
      r <- optionMaybe algorithmParser
      s' <- many anyToken
      return $ (, s') <$> r

fromCSVFileStr :: FilePath -> IO [(String,String,String,String,String,String)]
fromCSVFileStr fp = do
  Right csv <- parseCSVFromFile fp
  return $ map (\ [m,n,p,g,t,a] -> (m,n,p,g,t,a)) (init csv)

fromCSVFile :: (Num i, Read i) => FilePath -> IO [(GraphType,i,i,Algorithm,i,i)]
fromCSVFile fp =
  map (\ (m,n,p,g,t,a) -> (read m, read n, read p, read g, read t, read a))
    <$> fromCSVFileStr fp

toCSVFile ::
  (Show a, Show b, Show c, Show d, Show e, Show f) =>
    FilePath -> [(a,b,c,d,e,f)] -> IO ()
toCSVFile fp dat =
  let csv = map (\ (m,n,p,g,t,a) ->
                   [show m,show n,show p,show g,show t,show a])
                dat
  in
  writeFile fp $ printCSV csv
