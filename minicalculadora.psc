SubProceso ret <- Suma ( a,b )
	ret <- a + b
FinSubProceso

SubProceso ret <- Resta ( a,b )
	ret <- a - b
FinSubProceso

SubProceso ret <- Multiplicacion ( a,b )
	ret <- a * b
FinSubProceso

SubProceso ret <- Division ( a,b )
	ret <- a / b
FinSubProceso

SubProceso op <- CapturaOpcion()
	Definir op Como Entero
	
	Escribir "Pulsa 1 para sumar"
	Escribir "Pulsa 2 para restar"
	Escribir "Pulsa 3 para multiplicar"
	Escribir "Pulsa 4 para dividir"
	Escribir "Pulsa 5 para salir"
	Leer op
FinSubProceso

Algoritmo Minicalculadora
	Definir a,b,x Como Entero
	Definir resultado Como Real
	Escribir "Dame A"
	Leer a
	Escribir "Dame B"
	Leer b
	
	Repetir
		x <- CapturaOpcion()
		Si x == 1 Entonces
			resultado <- Suma(a,b)
			Escribir "La suma es ",resultado
		SiNo
			Si x == 2 Entonces
				resultado <- Resta(a,b)
				Escribir "La resta es ",resultado
			SiNo
				Si x == 3 Entonces
					resultado <- Multiplicacion(a,b)
					Escribir "El producto es ",resultado
				SiNo
					Si x == 4 Entonces
						Si b != 0 Entonces
							resultado <- Division(a,b)
							Escribir "El cociente es ",resultado
						SiNo
							Escribir "No puedes dividir por 0"
						Fin Si
					SiNo
						Si x == 5 Entonces
							Escribir "Fin del programa"
						SiNo
							Escribir "Operación incorrecta."
						Fin Si
					Fin Si
				Fin Si
			Fin Si
		Fin Si
	Hasta Que x == 5
	
		
FinAlgoritmo
