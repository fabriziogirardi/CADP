program Practica_1_1_Ejercicio_6;
const
	promedio_bueno = 6.5;
	promedio_destacado = 8.5;
	legajo_maximo_destacado = 2500;
var
	legajo, cantidad_alumnos, alumnos_promedio_bueno, alumnos_promedio_destacado: integer;
	promedio: real;
begin
	// Inicio variables y pido el primer legajo
	cantidad_alumnos := 0;
	alumnos_promedio_bueno := 0;
	alumnos_promedio_destacado := 0;

	write('Ingrese el legajo: ');
	readln(legajo);

	// Si el primer legajo es distinto a -1, entro en el loop
	while (legajo <> -1) do begin
		write('Ingrese el promedio: ');
		readln(promedio);

		cantidad_alumnos := cantidad_alumnos + 1;

		// Si el promedio es bueno, le sumamos uno al contador
		if (promedio >= promedio_bueno) then begin
			alumnos_promedio_bueno := alumnos_promedio_bueno + 1;
		end;

		// Si el promedio es destacado y el legajo es menor a 2500, le sumamos uno al contador
		if ((promedio >= promedio_destacado) and (legajo <= legajo_maximo_destacado)) then begin
			alumnos_promedio_destacado := alumnos_promedio_destacado + 1;
		end;

		// Pido el siguiente legajo
		write('Ingrese el legajo: ');
		readln(legajo);
	end;

	// Muestro los resultados
	writeln('Cantidad total de alumnos ingresados: ', cantidad_alumnos);
	writeln('Cantidad de alumnos con promedio bueno: ', alumnos_promedio_bueno);
	writeln('Porcentaje de alumnos con promedio destacado: ', (alumnos_promedio_destacado / cantidad_alumnos) * 100:0:2, '%');
end.