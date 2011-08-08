data List a = Nil
            | Cons a (List a)

listHead (Cons x xs) = x
listTail (Cons x xs) = xs

listFoldl f n Nil = n
listFoldl f n (Cons x xs) = listFoldl f (f n x) xs

listFoldr f y Nil = y
listFoldr f y (Cons x xs) = f x (foldr f z xs)