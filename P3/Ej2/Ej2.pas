program Practica_3_Ejercicio_2;

type
	date = record
		day: 1..31;
		month: 1..12;
		year: 1900..2023;
	end;

procedure leerFecha(var f: date);
	begin
		writeln('Ingrese los datos del casamiento: ');
		write('Dia: ');
		readln(f.day);
		write('Mes: ');
		readln(f.month);
		write('Año: ');
		readln(f.year);
		write('-----');
	end;

var
	fecha: date;
	casamientos_verano, casamientos_primeros_10_dias: integer;

begin
	casamientos_verano := 0;
	casamientos_primeros_10_dias := 0;
	leerFecha(fecha);

	while (fecha.year <> 2020) do begin
		if (fecha.month <= 3) then
			casamientos_verano := casamientos_verano + 1;
		if (fecha.day <= 10) then
			casamientos_primeros_10_dias := casamientos_primeros_10_dias + 1;
		leerFecha(fecha);
	end;

	writeln('Cantidad de casamientos en verano: ', casamientos_verano);
	writeln('Cantidad de casamientos en los primeros 10 dias del mes: ', casamientos_primeros_10_dias);
end.