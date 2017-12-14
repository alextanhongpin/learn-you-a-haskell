main :: IO()
main = do
  print $ fmap (++ "Hello World") (Just "Something...")
  print $ fmap (++ "Hello world") Nothing