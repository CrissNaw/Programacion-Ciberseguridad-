Algoritmo Ejercicios_Condicionales_Bucles 
		
		// Variables globales
		Definir edad, numero, nota, monto, i, suma, contador, factorial, numeroSecreto Como Entero
		Definir contrasena, resultado Como Caracter
		Definir num, sumaNumeros, sumaNotas Como Real
		Definir promedio Como Real
		Definir continuar, esCorrecto Como Logico
		Dimension notas[5]
		
		// === EJERCICIOS CON CONDICIONALES ===
		
		// Ejercicio 1: Verificar edad
		Escribir "=== EJERCICIO 1: VERIFICAR EDAD ==="
		Escribir "Ingrese su edad:"
		Leer edad
		Si edad >= 18 Entonces
			Escribir "Eres mayor de edad"
		Sino
			Escribir "Eres menor de edad"
		FinSi
		Escribir ""
		
		// Ejercicio 2: N�mero positivo, negativo o cero
		Escribir "=== EJERCICIO 2: N�MERO POSITIVO/NEGATIVO ==="
		Escribir "Ingrese un n�mero:"
		Leer numero
		Si numero > 0 Entonces
			Escribir "El n�mero es positivo"
		Sino
			Si numero < 0 Entonces
				Escribir "El n�mero es negativo"
			Sino
				Escribir "El n�mero es cero"
			FinSi
		FinSi
		Escribir ""
		
		// Ejercicio 3: Par o impar
		Escribir "=== EJERCICIO 3: PAR O IMPAR ==="
		Escribir "Ingrese un n�mero:"
		Leer numero
		Si numero MOD 2 = 0 Entonces
			Escribir "El n�mero es par"
		Sino
			Escribir "El n�mero es impar"
		FinSi
		Escribir ""
		
		// Ejercicio 4: Calificaci�n
		Escribir "=== EJERCICIO 4: CALIFICACI�N ==="
		Escribir "Ingrese una nota (0-100):"
		Leer nota
		Si nota >= 90 Entonces
			Escribir "Aprobado con A"
		Sino
			Si nota >= 70 Entonces
				Escribir "Aprobado"
			Sino
				Escribir "Reprobado"
			FinSi
		FinSi
		Escribir ""
		
		// Ejercicio 5: Descuento en compra
		Escribir "=== EJERCICIO 5: DESCUENTO COMPRA ==="
		Escribir "Ingrese el monto de la compra:"
		Leer monto
		Si monto > 500 Entonces
			monto <- monto * 0.9  // 10% de descuento
			Escribir "Monto con descuento (10%): ", monto
		Sino
			Escribir "Paga precio normal: ", monto
		FinSi
		Escribir ""
		
		// === EJERCICIOS CON BUCLE MIENTRAS ===
		
		// Ejercicio 1: N�meros del 1 al 10 con mientras
		Escribir "=== EJERCICIO 1: N�MEROS 1 AL 10 (MIENTRAS) ==="
		i <- 1
		Mientras i <= 10 Hacer
			Escribir i
			i <- i + 1
		FinMientras
		Escribir ""
		
		// Ejercicio 2: Sumar n�meros hasta 0
		Escribir "=== EJERCICIO 2: SUMAR HASTA 0 ==="
		suma <- 0
		Escribir "Ingrese n�meros (0 para terminar):"
		Leer numero
		Mientras numero <> 0 Hacer
			suma <- suma + numero
			Escribir "Ingrese el siguiente n�mero (0 para terminar):"
			Leer numero
		FinMientras
		Escribir "La suma total es: ", suma
		Escribir ""
		
		// Ejercicio 3: Adivinar n�mero secreto
		Escribir "=== EJERCICIO 3: ADIVINAR N�MERO SECRETO ==="
		numeroSecreto <- 7
		Escribir "Adivine el n�mero secreto (1-10):"
		Leer numero
		Mientras numero <> numeroSecreto Hacer
			Si numero < numeroSecreto Entonces
				Escribir "El n�mero es mayor"
			Sino
				Escribir "El n�mero es menor"
			FinSi
			Escribir "Intente de nuevo:"
			Leer numero
		FinMientras
		Escribir "�Correcto! El n�mero secreto era ", numeroSecreto
		Escribir ""
		
		// Ejercicio 4: Validar contrase�a
		Escribir "=== EJERCICIO 4: VALIDAR CONTRASE�A ==="
		Escribir "Ingrese la contrase�a:"
		Leer contrasena
		Mientras contrasena <> "1234" Hacer
			Escribir "Contrase�a incorrecta. Intente de nuevo:"
			Leer contrasena
		FinMientras
		Escribir "�Contrase�a correcta!"
		Escribir ""
		
		// Ejercicio 5: Contador regresivo
		Escribir "=== EJERCICIO 5: CONTADOR REGRESIVO ==="
		Escribir "Ingrese un n�mero para el contador regresivo:"
		Leer numero
		Mientras numero >= 1 Hacer
			Escribir numero
			numero <- numero - 1
		FinMientras
		Escribir "�Lanzamiento!"
		Escribir ""
		
		// === EJERCICIOS CON BUCLES REPETITIVOS ===
		
		// Ejercicio 1: Tabla de multiplicar
		Escribir "=== EJERCICIO 1: TABLA DE MULTIPLICAR ==="
		Escribir "Ingrese un n�mero para su tabla de multiplicar:"
		Leer numero
		Para i <- 1 Hasta 10 Hacer
			Escribir numero, " x ", i, " = ", numero * i
		FinPara
		Escribir ""
		
		// Ejercicio 2: Suma de 10 n�meros
		Escribir "=== EJERCICIO 2: SUMA DE 10 N�MEROS ==="
		suma <- 0
		Para i <- 1 Hasta 10 Hacer
			Escribir "Ingrese el n�mero ", i, ":"
			Leer numero
			suma <- suma + numero
		FinPara
		Escribir "La suma total de los 10 n�meros es: ", suma
		Escribir ""
		
		// Ejercicio 3: Factorial
		Escribir "=== EJERCICIO 3: FACTORIAL ==="
		Escribir "Ingrese un n�mero para calcular su factorial:"
		Leer numero
		factorial <- 1
		Para i <- 1 Hasta numero Hacer
			factorial <- factorial * i
		FinPara
		Escribir "El factorial de ", numero, " es: ", factorial
		Escribir ""
		
		// Ejercicio 4: N�meros pares del 1 al 50
		Escribir "=== EJERCICIO 4: N�MEROS PARES 1-50 ==="
		Para i <- 2 Hasta 50 Con Paso 2 Hacer
			Escribir i
		FinPara
		Escribir ""
		
		// Ejercicio 5: Promedio de 5 notas
		Escribir "=== EJERCICIO 5: PROMEDIO DE 5 NOTAS ==="
		sumaNotas <- 0
		Para i <- 0 Hasta 4 Hacer
			Escribir "Ingrese la nota ", i+1, " (0-100):"
			Leer notas[i]
			sumaNotas <- sumaNotas + notas[i]
		FinPara
		promedio <- sumaNotas / 5
		Escribir "Suma total de notas: ", sumaNotas
		Escribir "Promedio final: ", promedio

FinAlgoritmo 