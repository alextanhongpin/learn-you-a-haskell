main :: IO()
main = do
  putStrLn $ show numLongChains

  putStrLn $ show $ zipWith (\a b -> (a * 30 + 3) / b) [5,4,3,2,1] [1,2,3,4,5]


-- Collatz sequence
chain :: (Integral a) => a -> [a]
chain 1 = [1]
chain n 
  | even n = n:chain (n `div` 2)
  | odd n = n:chain (n * 3 + 1)

numLongChains :: Int
numLongChains = length (filter (\xs -> length xs > 15) (map chain [1..100]))
