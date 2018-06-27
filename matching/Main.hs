-- pattern guard
module Main where


testFunction :: Integer -> Integer
testFunction n  | n == 0     = 1
                | n > 0      = n * testFunction(n - 1)
                | otherwise  = error "test error"


main :: IO ()
main = do
    (\x -> putStrLn ("pattern guard: " ++ show x )) ( testFunction 5 )
