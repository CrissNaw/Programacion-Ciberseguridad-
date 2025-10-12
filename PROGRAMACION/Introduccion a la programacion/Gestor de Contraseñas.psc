Algoritmo GestorContrase�asSeguras
		Definir usuarios, contrase�as Como Cadena
		Definir cantidadMaxima Como Entero
		Definir i, n Como Entero
		cantidadMaxima <- 100  // M�ximo de usuarios permitidos
		Dimension usuarios[cantidadMaxima]
		Dimension contrase�as[cantidadMaxima]
		n <- 0  // Contador de usuarios registrados
		
		Repetir
			Escribir "=== GESTOR DE CONTRASE�AS SEGURAS ==="
			Escribir "1. Registrar usuario"
			Escribir "2. Mostrar usuarios y alertas"
			Escribir "3. Salir"
			Escribir "Seleccione una opci�n:"
			Leer opcion
			
			Segun opcion Hacer
				1:
					Si n < cantidadMaxima Entonces
						RegistrarUsuario(usuarios, contrase�as, n)
					Sino
						Escribir "No se pueden registrar m�s usuarios. L�mite alcanzado."
					FinSi
				2:
					MostrarAlertas(usuarios, contrase�as, n)
				3:
					Escribir "Saliendo del programa..."
				De Otro Modo:
					Escribir "Opci�n no v�lida. Intente de nuevo."
			FinSegun
		Hasta Que opcion = 3
FinAlgoritmo

SubProceso RegistrarUsuario(usuarios Por Referencia, contrase�as Por Referencia, n Por Referencia)
    Definir usuario, contrase�a Como Cadena
    Escribir "Ingrese el nombre de usuario:"
    Leer usuario
    Escribir "Ingrese la contrase�a:"
    Leer contrase�a
	
    Si VerificarContrase�a(contrase�a) Entonces
        usuarios[n] <- usuario
        contrase�as[n] <- contrase�a
        n <- n + 1
        Escribir "Usuario registrado exitosamente."
    Sino
        Escribir "La contrase�a es d�bil. No se pudo registrar al usuario."
    FinSi
FinSubProceso

Funcion esFuerte <- VerificarContrase�a(contrase�a)
    Definir esFuerte Como Logico
    Definir longitudMinima, tieneMayus, tieneMinus, tieneNumero, tieneEspecial Como Logico
    Definir i Como Entero
    Definir c Como Caracter
	
    longitudMinima <- Falso
    tieneMayus <- Falso
    tieneMinus <- Falso
    tieneNumero <- Falso
    tieneEspecial <- Falso
	
    Si Longitud(contrase�a) >= 8 Entonces
        longitudMinima <- Verdadero
    FinSi
	
    Para i <- 0 Hasta Longitud(contrase�a) - 1 Hacer
        c <- SubCadena(contrase�a, i, i)
        Si c >= 'A' Y c <= 'Z' Entonces
            tieneMayus <- Verdadero
        FinSi
        Si c >= 'a' Y c <= 'z' Entonces
            tieneMinus <- Verdadero
        FinSi
        Si c >= '0' Y c <= '9' Entonces
            tieneNumero <- Verdadero
        FinSi
        Si NO (c >= 'A' Y c <= 'Z') Y NO (c >= 'a' Y c <= 'z') Y NO (c >= '0' Y c <= '9') Entonces
            tieneEspecial <- Verdadero
        FinSi
    FinPara
	
    esFuerte <- longitudMinima Y tieneMayus Y tieneMinus Y tieneNumero Y tieneEspecial
FinFuncion

SubProceso MostrarAlertas(usuarios, contrase�as, n)
    Definir i Como Entero
    Si n = 0 Entonces
        Escribir "No hay usuarios registrados."
    Sino
        Escribir "=== USUARIOS Y ALERTAS ==="
        Para i <- 0 Hasta n - 1 Hacer
            Escribir "Usuario: ", usuarios[i]
            Si VerificarContrase�a(contrase�as[i]) Entonces
                Escribir "Contrase�a: Segura"
            Sino
                Escribir "Contrase�a: D�bil - ALERTA"
            FinSi
            Escribir "-----------------------------"
        FinPara
    FinSi
FinSubProceso
