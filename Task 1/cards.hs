credits :: (Char, Int) -> (Char, Int) -> Int
credits (c1, x1) (c2, x2) = do
  if (c1 == 's' && x1 == 14) || (c2 == 's' && x2 == 14) then 14
  else if (c1 == c2 && x1 == x2) then 8
  else if (x1 == x2) then 6
  else if ( abs( x1 - x2 ) == 1) then 4
  else if (c1 == c2) then 2
  else 0

-- We represent playing cards with (Char, Int) pairs. ‘s’ means spades, ‘h’ hearts, ‘c’ clubs’ and ‘d’ diamonds, with number values going from 2 to 14 (Ace being 14). Consider a game, where a player is dealt two cards and wins credits based on the following rules:

-- If the player has the Ace of Spades (‘s’, 14), then the player wins 14 credits.
-- Otherwise if the player has two consecutive numbers of the same suit, then the player wins 8 credits.
-- Otherwise if the player has a pair (same number values), then the player wins 6 credits.
-- Otherwise if the player has to consecutive numbers, then the player wins 4 credits.
-- Otherwise if the player has two cards of the same suit, then the player wins 2 credits.
-- Otherwise, the player wins 0 credits.
-- Write a function credits :: (Char, Int) -> (Char, Int) -> Int that evaluates the given credits.

-- You can assume that the given cards are real.

-- Return your solution in a file cards.hs that contains the required function.