highestPrimeFac :: Int -> Int
highestPrimeFac n = maximum (getPrimeFac n 2)

getPrimeFac :: Int -> Int -> [Int]
getPrimeFac n i = if n == i then [1,n]
	else if ((mod n i) == 0) then [i] ++ (getPrimeFac (quot n i) 2)
	else getPrimeFac n (i+1)


