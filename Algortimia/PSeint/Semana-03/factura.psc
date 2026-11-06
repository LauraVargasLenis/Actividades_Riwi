SubProceso subtotal <- LeerPedido()
    Definir bandeja, ajia, precioBandeja, precioAjia Como Real
	
    precioBandeja <- 40000
    precioAjia <- 22000
	
    Escribir "Cantidad de bandejas paisas:"
    Leer bandeja
	
    Escribir "Cantidad de ajiacos:"
    Leer ajia
	
    subtotal <- bandeja * precioBandeja + ajia * precioAjia
FinSubProceso


SubProceso resultado <- CalcularPorcentaje(base, porcentaje)
    Definir resultado Como Real
	
    resultado <- base * porcentaje / 100
FinSubProceso


SubProceso ImprimirFactura(subtotal, impuesto, propina)
    Definir total Como Real
	
    total <- subtotal + impuesto + propina
	
    Escribir "----- FACTURA -----"
    Escribir "Subtotal: $", subtotal
    Escribir "Impuesto 8%: $", impuesto
    Escribir "Propina 10%: $", propina
    Escribir "Total: $", total
FinSubProceso




Algoritmo factura
	Definir subtotal, impuesto, propina Como Real
	
    subtotal <- LeerPedido()
    impuesto <- CalcularPorcentaje(subtotal, 8)
    propina <- CalcularPorcentaje(subtotal, 10)
	
    ImprimirFactura(subtotal, impuesto, propina)
	
FinAlgoritmo
