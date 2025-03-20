Algoritmo NumeroMagico
    Definir numero, suma, digito Como Entero
	
    // Repetir hasta que el usuario decida salir
    Mientras Verdadero
        Escribir "Ingrese un numero o indique 0 para salir:"
        Leer numero
		
        // Si el n�mero es 0, salimos del ciclo
        Si numero = 0 Entonces
            Escribir "Programa terminado."
		
	FinSi
	
	suma <- 0
	// Calcular la suma de los d�gitos
	Mientras numero > 0
		digito <- numero Mod 10
		suma <- suma + digito
		numero <- TRUNC(numero/10)
	FinMientras
	
	// Reducir la suma hasta que sea un solo d�gito
	Mientras suma >= 10
		numero <- suma
		suma <- 0
		Mientras numero > 0
			digito <- numero Mod 10
			suma <- suma + digito
			numero <- TRUNC(numero/10)
		FinMientras
	FinMientras
	
	// Verificar si el n�mero m�gico es igual a 7
	Si suma = 7 Entonces
		Escribir "El n�mero es m�gico."
	Sino
		Escribir "El n�mero no es m�gico."
	FinSi
FinMientras
FinAlgoritmo
