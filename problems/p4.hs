-- largestPalinedromeProduct 999 999 0
-- 906609

isStrPalindrome :: String -> Bool
isStrPalindrome s = s == (reverse s)

isNumPalindrome n = isStrPalindrome (show n)

largestPalindromeProduct :: Int -> Int -> Int -> Int
largestPalindromeProduct n1 n2 maxProd = let prod = n1 * n2 in
	if (n2 <= 0) then maxProd
	else if (n1 <= 0) then largestPalindromeProduct (n2-1) (n2-1) maxProd
	else if (prod < maxProd) then largestPalindromeProduct (n2-1) (n2-1) maxProd
	else if (isNumPalindrome prod) then largestPalindromeProduct (n1-1) (n2) prod
	else largestPalindromeProduct (n1-1) (n2) maxProd



