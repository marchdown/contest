import Data.List (sort, tails)
-- import qualified Data.Vector as Vo
import qualified Data.Sequence as So


main = do
   n <- readLn :: IO Int
   k <- readLn :: IO Int
   contents <- getContents
   print $ unfairness' n k ( So.fromList $ sort $ map read . lines $ contents)

-- takes sorted input
unfairness' n k (So.fromList ps) = minimum $ map spread $ sliding_window n k ps

-- takes sorted input
spread xs = abs $ (\ ys -> head ys - last ys) $ xs
spread' xs = abs $ (\ ys -> head ys - last ys) $ xs

sliding_window n k xs = map (take k) $ take (n-k+1) (tails xs)
sliding_window' n k xs = map (take k) $ take (n-k+1) (tails xs)

---- still too slow. possible solutions:
-- use array instead of list.
--
--
----
-- process values once, when reading them
-- ↑ won't work: input is unsorted
----
-- well, collect them into heap as they come, and then
-- implement a sliding window over a heap.
-- the result should be simple, but the process an
-- interesting exercise. basically,
-- fmap window heap
