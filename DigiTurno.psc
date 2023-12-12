Algoritmo sin_titulo
	Definir turno, cardio, pedia, gineco, odonto Como Entero;
	definir nom, serv, turnox Como Caracter;
	turno= 0;
	cardio = 50;
	pedia = 80;
	gineco =25;
	odonto = 30;
	
	Repetir
		Escribir "Buen día. por favor digite su primer nombre";
		leer nom;
		
		escribir nom, ", qué servicio desea?";
		escribir "Cita de C-ardiologia, P-ediatria, G-inecologia u O-dontologia (C/P/G/O) ?";
		Leer serv;
		Si serv= "C" o serv = "c" Entonces	
			cardio = cardio+1;
			turno = cardio;
			escribir "Su turno de cardiología es el ", cardio, " por favor espere el llamado en la sala";
			escribir "-------------------------------------------------------------------------";
		SiNo
			Si serv = "P" o serv = "p"  Entonces
				pedia = pedia +1;
				turno = pedia;
				escribir "Su turno de pediatría es el ", pedia, " por favor espere el llamado en la sala";
				escribir "-------------------------------------------------------------------------";
			SiNo
				Si serv = "G" o serv = "g"  Entonces
					gineco = gineco+1;
					turno = gineco;
					escribir "Su turno de ginecología es el ", gineco, " por favor espere el llamado en la sala";
					escribir "-------------------------------------------------------------------------";
				SiNo
					Si Serv = "O" o serv = "o" Entonces
						odonto = odonto+1;
						turno = odonto;
						escribir "Su turno de odontología es el ", odonto, " por favor espere el llamado en la sala";
						escribir "-------------------------------------------------------------------------";
					SiNo
						Escribir "Ese servicio no existe, por favor digite C,P,G u O";
						Escribir "Empecemos de nuevo.";
						Escribir "";
					Fin Si
				Fin Si
			Fin Si
		Fin Si
		
	Hasta Que Falso


FinAlgoritmo
