Proceso Calculadora
    Definir num1, num2, resultado Como Real;
	definir opcion Como Entero;
    Definir otraVez Como Caracter;
	definir continuar Como Logico;
	
	continuar = Verdadero;
	Mientras continuar = Verdadero Hacer
        Escribir "POSI	BLES OPERACIONES";
        Escribir "1) SUMA";
        Escribir "2) RESTA";
        Escribir "3) MULTIPLICACI�N";
        Escribir "4) DIVISI�N";
        Escribir "Seleccione operaci�n a realizar: ";
        Leer opcion;
		
        Si opcion < 1 O Opcion > 4 Entonces
            Escribir "Por favor, ingrese una opci�n correcta (1-4)";
			Escribir "";
			Escribir "";
        Sino
                Escribir "Digite el primer n�mero: ";
                Leer num1;
                Escribir "Digite el segundo n�mero: ";
                Leer num2;
            Segun opcion Hacer
                Caso 1:
                    resultado = num1 + num2;
                    Escribir num1, " + ", num2, " = ", resultado;
                Caso 2:
                    resultado = num1 - num2;
                    Escribir num1, " - ", num2, " = ", resultado;
                Caso 3:
                    resultado = num1 * num2;
                    Escribir num1, " * ", num2, " = ", resultado;
                Caso 4:
                    Si num2 <> 0 Entonces
                        resultado = num1 / num2;
                        Escribir num1, " / ", num2, " = ", resultado;
                    Sino
                        Escribir "Error: Divisi�n por cero";
                    FinSi
            FinSegun
			
            Escribir "Desea hacer otro c�lculo? (si, no)";
            Leer otraVez;
			otraVez = Minusculas(otraVez);
            Si otraVez = "no" Entonces
				continuar = Falso;
			SiNo
				continuar = Verdadero;
			FinSi
		FinSi
	FinMientras
FinProceso

