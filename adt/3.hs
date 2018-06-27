-- ADT - multiple constructors
module Main where


data IPAddress = IPv4 String | IPv6 String
    deriving (Show, Eq)

data Port = Port String
    deriving (Show, Eq)

data EndPoint = EndPoint IPAddress Port


ip' (EndPoint (IPv4 ip) (Port port)) = "Host: " ++ ip ++ " - " ++ "Port: " ++ port
ip'' (EndPoint (IPv6 ip) (Port port)) = "Host: " ++ ip ++ " - " ++ "Port: " ++ port

main = do
    (\x -> putStrLn ("IPAddress: " ++ show x )) ( ip' (EndPoint (IPv4 "173.194.122.194") (Port "80")) )
    (\x -> putStrLn ("IPAddress: " ++ show x )) ( ip'' (EndPoint (IPv6 "2001:0db8:0000:0042:0000:8a2e:0370:7334") (Port "80")) )
