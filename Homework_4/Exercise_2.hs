module Exercise_2 where

data Tree a = Leaf
            | Node Integer (Tree a) a (Tree a)
            deriving (Show, Eq)

foldTree :: [a] -> Tree a
foldTree = foldr (\x a -> balancedInsert a x) Leaf

balancedInsert Leaf n = Node 0 Leaf n Leaf
balancedInsert (Node _ left node right) n =
    if hl < hr
        then Node ((max nhl hr) + 1) newLeft node right
        else Node ((max hl nhr) + 1) left node newRight
    where hl = height left
          hr = height right
          newLeft  = balancedInsert left  n
          newRight = balancedInsert right n
          nhl = height newLeft
          nhr = height newRight

height Leaf = -1
height (Node x _ _ _) = x