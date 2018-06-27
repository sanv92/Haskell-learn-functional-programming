-- class type (Bounded)
module Main where


main = do
    (\x -> putStrLn ("minBound (Bool): " ++ show x )) ( minBound :: Bool )
    (\x -> putStrLn ("minBound (Int): " ++ show x )) ( minBound :: Int )
    (\x -> putStrLn ("minBound (Char): " ++ show x )) ( minBound :: Char )
    (\x -> putStrLn ("maxBound (Bool): " ++ show x )) ( maxBound :: Bool )
    (\x -> putStrLn ("maxBound (Int): " ++ show x )) ( maxBound :: Int )
    (\x -> putStrLn ("maxBound (Char): " ++ show x )) ( maxBound :: Char )
