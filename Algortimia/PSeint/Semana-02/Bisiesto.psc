Algoritmo Bisiesto
    Definir anio, diasFebrero Como Entero;
    Definir esBisiesto Como Logico;

    Escribir "Ingresa el año:";
    Leer anio;

    esBisiesto <- ((anio MOD 4 = 0) Y (anio MOD 100 <> 0)) O (anio MOD 400 = 0);

    Si esBisiesto Entonces
        diasFebrero <- 29;
        Escribir "El año es bisiesto";
    SiNo
        diasFebrero <- 28;
        Escribir "El año no es bisiesto";
    FinSi

    Escribir "Febrero tiene ", diasFebrero, " dias";
FinAlgoritmo
