module Exercise_4 where

import Exercise_3

streamRepeat x = Cons x (streamRepeat x)

streamMap f (Cons x xs) = Cons (f x) (streamMap f xs)

streamFromSeed f x = Cons x (streamFromSeed f (f x))