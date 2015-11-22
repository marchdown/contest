import Data.List
main = do
  n  <- fmap read getLine :: IO Int
  -- a  <- fmap (read . words) getLine
  -- k  <- fmap read getLine
  -- qs <- fmap lines getContents
  -- print $ solve a qs
  print n

parse_query_line l =
  words l

solve :: [Int] -> [Char] -> Int
solve a ((query_type:first_query_line):rest_of_query_lines) = case query_type of
    'Q' -> query a first_query_line  : solve a rest_of_query_lines
    'U' -> solve (update (map (read . words) first_query_line) a) rest_of_query_lines

query a l = foldr1 lcm $ slice (read l) a

slice [b, e] xs = take e $ drop b xs
update :: [Int] -> [Int] -> [Int]
update [idx, val] xs = (take (idx - 1) xs)
                       ++ [val]
                       ++ (drop idx xs)
