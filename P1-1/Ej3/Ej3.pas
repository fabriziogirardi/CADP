program Practica_1_1_Ejercicio_3;
var
	num1, num2, num3, aux: integer;
begin
	write('Introduzca el primer numero: ');
	readln(num1);
	write('Introduzca el segundo numero: ');
	readln(num2);
	write('Introduzca el tercer numero: ');
	readln(num3);

	if (num1 < num2) then begin
		aux := num1;
		num1 := num2;
		num2 := aux;
	end;
	
	if (num2 < num3) then begin
		aux := num2;
		num2 := num3;
		num3 := aux;
	end;

	if (num1 < num2) then begin
		aux := num1;
		num1 := num2;
		num2 := aux;
	end;

	writeln('Los numeros ordenador de mayor a menor son: ', num1, ', ', num2, ', ', num3, '.');
end.