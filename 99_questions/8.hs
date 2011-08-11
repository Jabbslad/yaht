compress :: Eq a => [a] -> [a]
compress xs = foldr (\x ys -> if x == head ys then ys else x:ys) [last xs] xs

compress' :: Eq a => [a] -> [a]
compress' [] = []
compress' [x] = [x]
compress' (x:y:ys)
	| x == y = compress' (y:ys)
	| otherwise = x : compress' (y:ys)

compress'' :: Eq a => [a] -> [a]
compress'' []     = []
compress'' (x:xs) = [x] ++ (compress'' $ dropWhile (==x) xs)