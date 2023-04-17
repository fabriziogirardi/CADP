program Practica_1_2_Ejercicio_5;
const
	flag = 100;
var
	num, max, min, sum: integer;
begin
	sum := 0;
	write('Ingrese los numeros (ingrese 100 para terminar): ');

	repeat
		read(num);

		if (num > max) then begin
			max := num;
		end
		else begin
			if (num < min) then begin
				min := num;
			end;
		end;

		sum := sum + num;
	until (num = flag);

	write('El numero maximo es: ', max, '. El minimo es: ', min, '. La suma es: ', sum);
end.