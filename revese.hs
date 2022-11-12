li = [1,2,3,4]

rev :: [Int] -> [Int] -> [Int]
rev [] acc = acc
rev (x:xs) acc = rev xs ([x] ++ acc)


rev'' :: [Int] -> [Int]
rev'' [] = []
rev'' (x:xs) = (rev'' xs) ++ [x]

main :: IO()
main = do
    print(rev li [])
    print(rev'' li)

-- foldr (\a b -> b ++ [a]) [] li
-- foldl (\a b -> [b] ++ a) [] li
-- foldr (\tail b ->  b : tail) [] li
-- foldr (\acc x->  acc: x) [] li
foldr (\acc x->  x ) [] li