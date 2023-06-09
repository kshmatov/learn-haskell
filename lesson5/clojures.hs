
genIfEvenX x =
    if even x 
        then \f -> f x 
        else \f -> x

getRequestUrl host apiKey resource id =
    host ++ "/" ++ resource ++ "/" ++ id ++ "?token=" ++ apiKey

genHostRequest host = 
    (\key resourse id -> getRequestUrl host key resourse id)

genApiRequest hostBuilder key =
    (\resourse id -> hostBuilder key resourse id)

getResourseRequest apiBuilder resourse =
    (\id -> apiBuilder resourse id)

exampleR = getRequestUrl "https://example.com" "apiKey" "resourse/name"

ifEven f x =
    if even x
        then f x
        else x

ifEvenInc = ifEven (+ 1)
ifEvenDouble = ifEven (* 2)

ifEvenSquare = ifEven (^2)

binaryPartialApplication f x = (\y -> f y x)