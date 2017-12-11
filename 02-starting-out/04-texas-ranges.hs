main :: IO()
main = do
  putStrLn $ show $ [1..20]
  putStrLn $ show $ ['a'..'z']
  putStrLn $ show $ ['K'..'z']
  putStrLn $ show $ ['K'..'Z']
  putStrLn $ show $ [2,4..20]
  putStrLn $ show $ [3,7..20]

  -- cycle takes a list and cycles it into an infinite list
  putStrLn $ show $ take 10 (cycle [1,2,3])

  -- repeat takes an element and produces and infinite list of just that element
  putStrLn $ show $ take 10 (repeat 5)