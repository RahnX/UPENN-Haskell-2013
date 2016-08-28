module Exercise_4 where

import Exercise_1
import Exercise_2
import Exercise_3

validate number = (sumDigits . doubleEveryOther . toDigits) number `mod` 10 == 0