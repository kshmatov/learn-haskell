
genIfEvenX x =
    if even x 
        then \f -> f x 
        else \f -> x

getRequestUrl= ""    