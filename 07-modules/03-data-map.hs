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

  -- fromList takes an association list and returns a map with the same associations
  print $ Map.fromList [("betty", "555-391"), ("betty", "111-234"), ("cindy", "123-555")]
  print $ Map.fromList [(1,2), (1,2), (4,5)]

  -- empty represents and empty map
  -- print $ Map.empty

  -- insert takes a key, a value and a map and returns a new map that's just
  -- like the old one, only with key and value
  print $ Map.insert 3 100 Map.empty
  print $ Map.insert 4 100 .Map.insert 3 200 . Map.insert 3 100 $ Map.empty

  -- null checks if a map is empty
  print $ Map.null Map.empty

  -- size reports the size of a map
  print $ Map.size Map.empty
  print $ Map.size $ Map.fromList [(2,3), (1,2), (4,5)]

  -- singleton takes a key and a value and creates a map that has exactly one mapping
  print $ Map.singleton 3 9
  print $ Map.insert 1 10 $ Map.singleton 3 0
  
  -- lookup works like the Data.List lookup, only it operates on map.
  -- It returns Just something or nothing
  print $ Map.lookup 3 $ Map.fromList [(3,11), (2,1)]

  -- member is a predicate that takes a key and a map and reports whether the key is
  -- in the map or not
  print $ Map.member 4 $ Map.fromList [(4,10), (1,2)]
  print $ Map.member 5 $ Map.fromList [(4,10), (1,2)]

  -- map and filter works like the list equivalent

findKey :: (Eq k) => k -> [(k,v)] -> Maybe v
findKey key = foldr (\(k,v) acc -> if key == k then Just v else acc) Nothing
