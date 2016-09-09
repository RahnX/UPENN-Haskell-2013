module Exercise_1 where

fib 0 = 0
fib 1 = 1
fib n = fib (n-1) + fib (n-2)

fibs1 = map fib [0..]