main = do
  n  <- getLine
  as <- getLine
  insertionLoop (read (last (words as))) (map read (words as))
  
-- print an entire array every time an element is shifted
insertionLoop :: Int -> [Int] -> IO ()
insertionLoop item as = do
  print as
--  insertionLoop (insert item as)

-- loop n, inserting item in an array and printing the array.

-- insert :: Int -> [Int] -> [Int]
-- insert = item sortedList



