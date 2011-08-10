myLast :: [a] -> a
myLast = head . reverse

-- recursion
myLast' :: [a] -> a
myLast' [x] = x 
myLast' (_:xs) = myLast' xs