module WordNumber where

import Data.List (intersperse)

wordNumber :: Int -> String
wordNumber n = concat . intersperse ("-") . map (\i -> digitToWord i) . digits $ n

digits :: Int -> [Int]
digits n = reverse . go $ n
   where go num 
          | (div num 10) > 0 = [(mod num 10)] ++ (go (div num 10))
          | otherwise        = [(mod num 10)]

digitToWord :: Int -> String
digitToWord n 
    | n == 0 = "zero"
    | n == 1 = "one"
    | n == 2 = "two"
    | n == 3 = "three"
    | n == 4 = "four"
    | n == 5 = "five"
    | n == 6 = "six"
    | n == 7 = "seven"
    | n == 8 = "eight"
    | n == 9 = "nine"
    | otherwise = "oopsie"