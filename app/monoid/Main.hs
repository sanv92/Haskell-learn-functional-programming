-- Monoid
module Main where


main :: IO ()
main = do
    (\x -> putStrLn ("monoid concat: " ++ show x )) ( mconcat [[1,2,3], [], [3,4,5]] )
