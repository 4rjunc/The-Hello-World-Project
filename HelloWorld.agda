module HelloWorld where

open import IO

main : IO ()
main = run (putStrLn "Hello, World!")
