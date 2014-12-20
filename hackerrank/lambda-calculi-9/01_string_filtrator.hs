-- Enter your code here. Read input from STDIN. Print output to STDOUT
main = 
    getContents >>= putStrLn . (string_filtrator [])


string_filtrator _ [] = []
string_filtrator bs (x:xs) = if x `elem` bs then string_filtrator bs xs else x : string_filtrator (x:bs) xs
