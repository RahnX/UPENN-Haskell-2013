module Exercise_5 where

import Exercise_3
import Exercise_4

nats = streamFromSeed (+1) 0

interleaveStreams (Cons x xs) ys = Cons x (interleaveStreams ys xs)

ruler = interleaveStreams (streamRepeat 0) (streamMap (+1) ruler)