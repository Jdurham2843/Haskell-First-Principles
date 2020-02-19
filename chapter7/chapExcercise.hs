module ChapExcercise where

tensDigit :: Integral a => a -> a
tensDigit x = d
    where xLast = x `div` 10
          d     = xLast `mod` 10

tensDigit' :: Integral a => a -> a
tensDigit' x = ((`mod` 10) . fst) (divMod x 10)

hunsD :: Integral a => a -> a
hunsD x = d2
    where xLast = x `divMod` 100
          d2 = ((`mod` 10) . fst) xLast

foldBool1 :: a -> a -> Bool -> a
foldBool1 x y b = case b of
    True  -> x
    False -> y

foldBool2 :: a -> a -> Bool -> a
foldBool2 x y b
    | b == True  = x
    | b == False = y


foldBool3 :: a -> a -> Bool -> a
foldBool3 x _ False = x
foldBool3 _ y True = y

g :: (a -> b) -> (a, c) -> (b, c)
g atob (x, y) = (atob x, y)

