addLists x y = x ++ y

insertStart x y = x:y

getElement x y = x !! y

inList x y = x `elem` y

getEvens = [x*2 | x <- [1..10]]

getEvens' = [x*2 | x <- [1..10], x*2 >= 12]

boomBangs xs = [ if x < 10 then "BOOM!" else "BANG!" | x <- xs, odd x]

length' xs = sum [1 | _ <- xs]

combinations x y = [ x*y | x <- x, y <- y]

removeNonUppercase st = [ c | c <- st, c `elem` ['A'..'Z']]

triangles = [ (a,b,c) | c <- [1..10], b <- [1..10], a <- [1..10] ]

rightTriangles = [ (a,b,c) | c <- [1..10],
                             b <- [1..10],
                             a <- [1..10], 
                             a^2 + b^2 == c^2]