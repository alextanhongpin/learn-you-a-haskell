import qualified Data.Map as Map

main :: IO()
main = do
  -- lockers :: LockerMap
  let lockers = Map.fromList [(100, (Taken, "ZD391"))
                         ,(101, (Free, "Jahde"))
                         ,(103, (Free, "SD123"))
                         ]
  print $ lockerLookup 101 lockers


data LockerState = Taken | Free deriving (Show, Eq)
type Code = String
type LockerMap = Map.Map Int (LockerState, Code)

lockerLookup :: Int -> LockerMap -> Either String Code
lockerLookup lockerNumber map =
    case Map.lookup lockerNumber map of
      Nothing -> Left $ "Locker number " ++ show lockerNumber ++ " doesn't exist!" 
      Just (state, code) -> if state /= Taken
                            then Right code
                            else Left $ "Locker " ++ show lockerNumber ++ " is already taken!"
