
-- aVeryBigSum [] = 0
-- aVeryBigSum (x:xs) = x + (aVeryBigSum xs)
--     -- Write your code here

-- ar = [1,2,3,4]

-- main :: IO()
-- main = do
--     print (aVeryBigSum ar)

-- import Control.Arrow.&&&

-- a = [1,2,3]
-- b = [3,2,1]
arr = [0,0,1,1,1,0,0,1]

-- com :: [Int]->[Int]->[Int]
-- com [] [] = []
-- com a b = map2
        
max1 :: [Int] -> Int -> Int -> Int
max1 [] max _ = max
max1 (x:xs) max acc =  if x == 1 then max1 xs (max) (acc+1) else if acc > max then max1 xs acc 0 else max1 xs max 0

-- [0,0,1,1,1,0,0,1] 0
-- [0,1,1,1,0,0,1] 0
-- []



-- com _ _ = []

main :: IO()
main = do
    -- print(arr)
    print (max1 [0,0,1,1,1,0,0,1] 0 0)
    print (max1 [0,0,1,0,1,0,0,1] 0 0)
    print (max1 [1,0,1,1,1,1,0,1] 0 0)