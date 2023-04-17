program Practica_1_2_Ejercicio_1;
const
	nums = 10;
var
	i, suma, num: integer;
begin
	writeln('Ingrese los numeros a sumar (10 numeros): ');
	suma := 0;

	for i := 1 to nums do begin
		read(num);
		suma := suma + num;
	end;

	writeln('La suma de los numeros es: ', suma);
end.