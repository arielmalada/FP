validate :: String -> Bool
validate str = do
  if length str == 18 then checkIbanCountryCode(str)
  else False


-- update

checkIbanCountryCode :: String -> Bool
checkIbanCountryCode str = do
  if take 2 str == "FI" || take 2 str == "fi" then checkIbanNumber(drop 2 str)
  else False

checkIbanNumber :: String -> Bool
checkIbanNumber str = do
  if all (`elem` ['0'..'9']) str then True
  else False

-- old

-- checkIbanCountryCode :: String -> Bool
-- checkIbanCountryCode (h1:h2:num) = do
--   if h1 == 'F' && h2 == 'I' then checkIbanNumber(num)
--   else False

-- checkIbanNumber :: String -> Bool
-- checkIbanNumber (h:t) = do
--   if h `elem` ['0'..'9'] && t == [] then True
--   else if h `elem` ['0'..'9'] then checkIbanNumber t
--   else False

-- This task is suitable for practicing guards and splitting your code into smaller functions.

-- Write a function validate :: String -> Bool that, given a string validates the string as a Finnish IBAN code.

-- For details, see https://en.wikipedia.org/wiki/International_Bank_Account_Number#Validating_the_IBAN.

-- You will also need the following information:

-- Length of a Finnish IBAN code is 18.
-- Finnish IBAN begins with the country code FI.
-- All the characters after the country code are digits.
-- You can assume that the input is without whitespaces.

-- Submit a file iban.hs containing the required function.