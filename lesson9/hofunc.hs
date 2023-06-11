import Data.Char (toLower)
myMap f [] = []
myMap f (x:xs) = (f x): myMap f xs

-- >>> myMap (+1) [1..6]
-- [2,3,4,5,6,7]

-- Проверка 9.1
remove test [] = []
remove test (x:xs) =
    if test x
        then rest
        else x: rest
    where rest = remove test xs

-- >>> remove even [1..5]
-- [1,3,5]

-- Проверка 9.2
myProduct xs = foldl (*) 1 xs

-- >>> myProduct [1..5]
-- 120

myElem _ [] = False
myElem x xs = length filtered > 0
    where filtered = filter (\a -> a==x) xs

-- >>> myElem 3 [1..5]
-- True
-- >>> myElem 10 [-10..-1]
-- False

isPoliandrome str =
    filtered == reverse filtered
    where 
        lowered = map toLower str
        filtered = remove (\x -> elem x " !,?.;:-") lowered

-- >>> isPoliandrome "А роза упала на лапу Азора!"
-- True
-- >>> !! 1 [1..3]
-- parse error on input `!!'

harmonic 0 = 0
harmonic 1 = 1
harmonic n = foldl (\x y -> x + 1 / y) 0 [2..n]
-- >>> harmonic 2
-- 0.5
