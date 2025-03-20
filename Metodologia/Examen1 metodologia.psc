Proceso MenuOpciones
    Definir opcion Como Entero
    Definir continuar Como Caracter
	
    Repetir
        Escribir "Seleccione una opción:"
        Escribir "1. Calcular el área de un triángulo"
        Escribir "2. Determinar si un número es par o impar"
        Escribir "3. Mostrar la tabla de multiplicar"
        Escribir "4. Calcular el promedio de notas"
        Escribir "5. Salir"
        Leer opcion
        
        Segun opcion Hacer
            1: 
                CalcularAreaTriangulo()
            2: 
                DeterminarParImpar()
            3: 
                TablaMultiplicar()
            4: 
                CalcularPromedio()
            5: 
                Escribir "Saliendo del programa..."
            De Otro Modo:
                Escribir "Opción no válida. Intente nuevamente."
        FinSegun
		
        // Preguntar si desea continuar o salir
        Si opcion <> 5 Entonces
            Escribir "¿Desea realizar otra operación? (S/N)"
            Leer continuar
        Sino
            continuar <- "N"
        FinSi
		
    Hasta Que continuar = "N" O continuar = "n"
    
    Escribir "Gracias por usar el programa. ¡Hasta luego!"
FinProceso

SubProceso CalcularAreaTriangulo
	Escribir "Digite la base: "
	Leer base
	Escribir "Digite la altura: "
	Leer altura
	T<-(base*altura)/2
	Escribir "El area del triangulo es: ",T
FinSubProceso

SubProceso DeterminarParImpar
	Definir numero Como Entero
	Escribir "Ingrese un numero entero:"
	Leer numero
	Si numero MOD 2 = 0 Entonces
        Escribir "El número ", numero, " es par."
    Sino
        Escribir "El número ", numero, " es impar."
    FinSi
FinSubProceso

SubProceso TablaMultiplicar
	Definir num, i Como Entero
    Escribir "Ingrese un número entero para ver su tabla de multiplicar:"
    Leer num
    Para i <- 1 Hasta 10 Con Paso 1 Hacer
        Escribir num, " x ", i, " = ", num * i
    FinPara
FinSubProceso

SubProceso CalcularPromedio
	Definir n1, n2, n3, prom Como Real
	Escribir "Ingrese la primera nota:"
    Leer n1
    Escribir "Ingrese la segunda nota:"
    Leer n2
    Escribir "Ingrese la tercera nota:"
    Leer n3
	prom<-(n1+n2+n3)/3
	Escribir "El promedio es: ",prom
	Si prom>=6 Entonces
		Escribir "Aprobatorio"
	SiNo
		Escribir "Reprobatorio"
	Fin Si
FinSubProceso
