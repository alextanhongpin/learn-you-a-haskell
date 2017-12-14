main :: IO()
main = do
  print $ Just "haha"
  let stang = Car {company="Ford", model="Mustang", year=1967}
  print $ tellCar stang 

  print $ Vector 1 2 3 `vplus` Vector 10 20 30

data Car = Car { company :: String
, model :: String
, year :: Int 
} deriving (Show)

tellCar :: Car -> String
tellCar (Car { company = c, model = m, year = y}) = "This " ++ c ++ " " ++ m ++ " was made in " ++ show y

data Vector a = Vector a a a deriving (Show)

vplus :: (Num t) => Vector t -> Vector t -> Vector t
(Vector i j k) `vplus` (Vector l m n) = Vector (i + l) (j + m) (k + n)

