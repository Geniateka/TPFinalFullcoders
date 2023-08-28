Algoritmo turnoProducto
	
	Definir turnoLunesManana, turnoLunesTarde, turnoMartesManana, turnoMartesTarde como Cadena
	Definir producto1, producto2, producto3 como Cadena
	Definir opcionMenu como Entero
	
	turnoLunesManana <- ""
	turnoLunesTarde <- ""
	turnoMartesManana <- ""
	turnoMartesTarde <- ""
	producto1 <- ""
	producto2 <- ""
	producto3 <- ""
	Escribir "+--------------------------------------------------------------------+"
	Escribir "| Este pseudoc�digo muestra el funcionamiento del sistema de reserva |"
	escribir "| de turnos de una manera simple, as� como ingreso de productos      |"
	Escribir "| para dar una idea de las opciones del men� y datos de carga        |"
	Escribir "+--------------------------------------------------------------------+"
	
	Repetir
		Mostrar "1. Reservar turno"
		Mostrar "2. Cargar producto"
		Mostrar "0. Salir"
		Leer opcionMenu
		
		Si opcionMenu = 1 Entonces
			Mostrar "Seleccione el d�a para el turno (1: Lunes, 2: Martes):" // en versi�n final, todos los d�as de la semana
			Leer diaElegido
			
			Mostrar "Seleccione la parte del d�a (1: Ma�ana, 2: Tarde):" // en versi�n final, rango de horarios
			Leer parteDelDia
			
			Si diaElegido = 1 Y parteDelDia = 1 Entonces
				Si turnoLunesManana = "" Entonces
					turnoLunesManana <- "Reservado"
					Mostrar "Turno reservado exitosamente."
				Sino
					Mostrar "El turno seleccionado ya est� ocupado. Por favor, elija otro."
				Fin Si
			Fin Si
			
			Si diaElegido = 1 Y parteDelDia = 2 Entonces
				Si turnoLunesTarde = "" Entonces
					turnoLunesTarde <- "Reservado"
					Mostrar "Turno reservado exitosamente."
				Sino
					Mostrar "El turno seleccionado ya est� ocupado. Por favor, elija otro."
				Fin Si
			Fin Si
			Si diaElegido = 2 Y parteDelDia = 1 Entonces
				Si turnoMartesManana = "" Entonces
					turnoMartesManana <- "Reservado"
					Mostrar "Turno reservado exitosamente."
				Sino
					Mostrar "El turno seleccionado ya est� ocupado. Por favor, elija otro."
				Fin Si
			Fin Si						
			Si diaElegido = 2 Y parteDelDia = 2 Entonces
				Si turnoMartesTarde = "" Entonces
					turnoMartesTarde <- "Reservado"
					Mostrar "Turno reservado exitosamente."
				Sino
					Mostrar "El turno seleccionado ya est� ocupado. Por favor, elija otro."
				Fin Si
			Fin Si
		Fin si
			Si opcionMenu = 2 Entonces
				Mostrar "Ingrese el nombre del producto:" // en versi�n final, se guarda en alg�n repositorio
				Leer nombreProducto
				
				Si producto1 = "" Entonces
					producto1 <- nombreProducto
				Sino Si producto2 = "" Entonces
						producto2 <- nombreProducto
					Sino Si producto3 = "" Entonces
							producto3 <- nombreProducto
						Sino
							Mostrar "Ya se han ingresado tres productos. No se pueden agregar m�s." // en versi�n final, infinitos
						Fin Si
						
					Fin Si
				fin si
			fin si
			Hasta que opcionMenu = 0
			
FinAlgoritmo

