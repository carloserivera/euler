-- Sum up even fibonacci numbers up to MAX (inclusive)

-- Things we need to keep track of: MAX, SUM, TERM1, TERM2
sumFib :: Int -> Int 
sumFib max = realSumFib 1 1 max 0

realSumFib :: Int -> Int -> Int -> Int -> Int
realSumFib t1 t2 max sum = 
    let newT = t1 + t2 
    in if (newT > max) then sum 
        else if ((mod newT 2) == 0) then realSumFib t2 newT max (newT + sum)
        else realSumFib t2 newT max sum
