Funcion nomMes <- mes2 (calculo)
	nuevoMes = calculo + 1;
	Segun nuevoMes Hacer
		1:
			nomMes = "Enero";
		2:
			nomMes = "Febrero";
		3:
			nomMes = "Marzo";
		4:
			nomMes = "Abril";
		5:
			nomMes = "Mayo";
		6:
			nomMes = "Junio";
		7:
			nomMes = "Julio";
		8:
			nomMes = "Agosto";
		9:
			nomMes = "Septiembre";
		10:
			nomMes = "Octubre";
		11:
			nomMes = "Noviembre";
		12:
			nomMes = "Diciembre";
	FinSegun
FinFuncion

Algoritmo Calendario
	Definir mes, dias, a�o Como Entero;
	definir bisiesto Como Logico;
	definir nomMes Como Caracter;
	
	Escribir "Digite el a�o que desea consultar";
	leer a�o;
	
	Si a�o % 4 = 0 Entonces
		Si a�o % 100 = 0 entonces
			Si a�o % 400 = 0 Entonces
				Escribir "Es un a�o bisiesto";
				bisiesto = Verdadero;
			SiNo
				Escribir "Es un a�o no bisiesto";
				bisiesto = Falso;
			Fin Si
		SiNo
			Escribir "Es un a�o bisiesto";
			bisiesto = Verdadero;
		Fin Si
	SiNo
		Escribir "Es un a�o no bisiesto";
		bisiesto = Falso;
	Fin Si
	
	Escribir "Ahora, d�me el numero del mes que deseas saber cuantos dias tiene";
	leer mes;
	Segun mes Hacer
		1:
			nomMes = "Enero";
		2:
			nomMes = "Febrero";
		3:
			nomMes = "Marzo";
		4:
			nomMes = "Abril";
		5:
			nomMes = "Mayo";
		6:
			nomMes = "Junio";
		7:
			nomMes = "Julio";
		8:
			nomMes = "Agosto";
		9:
			nomMes = "Septiembre";
		10:
			nomMes = "Octubre";
		11:
			nomMes = "Noviembre";
		12:
			nomMes = "Diciembre";
	FinSegun
	
	Si mes = 4 o mes = 6 o mes = 9 o mes = 11 Entonces
		dias = 30;
		Escribir nomMes, " tiene ", dias, " dias.";
		Escribir "El dia siguiente al ultimo dia del mes ingresado es el 1ro de ", mes2(mes);
	SiNo
		Si mes = 2 y bisiesto = falso Entonces
			dias = 28;
			Escribir nomMes, " tiene ", dias, " dias.";
			Escribir "El dia siguiente al ultimo dia del mes ingresado es el 1ro de ", mes2(mes);
		SiNo
			Si mes = 2 y bisiesto = Verdadero Entonces
				dias = 29;
				Escribir nomMes," tiene ", dias, " dias.";
				Escribir "El dia siguiente al ultimo dia del mes ingresado es el 1ro de ", mes2(mes);
			SiNo
				Si mes = 1  o mes = 3 o mes = 5 o mes = 7 o mes = 8  o mes = 10 Entonces
					dias = 31;
					Escribir nomMes, " tiene ", dias, " dias.";
					Escribir "El dia siguiente al ultimo dia del mes ingresado es el 1ro de ", mes2(mes);
				SiNo
					Escribir "Por favor, ingrese un mes existente con su n�mero correspondiente";
				Fin Si
			Fin Si
		Fin Si
	Fin Si
FinAlgoritmo


