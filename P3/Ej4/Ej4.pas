program Practica_3_Ejercicio_4;

{ Constantes para cálculos y loops }
const
	PRICE_MINUTE = 3.40;
	PRICE_MB = 1.35;
	TOTAL_CLIENTS = 9300;

{ Tipos de datos }
type
	lineType = record
		number: integer;
		minutes: integer;
		mb: integer;
	end;

	customerType = record
		code: string[16];
		lines: integer;
	end;

{ Procedimiento para leer los datos de una línea }
procedure readLineData(var line: lineType);
	begin
		write('Ingrese el numero de linea: ');
		readln(line.number);
		write('Ingrese la cantidad de minutos: ');
		readln(line.minutes);
		write('Ingrese la cantidad de MB: ');
		readln(line.mb);
	end;

{ Procedimiento para leer los datos de un cliente }
procedure readCustomerData(customer: customerType; var min: integer; var mb: integer);
	var
		line: lineType;
		i: integer;
	begin
		min := 0;
		mb := 0;

		{ Loop para leer los datos de cada línea del cliente }
		for i := 1 to customer.lines do begin
			readLineData(line);
			min := min + line.minutes;
			mb := mb + line.mb;
		end;
	end;

{ Variables locales al programa}
var
	customer: customerType;
	i, min, mb: integer;

{ Programa principal }
begin

	{ Loop para leer los datos de cada cliente }
	for i := 1 to TOTAL_CLIENTS do begin
		{ Leo código y cantidad de líneas del cliente }
		write('Ingrese el codigo del cliente: ');
		readln(customer.code);
		write('Ingrese la cantidad de lineas: ');
		readln(customer.lines);

		{ Leo los datos de cada línea del cliente }
		readCustomerData(customer, min, mb);

		{ Muestro el total a pagar }
		writeln('El total a pagar para el cliente ', customer.code, ' es: ', ((min * PRICE_MINUTE) + (mb * PRICE_MB)):0:2);
	end;
end.