-- Задача 6.1
myRepeate x = cycle [x]

--- >>> take 5 (myRepeate 10)
-- [10,10,10,10,10]

-- Задача 6.2

subseq start end xs = 
    take len (drop start xs)
    where
        len = end - start
-- >>> subseq 2 5 [1..]
-- [3,4,5]
