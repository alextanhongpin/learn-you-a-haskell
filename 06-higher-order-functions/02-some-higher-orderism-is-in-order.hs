main :: IO()
main = do
  putStrLn $ show $ applyTwice (+3) 10
  putStrLn $ show $ applyTwice (++ "Hello") "Hey"
  putStrLn $ show $ applyTwice (3:) []

  putStrLn $ show $ zipWith' (+) [1,2,3,4] [1,2,3,4,5,6]
  putStrLn $ show $ zipWith' max [1,2,3,4] [5,4,1,4,5,6]
  putStrLn $ show $ zipWith' (++) ["john", "apple", "samsung"] ["doe", "pay", "car"]

applyTwice :: (a -> a) -> a -> a
applyTwice f x = f (f x)

zipWith' :: (a -> b -> c) -> [a] -> [b] -> [c]
zipWith' _ [] _ = []
zipWith' _ _ [] = []
zipWith' f (x:xs) (y:ys) = f x y : zipWith' f xs ys