program Practica_1_1_Ejercicio_5;
var
	num, aux: real;
	i: integer;
begin
	write('Introduzca un numero: ');
	readln(num);
	aux := num * 2;
	i := 1;

	repeat
		write('Introduzca un numero: ');
		readln(num);
		i := i + 1;
	until ((num = aux) or (i = 10));

	if ((i = 10) and (num <> aux)) then
		writeln('No se ha ingresado el doble de X');
end.