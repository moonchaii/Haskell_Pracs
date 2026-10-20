data Person = Person { age :: Int, name :: String } deriving (Show)
people :: [Person]
people = [Person 25 "Alice", Person 17 "Bob", Person 30 "Charlie"]
adultsB = filter isAdult people
adultsG = filter isAdultGuarded people
adultsI = filter isAdultIf people

isAdult :: Person -> Bool
isAdult person = age person >= 18       -- as boolean expression

isAdultGuarded :: Person -> Bool
isAdultGuarded person                   -- as guarded expression
    | age person >= 18 = True
    | otherwise        = False

isAdultIf :: Person -> Bool
isAdultIf person =                      -- as if/else expression
    if age person >= 18
        then True
        else False