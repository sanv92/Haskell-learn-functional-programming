-- type class (Ord)
module Main where


main :: IO ()
main = do
    (\x -> putStrLn ("ord: " ++ show x )) ( (>=) 10 5 )
