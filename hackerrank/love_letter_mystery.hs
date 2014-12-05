import Data.Char
-- main = do
--   t <- readLn -- :: Int
--   ws <- [readLn | n <- [1..t]]
--   [print $ solve w | w <- ws]
-- --  return ()
main = getContents >>= print . (map solve) . tail . lines

-- split_in_half :: [Char] -> ([Int], [Int])
-- solve :: String -> Int  
solve cs = sum $ take (div (length cs) 2) (map abs (zipWith (-) (map ord cs) (map ord $ reverse cs)))
-- split_in_half (ignore the middle letter in odd-lettered words)
-- subtract first half from the second,
-- take absolute values,
-- sum up all the differences,
-- this is the number of changes we have to make to get a palindrome.
