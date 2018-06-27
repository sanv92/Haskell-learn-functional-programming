module Main where


half x = if even x
    then Just (x `div` 2)
    else Nothing


main :: IO ()
main = do
    (\x -> putStrLn ("maybe (just 2): " ++ show x )) ( Just 2 >>= half )
    (\x -> putStrLn ("maybe (just 3): " ++ show x )) ( Just 3 >>= half )
    (\x -> putStrLn ("maybe (just 4): " ++ show x )) ( Just 4 >>= half )
    (\x -> putStrLn ("maybe (nothing): " ++ show x )) ( Nothing >>= half )
