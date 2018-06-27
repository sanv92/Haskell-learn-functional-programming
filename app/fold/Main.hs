-- Fold
module Main where


foldr' = foldr (+) 0

sumPositive' sum = foldr fn 0 sum where
    fn x sum | x > 0     = x + sum
             | otherwise = sum


main :: IO ()
main = do
    (\x -> putStrLn ("foldr: " ++ show x )) ( foldr' [1,2,3] )
    (\x -> putStrLn ("foldr: " ++ show x )) ( sumPositive' [1,(-2),3,(-4)] )
