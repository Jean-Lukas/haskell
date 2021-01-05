module Oxeap where
    (|>) :: a -> (a -> b) -> b
    (|>) x f = f x
    infixl 9 |>
    funcI :: String -> String
    funcI x = x 
        |> reverse
        |> take 3
        |> tail
        |> (x ++)
