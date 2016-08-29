module Exercise_5 where

import Log

whatWentWrong = map getMsg . (filter severeError)
                where getMsg (LogMessage _ _ str) = str
                      severeError (LogMessage (Error x) _ _) = x >= 50
                      severeError _                          = False