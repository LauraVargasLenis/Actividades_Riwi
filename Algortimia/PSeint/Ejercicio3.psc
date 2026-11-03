Algoritmo Ejercicio3
	Definir horas Como Real
    Definir tarifa Como Entero
	
    Escribir "Ingrese las horas de parqueo:"
    Leer horas
	
    Si horas <= 0 Entonces
        Escribir "Tiempo invalido"
    Sino
        Si horas <= 1 Entonces
            tarifa <- 3000
        Sino
            Si horas <= 3 Entonces
                tarifa <- 6000
            Sino
                tarifa <- 10000
            FinSi
        FinSi
		
        Escribir "Total a pagar: $", tarifa
    FinSi
	
FinAlgoritmo
