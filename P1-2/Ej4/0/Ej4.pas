program Practica_1_2_Ejercicio_4;
const
	nums = 1000;
var
	i, num, min1, min2: integer;
begin

	for i := 1 to nums do begin
		write('Ingrese un numero: ');
		readln(num);

		if (i = 1) then begin
			min1 := num;
			min2 := num;
			end 
		else begin
			if (num < min1) then begin
				min2 := min1;
				min1 := num;
				end 
			else begin
				if (num < min2) then
					min2 := num;
			end;
		end;
	end;

	write('El primer minimo es: ', min1, ' y el segundo minimo es: ', min2, '.');
end.