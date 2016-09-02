module Exercise_3 where

xor :: [Bool] -> Bool
xor = foldr f False
      where f x = if x then not else id

map' f = foldr g []
         where g x = (++) [f x]

myFoldl f base xs = foldr g base (reverse xs)
                    where g lhs rhs = f rhs lhs