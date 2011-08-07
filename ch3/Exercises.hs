import Char

strToBool :: String -> [Bool]
strToBool = map Char.isLower

numLowers :: String -> Int
numLowers = length . filter Char.isLower

maxInList :: [Int] -> Int
maxInList = foldl max 0

sndElem :: [(Int,Char)] -> Int
sndElem (_:x:_) = fst x

fib :: Int -> Int
fib 1 = 1
fib 2 = 1
fib n = fib(n-2) + fib(n-1)

mult :: Int -> Int -> Int
mult _ 0 = 0
mult x n = x + mult x (n-1)

my_map :: (a -> b) -> [a] -> [b]
my_map _ []     = []
my_map f (x:xs) = f x : my_map f xs
