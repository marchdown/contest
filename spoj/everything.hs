main :: IO ()
main = do
  line <- getLine
  process line
  main

process :: String -> IO ()
process s = do
  print (length s)

