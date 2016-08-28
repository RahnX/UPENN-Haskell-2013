module Exercise_1 where

toDigits 0 = []
toDigits x = toDigits (x `div` 10) ++ [x `mod` 10]

toDigitsRev 0 = []
toDigitsRev x = [x `mod` 10] ++ (toDigitsRev (x `div` 10))