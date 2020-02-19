module TypeKwonDo where

chk :: Eq b => (a -> b) -> a -> b -> Bool
chk aToB x y = y == (aToB x)

arith :: Num b => (a -> b) -> Integer -> a -> b
arith aToB int a = (aToB a)