module  Lista where 
   x :: [Int] -> Int 
   x (y:_:[]) = y
   x (y:z:w:[]) = y * z + w
   x (_:_:_:z:[]) = 100 * 10 + z
   x (x:xs) = x

