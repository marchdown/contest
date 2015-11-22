import Data.List (tails, inits)
main = do
  n  <- getLine
  as <- getLine
--  walk_partitions ((\ xs -> (last xs, init xs))(map read (words as)))
  walk_partitions (read (last (words as))) (map read (words as))
--  insertionLoop (read n) (read (last (words as))) (map read (words as))
  
-- print an entire array every time an element is shifted

-- walk_partitions (item, xs) =
walk_partitions item xs = 
  fmap (print_partition item) (zip (inits xs) (tails xs))

-- insertionLoop :: Int -> Int -> [Int] -> IO ()
-- insertionLoop 1 _    as = print as
-- insertionLoop n item as = do
--   print as
--   h <- take (n-2) as
-- --  t <- drop as
--   print h
-- --  insertionLoop (n - 1) item ((take (n - 2) as) ++ [max item ])



-- I am writing an imperative loop in haskell.
-- What am I doing?

-- What should I be doing?
-- alright, print, shift, print, shift, print-and-shift, shift-and-print.
-- map shift-and-print to all possible partitions until one fits.
-- do a lazy list of partition and iterate through it until a partition fits



print_partition item (h, (m:t)) =
  print_list $ h ++ [max m item] ++ t

print_list :: Show a => [a] -> IO ()
print_list = print


--  insertionLoop (insert item as)

-- loop n, inserting item in an array and printing the array.

-- insert :: Int -> [Int] -> [Int]
-- insert = item sortedList



