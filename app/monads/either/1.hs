module Main where

import Control.Monad.Except


safeDiv :: Float -> Float -> Either String Float
safeDiv x y | x > 0 && y > 0 = Right (x / y)
            | otherwise      = Left "Divison by zero"


main :: IO ()
main = do
    (\x -> putStrLn ("Right: " ++ show x )) ( safeDiv 5.5 10.1 )
    (\x -> putStrLn ("Left: " ++ show x )) ( safeDiv 5.5 0 )
