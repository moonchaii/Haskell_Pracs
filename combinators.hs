ns = [5, 10, 15, 20]

sumFunc ns = sum ns
sumFold ns = foldl (+) 0 ns

evenFilter :: [Integer] -> [Integer]
evenFilter = filter (\n -> n `mod` 2 == 0)
evenFold :: [Integer] -> [Integer]
evenFold ns = foldl (\acc n -> if n `mod` 2 == 0 then acc ++ [n] else acc) [] ns

mapFunc :: [Integer] -> [Integer]
mapFunc ns = map (\n -> n * 2) ns
mapFold :: [Integer] -> [Integer]
mapFold ns = foldl (\acc n -> acc ++ [n * 2]) [] ns