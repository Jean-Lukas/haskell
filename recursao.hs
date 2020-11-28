module Recursao where

fibonacci x
 | x == 0 = 0
 | x == 1 = 1 
 | otherwise = fibonacci(x-1) + fibonacci(x-2)
