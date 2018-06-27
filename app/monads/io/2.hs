module Main where


toList :: String -> [Integer]
toList input = read ("[" ++ input ++ "]")


main :: IO ()
main = do
    putStrLn "Enter a list of numbers (separated by a comma):"
    input <- getLine
    print $ sum (toList input)
