nestList = (1,2,(3))

-- nestList = (1,2,(3,4))

flat () = ()
flat (x) = x

main :: IO()
main = do
    flat (1)
    -- print (show nestList)
    -- print ( flat nestList)