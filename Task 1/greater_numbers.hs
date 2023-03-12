nextIsGreater :: [Int] -> [Int]
nextIsGreater [] = []
nextIsGreater [x] = []
nextIsGreater (head:next:tail)
  | next > head = head : nextIsGreater (next:tail)
  | otherwise = nextIsGreater (next:tail)

-- Write a function nextIsGreater :: [Int] -> [Int] that, given a list of numbers, produces a list with all elements of the input list such that the element is followed by a greater number in the input list (the next number is greater).

-- The numbers need to be in the same order relative to each other in the output list as they are in the input list.

-- Return your solution in a file named greater_numbers.hs

-- An example evaluation of the function:

-- nextIsGreater [0,5,2,3,2,2,3,1]
-- [0,2,2]