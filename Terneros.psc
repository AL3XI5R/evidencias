Proceso sin_titulo
	definir terneros, raza1, raza2, raza3, raza4, raza5,razas, x, z, leche, edades, leche1, leche2, lechetotal,j, lecheterneros  Como Entero;
	definir nomraza, nomedad, nomterneros Como caracter;
	definir porcterneros Como Real;
	dimension razas(5);
	Dimension edades(5);
	Dimension nomraza(5);
	Dimension nomedad(5);
	dimension leche1(5);
	Dimension leche2(5);
	Dimension Lechetotal(6);
	
	//-----------------CANTIDAD DE TERNEROS----------------
	Escribir "        (__)";
	Escribir "        (oo)";
	Escribir "  /------\/";
	Escribir " / |     ||";
	Escribir "*  ||----||";
	Escribir "   ^^    ^^";
	Escribir "";
	Escribir "";
	Escribir "Digite la cantidad de terneros a alimentar (1/5): ";
	leer terneros;
	Si terneros > 5 o terneros < 1 Entonces
		Escribir "Seleccione una cantidad, válida, minimo uno máximo cinco";
		Escribir "";
		Escribir "Reinicie el programa.";
	Fin Si
	
	segun terneros hacer
		1:
			nomterneros = "un ternero";
		2:
			nomterneros = " los dos terneros";
		3:
			nomterneros = "los tres terneros";
		4:
			nomterneros = "los cuatro terneros";
		5: 
			nomterneros = "los cinco terneros";
	FinSegun
	//----------------RAZA DE LOS TERNEROS--------------------
	para x = 1 Hasta terneros Hacer
		Escribir "Digite la raza del ternero #"+ConvertirATexto(x)+" :";
		Escribir "1) BeefMaster"; //1
		Escribir "2) Charolais";  //2
		Escribir "3) Halfonso";   //3
		Leer razas(x);
		segun razas(x) Hacer
			1:
				nomraza(x) = "BeefMaster";
				leche1(x) = 1;
			2:
				nomraza(x) = "Charolais";
				leche1(x) = 2;
			3:
				nomraza(x) = "Halfonso";
				leche1(x) = 3;
		FinSegun
		si razas(x) > 4 o razas(x) < 1 Entonces
			Escribir "Seleccione una cantidad, válida, (1/2/3)";
			Escribir "";
			Escribir "Reinicie el programa.";
		FinSi
	FinPara
	
	
	//------------------EDAD DE LOS TERNEROS------------------
	para z = 1 Hasta terneros Hacer
		Escribir "Digite la edad del ternero #"+ConvertirATexto(z)+" :";
		Escribir "1) Entre 0 y 3 meses";   //4
		Escribir "2) Entre 4 y 6 meses";   //6
		Escribir "3) Entre 7 y 9 meses";   //8
		Leer edades(z);
		segun edades(z) Hacer
			1:
				nomedad(z) = " 0 a 3 meses";
				leche2(z) = 4;
			2:
				nomedad(z) = " 4 a 6 meses";
				leche2(z) = 6;
			3:
				nomedad(z) = " 7 a 9 meses";
				leche2(z) = 8;
		FinSegun
		si edades(z) > 4 o edades(z) < 1 Entonces
			Escribir "Seleccione una cantidad, válida, (1/2/3)";
			Escribir "";
			Escribir "Reinicie el programa.";
		FinSi
	FinPara
	
	//----------------MOSTRAR TERNEROS-------------------------
	Limpiar Pantalla;
	Escribir "                              (__)";
	Escribir "                              (oo)";
	Escribir "                        /------\/";
	Escribir "                       / |     ||";
	Escribir "                      *  ||----||";
	Escribir "                         ^^    ^^";
	Escribir "";
	Escribir "";
	Escribir"--------------------REPORTE DE TERNEROS----------------------";
	para x = 1 Hasta terneros Hacer		
		
		
		Escribir "Ternero #"+convertiratexto(x)+": Raza: "+nomraza(x)+"   Edad:"+nomedad(x);
		lechetotal(x) = leche1(x) + leche2(x);      //                                                        <------------------------LECHE NECESARIA POR CADA TERNERO-------------
		Escribir "Leche requerida por el ternero: "+ConvertirATexto(lechetotal(x))+" litros";
		Escribir "";
		lecheterneros = lechetotal(1) + lechetotal(2) + lechetotal(3) + lechetotal(4) + lechetotal(5);
	FinPara
	Escribir "";
	escribir "La leche total requerida por "+nomterneros+" es de: "+ convertiratexto(lecheterneros)+" litros";
	
	//-----------------LECHE ORDEÑADA EN UN DÍA---------------
	definir lechedia como real;
	Escribir "";
	Escribir "--------------------LECHE ORDEÑADA----------------------";
	Escribir "La leche total ordeñada en el día de hoy fue de: ";
	leche = Aleatorio(200,350);
	lechedia = leche;
	Escribir "                  "+convertiratexto(leche)+" litros totales";
	
	//-----------------PORCENTAJE DE LECHE NECESARIA ----------------------------
	porcterneros = (lecheterneros * 100 ) / leche;
	Escribir"";
	Escribir "--------------------CANTIDADES DE LECHE----------------------";
	Escribir "Después del consumo de los terneros ("+convertiratexto(lecheterneros)+" litros)";
	leche = leche - lecheterneros;
	Escribir "Quedan: " + convertiratexto(leche)+ " litros de leche";
	Escribir "";
	definir confirmacion Como Caracter;
	Definir venta Como Entero;
	confirmacion = "n";
	mientras confirmacion = "n" Hacer
		Escribir "Cuantos litros desea destinar para venta el día de hoy?";
		Leer venta;
		Mientras venta > leche Hacer
			Escribir " ";
			Escribir "No puede seleccionar más de "+ConvertirATexto(leche)+" litros";
			Escribir "Por favor, digite una cantidad menor de litros de leche";
			leer venta;
		FinMientras
		Escribir "Quedaría con un total de "+ConvertirATexto(leche - venta)+" litros de leche para su consumo, desea continuar?";
		Escribir "S/N";
		Leer confirmacion;
		confirmacion = Minusculas(confirmacion);
		mientras confirmacion <> "s" y confirmacion <> "n" Hacer
			Escribir "Digite una opción válida (S/N)";
			Leer confirmacion;
		FinMientras
	FinMientras
	si confirmacion = "s" Entonces
		leche = leche - venta;
	FinSi
	
	Definir precio Como Real;
	confirmacion = "s";
	mientras confirmacion = "s" Hacer
		Limpiar Pantalla;
		Escribir "                              (__)";
		Escribir "                              (oo)";
		Escribir "                        /------\/";
		Escribir "                       / |     ||";
		Escribir "                      *  ||----||";
		Escribir "                         ^^    ^^";
		Escribir "";
		Escribir "";
		Escribir"--------------------VENTA DE LECHE----------------------";
		escribir "";
		Escribir "Cúal es el precio de cada litro de leche al venderlo? ";
		Escribir "Precio sugerido: $4,500";
		leer precio;
		si precio < 10000 Entonces
			confirmacion = "n";
		FinSi
		mientras precio > 10000 Hacer
			Escribir "Tal vez desee cambiar el precio de cada LITRO de leche por uno menor";  
			Escribir "";
			Escribir "Desea cambiarlo?";
			Escribir "S/N";
			Leer confirmacion;
			si confirmacion = "s" Entonces
				precio = 1;
			FinSi
			mientras confirmacion <> "s" y confirmacion <> "n" Hacer
				Escribir "Digite una opción válida (S/N)";
				Leer confirmacion;
			FinMientras
		FinMientras
	FinMientras
	Definir ganancia Como real;
	ganancia = venta * precio;
	Escribir "Muy bien, vendiendo "+ConvertirATexto(venta)+" litros, cada uno a $"+ConvertirATexto(precio)+" ganaría $"+ConvertirATexto(ganancia);
	Escribir "";
	Escribir "Desea ver el resumen de las operaciones del día de hoy? ";
	Escribir "S/N";
	leer confirmacion;
	confirmacion = Minusculas(confirmacion);
	mientras confirmacion <> "s" y confirmacion <> "n" Hacer
		Escribir "Digite una opción válida (S/N)";
		Leer confirmacion;
	FinMientras
	si confirmacion = "s" Entonces
		Escribir "";
		Escribir"--------------------RESÚMEN----------------------";
		Escribir "";
		Escribir "LECHE CONSUMIDA POR TERNEROS: "+ConvertirATexto(lecheterneros)+" LITROS";
		Escribir "";
		Escribir "LECHE ORDEÑADA: "+ConvertirATexto(lechedia)+" LITROS";
		Escribir "";
		Escribir "LECHE VENDIDA: "+ConvertirATexto(venta)+" LITROS"+" ("+ConvertirATexto(precio)+" C/LITRO)";
		Escribir "GANANCIA DEL DÍA: $"+ConvertirATexto(ganancia);
		Escribir "";
		Escribir "LECHE PARA CONSUMO DE LA FINCA: "+ConvertirATexto(leche)+" LITROS";
		Escribir "";
		Escribir "Muchas gracias por usar nuestros servicios";
		Escribir "";
		Escribir "";
		Escribir "";
		Escribir "               ??????????             ????????? ";
		Escribir "             ????????????????     ??????????????? ";
		Escribir "           ???????????????????   ?????????????????? ";
		Escribir "         ?????????????????????? ????????????????????? ";
		Escribir "       ??????????????????????????????????????????????? ";
		Escribir "      ????????????????????????????????????????????????? ";
		Escribir "     ??????????????????????????????????????????????????? ";
		Escribir "     ??????????????????????????????????????????????????? ";
		Escribir "      ????????????????????????????????????????????????? ";
		Escribir "       ??????????????????????????????????????????????? ";
		Escribir "         ??????????????????????????????????????????? ";
		Escribir "            ????????????????????????????????????? ";
		Escribir "                ????????????????????????????? ";
		Escribir "                   ?????????????????????? ";
		Escribir "                     ????????????????? ";
		Escribir "                        ??????????? ";
		Escribir "                          ?????? ";
		Escribir "                           ???? ";

	FinSi
	
FinProceso
