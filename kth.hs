str = "AECAEFDBCDBFDECDEF"


kth :: [Char] -> Int -> Int -> Char
kth (x:xs) i target = if i == target then x else kth xs (i+1) target

main :: IO()
main = do
    print (kth str 0 2)
    -- print "d"

