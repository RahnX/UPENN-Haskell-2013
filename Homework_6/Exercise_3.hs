module Exercise_3 where

data Stream a = Cons a (Stream a) deriving (Eq)

streamToList (Cons x xs) = x: streamToList xs

instance Show a => Show (Stream a) where
    show = show . take 20 . streamToList