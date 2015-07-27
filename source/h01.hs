--Homework 01
--http://www.seas.upenn.edu/~cis194/spring13/hw/01-intro.pdf

main = print(sumDigits [16,7,12,5])

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

