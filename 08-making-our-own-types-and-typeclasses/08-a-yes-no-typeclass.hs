
main :: IO()
main = do
  print $ yesno $ length []
  print $ yesno "haha"
  print $ yesno ""
  print $ yesno $ Just 0
  print $ yesno Nothing
  print $ yesno True
  print $ yesno []
  print $ yesno [1..10]

  print $ yesNoIf Nothing "Yeah!" "No..."
  print $ yesNoIf True "is true!" "is false..."

class YesNo a where
  yesno :: a -> Bool

instance YesNo Int where
  yesno 0 = False
  yesno _ = True

instance YesNo [a] where
  yesno [] = False
  yesno _ = True

instance YesNo Bool where
  yesno = id -- A standard library function that takes a parameter and returns the same thing

instance YesNo (Maybe a) where
  yesno (Just _) = True
  yesno Nothing = False

yesNoIf :: (YesNo y) => y -> a -> a -> a
yesNoIf yesNoVal yesResult noResult = if yesno yesNoVal then yesResult else noResult
