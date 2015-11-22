import Control.Arrow

main = do
--  [n, m] <- readLn :: IO [Int]
  nm <- getLine :: IO String
--  [n, m] <- map read $ words nm :: [Int]
  bs <- getContents :: IO String
  print $ solve $ (\ xs -> map read $ words xs) bs

solve = (optimal_teams &&& maximum_topics)

maximum_topics ps = length $ filter (==True) $ maximum [zipWith (||) t0 t1 | t0 <- ps, t1 <- ps]

optimal_teams ps = zip ps (repeat $ maximum_topics ps)
-- remove redundant pairings



