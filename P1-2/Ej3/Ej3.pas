program Practica_1_2_Ejercicio_3;
var
	nombre: string;
	nota, nota_mas_de_8, nota_exacto_7: integer;
begin
	nota_mas_de_8:= 0;
	nota_exacto_7:= 0;

	repeat
		write('Ingrese el nombre del alumno: ');
		readln(nombre);
		write('Ingrese la nota del alumno: ');
		readln(nota);
		if (nota > 8) then
			nota_mas_de_8:= nota_mas_de_8 + 1
		else begin
			if (nota = 7) then
				nota_exacto_7:= nota_exacto_7 + 1;
		end;
	until (nombre = 'Zidane Zinedine');
	
	writeln('La cantidad de alumnos con nota mayor a 8 es: ', nota_mas_de_8);
	writeln('La cantidad de alumnos con nota exacta de 7 es: ', nota_exacto_7);
end.