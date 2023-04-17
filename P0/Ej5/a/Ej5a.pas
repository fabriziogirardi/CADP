program Practica_0_Ejercicio_5_a;
var
	caramelos, clientes: integer;
begin
	write('Ingrese la cantidad de caramelos: ');
	readln(caramelos);
	write('Ingrese la cantidad de clientes: ');
	readln(clientes);
	writeln('Cada cliente recibe ', caramelos div clientes, ' caramelos');
	writeln('Sobran ', caramelos mod clientes, ' caramelos');
end.