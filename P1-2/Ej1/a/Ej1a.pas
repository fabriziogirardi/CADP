program Practica_1_2_Ejercicio_1_a;
const
	nums = 10;
var
	i, num, suma, gt5: integer;
begin
	writeln('Ingrese los numeros a sumar (10 numeros): ');

	suma := 0;
	gt5 := 0;
	for i := 1 to nums do begin
		readln(num);
		suma := suma + num;
		if num > 5 then
			gt5 := gt5 + 1;
	end;

	writeln('La suma de los numeros es: ', suma);
	writeln('La cantidad de numeros mayores a 5 es: ', gt5);
end.