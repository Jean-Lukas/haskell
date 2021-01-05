module Lambda where
lambda = (\x -> (x * x))
lambda1 = (\x xs -> (xs + x))
lambda2 :: Int -> (Int -> (Int -> Int))
lambda2 = \x -> \y -> \z ->  x * y * z
lambda3 :: Int -> Int -> Int
lambda3 = (\x -> \y -> x + y)
lambda4 = (\x y z -> x * y /z)
lambda5 = (\x y z -> x /z + y)
lambda6 = (\x y -> sqrt (x * y))
lambda7 = (\(x1, y1) (x2, y2) (x3, y3) (x4, y4) -> sqrt((x1+y2)^2 + (y1*x2)^2 + (x3 - y3)^2))
