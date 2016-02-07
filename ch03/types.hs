-- Basic Types
-- Types are denoted with :: (Is type of)
-- Type is a collection of values of same type.
-- Everything has a type in Haskell.
-- v::T Values have type
-- e::T Expressions have a type. The type is evaluated before expression
--      itself is evaluated.
-- f::T Functions have a type. E.g Bool -> Bool type contains all the
-- functions that map a value from Bool type to Bool type.
-- 
-- Polymorphic types
-- Functions that map from different types to different types
-- 
-- E.g. length [1,2,3,4]
-- length ['a', 'b', 'c']
-- Type of length" length :: [a] -> Int
-- "a" is called type variable. It denotes any arbitrary type.


-- Function Types
--
--
-- The following funcs are of same type: They take a pair of integers
-- (tuple) and return an int.
-- add :: (Int, Int) -> Int
-- add' :: (Int, Int) -> Int
add (x, y) = x + y
add' = \(x, y) -> x + y

-- Same thing can be written in different manner, using currying.
-- The following is a fucntion which can be applied partially. 
-- add x returns another function that takes one more argument (y) and
-- returns sum of them
-- add1 :: Int -> (Int -> Int)
-- since -> is right associative, the braces are not needed.
-- These are also called higher order functions
add1 x y = x + y
add2 x = \y -> x + y
add3 = \(x, y) -> x + y

-- Follwing is of type 
-- mult :: Int -> Int -> Int -> Int
mult x y z = x * y * z

-- the functions themselves are left associative
-- mult x y z ~ (((mult x) y) z)
--
--
-- Excercise chapter 03

second xs = head(tail xs)

swap (x, y) = (y, x)

pair x y = (x, y)

double x = x * 2

palindrome xs = reverse xs == xs

twice f x = f(f(x))

twice2 f x y = f(f x y)

-- twice2 :: (a -> b -> a) -> a -> a ?
