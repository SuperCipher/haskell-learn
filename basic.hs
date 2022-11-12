
first = "AB"
second = "DE"
expected = "ADBECF"


strOrd :: [Char] -> [Char] -> [Char] -> [Char]
strOrd [] [] acc = acc

-- strOrd (xl:[]) (xr:xsr) acc = (strOrd [] xsr (acc ++ [xl])) ++ (strOrd [] xsr (acc ++ [xr] ))  ++ " | "
strOrd (xl:[]) (xr:xsr) acc = " | "


-- strOrd (xl:xsl) (xr:[]) acc = (strOrd xsl [] (acc ++ [xl])) ++ (strOrd xsl [] (acc ++ [xr] )) ++ " / "
strOrd (xl:xsl) (xr:[]) acc = " / "

strOrd (xl:xsl) (xr:xsr) acc = (strOrd xsl xsr (acc ++ [xl])) ++ (strOrd xsl xsr (acc ++ [xr] )) ++ " "

-- strOrd' first second = do
--     i <- first
--     j <- second
--     <- [[i,j]]

main :: IO()
main = do
    print (strOrd first second "")
    -- print(strOrd' first second)

-- ABC ABF
-- AECAEFDBCDBFDECDEF