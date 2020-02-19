module DayOfWeek where

data DayOfWeek =
    Mon | Tue | Weds | Thu | Fri | Sat | Sun deriving (Show, Ord, Enum)

instance Eq DayOfWeek where
    (==) Mon Mon   = True
    (==) Tue Tue   = True
    (==) Weds Weds = True
    (==) Thu Thu   = True
    (==) Fri Fri   = True
    (==) Sat Sat   = True
    (==) Sun Sun   = True
    (==) _ _       = False

data Date = 
    Date DayOfWeek Int deriving Show

instance Eq Date where
    (==) (Date weekDay dayOfMonth)
         (Date weekDay' dayOfMonth') =
       weekDay == weekDay' && dayOfMonth == dayOfMonth'

instance Ord Date where
    (>) (Date weekDay dayOfMonth)
        (Date weekDay' dayOfMonth') = weekDay > weekDay'
    (>=) (Date weekDay dayOfMonth)
         (Date weekDay' dayOfMonth') = weekDay >= weekDay'
    (<=) (Date weekDay dayOfMonth)
         (Date weekDay' dayOfMonth') = weekDay <= weekDay'

incrementDate :: Date -> Date
incrementDate (Date dayOfWeek dayNum) = Date (nextDay dayOfWeek) (dayNum + 1)
        where nextDay dayOfWeek = case dayOfWeek of Mon -> Tue
                                                    Tue -> Weds
                                                    Weds -> Thu
                                                    Thu -> Fri
                                                    Fri -> Sat
                                                    Sat -> Sun
                                                    Sun -> Mon
                                                
increment :: Date -> Date
increment (Date dayOfWeek dayNum) = Date (succ dayOfWeek) (succ dayNum)

