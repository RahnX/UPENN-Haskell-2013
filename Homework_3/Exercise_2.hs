module Exercise_2 where

localMaxima list = map item $ filter maxima [1..(length list - 2)]
                   where item   x = list !! x
                         maxima x = item x > item (x-1) && item x > item (x+1)