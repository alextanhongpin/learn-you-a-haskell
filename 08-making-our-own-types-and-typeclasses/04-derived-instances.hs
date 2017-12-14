main :: IO()
main = do
  let mikeD = Person {firstName = "Michael", lastName = "Diamond", age = 43}
  let johnD = Person {firstName = "John", lastName = "Doe", age = 13}
  print $ mikeD == mikeD
  print $ mikeD == johnD

  let boys = [mikeD, johnD]
  print $ mikeD `elem` boys
  -- print $ read "Person {firstName =\"Michael\", lastName =\"Diamond\", age = 43}" :: Person

  -- print $ minBound :: Day
  -- print $ maxBound :: Day
  print $ Monday `compare` Tuesday
  print $ succ Monday

data Person = Person { firstName :: String
                     , lastName :: String
                     , age :: Int
                     } deriving (Show, Eq, Read)

data Day = Monday | Tuesday | Wednesday | Thursday | Friday | Saturday | Sunday 
           deriving (Eq, Ord, Show, Read, Bounded, Enum)
