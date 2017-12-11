main :: IO()
main = do
  -- fst takes a pair and return the first component
  putStrLn $ show $ fst (10, 20)

  -- snd returns the second component
  putStrLn $ show $ snd ("hello", False)

  -- zip takes two list and zips them together into one list 
  putStrLn $ show $ zip [1..5] ['A'..'Z']

  let triangles = [(a,b,c) | c <- [1..10], b <- [1..c], a <- [1..b], a^2 + b^2 == c^2, a + b + c == 24]
  putStrLn $ show triangles
