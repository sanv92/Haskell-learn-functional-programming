-- type class (Eq)
module Main where


-- generate new classtype
data Mark = Q | W

instance Eq Mark where
    Q == Q = True
    W == W = True
    Q == W = False

-- compiler generate classtype automatically
data Mark2 = X | O
    deriving (Eq)


main :: IO ()
main = do
    (\x -> putStrLn ("eq (10 10): " ++ show x )) ((==) 10 10 )
    (\x -> putStrLn ("eq (10 10): " ++ show x )) ((==) 10 5 )
    (\x -> putStrLn ("eq (Q W): " ++ show x )) ( (==) Q W )
    (\x -> putStrLn ("eq (Q Q): " ++ show x )) ( (==) Q Q )
    (\x -> putStrLn ("eq (X O): " ++ show x )) ( (==) X O )
    (\x -> putStrLn ("eq (X X): " ++ show x )) ( (==) X X )
