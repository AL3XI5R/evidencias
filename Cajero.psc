Proceso Cajero
	Definir pers1, pers2, pers3, pass1, pass2, pass3, pass, op, confir, persona, again Como Caracter;
	definir id1, id2, id3, cuenta1, cuenta2, cuenta3, id, retiro, trans Como Entero;
	Escribir "-----IDENTIFICACIONES-----";
	Escribir "--- Marcos = 1011 ---";
	Escribir "--- Juliana = 1012---";
	Escribir "--- Diego = 1013---";
	Escribir " ";
	Escribir "-----CONTRASE�AS-----";
	Escribir "--- Marcos = Marc2---";
	Escribir "--- Juliana = Julii---";
	Escribir "--- Diego = dieg0 ---";
	Escribir " ";
	Escribir " ";
	
	pers1 = "Marcos Ortis";
	pers2 = "Juliana Alvarez";
	pers3 = "Diego Castillo";
	id1 = 1011;
	id2 = 1012;
	id3 = 1013;
	cuenta1 = 3500000;
	cuenta2 = 550000;
	cuenta3 = 1250000;
	pass1 = "Marc2";
	pass2 = "Julii";
	pass3 = "dieg0";
	
	Escribir "Buenas tardes usuario de la oficina A34";
	Escribir "Por favor digite su documento de identidad";
	Leer id;
	
	Mientras id <> id1 y id <> id2 y id <> id3 Hacer // ID INVALIDA
		Escribir "Por favor ingrese un documento de la oficina A34";
		Leer id;
	FinMientras
	
	Si id = id1 Entonces //--------USUARIO MARCOS---------
		Escribir " ";
		Escribir "Buen d�a, Marcos Ortis, digite su contrase�a, por favor";
		Leer pass;
		
		Mientras pass <> pass1 Hacer  //Contrase�a incorrecta
			Escribir "Contrase�a incorrecta, digitela nuevamente";
			Leer pass;
		FinMientras
		again = "s";
		Mientras again = "S" o again = "s" Hacer // OTRA OPERACION CON LA CUENTA
			Escribir " ";   //Contrase�a correcta
			Escribir "Bienvenido de nuevo Marcos, qu� operaci�n desea realizar con su cuenta?";
			Escribir "Recuerde que cuenta con: $", cuenta1, " en su cuenta bancaria";
			Escribir " ";
			Escribir "R-etirar dinero; T-ransferir dinero";
			Escribir "(R,T)";
			Leer op;
			Si op = "R" o op = "r" Entonces //-------Retiro------------
				Escribir "Cuanto dinero desea retirar?";
				Leer retiro;
				
				Mientras retiro > cuenta1 Hacer //Demasiado dinero
					Escribir "No cuenta con suficiente dinero para dicha operaci�n, seleccione una cantidad menor";
					Leer retiro;
				FinMientras
				
				Escribir " ";
				Escribir "Va a retirar: $", retiro;
				Escribir "Quedar�a con un total de: $", (cuenta1-retiro), " en su cuenta bancaria";
				Escribir " ";
				Escribir "Desea continuar? S/N";  //CONFIRMACI�N DE CONTINUAR
				Leer confir;
				Si confir = "s" o confir = "S" Entonces  //Continuar con el retiro
					cuenta1 = cuenta1-retiro;
					Escribir " ";
					Escribir "La operaci�n se realiz� satisfactoriamente";
					Escribir "Ha retirado: $",retiro, " de su cuenta bancaria";
					Escribir " ";
					Escribir "Ahora en su cuenta tiene un total de: $", cuenta1;
					Escribir " ";
					Escribir "Desea realizar otra operaci�n con su cuenta?"; // VOLVER A HACER OTRA OPERACION
					Escribir "(S/N)";
					Leer again;
				SiNo
					Escribir "Le regresaremos a la p�gina inicial, Marcos";
					again = "s";
				FinSi
			SiNo
				Si op = "t" o op = "T"  Entonces //-----Tranferencia-----
					Escribir "Por favor ingrese el usuario al que desea hacer la transferencia";
					Escribir "D-iego Castillo; J-uliana Alvarez";
					Escribir "(D/J)";
					Leer persona;
					Si persona = "D" o persona = "d" Entonces // TRANSFERENCIA AL USUARIO DIEGO
						Escribir "Recuerde que cuenta con: $", cuenta1;
						
						confir = "n";
						Mientras confir = "n" o confir = "N" Hacer
							Escribir "Cuanto dinero desea transferir a Diego Castillo?";
							leer trans;
							
							Mientras trans> cuenta1 Hacer //Demasiado dinero
								Escribir "No cuenta con suficiente dinero para dicha operaci�n, seleccione una cantidad menor";
								Leer trans;
							FinMientras
							
							Escribir " ";
							Escribir "Est� a punto de realizar una transferencia a Diego Castillo de: $", trans;
							Escribir "En su cuenta quedaria con: $", (cuenta1 - trans), " despues de realizar la transferencia";
							Escribir "Desea continuar o cambiar el valor?";
							Escribir "(Cualquier letra)/N";
							Leer confir;
						FinMientras
						
						Escribir " ";
						Escribir "Ha realizado una transferencia de: $", trans;
						cuenta1 = cuenta1-trans;
						cuenta3 = cuenta3 + trans; // SUMAR TRANSFERENCIA A LA OTRA CUENTA
						Escribir "Su cuenta ha quedado con un total de: $", cuenta1;
						Escribir " ";
						Escribir "Desea realizar otra operaci�n con su cuenta?";
						Escribir "(S/N)";
						Leer again;
					SiNo
						Si persona = "J" o persona = "j"Entonces // Trasnferencia a Juliana
							Escribir "Recuerde que cuenta con: $", cuenta1;
							
							confir = "n";
							Mientras confir = "n" o confir = "N" Hacer
								Escribir "Cuanto dinero desea transferir a Juliana Alvarez?";
								leer trans;
								
								Mientras trans> cuenta1 Hacer //Demasiado dinero
									Escribir "No cuenta con suficiente dinero para dicha operaci�n, seleccione una cantidad menor";
									Leer trans;
								FinMientras
								
								Escribir " ";
								Escribir "Est� a punto de realizar una transferencia a Juliana Alvarez de: $", trans;
								Escribir "En su cuenta quedaria con: $", (cuenta1 - trans), " despues de realizar la transferencia";
								Escribir "Desea continuar o cambiar el valor?";
								Escribir "(Cualquier letra)/N";
								Leer confir;
							FinMientras
							
							Escribir " ";
							Escribir "Ha realizado una transferencia de: $", trans;
							cuenta1 = cuenta1-trans;
							cuenta2 = cuenta2+trans;
							Escribir "Su cuenta ha quedado con un total de: $", cuenta1;
							Escribir " ";
							Escribir "Desea realizar otra operaci�n con su cuenta?";
							Escribir "(S/N)";
							Leer again;
						SiNo
							Escribir "Por favor escoja un valor v�lido (D, J)";
						FinSi
					FinSi
					
				SiNo
					Escribir "Por favor, ingrese una operaci�n v�lida";
			FinSi
		FinSi
		FinMientras
	SiNo
		Si id = id2 Entonces//----------USUARIO JULIANA-----------
			Escribir " ";
			Escribir "Buen d�a, Juliana Alvarez, digite su contrase�a, por favor";
			Leer pass;
			
			Mientras pass <> pass2 Hacer  //Contrase�a incorrecta
				Escribir "Contrase�a incorrecta, digitela nuevamente";
				Leer pass;
			FinMientras
			again = "s";
			Mientras again = "S" o again = "s" Hacer // OTRA OPERACION CON LA CUENTA
				Escribir " ";   //Contrase�a correcta
				Escribir "Bienvenida de nuevo Juliana, qu� operaci�n desea realizar con su cuenta?";
				Escribir "Recuerde que cuenta con: $", cuenta2, " en su cuenta bancaria";
				Escribir " ";
				Escribir "R-etirar dinero; T-ransferir dinero";
				Escribir "(R,T)";
				Leer op;
				Si op = "R" o op = "r" Entonces //-------Retiro------------
					Escribir "Cuanto dinero desea retirar?";
					Leer retiro;
					
					Mientras retiro > cuenta2 Hacer //Demasiado dinero
						Escribir "No cuenta con suficiente dinero para dicha operaci�n, seleccione una cantidad menor";
						Leer retiro;
					FinMientras
					
					Escribir " ";
					Escribir "Va a retirar: $", retiro;
					Escribir "Quedar�a con un total de: $", (cuenta2-retiro), " en su cuenta bancaria";
					Escribir " ";
					Escribir "Desea continuar? S/N";  //CONFIRMACI�N DE CONTINUAR
					Leer confir;
					Si confir = "s" o confir = "S" Entonces  //Continuar con el retiro
						cuenta2 = cuenta2-retiro;
						Escribir " ";
						Escribir "La operaci�n se realiz� satisfactoriamente";
						Escribir "Ha retirado: $",retiro, " de su cuenta bancaria";
						Escribir " ";
						Escribir "Ahora en su cuenta tiene un total de: $", cuenta2;
						Escribir " ";
						Escribir "Desea realizar otra operaci�n con su cuenta?"; // VOLVER A HACER OTRA OPERACION
						Escribir "(S/N)";
						Leer again;
					SiNo
						Escribir "Le regresaremos a la p�gina inicial, Juliana";
						again = "s";
					FinSi
				SiNo
					Si op = "t" o op = "T"  Entonces //-----Tranferencia-----
						Escribir "Por favor ingrese el usuario al que desea hacer la transferencia";
						Escribir "D-iego Castillo; M-arcos Ortis";
						Escribir "(D/M)";
						Leer persona;
						Si persona = "D" o persona = "d" Entonces // TRANSFERENCIA AL USUARIO DIEGO
							Escribir "Recuerde que cuenta con: $", cuenta2;
							
							confir = "n";
							Mientras confir = "n" o confir = "N" Hacer
								Escribir "Cuanto dinero desea transferir a Diego Castillo?";
								leer trans;
								
								Mientras trans> cuenta2 Hacer //Demasiado dinero
									Escribir "No cuenta con suficiente dinero para dicha operaci�n, seleccione una cantidad menor";
									Leer trans;
								FinMientras
								
								Escribir " ";
								Escribir "Est� a punto de realizar una transferencia a Diego Castillo de: $", trans;
								Escribir "En su cuenta quedaria con: $", (cuenta2 - trans), " despues de realizar la transferencia";
								Escribir "Desea continuar o cambiar el valor?";
								Escribir "(Cualquier letra)/N";
								Leer confir;
							FinMientras
							
							Escribir " ";
							Escribir "Ha realizado una transferencia de: $", trans;
							cuenta2 = cuenta2-trans;
							cuenta3 = cuenta3 + trans; // SUMAR TRANSFERENCIA A LA OTRA CUENTA
							Escribir "Su cuenta ha quedado con un total de: $", cuenta2;
							Escribir " ";
							Escribir "Desea realizar otra operaci�n con su cuenta?";
							Escribir "(S/N)";
							Leer again;
						SiNo
							Si persona = "m" o persona = "M"Entonces // Trasnferencia a Marcos
								Escribir "Recuerde que cuenta con: $", cuenta2;
								
								confir = "n";
								Mientras confir = "n" o confir = "N" Hacer
									Escribir "Cuanto dinero desea transferir a Marcos Ortis?";
									leer trans;
									
									Mientras trans> cuenta1 Hacer //Demasiado dinero
										Escribir "No cuenta con suficiente dinero para dicha operaci�n, seleccione una cantidad menor";
										Leer trans;
									FinMientras
									
									Escribir " ";
									Escribir "Est� a punto de realizar una transferencia a Marcos Ortis de: $", trans;
									Escribir "En su cuenta quedaria con: $", (cuenta2 - trans), " despues de realizar la transferencia";
									Escribir "Desea continuar o cambiar el valor?";
									Escribir "(Cualquier letra)/N";
									Leer confir;
								FinMientras
								
								Escribir " ";
								Escribir "Ha realizado una transferencia de: $", trans;
								cuenta2 = cuenta2-trans;
								cuenta1 = cuenta1+trans;
								Escribir "Su cuenta ha quedado con un total de: $", cuenta2;
								Escribir " ";
								Escribir "Desea realizar otra operaci�n con su cuenta?";
								Escribir "(S/N)";
								Leer again;
							SiNo
								Escribir "Por favor escoja un valor v�lido (D, M)";
							FinSi
						FinSi
					SiNo
						Escribir "Por favor, ingrese una operaci�n v�lida";
					FinSi
		FinSi
		FinMientras
	SiNo
		
		Si id = id3 Entonces //-----------USUARIO DIEGO CASTILLO--------------
			Escribir " ";
			Escribir "Buen d�a, Diego Castillo, digite su contrase�a, por favor";
			Leer pass;
			
			Mientras pass <> pass3 Hacer  //Contrase�a incorrecta
				Escribir "Contrase�a incorrecta, digitela nuevamente";
				Leer pass;
			FinMientras
			again = "s";
			Mientras again = "S" o again = "s" Hacer // OTRA OPERACION CON LA CUENTA
				Escribir " ";   //Contrase�a correcta
				Escribir "Bienvenido de nuevo Diego, qu� operaci�n desea realizar con su cuenta?";
				Escribir "Recuerde que cuenta con: $", cuenta3, " en su cuenta bancaria";
				Escribir " ";
				Escribir "R-etirar dinero; T-ransferir dinero";
				Escribir "(R,T)";
				Leer op;
				Si op = "R" o op = "r" Entonces //-------Retiro------------
					Escribir "Cuanto dinero desea retirar?";
					Leer retiro;
					
					Mientras retiro > cuenta1 Hacer //Demasiado dinero
						Escribir "No cuenta con suficiente dinero para dicha operaci�n, seleccione una cantidad menor";
						Leer retiro;
					FinMientras
					
					Escribir " ";
					Escribir "Va a retirar: $", retiro;
					Escribir "Quedar�a con un total de: $", (cuenta3-retiro), " en su cuenta bancaria";
					Escribir " ";
					Escribir "Desea continuar? S/N";  //CONFIRMACI�N DE CONTINUAR
					Leer confir;
					Si confir = "s" o confir = "S" Entonces  //Continuar con el retiro
						cuenta1 = cuenta1-retiro;
						Escribir " ";
						Escribir "La operaci�n se realiz� satisfactoriamente";
						Escribir "Ha retirado: $",retiro, " de su cuenta bancaria";
						Escribir " ";
						Escribir "Ahora en su cuenta tiene un total de: $", cuenta3;
						Escribir " ";
						Escribir "Desea realizar otra operaci�n con su cuenta?"; // VOLVER A HACER OTRA OPERACION
						Escribir "(S/N)";
						Leer again;
					SiNo
						Escribir "Le regresaremos a la p�gina inicial, Diego";
						again = "s";
					FinSi
				SiNo
					Si op = "t" o op = "T"  Entonces //-----Tranferencia-----
						Escribir "Por favor ingrese el usuario al que desea hacer la transferencia";
						Escribir "M-arcos Ortis; J-uliana Alvarez";
						Escribir "(M/J)";
						Leer persona;
						Si persona = "M" o persona = "m" Entonces // TRANSFERENCIA AL USUARIO MARCOS
							Escribir "Recuerde que cuenta con: $", cuenta3;
							
							confir = "n";
							Mientras confir = "n" o confir = "N" Hacer
								Escribir "Cuanto dinero desea transferir a Marcos Ortis?";
								leer trans;
								
								Mientras trans> cuenta3 Hacer //Demasiado dinero
									Escribir "No cuenta con suficiente dinero para dicha operaci�n, seleccione una cantidad menor";
									Leer trans;
								FinMientras
								
								Escribir " ";
								Escribir "Est� a punto de realizar una transferencia a Marcos Ortis de: $", trans;
								Escribir "En su cuenta quedaria con: $", (cuenta3 - trans), " despues de realizar la transferencia";
								Escribir "Desea continuar o cambiar el valor?";
								Escribir "(Cualquier letra)/N";
								Leer confir;
							FinMientras
							
							Escribir " ";
							Escribir "Ha realizado una transferencia de: $", trans;
							cuenta3 = cuenta3-trans;
							cuenta1 = cuenta1 + trans; // SUMAR TRANSFERENCIA A LA OTRA CUENTA
							Escribir "Su cuenta ha quedado con un total de: $", cuenta3;
							Escribir " ";
							Escribir "Desea realizar otra operaci�n con su cuenta?";
							Escribir "(S/N)";
							Leer again;
						SiNo
							Si persona = "J" o persona = "j"Entonces // Trasnferencia a Juliana
								Escribir "Recuerde que cuenta con: $", cuenta3;
								
								confir = "n";
								Mientras confir = "n" o confir = "N" Hacer
									Escribir "Cuanto dinero desea transferir a Juliana Alvarez?";
									leer trans;
									
									Mientras trans> cuenta3 Hacer //Demasiado dinero
										Escribir "No cuenta con suficiente dinero para dicha operaci�n, seleccione una cantidad menor";
										Leer trans;
									FinMientras
									
									Escribir " ";
									Escribir "Est� a punto de realizar una transferencia a Juliana Alvarez de: $", trans;
									Escribir "En su cuenta quedaria con: $", (cuenta3 - trans), " despues de realizar la transferencia";
									Escribir "Desea continuar o cambiar el valor?";
									Escribir "(Cualquier letra)/N";
									Leer confir;
								FinMientras
								
								Escribir " ";
								Escribir "Ha realizado una transferencia de: $", trans;
								cuenta3 = cuenta3-trans;
								cuenta2 = cuenta2+trans;
								Escribir "Su cuenta ha quedado con un total de: $", cuenta3;
								Escribir " ";
								Escribir "Desea realizar otra operaci�n con su cuenta?";
								Escribir "(S/N)";
								Leer again;
							SiNo
								Escribir "Por favor escoja un valor v�lido (D, J)";
							FinSi
						FinSi
						
					SiNo
						Escribir "Por favor, ingrese una operaci�n v�lida";
					FinSi
		FinSi
		FinMientras
			SiNo
				Escribir "Por favor, digite un documento de identidad perteneciente a la oficina A34";
			FinSi
		FinSi
	FinSi
	
	
FinProceso
