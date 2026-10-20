isPalindrome :: String -> Bool
isPalindrome s = s == reverse s

palindromes :: [String] -> [String]
palindromes xs = filter isPalindrome xs
