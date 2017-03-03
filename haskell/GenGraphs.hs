module GenGraphs where

import Control.Monad.Random.Lazy  -- Note: test Strict
import Data.Graph
import Data.Ratio
import Types

geo :: (MonadRandom m, Integral int) => Rational -> m int
geo p = do
  r <- getRandomR (1 , denominator p)
  if r <= numerator p then return 0 else succ <$> geo p

getRandomDs :: (MonadRandom m) => m a -> m [a]
getRandomDs r = do
  x <- r
  xs <- getRandomDs r
  return (x : xs)

completeGraph :: (MonadRandom m) => m Int -> Vertex ->
                                    m (Graph , Edge -> Weight)
completeGraph r n = do
  let g = buildG (0 , pred n) [ (x , y) | x <- [0 .. pred n]
                                        , y <- [0 .. pred n]
                              ]
  ws <- getRandomDs r
  let w (x , y) = W . Fin $ ws !! (x + n * y)
  return $ (g , w)

