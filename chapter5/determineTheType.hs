{-# LANGUAGE NoMonomorphismRestriction #-}

module DetermineTheType where

blarg = (* 9) 6

bliggle = head [(0,"doge"),(1, "kitteh")]

blaggle = head [(0 :: Integer, "doge"), (1,"kitteh")]

wiggle = if False then True else False

waggle = length [1, 2, 3, 4, 5]

ziggle = (length [1, 2, 3, 4]) > (length "TACOCAT")

x = 5
y = x + 5
w = y * 10
z y = y * 10
f = 4 / y

x1 = "Julie"
y1 = " <3 "
z1 = "Haskell"
f1 = x1 ++ y1 ++ z1