-- ADT - multiple constructors
module Main where


data IPAddress = IPv4 String | IPv6 String
    deriving (Show, Eq)

ip = IPv4 "127.0.0.1"

main = do
    (\x -> putStrLn ("IPAddress: " ++ show x )) ( ip )
