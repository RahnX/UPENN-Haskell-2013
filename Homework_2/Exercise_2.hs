module Exercise_2 where

import Log

insert (Unknown _) tree = tree
insert log         Leaf = Node Leaf log Leaf
insert log (Node leftTree treeLog rightTree) =
    if getTime log < getTime treeLog
        then Node (insert log leftTree) treeLog rightTree
        else Node leftTree treeLog (insert log rightTree)
    where getTime (LogMessage _ time _) = time