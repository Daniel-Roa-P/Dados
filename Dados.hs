import System.Random
 
main = do
 dado1 <- randomRIO (0,5)
 dado2 <- randomRIO (0,5)
 print (comparar dado1 dado2)

comparar::Int -> Int -> Int
comparar dado1 dado2 = if dado1==dado2 then 1
					   else if dado1>dado2 then 2
					   else 3