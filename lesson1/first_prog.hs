toPart recipcient = "Hello, " ++ recipcient ++ "!\n"

bodyPart what = "Thanks for " ++ what ++ "!\n"

greetPart fromWho = "Yours " ++ fromWho


createEmail recipcient what fromWho =
    toPart recipcient ++
    bodyPart what ++
    greetPart fromWho


main = do
    putStrLn "To?"
    recipcient <- getLine
    putStrLn "For what?"
    what <- getLine
    putStrLn "From?"
    fromWho <- getLine
    putStrLn (createEmail recipcient what fromWho)
