module Main where

import Text.Read


data AgeError = AgeInvalidInput
                | AgeBelowLegalAge
                | AgeImpossible
    deriving (Eq, Show, Read)

type UserData = (String, Int)

data UserDataError = UserAgeError AgeError
                    | UserNameError
    deriving(Eq, Show, Read)

mapLeft :: (e -> b) -> Either e a -> Either b a
mapLeft fn value =
    case value of
    Right a -> Right a
    Left  e -> Left (fn e)

validateAge :: String -> Either UserDataError Int  
validateAge input = mapLeft UserAgeError $ validateAgeAux input 
    where
    validateAgeAux input = 
        case readMaybe input of
        Nothing  -> Left AgeInvalidInput
        Just age -> case age of 
                    _ | age < 0    -> Left AgeImpossible
                    _ | age <= 18  -> Left AgeBelowLegalAge
                    _ | age > 200  -> Left AgeImpossible
                    _              -> Right age   

validateName :: String -> Either UserDataError String   
validateName name =
    case name of
    "" -> Left $ UserNameError
    _  -> Right name

validateUser :: String -> String -> Either UserDataError UserData
validateUser name age = do
    userName <- validateName name
    userAge  <- validateAge age
    return (userName, userAge)


main :: IO ()
main = do
    (\x -> putStrLn ("validateAge: " ++ show x )) ( validateAge "24" )
    (\x -> putStrLn ("validateName: " ++ show x )) ( validateName "Sander"  )
    (\x -> putStrLn ("validateUser: " ++ show x )) ( validateUser "Sander" "25" )

    (\x -> putStrLn ("validateAge: " ++ show x )) ( validateAge "-24" )
    (\x -> putStrLn ("validateName: " ++ show x )) ( validateName ""  )
    (\x -> putStrLn ("validateUser: " ++ show x )) ( validateUser "Sander" "-25" )
