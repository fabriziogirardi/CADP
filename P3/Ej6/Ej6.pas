program Practica_3_Ejercicio_6;
const
	STOP = 0;
type
	processorType = record
		brand: string[20];
		model: string[20];
		cores: integer;
		clockSpeed: real;
		litography: integer;
		