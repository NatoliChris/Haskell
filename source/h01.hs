--Homework 01
--http://www.seas.upenn.edu/~cis194/spring13/hw/01-intro.pdf

main = print(hanoi 2 "a" "b" "c")

--Convert a positive integer into a list of integers
toDigitsRev :: Integer -> [Integer]
toDigitsRev n
  | n < 10 = [n]
  | otherwise = n `mod` 10 : toDigitsRev (n `div` 10)

-- toDigits : gets an integer and splits each digit into an array
toDigits :: Integer -> [Integer]
toDigits = reverse . toDigitsRev


--double every other digit : double's every odd digit in the array

doubleEveryOther :: [Integer] -> [Integer]
doubleEveryOther [] = []
doubleEveryOther (x:[]) = [2*x]
doubleEveryOther (x:(y:z)) = (2*x):(y):doubleEveryOther z

--SumDigits : checks that everything is equal to 0
sumDigits :: [Integer] -> Integer
sumDigits = sum . concatMap toDigits

--Validating the numbers
--validate :: Integer -> Bool

-- Towers of Hanoi 
-- Move each to a peg, only one at a time.
type Peg = String
type Move = (Peg, Peg)
hanoi :: Integer -> Peg -> Peg -> Peg -> [Move]
hanoi 0 _ _ _ = []
hanoi n a b c = hanoi (n-1) a c b ++ [(a, b)] ++ hanoi (n-1) c b a

