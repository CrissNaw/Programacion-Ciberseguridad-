Algoritmo EjerciciosFuncionesVectores
	// Ejercicio 1: Suma de dos n�meros
    Escribir "=== EJERCICIO 1: SUMA DE DOS N�MEROS ==="
    Definir num1, num2, resultado Como Entero
    Escribir "Ingrese el primer n�mero:"
    Leer num1
    Escribir "Ingrese el segundo n�mero:"
    Leer num2
    resultado <- Sumar(num1, num2)
    Escribir "La suma es: ", resultado
    Escribir ""
    
    // Ejercicio 2: N�mero par o impar
    Escribir "=== EJERCICIO 2: N�MERO PAR O IMPAR ==="
    Definir numero Como Entero
    Escribir "Ingrese un n�mero:"
    Leer numero
    Si EsPar(numero) Entonces
        Escribir "El n�mero ", numero, " es PAR"
    Sino
        Escribir "El n�mero ", numero, " es IMPAR"
    FinSi
    Escribir ""
    
    // Ejercicio 3: Calcular el promedio
    Escribir "=== EJERCICIO 3: CALCULAR EL PROMEDIO ==="
    Definir nota1, nota2, nota3, prom Como Real
    Escribir "Ingrese la primera nota:"
    Leer nota1
    Escribir "Ingrese la segunda nota:"
    Leer nota2
    Escribir "Ingrese la tercera nota:"
    Leer nota3
    prom <- Promedio(nota1, nota2, nota3)
    Escribir "El promedio es: ", prom
    Si prom >= 70 Entonces
        Escribir "ESTADO: APROBADO"
    Sino
        Escribir "ESTADO: REPROBADO"
    FinSi
    Escribir ""
    
    // Ejercicio 4: Contrase�a segura
    Escribir "=== EJERCICIO 4: CONTRASE�A SEGURA ==="
    Definir password Como Cadena
    Escribir "Ingrese una contrase�a:"
    Leer password
    Si ValidarPassword(password) Entonces
        Escribir "La contrase�a es V�LIDA"
    Sino
        Escribir "La contrase�a es D�BIL (debe tener m�s de 8 caracteres)"
    FinSi
    Escribir ""
    
    // Ejercicio 5: Mayor de tres n�meros
    Escribir "=== EJERCICIO 5: MAYOR DE TRES N�MEROS ==="
    Definir a, b, c, mayor_num Como Entero
    Escribir "Ingrese el primer n�mero:"
    Leer a
    Escribir "Ingrese el segundo n�mero:"
    Leer b
    Escribir "Ingrese el tercer n�mero:"
    Leer c
    mayor_num <- MayorNumero(a, b, c)
    Escribir "El mayor n�mero es: ", mayor_num
    Escribir ""
    
    // Ejercicio 6: Cargar y mostrar elementos
    Escribir "=== EJERCICIO 6: CARGAR Y MOSTRAR ELEMENTOS ==="
    Definir vector6 Como Entero
    Dimension vector6[5]
    CargarVector(vector6, 5)
    Escribir "Elementos del vector:"
    MostrarVector(vector6, 5)
    Escribir ""
    
    // Ejercicio 7: Suma de elementos del vector
    Escribir "=== EJERCICIO 7: SUMA DE ELEMENTOS ==="
    Definir vector7, suma_total Como Entero
    Dimension vector7[10]
    Escribir "Ingrese 10 n�meros:"
    CargarVector(vector7, 10)
    suma_total <- SumarVector(vector7, 10)
    Escribir "La suma total de los elementos es: ", suma_total
    Escribir ""
    
    // Ejercicio 8: Buscar n�mero en el vector
    Escribir "=== EJERCICIO 8: BUSCAR N�MERO EN VECTOR ==="
    Definir vector8, numero_buscar Como Entero
    Definir encontrado Como Logico
    Dimension vector8[8]
    Escribir "Ingrese 8 n�meros:"
    CargarVector(vector8, 8)
    Escribir "Ingrese el n�mero a buscar:"
    Leer numero_buscar
    encontrado <- BuscarEnVector(vector8, 8, numero_buscar)
    Si encontrado Entonces
        Escribir "El n�mero ", numero_buscar, " S� se encuentra en el vector"
    Sino
        Escribir "El n�mero ", numero_buscar, " NO se encuentra en el vector"
    FinSi
    Escribir ""
    
    // Ejercicio 9: Promedio de calificaciones
    Escribir "=== EJERCICIO 9: PROMEDIO DE CALIFICACIONES ==="
    Definir calificaciones, total_estudiantes Como Entero
    Definir promedio_grupo Como Real
    total_estudiantes <- 5
    Dimension calificaciones[total_estudiantes]
    Escribir "Ingrese las calificaciones de ", total_estudiantes, " estudiantes:"
    CargarVector(calificaciones, total_estudiantes)
    promedio_grupo <- PromedioVector(calificaciones, total_estudiantes)
    Escribir "El promedio general del grupo es: ", promedio_grupo
    Escribir ""
    
    // Ejercicio 10: Contar n�meros pares
    Escribir "=== EJERCICIO 10: CONTAR N�MEROS PARES ==="
    Definir vector10, cantidad_pares, total_numeros Como Entero
    total_numeros <- 10
    Dimension vector10[total_numeros]
    Escribir "Ingrese ", total_numeros, " n�meros:"
    CargarVector(vector10, total_numeros)
    cantidad_pares <- ContarPares(vector10, total_numeros)
    Escribir "Total de n�meros pares encontrados: ", cantidad_pares
    
FinAlgoritmo

// ========== FUNCIONES PARA LOS EJERCICIOS ==========

// Ejercicio 1: Funci�n Sumar
Funcion resultado <- Sumar(a, b)
    Definir resultado Como Entero
    resultado <- a + b
FinFuncion

// Ejercicio 2: Funci�n EsPar
Funcion es_par <- EsPar(numero)
    Definir es_par Como Logico
    es_par <- (numero MOD 2 = 0)
FinFuncion

// Ejercicio 3: Funci�n Promedio
Funcion prom <- Promedio(n1, n2, n3)
    Definir prom Como Real
    prom <- (n1 + n2 + n3) / 3
FinFuncion

// Ejercicio 4: Funci�n ValidarPassword
Funcion es_valida <- ValidarPassword(password)
    Definir es_valida Como Logico
    es_valida <- (Longitud(password) > 8)
FinFuncion

// Ejercicio 5: Funci�n MayorNumero
Funcion mayor <- MayorNumero(a, b, c)
    Definir mayor Como Entero
    mayor <- a
    Si b > mayor Entonces
        mayor <- b
    FinSi
    Si c > mayor Entonces
        mayor <- c
    FinSi
FinFuncion

// ========== FUNCIONES AUXILIARES PARA VECTORES ==========

// Funci�n para cargar un vector
SubProceso CargarVector(vector Por Referencia, n)
    Definir i Como Entero
    Para i <- 0 Hasta n-1 Hacer
        Escribir "Elemento ", i+1, ": "
        Leer vector[i]
    FinPara
FinSubProceso

// Funci�n para mostrar un vector
SubProceso MostrarVector(vector, n)
    Definir i Como Entero
    Para i <- 0 Hasta n-1 Hacer
        Escribir "Posici�n ", i, ": ", vector[i]
    FinPara
FinSubProceso

// Ejercicio 7: Funci�n SumarVector
Funcion suma <- SumarVector(vector, n)
    Definir suma, i Como Entero
    suma <- 0
    Para i <- 0 Hasta n-1 Hacer
        suma <- suma + vector[i]
    FinPara
FinFuncion

// Ejercicio 8: Funci�n BuscarEnVector
Funcion encontrado <- BuscarEnVector(vector, n, numero)
    Definir encontrado Como Logico
    Definir i Como Entero
    encontrado <- Falso
    Para i <- 0 Hasta n-1 Hacer
        Si vector[i] = numero Entonces
            encontrado <- Verdadero
        FinSi
    FinPara
FinFuncion

// Ejercicio 9: Funci�n PromedioVector
Funcion promedio <- PromedioVector(vector, n)
    Definir promdio Como Real
    Definir suma, i Como Entero
    suma <- 0
    Para i <- 0 Hasta n-1 Hacer
        suma <- suma + vector[i]
    FinPara
    promdio <- suma / n
FinFuncion

// Ejercicio 10: Funci�n ContarPares
Funcion cantidad <- ContarPares(vector, n)
    Definir cantidad, i Como Entero
    cantidad <- 0
    Para i <- 0 Hasta n-1 Hacer
        Si vector[i] MOD 2 = 0 Entonces
            cantidad <- cantidad + 1
        FinSi
    FinPara
FinFuncion
