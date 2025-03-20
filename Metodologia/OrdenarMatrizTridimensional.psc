Algoritmo OrdenarMatrizTridimensional
    Definir filas, columnas, profundidad Como Entero
    Definir i, j, k, temp Como Entero
    
    // Solicitar las dimensiones de la matriz tridimensional
    Escribir "Ingrese el número de filas:"
    Leer filas
    Escribir "Ingrese el número de columnas:"
    Leer columnas
    Escribir "Ingrese la profundidad de la matriz:"
    Leer profundidad
    
    // Dimensionar la matriz original
    Dimension matriz[filas, columnas, profundidad]
    
    // Solicitar los valores de la matriz
    Para i <- 0 Hasta filas - 1 Hacer
        Para j <- 0 Hasta columnas - 1 Hacer
            Para k <- 0 Hasta profundidad - 1 Hacer
                Escribir "Ingrese el valor para la posición [", i, ",", j, ",", k, "]:"
                Leer matriz[i, j, k]
            FinPara
        FinPara
    FinPara
    
    // Imprimir la matriz original
    Escribir "Matriz Original:"
    Para i <- 0 Hasta filas - 1 Hacer
        Para j <- 0 Hasta columnas - 1 Hacer
            Para k <- 0 Hasta profundidad - 1 Hacer
                Escribir matriz[i, j, k], " " Sin Saltar
            FinPara
            Escribir ""
        FinPara
        Escribir ""
    FinPara
    
    // Convertir la matriz en un arreglo lineal para ordenar
    Definir arreglo Como Entero
    Dimension arreglo[filas * columnas * profundidad]
    Definir indice Como Entero
    indice <- 0
    
    Para i <- 0 Hasta filas - 1 Hacer
        Para j <- 0 Hasta columnas - 1 Hacer
            Para k <- 0 Hasta profundidad - 1 Hacer
                arreglo[indice] <- matriz[i, j, k]
                indice <- indice + 1
            FinPara
        FinPara
    FinPara
    
    // Ordenar el arreglo usando el método de burbuja
    Para i <- 0 Hasta (filas * columnas * profundidad) - 2 Hacer
        Para j <- 0 Hasta (filas * columnas * profundidad) - 2 - i Hacer
            Si arreglo[j] > arreglo[j + 1] Entonces
                temp <- arreglo[j]
                arreglo[j] <- arreglo[j + 1]
                arreglo[j + 1] <- temp
            FinSi
        FinPara
    FinPara
    
    // Volver a colocar los valores ordenados en la matriz
    indice <- 0
    Para i <- 0 Hasta filas - 1 Hacer
        Para j <- 0 Hasta columnas - 1 Hacer
            Para k <- 0 Hasta profundidad - 1 Hacer
                matriz[i, j, k] <- arreglo[indice]
                indice <- indice + 1
            FinPara
        FinPara
    FinPara
    
    // Imprimir la matriz ordenada
    Escribir "Matriz Ordenada:"
    Para i <- 0 Hasta filas - 1 Hacer
        Para j <- 0 Hasta columnas - 1 Hacer
            Para k <- 0 Hasta profundidad - 1 Hacer
                Escribir matriz[i, j, k], " " Sin Saltar
            FinPara
            Escribir ""
        FinPara
        Escribir ""
    FinPara
FinAlgoritmo