import Data.Char
import System.IO

main :: IO()
main = do
  handle <- openFile "09-input-and-output/poem.txt" ReadMode
  contents <- hGetContents handle
  putStr (map toUpper contents)
  hClose handle

  fileContent <- readFile "09-input-and-output/poem.txt"
  putStr fileContent

  -- writeFile :: FilePath -> String -> IO()
  writeFile "09-input-and-output/write.txt" fileContent