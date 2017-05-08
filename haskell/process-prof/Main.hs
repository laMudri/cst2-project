{-# LANGUAGE ScopedTypeVariables #-}
module Main where

import Control.Monad
import Data.List
import System.Environment

data ListZ a = ListZ [a] a [a]

headZipper :: [a] -> Maybe (ListZ a)
headZipper [] = Nothing
headZipper (x : xs) = Just (ListZ [] x xs)

-- Return a list of elements satisfying the predicate.
findZippers :: forall a. (a -> Bool) -> [a] -> [ListZ a]
findZippers p = go []
  where
  go :: [a] -> [a] -> [ListZ a]
  go ls [] = []
  go ls (r : rs) =
    case p r of
         True -> ListZ ls r rs : go (r : ls) rs
         False -> go (r : ls) rs

--

data Sublist a = Sublist [a] [a] [a]

-- Produce a sublist starting from the given element and extending while the
-- predicate holds.
findExtend :: forall a. (a -> Bool) -> ListZ a -> Sublist a
findExtend p (ListZ ls x rs) = go [x] rs
  where
  go :: [a] -> [a] -> Sublist a
  go xs [] = Sublist ls xs []
  go xs (r : rs) =
    case p r of
         True -> go (r : xs) rs
         False -> Sublist ls xs (r : rs)

getSublist :: Sublist a -> [a]
getSublist (Sublist _ xs _) = xs

--

linedParagraphs :: [String] -> [[String]]
linedParagraphs = iterateSplit split
  where
  split :: [String] -> ([String] , [String])
  split [] = ([] , [])
  split (l : ls)
    | null l = ([] , ls)
    | otherwise = let (xs , ys) = split ls in (l : xs , ys)

  iterateSplit :: ([a] -> (b , [a])) -> [a] -> [b]
  iterateSplit f [] = []
  iterateSplit f xs = let (b , xs') = f xs in b : iterateSplit f xs'

--

main :: IO ()
main = do
  args <- getArgs
  filename <- case args of { [] -> fail "Filename not given"
                           ; (s : _) -> return s
                           }
  contents <- readFile filename
  let ps = linedParagraphs (lines contents)
  let p = last ps
  let myccs = findZippers (isPrefixOf "  mycc") p
  --let sections = map (getSublist . findExtend (isPrefixOf "   ")) myccs
  forM_ myccs $ \ cc -> do
    let section = getSublist (findExtend (isPrefixOf "   ") cc)
    let wordedLines = map words section
    let columns = transpose wordedLines
    let [ccs, mods, locs, idents, entries, indPTimes, indPAllocs, inhPTimes, inhPAllocs, absTimes, absAllocs] = columns
    let absTimesNum = map (read :: String -> Integer) absTimes
    let absAllocsNum = map (read :: String -> Integer) absAllocs
    let sectionTime = sum absTimesNum
    let sectionAlloc = sum absAllocsNum
    putStr (last ccs)
    putStr ","
    putStr $ show sectionTime
    putStr ","
    putStr $ show sectionAlloc
    putStrLn ""
