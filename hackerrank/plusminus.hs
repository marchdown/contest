-- normalize :: (Fractional b, Integral a) => [a] -> [b]
normalize xs =
  map (/ (sum xs)) xs

collapse =
 \xs -> (\ fs xs -> [ length $ f xs | f <- fs])
      (map
        (\p -> \as -> filter p as)
        [(> 0), (< 0), (== 0)])
      xs

solve = \xs -> normalize $ map fromIntegral $ collapse xs
