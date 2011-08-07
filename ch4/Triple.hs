data Triple x y z = Triple x y z

tripleFst :: Triple a b c -> a
tripleFst (Triple x _ _) = x

tripleSnd :: Triple a b c -> b
tripleSnd (Triple _ x _) = x

tripleThr :: Triple a b c -> c
tripleThr (Triple _ _ x) = x

data Quadruple a b = Quadruple a a b b

firstTwo :: Quadruple a b -> [a]
firstTwo (Quadruple x y _ _) = [x,y]

lastTwo :: Quadruple a b -> [b]
lastTwo (Quadruple _ _ x y) = [x,y]

