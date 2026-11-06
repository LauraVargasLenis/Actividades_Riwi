Algoritmo calificaciones
	Definir i, aprobados Como Entero
    Definir nota, suma, promedio Como Real
    Definir mayor, menor Como Real
    Definir alguienPerdio Como Logico
	
    suma <- 0
    aprobados <- 0
    mayor <- 0
    menor <- 5
    alguienPerdio <- Falso
	
    Para i <- 1 Hasta 5 Hacer
        Escribir "Ingrese la nota del estudiante ", i
        Leer nota
		
        Mientras nota < 0 O nota > 5 Hacer
            Escribir "Nota invalida. Ingrese otra:"
            Leer nota
        FinMientras
		
        suma <- suma + nota
		
        Si nota >= 3 Entonces
            aprobados <- aprobados + 1
        Sino
            alguienPerdio <- Verdadero
        FinSi
		
        Si nota > mayor Entonces
            mayor <- nota
        FinSi
		
        Si nota < menor Entonces
            menor <- nota
        FinSi
    FinPara
	
    promedio <- suma / 5
	
    Escribir "Promedio: ", promedio
    Escribir "Estudiantes aprobados: ", aprobados
    Escribir "Nota mas alta: ", mayor
    Escribir "Nota mas baja: ", menor
	
    Si alguienPerdio Entonces
        Escribir "Si, alguien perdio"
    Sino
        Escribir "Nadie perdio"
    FinSi
	
FinAlgoritmo
