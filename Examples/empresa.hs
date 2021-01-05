module Empresa where
   data Cargo = Estagiario | Programador | Coordenador | Gerente deriving Show
   data Pessoa = Pessoa {cargo :: Cargo, nome :: String} deriving Show

   verSalario :: Pessoa -> Double
   verSalario (Pessoa Estagiario _) = 1300
   verSalario (Pessoa Programador _) = 2000
   verSalario (Pessoa Coordenador _) = 3000
   verSalario (Pessoa Gerente _) = 15000
   verFolha :: Pessoa -> String
   verFolha p = "{nome: \"" ++ (nome p) ++ 
    "\", cargo: \"" ++ show (cargo p) ++ 
    "\", salario: " ++ show (verSalario p) ++"}"

   promover :: Pessoa -> Pessoa
   promover (Pessoa Estagiario x) = Pessoa Programador x
   promover (Pessoa Programador x) = Pessoa Coordenador x
   promover (Pessoa _ x) = Pessoa Gerente x
   contratarInicial :: String -> Pessoa
   contratarInicial = Pessoa Estagiario

