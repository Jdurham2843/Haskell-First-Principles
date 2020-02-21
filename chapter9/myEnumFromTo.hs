module MyEnumFromTo where

eftBool :: Bool -> Bool -> [Bool]
eftBool f t
   | f == True && t == False  = []
   | f == True                = [True]
   | f == False && t == False = [False]
   | otherwise                = [False, True]

eftOrd :: Ordering -> Ordering -> [Ordering]
eftOrd f t
   | t < f     = []
   | f == t    = [t]
   | otherwise = [f] ++ eftOrd (succ f) t

eftInt :: Int -> Int -> [Int]
eftInt f t
   | t < f     = []
   | f == t    = [t]
   | otherwise = [f] ++ eftInt (succ f) t

eftChar :: Char -> Char -> [Char]
eftChar f t
   | t < f     = []
   | f == t    = [t]
   | otherwise = [f] ++ eftChar (succ f) t