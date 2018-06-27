module Main where


data ValidationError = LoginFormatException String
        | PasswordFormatException String
        | PhoneFormatException String
        | EmailFormatException String
     deriving (Show, Eq)


loginValidation' str | length str >= 3 && length str <= 18 = Right str
                     | otherwise    = Left "Login - Min Length 3 and Max Length 18"

passwordValidation' str | length str >= 10 && length str <= 20 = Right str
                        | otherwise    = Left "Password - Min Length 10 and Max Length 20"

main :: IO ()
main = do
    (\x -> putStrLn ("loginValidation: " ++ show x )) ( loginValidation' "S" )
    (\x -> putStrLn ("passwordValidation: " ++ show x )) ( passwordValidation' "passw0rd123456789" )
    (\x -> putStrLn ("loginValidation: " ++ show x )) ( loginValidation' "Sa" )
    (\x -> putStrLn ("passwordValidation: " ++ show x )) ( passwordValidation' "pass" )
