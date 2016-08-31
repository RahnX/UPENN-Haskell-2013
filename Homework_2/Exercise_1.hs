module Exercise_1 where

import Log

parseMessage log = case log of
                        ('I': _) -> LogMessage Info (getInt 1) (getMsg 2)
                        ('W': _) -> LogMessage Warning (getInt 1) (getMsg 2)
                        ('E': _) -> LogMessage (Error (getInt 1)) (getInt 2) (getMsg 3)
                        _        -> Unknown log
                        where splitWords = words log
                              getMsg n = unwords (drop n splitWords)
                              getInt n = toInt (splitWords !! n)
                              toInt  x = (read x)::Int

parse = map parseMessage . lines