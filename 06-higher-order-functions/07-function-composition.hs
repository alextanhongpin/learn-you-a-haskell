main :: IO()
main = do
  print $ map (\x -> negate (abs x)) [5,-3,-6,-7,-3,-2,-19,24]
  print $ map (negate . abs) [5,-3,-6,-7,-3,-2,-19,24]

  -- The expression f(g(z(x))) is equivalent to (f . g . z ) x
  print $ map (\xs -> negate (sum (tail xs))) [[1..5],[3..6],[1..7]]
  print $ map (negate . sum . tail) [[1..5],[3..6],[1..7]]
-- (.) :: (b -> c) -> (a -> b) -> a -> c
-- f . g = \x -> f (g x)