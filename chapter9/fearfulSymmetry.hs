module ThyFearfulSymmetry where

myWord :: String -> [String]
myWord ""  = []
myWord str = [takeWhile (/= ' ') . dropWhile (== ' ') $ str] ++ myWord (dropWhile (/= ' ') . dropWhile (== ' ') $ str)

-- Output
-- > myWord "Hello world again"
-- ["Hello","world","again"]