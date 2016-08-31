module Exercise_3 where

maxVal list = maxIter list 0
              where maxIter []      val = val
                    maxIter (x: xs) val = maxIter xs (if x > val then x else val)

putAsterisk list = putAsIter list
                   where putAsIter []      = "\n"
                         putAsIter (x: xs) =
                             (if x == maxVal list then "*" else " ") ++ putAsIter xs

putHistogram list =
    if list == (replicate (length list) 0)
        then replicate 10 '=' ++ "\n" ++ (concat . map show) [0..9] ++ "\n"
        else putAsterisk list ++ putHistogram (cutHighest list)

highSlot list = map (\x -> freq x list) [0..9]
                where freq _ [] = 0
                      freq x ls = (if x == head ls then 1 else 0) + freq x (tail ls)

cutHighest list = map (\x -> if x == maxVal list then x-1 else x) list

histogram = putHistogram . highSlot