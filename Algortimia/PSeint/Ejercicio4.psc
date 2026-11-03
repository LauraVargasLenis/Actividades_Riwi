Algoritmo Ejercicio4
	Definir cantidad Como Entero
	
    Escribir "Ingrese la cantidad disponible:"
    Leer cantidad
	
    Si cantidad < 0 Entonces
        Escribir "Cantidad invalida"
    Sino
        Si cantidad = 0 Entonces
            Escribir "Rojo: Producto agotado"
        Sino
            Si cantidad <= 5 Entonces
                Escribir "Amarillo: Inventario bajo"
            Sino
                Escribir "Verde: Inventario suficiente"
            FinSi
        FinSi
    FinSi
	
FinAlgoritmo
