module Arith4 where

roundTrip :: (Show a, Read b) => a -> b
roundTrip x = read (show x)

roundTrip1 :: (Show a, Read a) => a -> a
roundTrip1 x = (read . show) x

main = do
    print ((roundTrip 4) :: Int)
    print (id 4)