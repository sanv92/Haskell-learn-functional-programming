-- compose
module Main where


p1' = ((1,2),(3,4))
p2' = ((3,4),(5,6))
compose = fst . fst


main = do
    (\x -> putStrLn ("compose: " ++ show x )) ( compose p1' )
    (\x -> putStrLn ("compose: " ++ show x )) ( compose p2' )
