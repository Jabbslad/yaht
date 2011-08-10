myButLast :: [a] -> a
myButLast = last . init

myButLast' :: [a] -> a
myButLast' xs = reverse xs !! 1 

-- recursion 1
myButLast'' :: [a] -> a
myButLast'' [x,_] = x
myButLast'' (_:xs) = myButLast' xs