-- List comprehension
myLength :: [a] -> Int
myLength xs = sum[1 | _<- xs]

myLength' :: [a] -> Int
myLength' [] = 0
myLength' (_:xs) = 1 + myLength' xs

myLength'' :: [a] -> Int
myLength'' = foldr (\_ x -> 1 + x) 0

myLength''' :: [a] -> Int
myLength''' = foldr (\_ -> (1+)) 0

myLength'''' = foldl (\x _ -> (1 + x)) 0