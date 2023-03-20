gap :: (Char, Char) -> Int -> String -> Int
-- empty string
gap _ _ [] = 0
gap (c1,c2) g (h:t) = do
  -- start the counting or continue find the first character
  if c1 == h then countMatches (c1,c2) g t
  else gap (c1,c2) g t

countMatches :: (Char, Char) -> Int -> String -> Int
-- empty string
countMatches _ _ [] = 0 
countMatches (c1,c2) g (h:t) = do
  -- make a different variable and take the hGap for the gap
  let (hGap:tGap) = drop g (h:t)
  -- call gap function again with the previous complete string
  if c2 == hGap then 1 + gap (c1, c2) g (h:t) 
  else gap (c1,c2) g (h:t)
  

-- This task is suitable for a recursive solution.

-- We say that character pair (c1,c2) appears in string s with gap g, if c1 is before c2 and there are exactly g characters between c1 and c2 in s.

-- Write a function gap :: (Char, Char) -> Int -> String -> Int that, given a pair (c1,c2), a gap g and a string s returns an Int telling how many times (c1,c2) appear in s with gap g.

-- For example:

-- gap ('a','b') 1 "aaabbb"
-- 2
-- Submit a file gap.hs containing the required function.
