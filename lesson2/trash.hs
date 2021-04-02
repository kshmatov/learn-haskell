simple x = x

calcChange owed given = 
    if change > 0
    then given - owed
    else 0
    where change = given - owed

doublePlusXTwo x = 
    doubleX + 2
    where doubleX = x * 2


-- Задача 2.2
inc x = x + 1
double x = x * 2
square x = x * x

-- Задача 2.3
coolFunc x = 
    if even x 
        then x - 2
        else 3 * x + 1