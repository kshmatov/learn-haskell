--  \x -> x
-- Проверка 3.1
-- \x -> x * 2
-- ghci:
-- (\x -> x * 2)4
-- 8

-- Проверка 3.2
-- doubleDouble x = dubs*2
--      where dubs = x*2

doubleDouble x = (\x -> x*2) (x*2)

overwrite x = let x = 2
    in let x = 3
        in let x = 4
            in x

-- Задача 3.2
counter x = let x = x + 1
    in let x = x + 1
        in
            x

counterL x = (\x -> x + 1) ((\x -> x + 1) x)