main :: IO()
main = do
  putStrLn (show (2 + 10))
  putStrLn (show (49 * 100))
  putStrLn (show (1892 - 1472))
  putStrLn (show (5 / 2))

  putStrLn (show (True && False))
  putStrLn (show (True && True))
  putStrLn (show (False || True))
  putStrLn (show (not False))
  putStrLn (show $ not (True && True))

  putStrLn (show $ 5 == 0)
  putStrLn (show $ 5 == 5)
  putStrLn (show $ "hello" == "hello")

  putStrLn (show $ succ 8)
  putStrLn (show $ min 9 10)
  putStrLn (show $ max 100 101)

  putStrLn (show $ succ 9 + max 5 4 + 1)