-- >>> myTail [1,2,3]
-- [2,3]
-- >>> myTail []
-- empti list does not have tail

-- >>> myGCD 6 8
-- 2
-- >>> myGCD 18 30
-- 6

-- Задача 7.1
myTail [] = error "empti list does not have tail"
myTail (_:xs) = xs

-- Задача 7.2
myGCD a 0 = a
myGCD a b = myGCD b (a  `mod` b)
