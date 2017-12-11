main :: IO()
main = do
  putStrLn $ show $ describeList [1,2,3]
  putStrLn $ show $ describeList [1]
  putStrLn $ show $ describeList []


head' :: [a] -> a
head' [] = error "No head for empty lists"
head' (x:_) = x

head2 :: [a] -> a
head2 xs = case xs of [] -> error "No head for empty lists"
                      (x:_) -> x

describeList :: [a] -> String
describeList xs = "The list is " ++ case xs of [] -> "empty"
                                               [x] -> "a singleton list"
                                               xs -> "a longer list"