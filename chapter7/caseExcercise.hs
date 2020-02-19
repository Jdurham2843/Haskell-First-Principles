module CaseExcercise where

functionC :: Ord a => a -> a -> a 
functionC x y = case compare x y of
    GT -> x
    EQ -> x
    LT -> y

ifEvenAdd2 :: Integral a => a -> a
ifEvenAdd2 n = case even n of
    True -> n+2
    False -> n

nums :: Integer -> Integer
nums x = case compare x 0 of
    LT -> -1
    GT -> 1
    EQ -> 0

