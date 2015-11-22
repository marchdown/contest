import Data.List
import Data.Foldable
combinations n xs = combs' n $ sort xs
-- combs 0 _ = [[]]
combs' n xs = mapConcat combs $ take (length xs - n) (tails xs)
combs 1 xs = map (\x -> [x]) xs
combs n (x:xs) = [ x:comb | comb <- (combs (n-1) xs)]


