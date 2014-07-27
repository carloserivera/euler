-- we should only test positive numbers.
-- 
--
smallestMultiple :: Int -> Int
smallestMultiple maxRange = smallestMultipleAux maxRange maxRange

smallestMultipleAux :: Int -> Int -> Int
smallestMultipleAux maxRange n = if (isMultipleOfRange maxRange n) then n else smallestMultipleAux maxRange (n+maxRange)

-- Returns true if all numbers from 1 to c are factors of n
isMultipleOfRange :: Int -> Int -> Bool
isMultipleOfRange c n = if (c==1) then True else if ((mod n c) /= 0) then False else isMultipleOfRange (c-1) n

