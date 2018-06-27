module Main where


type Login = String
type Password = String

users :: [(Login, Password)]
users =
    [ ("admin", "1234")
    , ("begemot", "0000")
    ]

askPassword :: IO Bool
askPassword = do
    putStr "Enter Login: "
    login <- getLine
    putStr "Enter password: "
    password <- getLine
    return $ maybe False (\p -> p == password) $ lookup login users


main :: IO ()
main = do
    passwordIsCorrect <- askPassword
    putStrLn $ if passwordIsCorrect
        then "Welcome!"
        else "Incorrect password"
