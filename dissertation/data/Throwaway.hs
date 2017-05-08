module Thowaway where

import Control.Monad
import Data.List
import Numeric
import Text.CSV
import System.Environment

on :: (a -> a -> c) -> (b -> a) -> (b -> b -> c)
on f g x y = f (g x) (g y)

combine :: [[Integer]] -> [Double]
combine xss = [p,t / n / 1000,a / n / 1024 ^ 3]
  where
  sums = foldr (\ [p,t,a] [_,ta,aa] -> [p,t + ta,a + aa]) [0,0,0] xss
  [p,t,a] = map fromInteger sums
  n = fromIntegral $ length xss

main :: IO ()
main = do
  fps <- getArgs
  forM_ fps $ \ fp -> do
    Right csv <- parseCSVFromFile fp
    let rawNumbers = map read <$> (init csv) :: [[Integer]]
    let grouped = groupBy ((==) `on` head) rawNumbers :: [[[Integer]]]
    let sumNumbers = combine <$> grouped
    let sumNumbersSorted = sortBy (compare `on` head) sumNumbers
    let avgNumbers = sumNumbersSorted
    --     ((\ [p,t,a] -> [p,t / 8 / 1000,a / 8 / 1024 ^ 3]) . map fromInteger)
    --       <$> sumNumbersSorted
    --     :: [[Double]]
    let newCSV = map (flip (showFFloat Nothing) "") <$> avgNumbers :: [[String]]
    let header = "k,time,alloc\n"
    writeFile ("graph-" ++ fp) (header ++ printCSV (newCSV) ++ "\n")
