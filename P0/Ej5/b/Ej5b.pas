program Practica_0_Ejercicio_5_b;
const
	PRECIO = 1.6;
var
	caramelos, clientes: integer;
begin
	write('Introduzca el numero de caramelos: ');
	readln(caramelos);
	write('Introduzca el numero de clientes: ');
	readln(clientes);
	writeln('El kiosquero deberá cobrar $', (caramelos - (caramelos mod clientes)) * PRECIO:0:2);
end.