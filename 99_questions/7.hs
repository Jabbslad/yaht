flatten :: [[a]] -> [a]
flatten = foldl (++) []