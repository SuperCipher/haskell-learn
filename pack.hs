lists = "12345556"

pack :: [Char] -> [Char] -> [[Char]] -> [[Char]]
pack [] _ acc = acc
pack (char:strings) prev (acc:accs) = if [char] == prev then 
                                                pack strings [char] (([char] ++ acc ):accs)
                                            else 
                                                pack strings [char] ([char]:acc:accs)

main :: IO()
main = do
    print (pack lists "" [""])