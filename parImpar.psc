Proceso parImpar
	definir prueba como entero;
	definir continuar como logico;
	definir otraVez Como Caracter;
	continuar = Verdadero;
	Mientras continuar = Verdadero Hacer
		Escribir "Digite el n�mero a evaluar: ";
		leer prueba;
		Si prueba % 2 = 0 Entonces
			Escribir ConvertirATexto(prueba) + " es un n�mero par";
		SiNo
			escribir ConvertirATexto(prueba) + " es un n�mero impar";
		FinSi
		Escribir "";
		Escribir "Desea consultar otro n�mero? (Si/No) ";
		leer otraVez;
		otraVez = Minusculas(otraVez);
		Si otraVez == "no" Entonces
			continuar = Falso;
		SiNo
			continuar = Verdadero;
		FinSi
	FinMientras
	
FinProceso
