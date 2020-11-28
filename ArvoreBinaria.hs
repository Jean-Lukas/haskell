module Polimorfismo where
    data Coisa a = Nada | UmaCoisa a | DuasCoisas a a | ZeroCoisa

    data Foo a b = Foo a b deriving Show

    data Arvore a = Nulo |
                    Leaf a |
                    Branch a (Arvore a) (Arvore a) deriving Show

    emOrdem :: Arvore a -> [a]
    emOrdem (Branch x l r) = emOrdem l ++ [x] ++ emOrdem r
    emOrdem Nulo = []

    foo :: Show a => a -> String
    foo x = "o valor de tipo a é: " ++ show x
    data Classe a = Nadaa | Umacoisa a | Duascoisas a a deriving (Show, Eq)

    instance  Eq a => Eq (Coisa a) where
        Nada == Nada = True
        (UmaCoisa x) == (UmaCoisa y) = x == y
        (DuasCoisas x1 y1) == (DuasCoisas x2 y2) = x1 == y2 
    
    instance Show a => Show (Coisa a) where
        show Nada = "Nadinha..."
        show (UmaCoisa x) = "Coisa com o elemento " ++ show x
        show (DuasCoisas x y) = "Coisa com os elementos " ++ (show x) ++ " e " ++ (show y)
