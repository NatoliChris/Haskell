doubleMe x = x + x
-- doubleUs x y = x * 2 + y * 2

-- Functions can define others
doubleUs x y = doubleMe x + doubleMe y

-- Note: else statement is mandatory
doubleSmallNumber x = if x > 100
                      then x 
                      else x * 2

-- Note: the ' means that it is a strict implementation
doubleSmallNumber' x = (if x > 100 then x else x*2) + 1


