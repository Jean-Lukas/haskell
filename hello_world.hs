data HelloWorld = HelloWorld String deriving Show
hello :: HelloWorld -> String
hello (HelloWorld x) = x
main = putStrLn "Hello World"
