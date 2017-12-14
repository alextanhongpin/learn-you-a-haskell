main :: IO()
main = do
  -- print Empty
  print $ 5 :-: Empty
  print $ 5 :-: (4 :-: Empty)

  let a = 3 :-: 4 :-: 5 :-: Empty
  let b = 6 :-: 7 :-: Empty
  print $ a .++ b

  -- Binary tree search
  let nums = [8,6,4,1,7,3,5]
  let numsTree = foldr treeInsert EmptyTree nums
  print numsTree

  print $ 8 `treeElem` numsTree
  print $ 108 `treeElem` numsTree

infixr 5 :-:
data List a = Empty | a :-: (List a) deriving (Show, Read, Eq, Ord)

infixr 5 .++
(.++) :: List a -> List a -> List a
Empty .++ ys = ys
(x :-: xs) .++ ys = x :-: (xs .++ ys)

-- Binary search tree
data Tree a = EmptyTree | Node a (Tree a) (Tree a) deriving (Show, Read, Eq)

singleton :: a -> Tree a
singleton x = Node x EmptyTree EmptyTree

treeInsert :: (Ord a) => a -> Tree a -> Tree a
treeInsert x EmptyTree = singleton x 
treeInsert x (Node a left right)
  | x == a = Node x left right
  | x < a = Node a (treeInsert x left) right
  | x > a = Node a left (treeInsert x right)

treeElem :: (Ord a) => a -> Tree a -> Bool
treeElem x EmptyTree = False
treeElem x (Node a left right)
  | x == a = True
  | x < a = treeElem x left
  | x > a = treeElem x right
