	Algoritmo Ejercicios_Tipos_Datos
		
		Definir opcion Como Entero
		
		Repetir
			Escribir "=== EJERCICIOS CON TIPOS DE DATOS ==="
			Escribir "1. Mostrar el doble de un número entero"
			Escribir "2. Sumar dos números enteros"
			Escribir "3. Mostrar la mitad de un número real"
			Escribir "4. Promedio de dos números reales"
			Escribir "5. Verificar si es mayor de edad"
			Escribir "6. ¿Tiene internet en casa?"
			Escribir "7. Mostrar una letra"
			Escribir "8. Verificar si es la letra A"
			Escribir "9. Saludo personalizado"
			Escribir "10. Contar caracteres de una palabra"
			Escribir "0. Salir"
			Escribir "Seleccione una opción:"
			Leer opcion
			
			Segun opcion Hacer
				1:
					Escribir "=== EJERCICIO 1 ==="
					Definir num1, doble Como Entero
					Escribir "Ingrese un número entero:"
					Leer num1
					doble <- num1 * 2
					Escribir "El doble es: ", doble
					
				2:
					Escribir "=== EJERCICIO 2 ==="
					Definir num2a, num2b, suma Como Entero
					Escribir "Ingrese el primer número entero:"
					Leer num2a
					Escribir "Ingrese el segundo número entero:"
					Leer num2b
					suma <- num2a + num2b
					Escribir "La suma es: ", suma
					
				3:
					Escribir "=== EJERCICIO 3 ==="
					Definir num3, mitad Como Real
					Escribir "Ingrese un número real:"
					Leer num3
					mitad <- num3 / 2
					Escribir "La mitad es: ", mitad
					
				4:
					Escribir "=== EJERCICIO 4 ==="
					Definir num4a, num4b, promedio Como Real
					Escribir "Ingrese el primer número real:"
					Leer num4a
					Escribir "Ingrese el segundo número real:"
					Leer num4b
					promedio <- (num4a + num4b) / 2
					Escribir "El promedio es: ", promedio
					
				5:
					Escribir "=== EJERCICIO 5 ==="
					Definir edad Como Entero
					Definir mayorEdad Como Logico
					Escribir "Ingrese su edad:"
					Leer edad
					mayorEdad <- edad >= 18
					Escribir "¿Es mayor de edad? ", mayorEdad
					
				6:
					Escribir "=== EJERCICIO 6 ==="
					Definir respuesta Como Entero
					Definir tieneInternet Como Logico
					Escribir "¿Tiene internet en casa? (1 = Si, 0 = No)"
					Leer respuesta
					tieneInternet <- respuesta == 1
					Escribir "Tiene internet: ", tieneInternet
					
				7:
					Escribir "=== EJERCICIO 7 ==="
					Definir letra Como Caracter
					Escribir "Escriba una letra:"
					Leer letra
					Escribir "La letra ingresada es: ", letra
					
				8:
					Escribir "=== EJERCICIO 8 ==="
					Definir caracter Como Caracter
					Escribir "Ingrese un carácter:"
					Leer caracter
					Si caracter == 'A' Entonces
						Escribir "Correcto"
					Sino
						Escribir "Incorrecto"
					FinSi
					
				9:
					Escribir "=== EJERCICIO 9 ==="
					Definir nombre Como Cadena
					Escribir "Escriba su nombre:"
					Leer nombre
					Escribir "¡Hola ", nombre, "! Bienvenido/a"
					
				10:
					Escribir "=== EJERCICIO 10 ==="
					Definir palabra Como Cadena
					Escribir "Escriba una palabra:"
					Leer palabra
					Escribir "La palabra tiene ", Longitud(palabra), " caracteres"
					
				0:
					Escribir "Saliendo del programa..."
				De Otro Modo:
					Escribir "Opción no válida"
			FinSegun
			
			Si opcion <> 0 Entonces
				Escribir ""
				Escribir "Presione una tecla para continuar..."
				Esperar Tecla
				Limpiar Pantalla
			FinSi
			
		Hasta Que opcion == 0

FinAlgoritmo
