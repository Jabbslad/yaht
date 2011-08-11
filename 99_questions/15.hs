repli :: [a] -> Int -> [a]
repli [] _     = []
repli (x:xs) n = (replicate n x) ++ (repli xs n)

repli' :: [a] -> Int -> [a]
repli' xs n = concat [replicate n x | x <- xs]

repli'' :: [a] -> Int -> [a]
repli'' xs n = concatMap (replicate n) xs