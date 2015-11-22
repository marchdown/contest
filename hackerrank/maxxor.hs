import Data.Bits (xor)
-- read Int Int
-- main :: IO ()
-- main = 
--   print $ maxxor $ (map read) . words . getLine
main = do
  numbers <- getLine
  print $ maxxor $ ( (map read) . words) numbers
-- maxxor :: Int -> Int -> Int
-- maxxor r l = foldr1 max [xor a b | a <- [r..l], b <- [r..l]]
maxxor :: [Int] -> Int
maxxor (r:l:[]) = maximum [xor a b | a <- [r..l], b <- [r..l]]
