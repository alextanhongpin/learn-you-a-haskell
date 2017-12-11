main :: IO()
main = do
  putStrLn $ show $ cylinder 10 20

  putStrLn $ show $ [let square x = x * x in (square 5, square 5, square 5)]

cylinder :: (RealFloat a) => a -> a -> a
cylinder r h = 
  let sideArea = 2 * pi * r * h
      topArea = pi * r^2
  in sideArea + 2 * topArea


