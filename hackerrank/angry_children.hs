import Data.List

main = do
   n <- readLn :: IO Int
   k <- readLn :: IO Int
   contents <- getContents -- :: IO [Int]
   print $ unfairness n k (map read . lines $ contents)

-- solve :: Int -> [Int] -> Int
-- solve n k ps = minimum $ map (\ l -> (head l) - (last l)) $ possible_pack_choices n k ps

-- possible_pack_choices n k ps = map (take k) (take (n-k) (tails ps))
testdata0 = map read . words $ "7 3 10 100 300 200 1000 20 30" :: [Int]


unfairness n k ps = minimum $ map spread $ sliding_window' n k (sort ps)
----------------
spread xs = abs $ (\ ys -> head ys - last ys) $ sort xs

-- oh ever so inefficent. How do I do this better?
sliding_window k xs = map (take k) $ take (n-k+1) (tails xs)
  where n = length xs                      

sliding_window' n k xs = map (take k) $ take (n-k+1) (tails xs)
