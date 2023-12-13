Proceso parImpar
	definir prueba como entero;
	definir continuar como logico;
	definir otraVez Como Caracter;
	continuar = Verdadero;
	Mientras continuar = Verdadero Hacer
		Escribir "Digite el número a evaluar: ";
		leer prueba;
		Si prueba % 2 = 0 Entonces
			Escribir ConvertirATexto(prueba) + " es un número par";
		SiNo
			escribir ConvertirATexto(prueba) + " es un número impar";
		FinSi
		Escribir "";
		Escribir "Desea consultar otro número? (Si/No) ";
		leer otraVez;
		otraVez = Minusculas(otraVez);
		Si otraVez == "no" Entonces
			continuar = Falso;
		SiNo
			continuar = Verdadero;
		FinSi
	FinMientras
	
FinProceso
