import Distribution.Simple.Program (arProgram)
robot (name, attack, hp) = \message -> message (name, attack, hp)


name (n, _, _) = n
attack (_, a, _) = a
hp (_, _, h) = h

getName aRobot = aRobot name
getAttack aRobot = aRobot attack
getHP aRobot = aRobot hp

setName aRobot nName = aRobot (\(n, a, h) -> robot (nName, a, h))
setAttack aRobot nAttack = aRobot (\(n,a,h) -> robot(n, nAttack, h))
setHP aRobot nHP = aRobot (\(n,a,h) -> robot(n, a, nHP))
printRobot aRobot = aRobot (\(n, a, h) ->
    n ++ ", attack: " ++ show a ++ ", hp: " ++ show h)

damage aRobot income = aRobot (\(n, a, h) -> robot (n, a, h-income))
fight aRobot defender = damage defender attack
    where attack = 
            if getHP aRobot > 0
                then getAttack aRobot
                else 0


-- >>> kR = robot ("Killer", 25, 200)
-- >>> getName kR
-- "Killer"
-- >>> nR = setName kR "Destroyer"
-- >>> getName nR
-- "Destroyer"
-- >>> printRobot nR
-- "Destroyer, attack: 25, hp: 200"
-- >>> after = damage nR (getAttack nR)
-- >>> printRobot after
-- "Destroyer, attack: 25, hp: 175"
-- >>> hitted =  fight nR kR
-- >>> printRobot hitted
-- "Killer, attack: 25, hp: 175"
-- >>> lives [kR, nR, hitted]
-- [200,200,175]

-- Задача 10.1
lives = map getHP

-- Still in progress
threeRoundFight x y = if getHP aR > getHP bR
        then x
        else y
    where   aR = fight x y
            bR = fight y x
