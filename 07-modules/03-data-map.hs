import qualified Data.Map as Map
main :: IO()
main = do
  let phoneBook = [("betty", "555-2938")
                  ,("bonnie", "452-2928")
                  ,("patsy", "493-2928")
                  ,("lucille", "20502928")
                  ,("wendy", "939-8283")
                  ,("penny", "853-2492")
                  ]

  print $ findKey "penny" phoneBook
  print $ findKey "wilma" phoneBook

  print $ Map.fromList [("betty", "555-391"), ("betty", "111-234"), ("cindy", "123-555")]
  print $ Map.fromList [(1,2), (1,2), (4,5)]

findKey :: (Eq k) => k -> [(k,v)] -> Maybe v
findKey key = foldr (\(k,v) acc -> if key == k then Just v else acc) Nothing
