str = "AECAEFDBCDBFDECDEF"

length' :: [Char] -> Int -> Int
length' [] count = count
length' (head:tail) count = length' tail (count+1)

length'' :: Int -> [Char] -> Int
length'' count [] = count
length'' count (head:tail) = length'' (count+1) tail

length''' :: [Char] -> Int
length'''  [] = 0
length'''  (head:tail) = (length'''  tail) + 1

main :: IO()
main = do
    print (length' str 0)
    print (length''  0 str)
    print (length''' str)