module Mc91 where

mc91 :: (Ord a, Num a) => a -> a
mc91 x = case x > 100 of
           True  -> x - 10
           False -> (mc91 . mc91) (x + 11)