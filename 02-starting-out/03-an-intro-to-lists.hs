main :: IO()
main = do
  let lostNumbers = [4,8,15,16,23,42]
  putStrLn $ show lostNumbers

  -- Joining two lists together
  putStrLn $ show $ [1,2,3,4] ++ [9,10,11,12]

  -- Joining two strings (lists) together
  putStrLn $ show $ "hello" ++ " " ++ "world"

  -- Joining characters into lists
  putStrLn $ show $ ['w', 'o'] ++ ['l', 'd']

  -- Add char using cons operator
  putStrLn $ show $ 'A':" Small Cat"

  -- Add list using cons operator
  putStrLn $ show $ 5:[1,2,3,4]

  -- Get element out of an index
  let name = "john doe"
  putStrLn $ show $ name !! 3
  putStrLn name

  putStrLn $ show $ [1,2,3,4,5] !! 2

  -- List comparison from left to right
  putStrLn $ show $ [3,2,1] > [2,1,0]
  putStrLn $ show $ [3,2,1] == [3,2,1]
  putStrLn $ show $ [3,4,2] > [3,4]
  putStrLn $ show $ [1,2] > [0,1]

  let someList = [10,20,30]
  -- head takes a list and returns its head (first element)
  putStrLn $ show $ head someList

  -- tail takes a list and returns its tail (everything but the head)
  putStrLn $ show $ tail someList

  -- last takes a list and returns its last element
  putStrLn $ show $ last someList

  -- init takesa list and returns everything except the last element
  putStrLn $ show $ init someList

  -- length takes a list and returns its length
  putStrLn $ show $ length someList

  -- null checks if a list is empty
  putStrLn $ show $ null someList
  putStrLn $ show $ null []

  -- reverse reverses a list
  putStrLn $ show $ reverse someList

  -- take takes a number and a list
  putStrLn $ show $ take 3 someList
  putStrLn $ show $ take 1 someList
  putStrLn $ show $ take 0 someList

  -- drop works the same, only it drops the number of elements from the beginning of a list
  putStrLn $ show $ drop 3 someList
  putStrLn $ show $ drop 1 someList

  -- maximum returns the largest item in a list
  putStrLn $ show $ maximum [1,20, 3, 34, 3.2]

  -- minimum returns the smallest item in a list
  putStrLn $ show $ minimum [1,20, 3, 34, 3.2]

  -- sum takes a list and returns their sum
  putStrLn $ show $ sum someList

  -- product takes a list and returns their product
  putStrLn $ show $ product someList

  -- elem checks if an item is in the list
  putStrLn $ show $ 10 `elem` someList
  putStrLn $ show $ 1 `elem` someList