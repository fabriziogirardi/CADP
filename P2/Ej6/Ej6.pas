program Practica_2_1_Ejercicio_6;

	procedure leerNumeros();
	var
		num: integer;
		numeroMasAlto: integer;
	begin
		numeroMasAlto := 0;
		write('Ingrese un numero: ');
		readln(num);
		
		while (num >= 0) do begin
			if (num MOD 2 = 0) then begin
				if (num > numeroMasAlto) then
					numeroMasAlto := num;
			end;

			write('Ingrese un numero: ');
			readln(num);
		end;

		writeln('El numero mas alto es: ', numeroMasAlto);
	end;

begin
	leerNumeros();
end.