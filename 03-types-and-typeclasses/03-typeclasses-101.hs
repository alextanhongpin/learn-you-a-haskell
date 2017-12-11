main :: IO()
main = do
  -- Eq is used for types that support equality testing
  putStrLn $ show $ 5 == 5
  putStrLn $ show $ 10 == 4

  -- Ord is for types that have ordering
  putStrLn $ show $ "Abrakadabra" < "Zebra" -- Only the first character in the list is compared
  putStrLn $ show $ "Abrakadabra" `compare` "Zebra"
  putStrLn $ show $ 5 > 3
  putStrLn $ show $ 5 `compare` 3

  -- Show can be presented as strings
  -- Read is the opposite of show. It takes a string and returns a type which is a member of Read
  putStrLn $ show $ read "True" || False
  putStrLn $ show $ read "[1,2,3]" ++ [2]
  putStrLn $ show $ read "5" + 3

  -- Enum members are sequentially ordered types
  -- Bounded members have an upper and a lower bound
  -- Num is a numeric typeclass. Int, Integer, Float and Double is part of it.
  -- Integral is also a numeric typeclass. Int and Integer is part of this typeclass.
  -- Floating includes Float and Double.