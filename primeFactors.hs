primeFactoriseNums :: [Int] -> [[Int]]
primeFactoriseNums ns = map PrimeFactorise ns

primeFactorise :: Int -> [Int]
primeFactorise n = filter isPrime (factorise n)

factorise :: Int -> [Int]
factorise n =  filter (divides n) [1..n]

divides :: Int -> Int -> Bool
divides num denom = num `mod` denom == 0

is Prime :: Int -> Bool
isPrime n = (factorise n) == [1,n]