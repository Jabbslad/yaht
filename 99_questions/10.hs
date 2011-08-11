pack :: Eq a => [a] -> [[a]]
pack [] = []
pack (x:xs) = takeWhile (==x) (x:xs) : pack (dropWhile (==x) xs)

encode :: Eq a => [a] -> [(Int, a)]
encode xs = map (\x -> (length x, head x)) (pack xs)