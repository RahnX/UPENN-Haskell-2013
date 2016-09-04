module Exercise_2 where

import ExprT
import Parser
import Exercise_1

evalStr expStr = getVal $ parseExp Lit Add Mul expStr
                 where getVal (Just exp) = Just (eval exp)
                       getVal _          = Nothing