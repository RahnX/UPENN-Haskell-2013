module Exercise_4 where

import Log

inOrder Leaf = []
inOrder (Node leftTree treeLog rightTree) =
    inOrder leftTree ++ [treeLog] ++ inOrder rightTree