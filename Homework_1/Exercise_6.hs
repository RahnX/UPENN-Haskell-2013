module Exercise_6 where

import Exercise_5

hanoi4 1 start dest _     _     = hanoi3 1 start dest ""
hanoi4 n start dest tempX tempY = moveTopK ++ moveBottom ++ moveK
                                  where k = n - ((round . sqrt . fromIntegral) (2*n + 1)) + 1
                                        moveTopK   = hanoi4 k start tempX dest tempY
                                        moveBottom = hanoi3 (n-k) start dest tempY
                                        moveK      = hanoi4 k tempX dest start tempY