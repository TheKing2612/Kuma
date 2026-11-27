Algoritmo Ventas17Elementos
    Definir conceptos como Cadena
    Definir montos como Real
    Dimension conceptos[17]
    Dimension montos[17]
	
    Definir i, contadorAltos, productosComprados como Entero
    Definir sumaTotal, mayorMonto, presupuesto, saldoRestante, totalGastado como Real
    Definir conceptoMayor como Cadena
	
    // Texto (concepto) y precio en $
    conceptos[1] <- "Pan";          montos[1] <- 12.50
    conceptos[2] <- "Leche";        montos[2] <- 8.00
    conceptos[3] <- "Queso";        montos[3] <- 24.00
    conceptos[4] <- "Arroz";        montos[4] <- 15.75
    conceptos[5] <- "Pasta";        montos[5] <- 10.25
    conceptos[6] <- "Aceite";       montos[6] <- 28.50
    conceptos[7] <- "Azucar";       montos[7] <- 9.40
    conceptos[8] <- "Cafe";         montos[8] <- 32.00
    conceptos[9] <- "Huevos";       montos[9] <- 18.60
    conceptos[10] <- "Pollo";       montos[10] <- 45.00
    conceptos[11] <- "Carne";       montos[11] <- 52.80
    conceptos[12] <- "Tomate";      montos[12] <- 7.50
    conceptos[13] <- "Cebolla";     montos[13] <- 6.20
    conceptos[14] <- "Jabon";       montos[14] <- 11.00
    conceptos[15] <- "Shampoo";     montos[15] <- 21.30
    conceptos[16] <- "Jugo";        montos[16] <- 14.90
    conceptos[17] <- "Galletas";    montos[17] <- 9.80
	
    sumaTotal <- 0
    contadorAltos <- 0
    mayorMonto <- montos[1]
    conceptoMayor <- conceptos[1]
	
    // 1. Procesamiento general de la lista
    Escribir "=== LISTA DE PRODUCTOS DISPONIBLES ==="
    Para i <- 1 Hasta 17 Hacer
        sumaTotal <- sumaTotal + montos[i]
		
        Si montos[i] > 20 Entonces
            contadorAltos <- contadorAltos + 1
        FinSi
		
        Si montos[i] > mayorMonto Entonces
            mayorMonto <- montos[i]
            conceptoMayor <- conceptos[i]
        FinSi
		
        Escribir i, ". ", conceptos[i], " -> $", montos[i]
    FinPara
	
    Escribir "----------------------------------------"
    Escribir "Suma total de todo el mercado: $", sumaTotal
    Escribir "Cantidad de elementos mayores a $20: ", contadorAltos
    Escribir "Elemento de mayor valor: ", conceptoMayor, " ($", mayorMonto, ")"
    Escribir "----------------------------------------"
	
    // 2. Ingreso de presupuesto y cálculo de mercado
    Escribir "Ingrese su presupuesto disponible en $: "
    Leer presupuesto
	
    saldoRestante <- presupuesto
    totalGastado <- 0
    productosComprados <- 0
	
    Escribir ""
    Escribir "=== MERCADO QUE PUEDES COMPRAR CON $", presupuesto, " ==="
	
    Para i <- 1 Hasta 17 Hacer
        Si saldoRestante >= montos[i] Entonces
            Escribir "- ", conceptos[i], " ($", montos[i], ")"
            saldoRestante <- saldoRestante - montos[i]
            totalGastado <- totalGastado + montos[i]
            productosComprados <- productosComprados + 1
        FinSi
    FinPara
	
    Escribir "----------------------------------------"
    Si productosComprados = 0 Entonces
        Escribir "El presupuesto no alcanza para ningun producto de la lista."
    SiNo
        Escribir "Total de productos comprados: ", productosComprados, " de 17"
        Escribir "Total gastado: $", totalGastado
        Escribir "Vuelto / Saldo restante: $", saldoRestante
    FinSi
	FinAlgoritmo