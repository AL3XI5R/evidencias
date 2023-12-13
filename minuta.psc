Proceso restaurante
	
	definir comedor, nomdia,mensaje, plato,golpe, nomgolpe, comida, tiempo, mensaje2, mensaje3 como caracter;
	definir option,i, fila,col, dia, contador, numeroDia, calorias, precio, calorias1, calorias2, calorias3, precio1, precio2, precio3, caloriatotal, preciototal como entero;
	definir espacio Como Logico;
	Dimension Comedor(28,6);
	Dimension caloriatotal(100,100);
	Dimension preciototal(100,100);

	Comedor(1,1)="Pera";             //Desayuno            ENTRADAS
	Comedor(1,2)="Mandarina";
	Comedor(1,3)="Manzana";
	Comedor(1,4)="Papaya";
	Comedor(1,5)="Fresas";

	Comedor(2,1)="Arepuelas";          //DESAYUNO        PLATO FUERTE
	Comedor(2,2)="Huevos Revueltos";
	Comedor(2,3)="Arepas";
	Comedor(2,4)="Huevos Pericos";
	Comedor(2,5)="Salchichas";

	Comedor(3,1)="Chocolate";          //DESAYUNO         BEBIDAS
	Comedor(3,2)="Cafe con leche";
	Comedor(3,3)="Chocolate";
	Comedor(3,4)="Chocolate";
	Comedor(3,5)="Chocolate";
	
	

	Comedor(4,1)="Poteca";              //ALMUERZO          ENTRADA
	Comedor(4,2)="Sopa de Fideos";
	Comedor(4,3)="Crema de tomate";
	Comedor(4,4)="Sopa de Ajiaco";
	Comedor(4,5)="Mute";
	
	Comedor(5,1)="Bandeja paisa";         //ALMUERZO          PLATO FUERTE
	Comedor(5,2)="Mondongo";
	Comedor(5,3)="churrasco";
	Comedor(5,4)="Lenteja";
	Comedor(5,5)="Mojarra";
	
	Comedor(6,1)="Jugo de Mora";				//ALMUERZO          BEBIDA
	Comedor(6,2)="Jugo de durazno";
	Comedor(6,3)="CocaCola";
	Comedor(6,4)="Jugo de Maracuya";
	Comedor(6,5)="Limonada";
	
	
	
	Comedor(7,1)="Arroz con leche";				//CENA              ENTRADA
	Comedor(7,2)="Papa Frita";
	Comedor(7,3)="Consome";
	Comedor(7,4)="Crema de Cebolla";
	Comedor(7,5)="Papa Frita";
	
	Comedor(8,1)="Pastel";					//CENA            PLATO FUERTE
	Comedor(8,2)="Carne";
	Comedor(8,3)="Pasta";
	Comedor(8,4)="Pollo";
	Comedor(8,5)="Atun";
	
	Comedor(9,1)="Jugo";					//CENA        BEBIDA		
	Comedor(9,2)="Cafe";
	Comedor(9,3)="Aguapanela";
	Comedor(9,4)="Colada";
	Comedor(9,5)="Milo";
	
	//----------------------------------------------------------/////CALORIAS/////-----------------------------------------------------------------------------//
	Comedor(10,1)="25";             //Desayuno            ENTRADAS
	Comedor(10,2)="22";
	Comedor(10,3)="25";
	Comedor(10,4)="20";
	Comedor(10,5)="33";
	
	Comedor(11,1)="50";          //DESAYUNO        PLATO FUERTE
	Comedor(11,2)="120";
	Comedor(11,3)="75";
	Comedor(11,4)="175";
	Comedor(11,5)="90";
	
	Comedor(12,1)="100";          //DESAYUNO         BEBIDAS
	Comedor(12,2)="120";
	Comedor(12,3)="100";
	Comedor(12,4)="100";
	Comedor(12,5)="100";
	
	
	
	Comedor(13,1) = "115";              //ALMUERZO          ENTRADA
	Comedor(13,2)="175";
	Comedor(13,3)="222";
	Comedor(13,4)="154";
	Comedor(13,5)="210";
	
	Comedor(14,1)="545";         //ALMUERZO          PLATO FUERTE
	Comedor(14,2)="340";
	Comedor(14,3)="450";
	Comedor(14,4)="432";
	Comedor(14,5)="324";
	
	Comedor(15,1)="50";				//ALMUERZO          BEBIDA
	Comedor(15,2)="45";
	Comedor(15,3)="100";
	Comedor(15,4)="123";
	Comedor(15,5)="90";
	
	
	
	Comedor(16,1)="143";				//CENA              ENTRADA
	Comedor(16,2)="230";
	Comedor(16,3)="340";
	Comedor(16,4)="165";
	Comedor(16,5)="230";
	
	Comedor(17,1)="450";					//CENA            PLATO FUERTE
	Comedor(17,2)="500";
	Comedor(17,3)="367";
	Comedor(17,4)="400";
	Comedor(17,5)="425";
	
	Comedor(18,1)="65";					//CENA        BEBIDA		
	Comedor(18,2)="40";
	Comedor(18,3)="80";
	Comedor(18,4)="97";
	Comedor(18,5)="67";
	
	//------------------------------------------------------////COSTOS////-------------------------------------------------------------------------------------------//
	Comedor(19,1)="500";             //Desayuno            ENTRADAS
	Comedor(19,2)="250";
	Comedor(19,3)="700";
	Comedor(19,4)="4000";
	Comedor(19,5)="1500";
	
	Comedor(20,1)="5000";          //DESAYUNO        PLATO FUERTE
	Comedor(20,2)="4500";
	Comedor(20,3)="3200";
	Comedor(20,4)="3000";
	Comedor(20,5)="3800";
	
	Comedor(21,1)="3400";          //DESAYUNO         BEBIDAS
	Comedor(21,2)="3800";
	Comedor(21,3)="3400";
	Comedor(21,4)="3400";
	Comedor(21,5)="3400";
	
	
	
	Comedor(22,1)="4000";              //ALMUERZO          ENTRADA
	Comedor(22,2)="3500";
	Comedor(22,3)="6000";
	Comedor(22,4)="3800";
	Comedor(22,5)="3000";
	
	Comedor(23,1)="12000";         //ALMUERZO          PLATO FUERTE
	Comedor(23,2)="10500";
	Comedor(23,3)="11000";
	Comedor(23,4)="13400";
	Comedor(23,5)="12000";
	
	Comedor(24,1)="3200";				//ALMUERZO          BEBIDA
	Comedor(24,2)="3300";
	Comedor(24,3)="4500";
	Comedor(24,4)="3500";
	Comedor(24,5)="1750";
	
	
	
	Comedor(25,1)="3200";				//CENA              ENTRADA
	Comedor(25,2)="2800";
	Comedor(25,3)="3500";
	Comedor(25,4)="4200";
	Comedor(25,5)="3200";
	
	Comedor(26,1)="13550";					//CENA            PLATO FUERTE
	Comedor(26,2)="14600";
	Comedor(26,3)="15200";
	Comedor(26,4)="12800";
	Comedor(26,5)="11750";
	
	Comedor(27,1)="3200";					//CENA        BEBIDA		
	Comedor(27,2)="3500";
	Comedor(27,3)="3100";
	Comedor(27,4)="3000";
	Comedor(27,5)="2800";
	
	
	
	escribir "1. ¿Que almorzaremos esta semana?    ";
	escribir "2. ¿Cuando no darán 	el plato X?   ";
	escribir "3. ¿Que comeremos el dia X?";
	Escribir "4. ¿Cual es el almuerzo completo del día X?  ";
	escribir "5. ¿Que cenare el dia X?    ";
	escribir "6. ¿Cual es el menú general?";
	leer option;
	Segun option Hacer
		1:
			Para i = 1 Hasta 5 Hacer
				Segun i Hacer
					1:
						nomdia = "Lunes";
					2:
						nomdia = "Martes";
					3:
						nomdia = "Miercoles";
					4:
						nomdia = "Jueves";
					5:
						nomdia = "Viernes";
				Fin Segun
				Escribir " El ", nomdia, " almorzaremos:";
				Escribir "   Entrada: ",	Comedor(4,i), " con unas calorias de: ",comedor(13,i)," precio: $",comedor(22,i);
				Escribir "   Plato: ",	Comedor(5,i), " con unas calorias de: ",comedor(14,i)," precio: $",comedor(23,i);
				Escribir "   Bebida: ",Comedor(6,i), " con unas calorias de: ",comedor(15,i)," precio: $",comedor(24,i);
				calorias1 = ConvertirANumero(comedor(13,i));
				calorias2 = ConvertirANumero(comedor(14,i));
				calorias3 = ConvertirANumero(comedor(15,i));
				calorias = calorias1 + calorias2 + calorias3;
				precio1 = ConvertirANumero(comedor(22,i));
				precio2 = ConvertirANumero(comedor(23,i));
				precio3 = ConvertirANumero(comedor(24,i));
				precio = precio1 + precio2 + precio3;				
				Escribir "   Total calorias: ",calorias, "     total precio:$",precio;
				escribir "**************";
			Fin para 
		2:
			Escribir "Digite el plato que desea consultar ";
			leer plato;
			mensaje = "No hay de eso esta semana";
			mensaje2 = "No se encontró valor correcto de calorias";
			mensaje3 = "No se encontró valor correcto de precio";
			Para fila= 1 Hasta 9 Hacer
				Para col = 1 Hasta 5 Hacer
					Si comedor(fila,col) = plato Entonces
						Segun col Hacer
							1:
								nomdia = "Lunes";
							2:
								nomdia = "Martes";
							3:
								nomdia = "Miercoles";
							4:
								nomdia = "Jueves";
							5:
								nomdia = "Viernes";
						Fin Segun
						Si fila = 1 o fila = 4 o fila = 7 Entonces
							comida = "entrada";
						FinSi
						Si fila = 2 o fila = 5 o fila = 8 Entonces
							comida = "plato fuerte";
						FinSi
						Si fila = 3 o fila = 6 o fila = 9 Entonces
							comida = "bebida";
						FinSi
						calorias1 = ConvertirANumero(comedor(fila + 9, col));
						precio1 = ConvertirANumero(comedor(fila + 18, col));
						mensaje = "Se dará "+plato+" el "+ nomdia+" como "+comida;
						mensaje2 = plato + " contiene "+ ConvertirATexto(calorias1) +" calorias";
						mensaje3 = "Y tiene un precio de: $" + ConvertirATexto(precio1);
					Fin Si
				Fin Para
			Fin Para
			Escribir "";
			Escribir Mensaje;
			Escribir "";
			Escribir mensaje2;
			Escribir mensaje3;
		3:
			contador = 0;
			Escribir "Digite el número del día de la semana que desea consultar ";
			leer dia;
			Segun dia Hacer
				1:
					nomdia = "Lunes";
				2:
					nomdia = "Martes";
				3:
					nomdia = "Miercoles";
				4:
					nomdia = "Jueves";
				5:
					nomdia = "Viernes";
			Fin Segun
			escribir "El dia ",nomdia," comeremos: ";
			Para fila = 1 Hasta 9  Hacer
				Si fila = 1 o fila = 4 o fila = 7 Entonces
					comida = "Entrada: ";
				FinSi
				Si fila = 2 o fila = 5 o fila = 8 Entonces
					comida = "Plato fuerte: ";
				FinSi
				Si fila = 3 o fila = 6 o fila = 9 Entonces
					comida = "Bebida: ";
				FinSi
				
				si fila = 1 entonces
					tiempo = "---DESAYUNO---";
					Escribir tiempo;
				FinSi
				si fila = 4 entonces
					tiempo = "---ALMUERZO---";
					Escribir tiempo;
				FinSi
				si fila = 7 entonces
					tiempo = "---CENA---";
					Escribir tiempo;
				FinSi
				calorias1 = ConvertirANumero(comedor(fila + 9, dia));
				precio1 = ConvertirANumero(comedor(fila + 18, dia));
				Escribir comida + comedor(fila,dia) + "  (Calorias: ",calorias1, ") (Precio: ",precio1,")";
				
				
			Fin Para
		4:
			Escribir "¿Para qué día desea consultar el almuerzo? ";
			leer dia;
			Segun dia Hacer
				1:
					nomdia = "Lunes";
				2:
					nomdia = "Martes";
				3:
					nomdia = "Miercoles";
				4:
					nomdia = "Jueves";
				5:
					nomdia = "Viernes";
			Fin Segun
			Escribir "Para el almuerzo del ",nomdia," habrá:";
			Escribir "";
			Para fila = 4 Hasta 6 Hacer
				Si fila = 4 Entonces
					comida = "Como entrada: ";
				FinSi
				Si fila = 5 Entonces
					comida = "Para el plato fuerte: ";
				FinSi
				Si fila = 6 Entonces
					comida = "De bebida: ";
				FinSi
				calorias1 = ConvertirANumero(comedor(fila + 9, dia));
				precio1 = ConvertirANumero(comedor(fila + 18, dia));
				Escribir comida + comedor(fila,dia) + "  (Calorias: ",calorias1, ") (Precio: ",precio1,")";
			fin para
		5:
			Escribir "¿Para qué día desea consultar la cena? ";
			leer dia;
			Segun dia Hacer
				1:
					nomdia = "Lunes";
				2:
					nomdia = "Martes";
				3:
					nomdia = "Miercoles";
				4:
					nomdia = "Jueves";
				5:
					nomdia = "Viernes";
			Fin Segun
			Escribir "Para la cena del ",nomdia," habrá:";
			Escribir "";
			Para fila = 7 Hasta 9 Hacer
				Si fila = 7 Entonces
					comida = "Como entrada: ";
				FinSi
				Si fila = 8 Entonces
					comida = "Para el plato fuerte: ";
				FinSi
				Si fila = 9 Entonces
					comida = "De bebida: ";
				FinSi
				calorias1 = ConvertirANumero(comedor(fila + 9, dia));
				precio1 = ConvertirANumero(comedor(fila + 18, dia));
				Escribir comida + comedor(fila,dia) + "  (Calorias: ",calorias1, ") (Precio: ",precio1,")";
			fin para
		6:
			Escribir "     Nuestro menú completo ahora mismo es el siguiente: ";
			Escribir "";
			para fila = 1 Hasta 9 Hacer
				espacio = Falso;
				si fila = 1 entonces
					tiempo = "---------------DESAYUNO---------------";
					Escribir tiempo;
				FinSi
				si fila = 4 entonces
					tiempo = "---------------ALMUERZO---------------";
					Escribir "";
					Escribir tiempo;
				FinSi
				si fila = 7 entonces
					tiempo = "---------------CENA---------------";
					Escribir "";
					Escribir tiempo;
				FinSi
				
				Si fila = 1 o fila = 4 o fila = 7 Entonces
					comida = "Entrada: ";
				FinSi
				Si fila = 2 o fila = 5 o fila = 8 Entonces
					comida = "Plato fuerte: ";
				FinSi
				Si fila = 3 o fila = 6 o fila = 9 Entonces
					comida = "Bebida: ";
				FinSi
				
				Para col = 1 Hasta 5 Hacer
					Segun col Hacer
						1:
							nomdia = "Lunes";
						2:
							nomdia = "Martes";
						3:
							nomdia = "Miercoles";
						4:
							nomdia = "Jueves";
						5:
							nomdia = "Viernes";
							espacio = Verdadero;
					Fin Segun
					
					calorias1 = ConvertirANumero(comedor(fila + 9, col));
					precio1 = ConvertirANumero(comedor(fila + 18, col));
					
					Escribir "     ",comida, comedor(fila,col),"  (",nomdia,")" + "  ///  (Calorias: ",calorias1, ") (Precio: ",precio1,")";
					si espacio = Verdadero Entonces
						Escribir " ";
					FinSi
				fin para
			FinPara
	Fin Segun
FinProceso