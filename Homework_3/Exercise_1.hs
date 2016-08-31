module Exercise_1 where

skips list = map f $ zip (repeat list) [0..(length list)]
             where f = \x -> everyN (fst x) (snd x) (snd x)
                   everyN [] _ _ = []
                   everyN ls 0 n = [head ls] ++ everyN (tail ls) n n
                   everyN ls x n = everyN (tail ls) (x-1) n