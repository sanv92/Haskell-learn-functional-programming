-- curry
module Main where

-- not curried function
notCurriedFunction (x, y) = x + y


main = do
    (\x -> putStrLn ("not curried: " ++ show x )) ( notCurriedFunction (3, 5) )
    (\x -> putStrLn ("curried: " ++ show x )) ( (curry notCurriedFunction) 4 4 )
