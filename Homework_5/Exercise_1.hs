module Exercise_1 where

import ExprT

eval (Lit x)           = x
eval (Add exprL exprR) = eval exprL + eval exprR
eval (Mul exprL exprR) = eval exprL * eval exprR