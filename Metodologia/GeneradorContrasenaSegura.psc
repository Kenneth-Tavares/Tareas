Algoritmo GeneradorContrasenaSegura
    Definir longitudContrasena, i, j, k Como Entero
    Definir contrasena, caracteres, caracter Como Caracter
    Definir tieneMayuscula, tieneMinuscula, tieneNumero, tieneEspecial, repetido Como Logico
    
    // Definir los caracteres permitidos
    caracteres <- "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789!@#$%^&*()"
    
    // Solicitar la longitud de la contrase�a
    Repetir
        Escribir "Ingrese la longitud de la contrase�a (entre 8 y 16 caracteres):"
        Leer longitudContrasena
    Hasta Que longitudContrasena >= 8 Y longitudContrasena <= 16
    
    // Inicializar la contrase�a como vac�a
    contrasena <- ""
    
    // Inicializar las banderas para verificar las condiciones
    tieneMayuscula <- Falso
    tieneMinuscula <- Falso
    tieneNumero <- Falso
    tieneEspecial <- Falso
    
    // Generar la contrase�a
    Repetir
        // Reiniciar la contrase�a y las banderas en cada iteraci�n
        contrasena <- ""
        tieneMayuscula <- Falso
        tieneMinuscula <- Falso
        tieneNumero <- Falso
        tieneEspecial <- Falso
        
        Para i <- 1 Hasta longitudContrasena Hacer
            Repetir
                // Seleccionar un car�cter aleatorio
                j <- Aleatorio(1, Longitud(caracteres))
                caracter <- Subcadena(caracteres, j, j)
                
                // Verificar si el car�cter ya est� en la contrase�a
                repetido <- Falso
                Si Longitud(contrasena) > 0 Entonces
                    k <- 1
                    Mientras k <= Longitud(contrasena) Y repetido = Falso Hacer
                        Si Subcadena(contrasena, k, k) = caracter Entonces
                            repetido <- Verdadero
                        FinSi
                        k <- k + 1
                    FinMientras
                FinSi
            Hasta Que repetido = Falso
            
            // Agregar el car�cter a la contrase�a
            contrasena <- contrasena + caracter
            
            // Verificar el tipo de car�cter
            Si caracter >= "A" Y caracter <= "Z" Entonces
                tieneMayuscula <- Verdadero
            Sino 
                Si caracter >= "a" Y caracter <= "z" Entonces
                    tieneMinuscula <- Verdadero
                Sino 
                    Si caracter >= "0" Y caracter <= "9" Entonces
                        tieneNumero <- Verdadero
                    Sino
                        tieneEspecial <- Verdadero
                    FinSi
                FinSi
            FinSi
        FinPara
    Hasta Que tieneMayuscula Y tieneMinuscula Y tieneNumero Y tieneEspecial
    
    // Mostrar la contrase�a generada
    Escribir "Contrase�a generada: ", contrasena
FinAlgoritmo