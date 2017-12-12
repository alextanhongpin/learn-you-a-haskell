main :: IO()
main = do
  putStrLn $ show $ sum' [10, 1]


sum' :: (Num a) => [a] -> a
sum' xs = foldl (\acc x -> acc + x) 0 xs 