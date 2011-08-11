import Prelude hiding (reverse)

reverse :: [a] -> [a]
reverse [] = []
reverse (x:xs) = (reverse xs) ++ [x]

reverse' :: [a] -> [a]
reverse' = foldl (flip (:)) []
{-
reverse' [1,2,3]
reverse' 1:2:3:[]
(([] (flip (:)) 1) flip (:) 2) flip (:) 3
([1] flip (:) 2) flip (:) 3
[2,1] flip (:) 3
[3,2,1]
-}