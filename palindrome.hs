li = [1, 2, 3, 2, 1]

palin :: [Int] -> Bool
palin [] = True
palin [x] = True
palin arr =  head arr == last arr && palin ( init (tail arr ))


-- fold
-- nestList = [[1,1],2,[3,[5,8]]]

main :: IO()
main = do
    print $ palin li
