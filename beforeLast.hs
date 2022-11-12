str = "AECAEFDBCDBFDECDEF"
last' ( beforLast:x:[]) _ = beforLast
last' (x:xs) prev = last' xs [x]

main :: IO()
main = do
    print (last' str "")

-- ABC ABF
-- AECAEFDBCDBFDECDEF