-- ADT
module Main where


data IPAddress = IPAddress String
    deriving (Show, Eq)

ip = IPAddress "127.0.0.1"

main = do
    (\x -> putStrLn ("IPAddress: " ++ show x )) ( ip )
