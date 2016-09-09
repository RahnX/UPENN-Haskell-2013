module Exercise_2 where

fibs2 = fibSeq 0 1
        where fibSeq a b = a : fibSeq b (a + b)