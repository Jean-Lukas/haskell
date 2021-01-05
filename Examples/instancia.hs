module Cap5 where

    data Coisa a = Nada | UmaCoisa a | DuasCoisas a a deriving (Show,Read)--deriving (Show,Read) instancia padrao do haskell

    lerCoisa :: Coisa Int -> Coisa Int
    lerCoisa Nada = UmaCoisa 0
   -- lerCoisa (UmaCoisa x) = UmaCoisa (x+1)

--lerCoisa (DuasCoisas x y) = DuasCoisas (2*x) (y-3)

    

    v :: (Eq a) => a -> a -> Bool

    v x y = x == y



    foo :: Show a => a -> String
    foo x = show x

    ---instance Show a => Show (Coisa a) where
       -- show Nada = "Nadinha..."
       -- show (UmaCoisa x) = "coisa com elemento " ++ show x

-- show (DuasCoisas x y) = "coisa com os elementos " ++ --show x ++ "e " ++ show y

    data Dia = Domingo | Segunda | Terca | Quarta | Quinta | Sexta | Sabado deriving(Show,Bounded)
