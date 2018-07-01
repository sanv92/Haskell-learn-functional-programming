-- pattern matching
module Main where


data AgeError = AgeInvalidInput
            | AgeBelowLegalAge
            | AgeImpossible
            | AgePossible
    deriving (Eq, Show, Read)

validateAge :: Integer -> AgeError
validateAge age = case age of
    _ | age < 0    -> AgeImpossible
    _ | age <= 18  -> AgeBelowLegalAge
    _ | age > 200  -> AgeImpossible
    _              -> AgePossible

main :: IO ()
main = do
    (\x -> putStrLn ("validateAge: " ++ show x )) ( validateAge 15 )
    (\x -> putStrLn ("validateAge: " ++ show x )) ( validateAge 25 )
