import qualified Data.Set as Set

main :: IO()
main = do
  let text1 = "I just had an anime dream. Anime... Reality... Are they so different?"  
  let text2 = "The old man left his garbage can out and now his trash is all over my lawn!"

  -- fromList takes a list and converts it into a set
  let set1 = Set.fromList text1
  print set1

  let set2 = Set.fromList text2
  print set2

  -- intersection returns the same elements from both sets
  print $ Set.intersection set1 set2

  -- difference returns elements which are in the first set but aren't in the second set
  print $ Set.difference set1 set2
  print $ Set.difference set2 set1

  -- union returns all unique letters used in both sentences by using union
  print $ Set.union set1 set2

  print $ Set.null Set.empty
  print $ Set.null $ Set.fromList [3,4,5,6,7]
  print $ Set.size $ Set.fromList [1..10]
  print $ Set.singleton 9
  print $ Set.insert 4 $ Set.fromList [5..10]
  print $ Set.delete 4 $ Set.fromList [1..10]

  -- isSubsetOf checks if A is a subset of B if B contains all elements that A has
  print $ Set.fromList [1..10] `Set.isSubsetOf` Set.fromList [1..20]

  print $ Set.filter odd $ Set.fromList [1..10]
  print $ Set.map (+1) $ Set.fromList [1..10]

  -- using set to filter duplicates is faster than using nub, but does not preserve the order
  let setNub xs = Set.toList $ Set.fromList xs
  print $ setNub "Hey what's cracking"