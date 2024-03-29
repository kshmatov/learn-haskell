import Data.List

ifEven f x =
    if even x
        then f x
        else x


cubeEven x = ifEven (\x -> x^3) x

incOrDouble x =
    if even x
        then (\x -> x + 1)
        else (\x -> x * 2)

iodFunc ctrl x =
    f x
    where f = incOrDouble ctrl

names = [
    ("ian", "cartis"),
    ("bernard", "summer"),
    ("piter", "hook"),
    ("stiven", "morris"),
    ("stiven", "hook")]

-- Линтер ругается, предлагает паттерн матчинг, 
-- но мы его пока "не проходили" :)
comparesByLast name1 name2 =
    if c1 == EQ
        then compare fName1 fName2
        else c1
    where
        fName1 = fst name1
        lastName1 = snd name1
        fName2 = fst name2
        lastName2 = snd name2
        c1 = compare lastName1 lastName2


