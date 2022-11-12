str = "AABBBCAA"

deDup :: [Char] -> [Char] -> [Char] -> [Char]
deDup [] result _ = result
deDup (x:xs) result prev = if [x] == prev then deDup xs result [x] else deDup xs ([x] ++ result) [x]

main :: IO()
main = do
    print (deDup str "" "")