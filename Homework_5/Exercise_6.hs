{-# LANGUAGE FlexibleInstances #-}

module Exercise_6 where

import qualified Data.Map as M
import Exercise_3

data VarExprT = Lit Integer
              | Var String
              | Add VarExprT VarExprT
              | Mul VarExprT VarExprT
              deriving (Show, Eq)

class HasVars a where
    var :: String -> a

instance Expr VarExprT where
    lit = Lit
    add = Add
    mul = Mul

instance HasVars VarExprT where
    var str = Var str

instance HasVars (M.Map String Integer -> Maybe Integer) where
    var = M.lookup

binOp f x y map = if x map == Nothing || y map == Nothing
                      then Nothing
                      else Just (f varX varY)
                  where (Just varX, Just varY) = (x map, y map)

instance Expr (M.Map String Integer -> Maybe Integer) where
    lit x = (\_ -> Just x)
    add = binOp (+)
    mul = binOp (*)

withVars vs exp = exp $ M.fromList vs