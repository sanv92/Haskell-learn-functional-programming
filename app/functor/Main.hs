module Main where


main :: IO ()
main = do
    (\x -> putStrLn ("fmap: " ++ show x )) ( fmap (+3) (Just 2) )
