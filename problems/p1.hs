sumFactorsReal :: Int -> Int -> Int
sumFactorsReal 0 sum = sum
sumFactorsReal n sum = let prevN = (n - 1) in if ((mod prevN 5) == 0) || ((mod prevN 3) == 0) then sumFactorsReal prevN (sum+prevN) else sumFactorsReal prevN sum

sumFactors :: Int -> Int
sumFactors n = sumFactorsReal n 0
