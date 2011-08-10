elementAt :: [a] -> Int -> a
elementAt xs n = xs !! (n-1)

elementAt' :: [a] -> Int -> a
elementAt' (x:_) 1 = x
elementAt' (x:xs) n = elementAt' xs (n-1)