module Reverse where

curryIsAwesome :: String
curryIsAwesome = "Curry is awesome"

rvrs :: String -> String
rvrs phrase = last ++ " " ++ middle ++ " " ++ first
        where first = take 5 phrase
              middle = take 2 (drop 6 phrase)
              last = drop 9 phrase

main :: IO ()
main = print $ rvrs curryIsAwesome