Algoritmo GestorContraseñasSeguras
		Definir usuarios, contraseñas Como Cadena
		Definir cantidadMaxima Como Entero
		Definir i, n Como Entero
		cantidadMaxima <- 100  // Máximo de usuarios permitidos
		Dimension usuarios[cantidadMaxima]
		Dimension contraseñas[cantidadMaxima]
		n <- 0  // Contador de usuarios registrados
		
		Repetir
			Escribir "=== GESTOR DE CONTRASEÑAS SEGURAS ==="
			Escribir "1. Registrar usuario"
			Escribir "2. Mostrar usuarios y alertas"
			Escribir "3. Salir"
			Escribir "Seleccione una opción:"
			Leer opcion
			
			Segun opcion Hacer
				1:
					Si n < cantidadMaxima Entonces
						RegistrarUsuario(usuarios, contraseñas, n)
					Sino
						Escribir "No se pueden registrar más usuarios. Límite alcanzado."
					FinSi
				2:
					MostrarAlertas(usuarios, contraseñas, n)
				3:
					Escribir "Saliendo del programa..."
				De Otro Modo:
					Escribir "Opción no válida. Intente de nuevo."
			FinSegun
		Hasta Que opcion = 3
FinAlgoritmo

SubProceso RegistrarUsuario(usuarios Por Referencia, contraseñas Por Referencia, n Por Referencia)
    Definir usuario, contraseña Como Cadena
    Escribir "Ingrese el nombre de usuario:"
    Leer usuario
    Escribir "Ingrese la contraseña:"
    Leer contraseña
	
    Si VerificarContraseña(contraseña) Entonces
        usuarios[n] <- usuario
        contraseñas[n] <- contraseña
        n <- n + 1
        Escribir "Usuario registrado exitosamente."
    Sino
        Escribir "La contraseña es débil. No se pudo registrar al usuario."
    FinSi
FinSubProceso

Funcion esFuerte <- VerificarContraseña(contraseña)
    Definir esFuerte Como Logico
    Definir longitudMinima, tieneMayus, tieneMinus, tieneNumero, tieneEspecial Como Logico
    Definir i Como Entero
    Definir c Como Caracter
	
    longitudMinima <- Falso
    tieneMayus <- Falso
    tieneMinus <- Falso
    tieneNumero <- Falso
    tieneEspecial <- Falso
	
    Si Longitud(contraseña) >= 8 Entonces
        longitudMinima <- Verdadero
    FinSi
	
    Para i <- 0 Hasta Longitud(contraseña) - 1 Hacer
        c <- SubCadena(contraseña, i, i)
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

SubProceso MostrarAlertas(usuarios, contraseñas, n)
    Definir i Como Entero
    Si n = 0 Entonces
        Escribir "No hay usuarios registrados."
    Sino
        Escribir "=== USUARIOS Y ALERTAS ==="
        Para i <- 0 Hasta n - 1 Hacer
            Escribir "Usuario: ", usuarios[i]
            Si VerificarContraseña(contraseñas[i]) Entonces
                Escribir "Contraseña: Segura"
            Sino
                Escribir "Contraseña: Débil - ALERTA"
            FinSi
            Escribir "-----------------------------"
        FinPara
    FinSi
FinSubProceso
