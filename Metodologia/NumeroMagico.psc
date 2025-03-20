Algoritmo NumeroMagico
    Definir numero, suma, digito Como Entero
	
    // Repetir hasta que el usuario decida salir
    Mientras Verdadero
        Escribir "Ingrese un numero o indique 0 para salir:"
        Leer numero
		
        // Si el número es 0, salimos del ciclo
        Si numero = 0 Entonces
            Escribir "Programa terminado."
		
	FinSi
	
	suma <- 0
	// Calcular la suma de los dígitos
	Mientras numero > 0
		digito <- numero Mod 10
		suma <- suma + digito
		numero <- TRUNC(numero/10)
	FinMientras
	
	// Reducir la suma hasta que sea un solo dígito
	Mientras suma >= 10
		numero <- suma
		suma <- 0
		Mientras numero > 0
			digito <- numero Mod 10
			suma <- suma + digito
			numero <- TRUNC(numero/10)
		FinMientras
	FinMientras
	
	// Verificar si el número mágico es igual a 7
	Si suma = 7 Entonces
		Escribir "El número es mágico."
	Sino
		Escribir "El número no es mágico."
	FinSi
FinMientras
FinAlgoritmo
