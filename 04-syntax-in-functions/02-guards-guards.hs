main :: IO()
main = do
  putStrLn $ bmiTell 10.0
  putStrLn $ bmiTell' 85 1.90

bmiTell :: (RealFloat a) => a -> String
bmiTell bmi
  | bmi <= 18.5 = "You're underweight, you emo, you!"
  | bmi <= 25.0 = "You're supposedly normal. Pfft"
  | bmi <= 30.0 = "You're fat! Lose some weight."
  | otherwise = "You're a whale, congratulations!"

bmiTell' :: (RealFloat a) => a -> a -> String
bmiTell' weight height
  | weight / height ^ 2 <= 18.5 = "You're underweight, you emo, you!"
  | weight / height ^ 2 <= 25.0 = "You're supposedly normal. Pfft"
  | weight / height ^ 2 <= 30.0 = "You're fat! Lose some weight."
  | otherwise = "You're a whale, congratulations!"

max' :: (Ord a) => a -> a -> a
max' a b
 | a > b = a
 | otherwise = b 