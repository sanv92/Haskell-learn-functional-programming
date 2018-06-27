module Main where

import Text.Read


validateAge :: String -> Either String Int  
validateAge input =
    case readMaybe input of
    Nothing  -> Left "Invalid input. Not a number"
    Just age -> case age of 
                _ | age < 0    -> Left "Error: Invalid age. It must be greater than zero."
                _ | age <= 18  -> Left "Error: Below legal age to sign the contract."
                _ | age > 200  -> Left "Error: Invalid age. Impossible age."
                _              -> Right age


validateAgePrint' a = map validateAge a


main :: IO ()
main = do
    (\x -> putStrLn ("-100: " ++ show x )) ( validateAge "-100" )
    (\x -> putStrLn ("16: " ++ show x )) ( validateAge "16" )
    (\x -> putStrLn ("300: " ++ show x )) ( validateAge "300" )
    (\x -> putStrLn ("400: " ++ show x )) ( validateAge "400" )
    (\x -> putStrLn ("20: " ++ show x )) ( validateAge "20" )
    (\x -> putStrLn ("19: " ++ show x )) ( validateAge "19" )
    --(\x -> putStrLn ("validateAgePrint: " ++ show x )) ( validateAgePrint' ["safsdf", "-100", "garbage", "400", "7", "15", "20", "25"] )
