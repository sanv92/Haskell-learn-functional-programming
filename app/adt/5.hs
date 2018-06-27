-- ADT - field labels

module Main where


-- constructors
data Point = Point Float Float
    deriving (Show, Eq)

zeroPoint :: Point
zeroPoint = Point 0 0

data Vector = Vector Float Float
    deriving (Show, Eq)

pointToVector :: Point -> Vector
pointToVector (Point x y) = Vector x y

movePointN :: Float -> Vector -> Point -> Point
movePointN n (Vector vx vy) (Point x y) = Point (n * vx + x) (n * vy + y)

-- multiple constructors
data Color = Color Integer Integer Integer | None
    deriving (Show, Eq)

setColor :: Integer -> Integer -> Integer -> Color
setColor r g b
    | r >= 0 && g >= 0 && b >= 0 = Color r g b
    | otherwise = None

-- record syntax
data Person = Person { firstName :: String, lastName :: String, age :: Integer }
    deriving (Show, Eq)


-- update record syntax
person1 = Person "Bruce" "Wayne" 33

updateAge :: Integer -> Person -> Person
updateAge newAge person = person {age = newAge}

-- v1
name' :: Person -> String
name' person = firstName person ++ " " ++ lastName person
-- v2
name'' :: Person -> String
name'' (Person fn ln _) = fn ++ " " ++ ln
-- v3
name''' :: Person -> String
name''' (Person {firstName = fn, lastName = ln}) = fn ++ " " ++ ln


main = do
  (\x -> putStrLn ("data constructors: " ++ show x )) ( movePointN 5 (Vector 1 3) (Point 0 0) )
  (\x -> putStrLn ("multiple data constructors: " ++ show x )) ( setColor 1 2 3 )
  (\x -> putStrLn ("multiple data constructors: " ++ show x )) ( setColor (-1) 2 3 )
  (\x -> putStrLn ("record syntax: " ++ show x )) ( Person "Bruce" "Wayne" 33 )
  (\x -> putStrLn ("update record syntax: " ++ show x )) ( updateAge 34 person1 )
  (\x -> putStrLn ("typed function - v1: " ++ show x )) ( name' (Person "Bruce" "Wayne" 0) )
  (\x -> putStrLn ("typed function - v2: " ++ show x )) ( name'' (Person "Bruce" "Wayne" 0) )
  (\x -> putStrLn ("typed function - v3: " ++ show x )) ( name''' (Person "Bruce" "Wayne" 0) )
