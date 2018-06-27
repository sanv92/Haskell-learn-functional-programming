-- class type (Enum)
module Main where


main :: IO ()
main = do
    (\x -> putStrLn ("enum (succ): " ++ show x )) ( succ 1 )
    (\x -> putStrLn ("enum (succ): " ++ show x )) ( succ 'z' )
    (\x -> putStrLn ("enum (pred): " ++ show x )) ( pred 1 )
    (\x -> putStrLn ("enum (pred): " ++ show x )) ( pred 'z' )
    (\x -> putStrLn ("enum (toEnum): " ++ show x )) ( toEnum 122 :: Int )
    (\x -> putStrLn ("enum (fromEnum): " ++ show x )) ( fromEnum 'z' )
