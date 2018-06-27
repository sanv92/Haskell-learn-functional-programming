module Main where

import Text.Read


data AgeError = AgeInvalidInput
              | AgeBelowLegalAge
              | AgeImpossible
    deriving (Eq, Show, Read)

validateAge :: String -> Either AgeError Int  
validateAge input =
    case readMaybe input of
        Nothing  -> Left AgeInvalidInput
        Just age -> case age of 
                    _ | age < 0    -> Left AgeImpossible
                    _ | age <= 18  -> Left AgeBelowLegalAge
                    _ | age > 200  -> Left AgeImpossible
                    _              -> Right age 

showAgeError :: AgeError -> String
showAgeError age =
    case age of
        AgeBelowLegalAge ->  "Error: Below legal age to sign the contract."
        AgeImpossible    ->  "Error: Invalid age. Impossible age."
        AgeInvalidInput  ->  "Invalid input. Not a number"

mapLeft :: (e -> b) -> Either e a -> Either b a
mapLeft fn value =
    case value of
        Right a -> Right a
        Left  e -> Left (fn e)


main :: IO ()
main = do
    (\x -> putStrLn ("20000: " ++ show x )) ( mapLeft showAgeError $ validateAge "20000" )
    (\x -> putStrLn ("-100: " ++ show x )) ( mapLeft showAgeError $ validateAge "-100" )
    (\x -> putStrLn ("@@@: " ++ show x )) ( mapLeft showAgeError $ validateAge "@@@" )
    (\x -> putStrLn ("40: " ++ show x )) ( mapLeft showAgeError $ validateAge "" )
    (\x -> putStrLn ("10: " ++ show x )) ( mapLeft showAgeError $ validateAge "10" )
    (\x -> putStrLn ("15: " ++ show x )) ( mapLeft showAgeError $ validateAge "15" )
    (\x -> putStrLn ("25: " ++ show x )) ( mapLeft showAgeError $ validateAge "25" )
    (\x -> putStrLn ("30: " ++ show x )) ( mapLeft showAgeError $ validateAge "30" )
    (\x -> putStrLn ("35: " ++ show x )) ( mapLeft showAgeError $ validateAge "35" )
    (\x -> putStrLn ("40: " ++ show x )) ( mapLeft showAgeError $ validateAge "40" )
