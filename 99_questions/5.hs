import Prelude hiding (reverse)

reverse :: [a] -> [a]
reverse [] = []
reverse (x:xs) = (reverse xs) ++ [x]

reverse' :: [a] -> [a]
reverse' [] = []
reverse' (x:xs) = (reverse' xs) : [x]