-- Chapter on defining functions.
--
--
--
abs :: Int -> Int
abs n = if n >= 0 then n else -n

-- using guarded equations
abs2 n | n >= 0 = n
       | otherwise = -n

sign n | n < 0 = -1
       | n == 0 = 0
       | otherwise = 1

-- generators

factors :: Int -> [Int]
factors n = [x | x <- [1..n], n `mod` x == 0]

isPrime :: Int -> Bool
isPrime n = [1, n] == factors n

isPrime2 n | n == 0 = False
           | n == 1 = False
           | n == 2 = True
           | n == 3 = True
           | otherwise = [x | x <- [5..n `div` 2], n `mod` x == 0] == []


-- generate primes
primes :: Int -> [Int]
primes n = [x | x <- [1..n], factors x == [1, x]]
primes2 n = [x | x <- [1..n], isPrime2(x)]
