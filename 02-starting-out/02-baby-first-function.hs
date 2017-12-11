main :: IO()
main = do
  putStrLn $ show $ doubleMe 9
  putStrLn $ show $ doubleUs 9 10
  putStrLn $ show $ doubleUs 4.3 10
  putStrLn $ show $ doubleUs 28 88 + doubleMe 10
  putStrLn $ show $ doubleSmallNumber 10
  putStrLn $ show $ doubleSmallNumber 101

-- doubleMe returns double the provided integer
doubleMe :: Int -> Int
doubleMe x = x + x

-- doubleUs takes two numbers, double them and return the sum of the integers
doubleUs :: Num a => a -> a -> a
doubleUs x y = x * 2 + y * 2


doubleSmallNumber :: (Ord a, Num a) => a -> a
doubleSmallNumber x = if x > 100
                        then x
                        else x * 2