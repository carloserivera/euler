-- Returns largest palindrome product made by two numbers of size numDigits.
-- largestPalinedromeProduct numDigits
-- 
-- E.g. 
-- largestPalindromeProduct 3
-- 906609

isStrPalindrome :: String -> Bool
isStrPalindrome s = s == (reverse s)

isNumPalindrome n = isStrPalindrome (show n)

largestPalindromeProductAux :: Int -> Int -> Int -> Int
largestPalindromeProductAux n1 n2 maxProd = let prod = n1 * n2 in
	if (n2 <= 0) then maxProd
	else if (n1 <= 0) then largestPalindromeProductAux (n2-1) (n2-1) maxProd
	else if (prod < maxProd) then largestPalindromeProductAux (n2-1) (n2-1) maxProd
	else if (isNumPalindrome prod) then largestPalindromeProductAux (n1-1) (n2) prod
	else largestPalindromeProductAux (n1-1) (n2) maxProd

largestNumGivenNumDigits :: Int -> Int -> Int
largestNumGivenNumDigits numDigits result = 
	if (numDigits <= 0) then result
	else largestNumGivenNumDigits (numDigits - 1) (result + 9*(10 ^ (numDigits - 1)))

largestPalindromeProduct :: Int -> Int
largestPalindromeProduct numDigits = let maxFactor = largestNumGivenNumDigits numDigits 0 in
	if (maxFactor <= 0) then 0
	else largestPalindromeProductAux maxFactor maxFactor 0
	
