Algoritmo Reloj
	Definir hora, minutos, segundoss Como Entero; 
	Escribir "Digite la hora actual: ";
	leer hora;
	Escribir "Digite los minutos: ";
	leer minutos;
	Escribir "Digite los segundos: ";
	leer segundoss;
	Mientras hora <= 23 Hacer
		Mientras minutos <= 59 Hacer
			Mientras segundoss <= 59 Hacer
				Limpiar Pantalla;
				Si hora > 9 Entonces
					Escribir hora Sin Saltar;
				SiNo
					Escribir ":0", hora Sin Saltar;
				Fin Si
				Si minutos > 9 Entonces
					Escribir ":", minutos Sin Saltar;
				SiNo
					Escribir ":0", minutos Sin Saltar;
				Fin Si
				Si segundoss > 9 Entonces
					Escribir ":", segundoss Sin Saltar;
				SiNo
					Escribir ":0", segundoss Sin Saltar;
				Fin Si
				segundoss = segundoss+1;
				Esperar 1 Segundos;
			Fin Mientras
			segundoss = 0;
			minutos = minutos +1;
		Fin Mientras
		minutos = 0;
		hora = hora +1;
		Si  hora == 24 Entonces
			hora = 0;
		Fin Si
	Fin Mientras
	
FinAlgoritmo
