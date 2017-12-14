main :: IO()
main = do
  print $ Red == Red
  print $ Red == Yellow
  print Red
  print Yellow
  print Green

-- We define a new typeclass and that's called Eq
-- The a is the type variable and it means that a will play the
-- role of the type that will soon be making an instance of Eq
-- class Eq a where
--   (==) :: a -> a -> Bool
--   (/=) :: a -> a -> Bool
--   x == y = not (x /= y)
--   x /= y = not (x == y)


data TrafficLight = Red | Yellow | Green
-- Class is for defining typeclasses and instance is for making our types
-- instance of typeclasses
instance Eq TrafficLight where
  Red == Red = True
  Green == Green = True
  Yellow == Yellow = True
  _ == _ = False

instance Show TrafficLight where
  show Red = "Red light"
  show Yellow = "Yellow light"
  show Green = "Green light"