main :: IO()
main = do
  putStrLn $ show $ [x*2 | x <- [1..10]]
  putStrLn $ show $ [x*2 | x <- [1..10], x * 2 > 12]
  putStrLn $ show $ [x | x <- [50..100], x `mod` 7 == 3]

  putStrLn $ show $ boomBangs [7..13]

  -- Exclude 13, 15 and 19
  putStrLn $ show $ [x | x <- [10..20], x /= 13, x /= 15, x /= 19]

  -- Get the product of two lists
  putStrLn $ show $ [x * y | x <- [1,2,3], y <- [4,5,6]]

  let nouns = ["hobo", "frog", "pope"]
  let adjectives = ["lazy", "grouchy", "scheming"]
  putStrLn $ show $ [adjective ++ " " ++ noun | noun <- nouns, adjective <- adjectives]

  -- Write our own version of length
  putStrLn $ show $ length' [1,2,3]

  putStrLn $ show $ removeNonUppercase "Hello World ABC"

boomBangs :: [Int] -> [String]
boomBangs xs = [ if x < 10 then "boom" else "bang" | x <- xs, odd x]

length' :: [a] -> Int
length' xs = sum[1 | _ <- xs]

removeNonUppercase :: String -> String
removeNonUppercase str = [c | c <- str, c `elem` ['A'..'Z']]