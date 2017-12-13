import Data.Char
import Data.List

main :: IO()
main = do
	print $ all isAlphaNum "bobby283"
	print $ all isAlpha "edy the fish!"

	print $ words "hey guys its me"
	-- print $ groupBy ((==) `on` isSpace) "hey guys its me"
	-- print $ filter (not . any isSpace) . groupBy ((==) `on` isSpace) $ "hey guys its me"

	print $ generalCategory ' '
	print $ generalCategory 'A'

	print $ map toUpper "hello world"
	print $ map toTitle "hello world"
	print $ map toLower "hello world"

	print $ map digitToInt "12345"
	print $ intToDigit 15

	print $ ord 'A'
	print $ chr 97
	print $ map ord "abcderg"

	
-- isControl checks whether a character is a control character
-- isSpace checks whether a character is a white-space character
-- isLower checks whether a character is lower-cased
-- isUpper checks whether a character is upper-cased
-- isAlpha checks whether a character is a letter
-- isAlphaNum checks whether a character is a letter or a number
-- isPrint checks whether a character is printable
-- isDigit checks whether a character is a digit
-- isOctDigit checks whether a character is an octal digit
-- isHexDigit checks whether a character is a hex digit
-- isLetter checks whether a character is a letter
-- isMark checks for Unicode mark characters. Use this if you are French
-- isNumber checks whether a character is numeric
-- isPunctuation checks whether a character is punctuation
-- isSymbol checks whether a character is a fancy mathematical or currency symbol
-- isSeparator checks for Unicode spaces and separators
-- isAscii checks whether a character falls into the first 128 characters of the Unicode character set
-- isLatin1 checks whether a character falls into the first 256 characters of Unicode
-- isAsciiUpper checks whether a character is ASCII and upper-case
-- isAsciiLower checks whether a character is ASCII and lower-case