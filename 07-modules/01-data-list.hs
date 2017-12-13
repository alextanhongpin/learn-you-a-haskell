import Data.List
-- import Data.List (nub)
-- import Data.List hiding (nub)
-- import qualified Data.Map
-- import qualified Data.Map as M

main :: IO()
main = do
  -- intersperse takes an element and a list and then puts the element in between----
  -- each pair of elements in the list
  print $ intersperse '.' "Monkey"

  -- intercalate takes a list of lists and a list. It then inserts that list in 
  -- between all those lists and then flattens the result
  print $ intercalate " " ["Hey", "there", "guys"]
  print $ intercalate [0,0,0] [[1..5], [6..10], [10..15]]

  -- transpose transposes a list of lists. Columns becomes rows and vice versa
  print $ transpose [[1,2,3], [4,5,6], [7,8,9]]
  print $ transpose ["hey", "there", "guys"]

  -- concat flattens a list of lists into just a list of elements
  print $ concat ["foo", "bar", "baz"]
  print $ concat [[1,2,3], [4,5,6], [7,8,9]]

  -- concatMap first maps a function to a list and then concatenating the list with
  -- concat
  print $ concatMap (replicate 4) [1..3]

  -- and takes a list of booleans values and returns True only if all the values
  -- in the list are True
  print $ and $ map (>4) [5,6,7,8,9]
  print $ and $ map (==4) [4,4,4,5]

  -- or is like and, only it returns True if any of the boolean values in a list
  -- is True
  print $ or $ map (==4) [1..5]
  print $ or $ map (>4) [1..3]

  -- any and all take a predicate and check if the elements in the list satisfy
  -- the predicate
  print $ any (==4) [1..10]
  print $ all (>4) [4..10]

  -- iterate takes a function and a starting value. It applies the function to the
  -- starting value, then it applies that function to the result, then it applies
  -- the function to the result again, etc. It returns all the results in the form
  -- of an infinite list.
  print $ take 10 $ iterate (*2) 1
  print $ take 3 $ iterate (++"haha") "haha"

  -- splitAt takes a number and a list. It then splits the list at that many elements,
  -- returning the two lists in a tuple.
  print $ splitAt 3 "hello world"
  print $ splitAt 100 "hello world"
  print $ splitAt (-10) "hello world"
  print $ let (a, b) = splitAt 3 "foobar" in b ++ a

  -- takeWhile takes element from a list while the predicate holds
  print $ takeWhile (>3) [6,5,4,3,2,1]
  print $ takeWhile (/=' ') "This is a sentence"

  -- dropWhile is similar, only it drops all the elements while the predicate is true
  print $ dropWhile (>3) [10,20,30,1,2,3]

  -- span is similar to takeWhile, only it returns a pair of lists.
  print $ span (>3) [6,5,4,3,2,1]

  -- break breaks when the predicate is first true
  print $ break (>3) [6,5,4,3,2,1]

  -- sort simply sorts a list
  print $ sort [8,5,4,6,8,1,2,5,6]
  print $ sort "Hello world! This is amazing!"

  -- group takes a list and groups adjacent elements into sublists if they are equal
  print $ group [1,1,1,2,3,4,4,4,5,6,6,7,7,7,8,9]
  print $ map (\l@(x:xs) -> (x, length l)) $ group [1,1,1,2,3,4,4,4,5,6,6,7,7,7,8,9]

  -- inits and tails are like init and tail, only they recursively apply that to a list 
  -- until there's nothing left
  print $ inits "woot"
  print $ tails "woot"

  -- isInfixOf searches for a sublist within a list and returns True if the sublist we're
  -- looking for is somewhere inside the target list
  print $ "cat" `isInfixOf` "im a cat burglar"
  print $ "Cat" `isInfixOf` "im a cat burglar"

  -- isPrefixOf and isSuffixOf search for a sublist at the beginning and at the end
  -- of the list
  print $ "hey" `isPrefixOf` "hey there!"
  print $ "there!" `isSuffixOf` "hey there!"

  -- elem and notElem check if an element is or isn't inside a list
  
  -- partition takes a list and a predicate and returns a pair of lists. The first list
  -- in the result contains all the elements that satisfy the predicate, the second
  -- contains all the ones that don't
  print $ partition (`elem` ['A'..'Z']) "Hello World ABC"
  print $ partition (>3) [1..10]

  -- find takes a list and a predicate and returns the first element that satisfy the
  -- predicate
  print $ find (>4) [1..10]

  -- elemIndex is kind of like elem, only it doesn't return a boolean value
  print $ 4 `elemIndex` [1,2,3,4,5]

  -- elemIndices
  print $ 4 `elemIndices` [1,2,3,4,5,1,2,3,4,5]

  -- findIndex returns the index of the first element that satisfies the predicate
  print $ findIndex (==4) [1..10]
  
  -- findIndices returns the indices of the elements that satisfies the predicate
  print $ findIndices (>4) [1..10]

  -- zipWith and zip4
  print $ zipWith3 (\x y z -> x + y + z) [1..3] [4..6] [7..9]
  print $ zip4 [1..3] [4..6] [7..9] [10..12]

  -- lines takes a string and returns every line of the string in a separate list
  print $ lines "first line\nsecond line\nthird line"

  -- unlines
  print $ unlines ["first line", "second line", "third line"]

  -- words splitting a line of text into words
  print $ words "hey there where are the words in the sentence"

  -- unwords joins a list of words into a text
  print $ unwords ["hey", "there", "mate"]

  -- nub takes a list and remove duplicate elements
  print $ nub [1,2,3,4,1,2,3,4,1,2,3,3,3]
  print $ nub "Lots of words and characters!"

  -- delete takes an element and a list and deletes the firt occurence of the element in the list
  print $ delete 'h' "hey there gang"
  print $ delete 1 [2,1,2,3,4]

  -- \\ is the list difference function
  print $ [1..10] \\ [2,5,9]
  print $ "I'm a big baby" \\ "big"

  -- unions returns the union of two lists
  print $ [1..10] `union` [5..10]
  print $ "hey man" `union` "what's up man"

  -- intersect returns elements that are found in both lists
  print $ [1..7] `intersect` [5..10]

  -- insert takes an element and a list of elements that can be sorted and insert it into the
  -- last position where it's still less than or equal to the next element
  print $ insert 4 [3,4,1,2,3,4]
  print $ insert 4 [1..10]


-- Returns the number of unique items in a list
numUniques :: (Eq a) => [a] -> Int
numUniques = length . nub
