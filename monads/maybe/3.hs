-- If we have a Just value, we can extract the underlying value it contains through pattern matching.
module Main where


half x = if even x
    then Just (x `div` 2)
    else Nothing

zeroAsDefault :: Maybe Int -> Int
zeroAsDefault mx = case mx of
    Nothing -> 0
    Just x -> x

calc1' = Just 2 >>= half
calc2' = Just 3 >>= half
calc3' = Just 4 >>= half
calc4' = Just 5 >>= half
calc5' = Just 6 >>= half


main :: IO ()
main = do
    (\x -> putStrLn ("maybe (just 2): " ++ show x )) ( zeroAsDefault calc1' )
    (\x -> putStrLn ("maybe (just 3): " ++ show x )) ( zeroAsDefault calc2' )
    (\x -> putStrLn ("maybe (just 4): " ++ show x )) ( zeroAsDefault calc3' )
    (\x -> putStrLn ("maybe (just 5): " ++ show x )) ( zeroAsDefault calc4' )
    (\x -> putStrLn ("maybe (just 6): " ++ show x )) ( zeroAsDefault calc5' )
