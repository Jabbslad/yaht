data Elem a = Single a
            | Multiple Int a
            deriving Show

decode :: Elem a -> [a]
decode (Single x)     = [x]
decode (Multiple 0 _) = []
decode (Multiple n x) = x : decode (Multiple (n-1) x)

decodeModified :: [Elem a] -> [a]
decodeModified = concatMap decode