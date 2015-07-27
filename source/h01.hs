
--Homework 01

main = print(doubleEveryOther [1,2,3,4])
-- module H01 where
--Convert a positive integer into a list of integers
toDigitsRev :: Integer -> [Integer]
toDigitsRev n
  | n < 10 = [n]
  | otherwise = n `mod` 10 : toDigitsRev (n `div` 10)

-- toDigits

toDigits :: Integer -> [Integer]
toDigits = reverse . toDigitsRev

