module Exercise_3 where

sumDigits []   = 0
sumDigits list = singleDigit (head list) + sumDigits (tail list)
                 where singleDigit x = if x < 10
                                           then x
                                           else x `mod` 10 + singleDigit (x `div` 10)