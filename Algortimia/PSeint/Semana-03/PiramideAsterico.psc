Algoritmo PiramideAsterico
	Definir altura, fila, j Como Entero
    Definir espacios, asteriscos Como Cadena
	
    Escribir "Ingrese la altura de la piramide:"
    Leer altura
	
    Para fila <- 1 Hasta altura Hacer
        espacios <- ""
        asteriscos <- ""
		
        Para j <- 1 Hasta altura - fila Hacer
            espacios <- Concatenar(espacios, " ")
        FinPara
		
        Para j <- 1 Hasta 2 * fila - 1 Hacer
            asteriscos <- Concatenar(asteriscos, "*")
        FinPara
		
        Escribir espacios, asteriscos
    FinPara
	
FinAlgoritmo
