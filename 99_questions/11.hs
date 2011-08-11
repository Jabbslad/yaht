pack :: Eq a => [a] -> [[a]]
pack [] = []
pack (x:xs) = takeWhile (==x) (x:xs) : pack (dropWhile (==x) xs)

encode :: Eq a => [a] -> [(Int, a)]
encode xs = map (\x -> (length x, head x)) (pack xs)

data Elem a = Single a
            | Multiple Int a
            deriving Show

encodeModified :: Eq a => [a] -> [Elem a]
encodeModified = map func . encode
    where
        func (1,x) = Single x 
        func (n,x) = Multiple n x

