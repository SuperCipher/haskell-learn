listStr = ["1","2","2","2","3","4","4","5","6"]
-- String' :: [Char]

encode :: [[Char]] -> [Char] -> [(Int,[Char])] -> [(Int,[Char])]
encode [] prev acc = acc
-- encode (string:strings) "" [] = encode strings "" [(1,string)]
encode (string:strings) prev ((i,accStr):tuples) = 
    if prev == string then
        encode strings string ((i,accStr):tuples) ++ [(i+1,string)]
    else
        encode strings "" ((i,accStr):tuples) ++ [(i+1,string)]

encode _ _ _ = [(0,"test")]


main :: IO()
main = do
    print $ (encode listStr "" [(0,"")])
