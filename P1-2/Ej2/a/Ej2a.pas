program Practica_1_2_Ejercicio_2_a;
const
	nums = 10;
var
	i, max, pos, num: integer;
begin
	writeln('Ingrese 10 numeros y se mostrara el mayor de ellos y su posicion');
	read(num);
	max := num;
	pos := 1;

	for i := 2 to nums do begin
		read(num);
		if num > max then begin
			max := num;
			pos := i;
		end;
	end;

	writeln('El numero mayor leido fue ', max, ', en la posicion ', pos);
end.