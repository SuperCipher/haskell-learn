list = ["1","2","3","1"]

-- find and drop same item
removeItem :: [Char] -> [[Char]] -> [Char] -> [Char]
removeItem _ [] [] = []
removeItem item (y:ys) accs =
    if item == y then 
        removeItem item ys (accs ++ ys)
    else removeItem item (y:ys) accs

-- 1 remove 1 element from list

-- remove1 (x:xs) item = 
--     if x == item 
--     then xs 
--     else remove1 xs item

-- max :: [[Char]] -> Int -> Int -> [Char]
-- max [] _ max = max
-- max strings num max =
    

-- read "271" :: Integer
main :: IO()
main = do
    print (removeItem 1 list [])