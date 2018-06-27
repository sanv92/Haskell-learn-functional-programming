-- List
module Main where


lst = 1 : 2 : 3 : []
addTwoElements :: Integer -> Integer -> [Integer] -> [Integer]
addTwoElements a b c = a : b : c

-- get second element in array
secondElement = head . tail
secondElement' (_ : xs) = head xs
secondElement'' (_ : x : _) = x

-- recursion loop
loop' :: [Integer] -> Integer
loop' [] = 0
loop' (x : xs) = x + loop' xs

-- recursion reverse
reverse' :: [a] -> [a]
reverse' [] = []
reverse' (x:xs) = reverse' xs ++ [x]


main :: IO ()
main = do
    -- working with array
    (\x -> putStrLn ("list: " ++ show x )) ( 1 : 2 : 3 : [] )
    (\x -> putStrLn ("add two elements: " ++ show x )) ( addTwoElements 10 20 lst )
    (\x -> putStrLn ("head . tail: " ++ show x )) ( secondElement [1,2,3] )
    (\x -> putStrLn ("(_ : xs) = head xs: " ++ show x )) ( secondElement' [1,2,3] )
    (\x -> putStrLn ("(_ : x : _) = x: " ++ show x )) ( secondElement'' [1,2,3] )
    (\x -> putStrLn ("recursion loop: " ++ show x )) ( loop' [10,20,30] )
    (\x -> putStrLn ("recursion reverse: " ++ show x )) ( reverse [1,2,3] )
    (\x -> putStrLn ("zip: " ++ show x )) ( zip [1,2,3] "Test" )
    (\x -> putStrLn ("zip3: " ++ show x )) ( zip3 [1,2,3] "Test" [4,5,6] )
    (\x -> putStrLn ("zipWith: " ++ show x )) ( zipWith (+) [1,2] [3,4,5] )
    (\x -> putStrLn ("zipWith: " ++ show x )) ( zipWith (,) [1,2] [3,4,5] )
    (\x -> putStrLn ("take: " ++ show x )) ( take 5 "test-string" )
    (\x -> putStrLn ("drop: " ++ show x )) ( drop 5 "test-string" )
    (\x -> putStrLn ("splitAt: " ++ show x )) ( splitAt 5 "test-string" )
    (\x -> putStrLn ("index !!: " ++ show x )) ( "test-string" !! 4 )
    (\x -> putStrLn ("filter: " ++ show x )) ( filter (<=3) [1,2,3,4,5,1,2,3,4,5] )
    (\x -> putStrLn ("takeWhile: " ++ show x )) ( takeWhile (<=3) [1,2,3,4,5,1,2,3,4,5] )
    (\x -> putStrLn ("dropWhile: " ++ show x )) ( dropWhile (<=3) [1,2,3,4,5,1,2,3,4,5] )
    (\x -> putStrLn ("span: " ++ show x )) ( span (<=3) [1,2,3,4,5,1,2,3,4,5] )
    (\x -> putStrLn ("break: " ++ show x )) ( break (>=3) [1,2,3,4,5,1,2,3,4,5] )
    (\x -> putStrLn ("map: " ++ show x )) ( map (+10) [1,2,3,4] )
    (\x -> putStrLn ("concat: " ++ show x )) ( concat ["Hello", " ", "World", "!"] )
    (\x -> putStrLn ("concatMap: " ++ show x )) ( concatMap (\x -> [x,x,x]) "ABCDE" )
