module Exercise_2 where

doubleEveryOther []   = []
doubleEveryOther [x]  = [x]
doubleEveryOther list = doubleEveryOther (take (len - 2) list) ++ [secondToLast * 2, lastOne]
                        where lastOne      = last list
                              secondToLast = list !! (len - 2)
                              len          = length list