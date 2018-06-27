-- Associativity
module Main where


-- infix, infixl, infixr - associativity
assoc' = (++) "aa" $ "bb"

p1 = ((1,2),(3,4))
p2 = ((3,4),(5,6))
assoc'' a = fst $ fst a
assoc''' a = fst $ fst a


main = do
    (\x -> putStrLn ("infixl: " ++ show x )) ( assoc' )
    (\x -> putStrLn ("infixr: " ++ show x )) ( assoc'' p1 )
    (\x -> putStrLn ("infixr: " ++ show x )) ( assoc'' p2 )
