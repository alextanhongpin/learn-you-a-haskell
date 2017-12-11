main :: IO()
main = do
  putStrLn $ show $ factorial 10

  putStrLn $ show $ circumference 4.0
  putStrLn $ show $ circumference' 4.0


-- Integer is not bounded, unlike Int
factorial :: Integer -> Integer
factorial n = product [1..n]

-- Float is a real floating point with single precision
circumference :: Float -> Float
circumference r = 2 * pi * r

-- Double is a real floating point with double the precision
circumference' :: Double -> Double
circumference' r = 2 * pi * r

-- Bool is a boolean type.
-- Char represents a character. A list of character is a string.