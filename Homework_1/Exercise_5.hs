module Exercise_5 where

hanoi3 1 start dest _    = [(start, dest)]
hanoi3 n start dest temp = hanoi3 (n-1) start temp dest ++ [(start, dest)] ++ hanoi3 (n-1) temp dest start