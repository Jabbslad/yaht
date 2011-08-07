data Tuple a b c d = Tuple1 a
                   | Tuple2 a b
                   | Tuple3 a b c
                   | Tuple4 a b c d
                   
tuple1 :: Tuple a b c d -> a
tuple1 (Tuple1 x) = x
tuple1 (Tuple2 x _) = x
tuple1 (Tuple3 x _ _) = x
tuple1 (Tuple4 x _ _ _) = x

tuple2 :: Tuple a b c d -> Maybe b
tuple2 (Tuple1 _) = Nothing
tuple2 (Tuple2 _ x) = Just x
tuple2 (Tuple3 _ x _) = Just x
tuple2 (Tuple4 _ x _ _) = Just x