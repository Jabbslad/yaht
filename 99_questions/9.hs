pack :: Eq a => [a] -> [[a]]
pack [] = []
pack (x:xs) = takeWhile (==x) (x:xs) : pack (dropWhile (==x) xs)

pack' :: Eq a => [a] -> [[a]]
pack' = foldr func []
    where
        func x []     = [[x]]
        func x (y:ys) = if x == (head y) then ((x:y):ys) else ([x]:y:ys)
