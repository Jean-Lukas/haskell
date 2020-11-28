module Imc where
imc pessoa altura
 | valorImc <= 24 = "Peso normal"
 | valorImc <= 29 = "Excesso de peso"
 | otherwise = "Obesidade"
 where
   valorImc = pessoa/(altura^2)
