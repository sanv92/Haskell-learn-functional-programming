module Main where

import Data.Char (toUpper, toLower)
import qualified Data.Char as Char
import Test


main :: IO ()
main = do
    -- Modules import
    (\x -> putStrLn ("upper: " ++ show x )) ( toUpper 't' )
    (\x -> putStrLn ("lower: " ++ show x )) ( toLower 'T' )

    -- Modules import with alias (import qualified Data.Char as Char)
    (\x -> putStrLn ("alias import - upper: " ++ show x )) ( Char.toUpper 't' )
    (\x -> putStrLn ("alias import - lower: " ++ show x )) ( Char.toLower 'T' )

    -- Import custom module
    (\x -> putStrLn ("import custom module: " ++ show x )) ( calcSum 5 1 )
