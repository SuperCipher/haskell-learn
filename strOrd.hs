
first = "ABC"
second = "DEF"
expected = "ADBECF"


strOrd :: [Char] -> [Char] -> [Char] -> [Char]
strOrd [] [] acc = acc
-- strOrd [] (xr:xsr) acc = strOrd [] xsr (acc ++ " RIGHT " ++ [xr])
strOrd [] (xr:xsr) acc = "123"
strOrd (xl:xsl) [] acc = "321"
strOrd (xl:xsl) (xr:xsr) acc = strOrd xsl xsr (acc ++ [xl]) ++ strOrd xsl xsr (acc ++ [xr])

strOrd' first second = do
    i <- first
    j <- second
    <- [[i,j]]

main :: IO()
main = do
    print (strOrd first second "")
    print(strOrd' first second)

-- ABC ABF
-- AECAEFDBCDBFDECDEF