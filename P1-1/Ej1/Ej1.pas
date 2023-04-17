program Practica_1_1_Ejercicio_1;
var
	num1, num2: integer;
begin
	write('Introduzca el primero numero: ');
	readln(num1);
	write('Introduzca el segundo numero: ');
	readln(num2);
	if (num1 = num2) then
		writeln('Los numeros son iguales')
	else
		begin
			if (num1 > num2) then
				writeln('El primer numero es mayor que el segundo')
			else
				writeln('El segundo numero es mayor que el primero');
		end;
end.