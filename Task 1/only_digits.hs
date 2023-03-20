onlyDigits :: String -> Bool
onlyDigits [] = False  -- empty string should return False
onlyDigits (h:t) = do
  if h `elem` ['0'..'9'] && t == [] then True
  else if h `elem` ['0'..'9'] then onlyDigits t
  else False

-- This task is here for you to practice basic recursion.

-- Write a function onlyDigits :: String -> Bool that, given a string, checks whether the string contains only digits or not. Empty string should return false.

-- Return a file named only_digits.hs containing the required function.