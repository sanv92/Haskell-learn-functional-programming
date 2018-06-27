module Main where

    
toList :: String -> [Integer]
toList input = read ("[" ++ input ++ "]")


main :: IO ()
main = do
    putStrLn "What is your name?" >> getLine
    >>= \name -> putStrLn ("Hello, " ++ name ++ "!")
