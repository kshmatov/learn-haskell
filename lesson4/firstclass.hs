import Data.List

ifEven f x =
    if even x
        then f x
        else x

incOrDouble x =
    if even x
        then (\x -> x + 1)
        else (\x -> x * 2)

names = [
    ("ian", "cartis"),
    ("bernard", "summer"),
    ("piter", "hook"),
    ("stiven", "morris"),
    ("stiven", "hook")]

-- Линтер ругается, предлагает паттерн матчинг, 
-- но мы его пока "не проходили" :)
comparesByLast name1 name2 =
    if lastName1 > lastName2
        then GT 
        else if lastName1 < lastName2
            then LT 
            else
                if fName1 > fName2
                    then GT 
                    else if fName1 < fName2
                        then LT
                        else EQ
    where
        fName1 = fst name1
        lastName1 = snd name1
        fName2 = fst name2
        lastName2 = snd name2

