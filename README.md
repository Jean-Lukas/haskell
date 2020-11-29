![](https://haskell.pesquisa.ufabc.edu.br/cursos/Haskell2018/imgs/haskell_logo.png)
<br>
# O que é Haskell
**Haskell é uma linguagem de paradigma funcional, ela é também fortemente tipada e estática.**
<br>
**Toda linguagem com paradigma funcional é imutável e usa expressões matemática, não tem efeitos colaterais, evita bugs.**
<br>
**Haskell tem laziness que seria processamento preguiçoso, ele não calcula coisas desnecessárias, só o que é preciso.**

**Haskell não é uma linguagem para iniciantes! se você for bastante curioso e inteligente, mesmo ela sendo diferente de todas linguagens você poderá compreendê-la com o tempo,e seu conhecimento vai se expandir bastante.**

# Como instalar o Haskell no Linux ->
**Para instalar no Ubuntu ->**
<br>
**sudo add-apt-repository -y ppa:hvr/ghc**
<br>
**sudo apt-get update**
<br>
**sudo apt-get install -y cabal-install-XXX ghc-YYY**
<br>
# Instalação no Manjaro/Arch ->
**sudo pacman -S ghc cabal-install happy alex haskell-haddock-library**
<br>
# Instalação no Fedora ->
**sudo dnf install ghc cabal-install stack**
<br>
# Instalação no Windows ->
**Para instalar no Windows acesse o site oficial do Haskell ->  [Site do Haskell](https://www.haskell.org/platform/windows.html)**
<br>
# Uma breve introdução ao haskell ->
**Já vou supor que você já instalou o Haskell tanto pro Windows/Linux.**
<br>
**O Haskell tem o compilador e o interpretador.**
<br>
**1 - Compilador é chamado de GHC, que seria Glasgow Haskell Compiler.**
<br>
**2 - Interpretador é chamado de GHCI.**
<br>
# Introdução ao Haskell ->
**Abra o terminal e digite ghci, depois disso aparecerá uma mensagem assim:**
**GHCi, version 8.10.2: https://www.haskell.org/ghc/  :? for help 
Prelude>**
**![2020-11-28-142858_1920x1080_scrot](https://user-images.githubusercontent.com/74760756/100522000-50729f80-3186-11eb-8fe4-ab074c2ae863.png)**
<br>
**Agora já estamos dentro do interpreter do Haskell, vamos fazer nosso primeiro Hello world nele, Digite o seguinte ->**
```haskell
putStrLn "Hello, world!"
```
**depois que você digitar isso terá que aparecer o seguinte:**
<br>
![2020-11-28-143916_1920x1080_scrot](https://user-images.githubusercontent.com/74760756/100522159-92e8ac00-3187-11eb-81ea-35036e9df018.png)
**Se você seguiu tudo corretamente até agora, você terá o mesmo resultado que eu.**
<br>
# Como colocar esse Hello World dentro de uma função ->
```haskell
main = putStrLn "Hello world"
```
# Uma maneira mais Hard de criar um Hello world com Polimorfismo Paramétrico ->
**Para fazer essa forma abaixo é necessário abrir o seu editor de código e instalar a extensão do haskell, caso você use linux abra o nvim.**
```haskell
data HelloWorld x = Hello x deriving(Show)
(£) :: HelloWorld x -> HelloWorld x
(£) x = x
```
**data é para criar um tipo, o HelloWorld é o nome do tipo, a primeira letra sempre maiúscula, o x é um parâmetro.**
<br>
**esse meu tipo está definindo uma função Hello com o parâmetro x, e deriving é pra derivar a classe Show, para exibir na tela o resultado, sem ela daria erro. Resultado ->**
**![2020-11-28-153831_1920x1080_scrot](https://user-images.githubusercontent.com/74760756/100523517-c9c2c000-318f-11eb-8663-cfe8ab79ae06.png)**
# Bom, vamos aprender sobre Compreensão de lista agora ->
**Em haskell é possivel construir listas de quaisquer tipos usando expressões que podem ser distribuidas a todos os elementos de um dado vetor, usando compreensão de listas.**
```haskell
lista :: [Int] -> [Int]
lista xs = [4*x | x <- xs]
```
**Definimos nossa assinatura da função na primeira linha, na segunda já criamos a função com o parâmetro xs, se x estiver dentro de xs multiplique todos elementos
que você digitou na lista por 4.**
**Resultado -> ![2020-11-28-155335_1920x1080_scrot](https://user-images.githubusercontent.com/74760756/100523798-ed870580-3191-11eb-810b-dc110033185f.png)**
# Vamos ver um pouco sobre lambda, uma lambda é uma função anônima, você usa e depois sai mais cedo, lambda não precisa definir pra usar ela
**Alguns exemplos de lambdas ->**
```haskell
(\x -> (x * x)) 100
(\x y -> x /y) 10 2
(\x1 y1 -> y1 : x1) [] "Lambda"
foldl (\x1 y1 -> y1 : x1) [] "Lambda Russa!"
```
**Esses são alguns exemplos de como é uma lambda em haskell, elas servem para cálculos, como disse você usa e depois sai mais cedo,não precisa definir,mas se quiser pode.**
Definindo uma lambda ->
<br>
```haskell
lambda = (\y x -> x / y) 2 10
```
# Vamos ver agora Recursão, uma recursão ela serve para não cair em loops infinitos, ela precisa ter uma base (inicio de partida) exemplo:
```haskell
fibonacci x
   | x == 0 = 0
   | x == 1 = 1
   | otherwise = fibonacci(x-1) + fibonacci(x-2)
```
**Resultado -> ![2020-11-28-161736_1920x1080_scrot](https://user-images.githubusercontent.com/74760756/100524244-4015f100-3195-11eb-922c-6f0fc071888d.png)**
**o | é chamado de guards em haskell, ele é mesma coisa que um if, por exemplo:**
<br>
**se x == 0 = 0**
<br>
**se x == 1 = 1**
<br>
**senao = fibonacci(x-1) + fibonacci(x-2)**
<br>
**Bom, vou ficando por aqui, quem se interesso e quiser estudar mais procure por livros na internet sobre haskell.**
