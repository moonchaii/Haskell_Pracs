primes :: Int -> [Int]
primes upperbound = filter isPrime [2..upperbound]

isPrime :: Int -> Bool
isPrime x =not $ any (isDivisor x) [2..(x-1)]

isDivisor :: Int -> Int -> Bool
isDivisor num divisor = (num `mod` divisor) == 0