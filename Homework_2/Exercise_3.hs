module Exercise_3 where

import Log
import Exercise_2

build []        = Leaf
build (x: list) = insert x (build list)