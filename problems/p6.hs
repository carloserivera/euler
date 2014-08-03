-- Sum of square difference.
-- Input a max.  For first part we need to go from 1 to max, and sum up squares of each individual int.
--Second part is to sum up all ints first and then square.  
-- Third part is to subtract the second number from the first.

sumOfSquareDiff :: Int -> Int
sumOfSquareDiff max = (squareOfTheSum max) - (sumOfTheSquares max)

-- Given a max, add up all numbers from 1 to max and square that number
squareOfTheSum :: Int -> Int
squareOfTheSum max = (sumNumbersInRange 1 max 0) ^ 2

sumNumbersInRange :: Int -> Int -> Int -> Int
sumNumbersInRange index max result = if (index > max) then result else sumNumbersInRange (index + 1) max (result + index)

sumOfTheSquares :: Int -> Int
sumOfTheSquares max = sumSquaresInRange 1 max 0 

sumSquaresInRange :: Int -> Int -> Int -> Int
sumSquaresInRange index max result = if (index > max) then result else sumSquaresInRange (index + 1) max (result + (index ^ 2))

