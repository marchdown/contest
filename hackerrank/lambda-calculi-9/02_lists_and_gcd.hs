import Data.Sequence
import Control.Applicative
import Data.List
main = do
  getLine
  pss' <- transform_contents getContents
--  pss <- fmap (map read . lines) getContents
-- pss <- read . lines <$> getContents  
--  print $ foldr1 gcd' pss
  putStrLn $ show' $ gcd'' pss'


-- list of numbers in the form of prime-power pairs
-- e.g. 35 would be [5 1 7 1]

transform_contents = fmap lines
transform_contents_stage_2 pss = fmap (fmap read) $ fmap (words) pss
gcd'' pss = foldr1 gcd' $ transform_contents_stage_2 pss

show' ns = intercalate " " (map show ns)  
gcd' :: [Int] -> [Int] -> [Int]
gcd' _ [] = []
gcd' [] _ = []
gcd' (x0:x1:xs) (y0:y1:ys) = case compare x0 y0 of
  EQ -> (x0:[ min x1 y1]) ++ gcd' xs ys
  LT -> gcd' xs (y0:y1:ys)
  GT -> gcd' (x0:x1:xs) ys
                   
--- this is weird:
-- this works:
-- transform_contents_stage_2 pss = fmap (fmap read) $ fmap (words) pss
-- this doesn't:
-- transform_contents_stage_2 = fmap (fmap read) $ fmap (words)

--- alright, so this will be left a mystery to me for the time being
