-- ADT - field labels

module Main where


data Patient = Patient { firstName    :: String
    , lastName     :: String
    , email        :: String
    , age          :: Int
    }

main :: IO ()
main = print age
  where
    Patient _ _ _ age = patient
    patient = Patient "John"
                      "Doe"
                      "john.doe@gmail.com"
                      24
