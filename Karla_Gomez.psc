Proceso Prueba_Karla_Gomez
	
	Definir opcion como Entero;
	Escribir "Elija una de las opciones dentro del Menu";
	Escribir "Menu:";
	Escribir "1.-Secuencial:";
	Escribir "2.-Condicional Si entonces:";
	Escribir "3.-Condicional Si entonces anidado:";
	Escribir "4.-Condicional Segun";
	Escribir "5.-Repetitiva Mientras";
	Escribir "6.-Repetitiva Repetir";
	Escribir "7.-Repetitiva Para";
	Escribir "8.-Arreglo Simple";
	Escribir "9.-Arreglo Bidimensional";
	Escribir "10.-Salir";
	
	Repetir
		
		Leer opcion;
		
		Segun opcion Hacer
			1:
				Definir num1,num2,num3 como Real;
				Escribir "Ingrese 3 numeros:";
				Leer num1,num2,num3;
				
				Escribir "El promedio es ",funcion1(num1,num2,num3);
			2:
				Definir genero como entero;
				Definir nombre como Caracter;
				Escribir "Ingrese su nombre y 1 si es mujer";
				Escribir "O 2 si es hombre";
				Leer nombre,genero;
				
				Escribir nombre," Dirijase al Baño de ",funcion2(genero);
			3:
				Definir op Como Entero;
				Definir genero como Caracter;
				Escribir "Ingrese 1 si es mujer o 2 si es hombre";
				Leer genero;
				Escribir "Que desea usar 1.-BAÑO, 2.-DUCHA";
				Leer op;
				
				Escribir funcion3(genero,op);
			4:
				Definir num Como Entero;
				Escribir "Ingrese un numero del 1 al 10";
				Leer num;
				
				funcion4(num);
			
			5:
				Definir num como Entero;
				Escribir "Ingrese un numero";
				Leer num;
				promedio<-funcion5(num);
			
			6:
				Definir nombre como Caracter;
				Escribir "Adivina el nombre, pista: Comienza con J.";
				Leer nombre;
				funcion6(nombre);
			
			7:
				
			
			8:
				Definir tamano como Entero;
				Escribir "Ingrese la cantidad de Talentos Digitales, maximo 5";
				Leer tamano;
				funcion8(tamano);
			
			9:
				Definir cantidad como Entero;
				Escribir "Cuantos participantes hay";
				Leer participante;
				funcion9(participantes);
		FinSegun
	
	Hasta Que opcion=10;
FinProceso

//FUNCION 1 SECUENCIAL
Funcion promedio<-funcion1(n1,n2,n3)
	Definir promedio como Real;
	Definir suma como Real;
	
	suma<-n1+n2+n3;
	promedio<-suma/3;

FinFuncion

//FUNCION 2 CONDICIONAL
Funcion respuesta<-funcion2(sexo)
	Definir respuesta como Caracter;
	
	Si sexo=1 entonces
		respuesta<-"mujer en el segundo piso";
	Sino 
		respuesta<-"hombre en el primer piso";
	FinSi
	
	
FinFuncion

//FUNCION 3 CONDICIONAL ANIDADO
Funcion respuesta<-funcion3(sexo,opcion)
	Definir respuesta como Caracter;
	
	Si sexo=2 entonces
		Si opcion=1 entonces 
			respuesta<-"El cobro es de $250";
		Sino 
			respuesta<-"El cobro es de $2.500";
		FinSi
	SiNo
		respuesta<-"mujeres pasan gratis";
		
	FinSi
	
FinFuncion
	
//FUNCION 4 SEGUN
Funcion funcion4(n)
	Segun n Hacer
		1:
			Escribir "uno";
		2:
			Escribir "dos";
		3: 
			Escribir "tres";
		4: 
			Escribir "cuatro";
		5:
			Escribir "cinco";
		6:
			Escribir "seis";
		7: 
			Escribir "siete";
		8:
			Escribir "ocho";
		9:
			Escribir "nueve";
		10:
			Escribir "diez";
	FinSegun
FinFuncion

//FUNCION 5 MIENTRAS
Funcion promedio<-funcion5(n)
	Definir sumatoria,contador,promedio como Entero;
	sumatoria<-0;
	contador<-0;
	Mientras num!=0 hacer
		sumatoria<-sumatoria+num;
		contador<-contador+1;
	FinMientras
	
	promedio<-sumatoria/contador;
	
FinFuncion

//FUNCION 6 REPETIR
Funcion funcion6(nombre)
	Definir respuesta como Logico;
	Definir contador como Entero;
	contador<-0;
	Repetir 
		Si nombre="Juan" o nombre="juan" Entonces
			Escribir "Ganaste, muy bien";
			Escribir "Intentos fallidos ",contador;
			respuesta<-verdadero;
		SiNo
			Escribir "Upsis equivocado. Intenta otra vez";
			respuesta<-falso;
		FinSi
		contador<-contador+1;
		Leer nombre;
	Hasta Que respuesta=verdadero;
	
	
FinFuncion

//FUNCION 7 PARA
Funcion funcion7()
	Definir nombre como Caracter;
	Definir i como Entero;
	Definir lista como Caracter;
	
	Dimension lista[10];
	
	Para i<-0 hasta 9 Hacer
		Escribir "Ingrese el nombre ", i+1;
		Leer nombre;
		lista[i]<-nombre;
	FinPara
	
	Definir nombreIgual como Caracter;
	Para i<-0 hasta 9 hacer 
		
		
	FinPara
FinFuncion

//FUNCION 8 ARREGLO
Funcion funcion8(largo)
	Definir talentos,listaTalentos como Caracter;
	Definir i como Entero;
	
	Dimension listaTalentos[largo];
	Para i<-0 hasta largo-1 hacer
		Escribir "Ingrese el nombre del talento";
		Leer talentos;
		listaTalentos[i]<-talentos;
	FinPara
	
	Para i<-0 hasta largo-1 Hacer
		Escribir listaTalentos[i];
	FinPara
	
FinFuncion

//FUNCION 9 MATRIZ
Funcion funcion9(info)
	Definir matriz como Caracter;
	Definir columnas,i,j como Entero;
	dimension matriz[filas,columnas];
	columnas<-3;

	Para i<-0 hasta filas-1 hacer
		Para j<-0 hasta i hacer
			matriz[i,j]<-nombre;
		FinPara
		
	FinPara
	
FinFuncion

//Brian PERDONAME D://