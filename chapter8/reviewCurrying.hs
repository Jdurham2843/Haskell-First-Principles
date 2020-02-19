module ReviewCurrying where

cattyConny :: String -> String -> String
cattyConny x y = x ++ " mrow " ++ y

flippy = flip cattyConny

appedCatty :: String -> String
appedCatty = cattyConny "woops"

frappe = flippy "haha"