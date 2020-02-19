module Recursion where

mysum :: (Eq a, Num a) => a -> a
mysum 0 = 0
mysum x = x + (mysum (x - 1))

mymult :: (Integral a) => a -> a -> a
mymult x y = go x y
   where go a b
          | b == 0    = 0
          | b == 1    = a
          | b < 0     = -(go a (-b))
          | otherwise = a + (go a (b - 1))