import Data.List
main = do
  getLine
  pss' <- fmap lines getContents
--  pss <- fmap (map read . lines) getContents
-- pss <- read . lines <$> getContents  
--  print $ foldr1 gcd' pss
  putStrLn $ show' $ gcd'' pss'


-- list of numbers in the form of prime-power pairs
-- e.g. 35 would be [5 1 7 1]
show' ns = intercalate " " (map show ns)  
gcd'' pss = foldr1 gcd' $ map (map read . words) pss
gcd' :: [Int] -> [Int] -> [Int]
gcd' _ [] = []
gcd' [] _ = []
gcd' (x0:x1:xs) (y0:y1:ys) = case compare x0 y0 of
  EQ -> (x0:[ min x1 y1]) ++ gcd' xs ys
  LT -> gcd' xs (y0:y1:ys)
  GT -> gcd' (x0:x1:xs) ys
