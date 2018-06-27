module Main where


half x = if even x
    then Just (x `div` 2)
    else Nothing


main :: IO ()
main = do
    (\x -> putStrLn ("maybe (just 20): " ++ show x )) ( Just 20 >>= half >>= half >>= half )
    (\x -> putStrLn ("maybe (just 20): " ++ show x )) ( Just 20 >>= half >>= half )
