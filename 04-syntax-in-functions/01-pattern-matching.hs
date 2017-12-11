main :: IO()
main = do
  putStrLn $ lucky 1
  putStrLn $ lucky 7

  putStrLn $ show $ factorial 10

  putStrLn $ show $ addVectors (1,2) (3,4)

  putStrLn $ show $ first (1, 2, 3)
  putStrLn $ show $ second (1, 2, 3)
  putStrLn $ show $ third (1, 2, 3)

  putStrLn $ show $ head' [1,2,3]
  putStrLn $ show $ head' "hello"

  putStrLn $ show $ tell []
  putStrLn $ show $ tell [1]
  putStrLn $ show $ tell [1,2]
  putStrLn $ show $ tell [1,2,3,4,5]

lucky :: (Integral a) => a -> String
lucky 7 = "Lucky number seven!"
lucky x = "Sorry, you're out of luck, pal!"


factorial :: (Integral a) => a -> a
factorial 0 = 1
factorial n = n * factorial (n - 1)

addVectors :: (Num a) => (a, a) -> (a, a) -> (a, a)
addVectors (x1, y1) (x2, y2) = (x1 + x2, y1 + y2) 

first :: (a, b, c) -> a
first (a, _, _) = a

second :: (a, b, c) -> b
second (_, b, _) = b

third :: (a, b, c) -> c
third (_, _, c) = c

head' :: [a] -> a
head' [] = error "Can't call head on empty list"
head' (x:_) = x

tell :: [a] -> String
tell [] = "The list is empty"
tell (x:[]) = "The list has only one item"
tell (x:y:[]) = "The list has two item"
tell (x:y:_) = "The list has many items"

length' :: (Num b) => [a] -> b
length' [] = 0
length' (_:xs) = 1 + length' xs

sum' :: (Num a) => [a] -> a
sum' [] = 0
sum' (x:xs) = x + sum' xs