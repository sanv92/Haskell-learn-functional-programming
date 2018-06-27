module Main where


-- function with generic types
getSecondFrom :: a -> b -> c -> b
getSecondFrom a b c = b

-- function with strong types
getSecondFrom' :: Integer -> Integer -> Integer -> Integer
getSecondFrom' a b c = b

-- anonim function
lamdaFunction a = (\x -> 2 * x + 7) a


main :: IO ()
main = do
    (\x -> putStrLn ("function with generic types: " ++ show x )) ( getSecondFrom 10 15 20 )
    (\x -> putStrLn ("function with strong types: " ++ show x )) ( getSecondFrom' 10 15 20 )
    (\x -> putStrLn ("anonim function: " ++ show x )) ( lamdaFunction 10 )
