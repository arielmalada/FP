headOrLast :: [String] -> Char -> [String]
headOrLast xs c = [s | s <- xs, head s == c || last s == c]

-- This task is meant to be solved with list comprehension.

-- Write a function headOrLast :: [String] -> Char -> [String] that, given a list of strings and a character, evaluates to a list with all the strings of the input list that either begin or end with the input character.

-- Grader sorts the output of your function so the order in which the elements are does not matter.


-- Submit a file named list_of_strings.hs that has the function

 