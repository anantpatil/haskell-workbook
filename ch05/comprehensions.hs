-- square of numbers using list comprehensions
-- | denotes for-all and <- denotes from list or source
-- It is read as - return square x for all x in list
squares n = [x^2 | x <- [1..n]]

