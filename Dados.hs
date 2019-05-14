import System.Random
 
escribir::String->IO ()
escribir m= do putStr m
               putStr "\n"
 
main = do
 dado1 <- randomRIO (1,6)
 dado2 <- randomRIO (1,6)
 print("Jugador 1")
 print(dado1)
 print("Jugador 2")
 print(dado2)
 comparar dado1 dado2
 
comparar::Int -> Int -> IO ()
comparar dado1 dado2 = if dado1==dado2 then escribir "Empate" 
					   else if dado1>dado2 then escribir "Gano el Jugador 1" 
					   else escribir "Gano el Jugador 2" 				   