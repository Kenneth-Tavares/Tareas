Algoritmo GeneradorContrasenaSegura
    Definir longitudContrasena, i, j, k Como Entero
    Definir contrasena, caracteres, caracter Como Caracter
    Definir tieneMayuscula, tieneMinuscula, tieneNumero, tieneEspecial, repetido Como Logico
    
    // Definir los caracteres permitidos
    caracteres <- "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789!@#$%^&*()"
    
    // Solicitar la longitud de la contraseña
    Repetir
        Escribir "Ingrese la longitud de la contraseña (entre 8 y 16 caracteres):"
        Leer longitudContrasena
    Hasta Que longitudContrasena >= 8 Y longitudContrasena <= 16
    
    // Inicializar la contraseña como vacía
    contrasena <- ""
    
    // Inicializar las banderas para verificar las condiciones
    tieneMayuscula <- Falso
    tieneMinuscula <- Falso
    tieneNumero <- Falso
    tieneEspecial <- Falso
    
    // Generar la contraseña
    Repetir
        // Reiniciar la contraseña y las banderas en cada iteración
        contrasena <- ""
        tieneMayuscula <- Falso
        tieneMinuscula <- Falso
        tieneNumero <- Falso
        tieneEspecial <- Falso
        
        Para i <- 1 Hasta longitudContrasena Hacer
            Repetir
                // Seleccionar un carácter aleatorio
                j <- Aleatorio(1, Longitud(caracteres))
                caracter <- Subcadena(caracteres, j, j)
                
                // Verificar si el carácter ya está en la contraseña
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
            
            // Agregar el carácter a la contraseña
            contrasena <- contrasena + caracter
            
            // Verificar el tipo de carácter
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
    
    // Mostrar la contraseña generada
    Escribir "Contraseña generada: ", contrasena
FinAlgoritmo