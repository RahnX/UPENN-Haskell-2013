module Exercise_4 where

import Data.List

quickSort []      = []
quickSort (x: xs) = quickSort lhs ++ [x] ++ quickSort rhs
                   where (lhs, rhs) = partition (< x) xs

sieveSundaram n = map (\x -> 2*x + 1) $ diff [1..n] (quickSort sieve)
                  where sieve = [i + j + 2*i*j | j <- [1..n], i <- [1..j], i + j + 2*i*j <= n]
                        diff xs [] = xs
                        diff [] _  = []
                        diff (x: xs) (y: ys) | x < y     = [x] ++ diff xs (y: ys)
                                             | x > y     = diff (x: xs) ys
                                             | otherwise = diff xs ys