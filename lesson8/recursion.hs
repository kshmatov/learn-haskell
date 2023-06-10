myTake _ [] = []
myTake 0 _ = []
myTake items (x:xs) = x : rest 
    where rest =myTake (items-1) xs 

-- >>> myTake 2 [1..5]
-- [1,2]

myLength [] = 0
myLength (_:xs) = 1 + myLength xs
-- >>> myLength [1..5]
-- 5

myReverse [] = []
myReverse (x:xs) = myReverse xs ++ [x]
-- >>> myReverse [1,2]
-- [2,1]
-- >>> myReverse [1..5]
-- [5,4,3,2,1]


fibFast _ _ 0 = 0
fibFast _ _ 1 = 1
fibFast _ _ 2 = 1
fibFast x y 3 = x + y
fibFast x y c = fibFast (x + y) x (c -1)

fib x = fibFast 1 1 x
-- >>> fib 1
-- 1
-- >>> fib 2
-- 1
-- >>> fib 5
-- 5
-- >>> fib 9
-- 34
