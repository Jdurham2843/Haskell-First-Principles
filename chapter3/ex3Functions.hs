module Ex3Functions where

addExclamation :: [Char] -> [Char]
addExclamation phrase = phrase ++ "!"

getFourth :: [a] -> a
getFourth list = list !! 4

drop9 :: [a] -> [a]
drop9 list = drop 9 list

thirdLetter :: String -> Char
thirdLetter word = word !! 2

letterIndex :: Int -> Char
letterIndex x = word !! x
        where word = "Curry is awesome!"

rvrs :: String -> String
rvrs phrase = last ++ " " ++ middle ++ " " ++ first
        where first = take 5 phrase
              middle = take 2 (drop 6 phrase)
              last = take 7 (drop 9 phrase)