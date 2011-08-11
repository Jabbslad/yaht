dupli :: [a] -> [a]
dupli = foldr (\x ys -> x : ys) []

dupli' :: [a] -> [a]
dupli' = foldl (\acc x -> acc ++ [x,x]) []

dupli'' :: [a] -> [a]
dupli'' []     = []
dupli'' (x:xs) =  x : x : dupli'' xs

dupli''' :: [a] -> [a]
dupli''' = concatMap (\x -> x : [x])

dupli'''' :: [a] -> [a]
dupli'''' xs = concat[[x,x]| x <- xs]

