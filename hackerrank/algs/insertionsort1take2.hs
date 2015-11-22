import Data.List (tails, inits)
--import Control.Applicative
testcase1 = [2,4,6,8,3]

main = do
  n <- readLn :: IO Int
  b <- (fmap (map readInt . words) getLine)
-- now do a loop. before loop is called nothing is printed
-- after the loop is done, all intermediate results are printed
  print $ head b

readInt :: String -> Int
readInt = read

-- do one shift, print the result, recur with the new configuration
-- shiftLoop item array pos
--   shift
--   print
-- process 5 "2 4 6 8 3" ->
-- shift 1, 2 4 6 8 3 = 2 4 6 8 8 
-- shift 2, 2 4 6 8 8 = 2 4 6 6 8
-- shift 3, 2 4 6 6 8 = 2 4 4 6 8 
-- shift 4, 2 4 4 6 8 = 2 3 4 6 8 .
shift_according_to_spec idx xs item = case
  compare incumbent item of
    GT ->
      shift_according_to_spec (inc idx) (update xs (length xs - idx) incumbent) item
    otherwise ->
      update xs (length xs - idx) item
  where incumbent = xs !! (length xs - idx)
shift_and_try_to_insert item array pos = case
  compare incumbent item of
    GT -- carry on
      -> 
        -- do print array
        shift_and_try_to_insert item (update array new_pos incumbent) new_pos
    otherwise -- insert the item here and stop
      ->
        update array pos item
  where
    incumbent = (array !! pos)
    new_pos = dec pos

shift_if_GT xs pos = case compare (xs !! pos) (xs !! (dec pos)) of
  GT
    ->
      shift_if_GT xs (dec pos)
  otherwise
    ->
      xs
      
  

dec = (flip (-) 1)
-- inc = (flip (+) 1)
inc = (+1) 


update :: Ord a => [a] -> Int -> a -> [a]
-- TODO: reimplement with vectors
-- List-based.
update xs pos item = take (dec pos) xs ++ [item] ++ drop pos xs
