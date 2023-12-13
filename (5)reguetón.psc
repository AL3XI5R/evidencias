Funcion random <- rand
	random = aleatorio(1,4);
FinFuncion

Proceso reguetón
	definir palabras, latino Como Caracter;
	definir versos, random Como Entero;
	dimension palabras(6,4);
	palabras(1,1) = "Mami";
	palabras(1,2) = "Bebé";
	palabras(1,3) = "Princesa";
	palabras(1,4) = "Preciosa";
	
	palabras(2,1) = " yo quiero";
	palabras(2,2) = " yo puedo";
	palabras(2,3) = " yo vengo a";
	palabras(2,4) = " voy a";
	
	palabras(3,1) = " encenderte";
	palabras(3,2) = " amarte";
	palabras(3,3) = " ligar";
	palabras(3,4) = " jugar";
	
	palabras(4,1) = " suave";
	palabras(4,2) = " lento";
	palabras(4,3) = " rápido";
	palabras(4,4) = " fuerte";
	
	palabras(5,1) = " hasta que salga el sol";
	palabras(5,2) = " toda la noche";
	palabras(5,3) = " hasta el amanecer";
	palabras(5,4) = " todo el día";
	
	palabras(6,1) = " sin anestesia";
	palabras(6,2) = " sin compromiso";
	palabras(6,3) = " face to face";
	palabras(6,4) = " sin miedo";
	
	
	Escribir 'Desea usar la versión latina (Reemplazar la L por R)? (Si/no): ';
	leer latino;
	latino = Minusculas(latino);
	si latino = "si" Entonces
		palabras(1,3) = "Plincesa";
		palabras(2,1) = " yo quielo";
		palabras(3,1) = " encendelte";
		palabras(3,2) = " amalte";
		palabras(6,2) = " sin complomiso";
	FinSi
	
	Escribir "";
	Escribir "";
	Escribir "Cuantos versos desea generar? ";
	leer versos;
	Para x = 1 Hasta versos Hacer
		Escribir "";
		Escribir "VERSO " + ConvertirATexto(x);
		Escribir palabras(1,rand) + palabras(2,rand)+ palabras(3,rand)+ palabras(4,rand)+ palabras(5,rand)+ palabras(6,rand);
	FinPara
FinProceso
