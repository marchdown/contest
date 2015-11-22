module BreakingChocolate where

breakChocolate :: Int -> Int -> Int
breakChocolate 1 1 = 0
breakChocolate 1 m = (m - 1)
breakChocolate n 1 = (n - 1)
breakChocolate n m = 
  breakChocolate    (floor   ((max m n) /2))  (min m n)
  + (breakChocolate (ceiling ((max m n) /2)) (min m n))
  Dropbox/org/
