main :: IO()
main = do
  -- map takes a function and a list and applies the function
  -- to every element in the list
  putStrLn $ show $ map (+3) [1,5,3,1,6]
  putStrLn $ show $ map (++ "!") ["a", "B", "c"]
  putStrLn $ show $ map fst [(1,2), (3,5), (6,7)]

  -- filter is a function that takes a predicate and 
  -- returns the element that satisfy the predicate
  putStrLn $ show $ filter (>3) [1,5,3,2,1,6,4,3,2]
  putStrLn $ show $ filter (==3) [1,5,3,2,1,6,4,3,2]
  putStrLn $ show $ filter even [1..10]
  putStrLn $ show $ let nonNull x = not (null x) in filter nonNull [[1,2,3], [2], [], [3], []]
  putStrLn $ "Largest divisible is: " ++ show largestDivisible
  
  -- find the sum of all odd squares that are smaller than 10000
  putStrLn $ show $ sum (takeWhile (<10000) (filter odd (map (^ 2) [1..])))

  putStrLn $ show $ chain 10
  putStrLn $ show $ numLongChain

-- find the largest number under 100,000 that is divisible by 3829
largestDivisible :: (Integral a) => a
largestDivisible = head (filter p [100000,99999..])
  where p x = x `mod` 3829 == 0

-- Collatz sequence
chain :: (Integral a) => a -> [a]
chain 1 = [1]
chain n 
  | even n = n:chain (n `div` 2)
  | odd n = n:chain (n * 3 + 1)

numLongChain :: Int
numLongChain = length (filter isLong (map chain [1..100]))
  where isLong xs = length xs > 15 