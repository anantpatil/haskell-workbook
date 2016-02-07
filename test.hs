double x = x + x
quadrable = double.double

factorial n = product [1..n]
average xs = sum xs `div` length xs

a = b + c
    where
        b = 1
        c = 2
d = a * 2

-- the following fials as N is caps
-- Variables in haskell must start with lower-case letters, like
-- var1, arg_n, myFun, x' etc.
{-
N = a `div` length xs
    where
        a = 10
        xs = [1,2,3,4,5]
-}

n = a `div` length xs
    where
        a = 10
        xs = [1,2,3,4,5]

-- Implement last using prelude methods
-- Exercise 2.4 of Programming in Haskell
mylast xs = xs !! (length xs - 1)

-- Implement your own init using other prelude lib methods
-- Exercise 2.5
myinit xs = take ((length xs) - 1) xs
