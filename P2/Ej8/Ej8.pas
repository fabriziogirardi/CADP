program anidamientos;
type
	retorno = 0..2;
var
	letra: char;
	res: retorno;
	
function analizarLetra: retorno;
	begin
		if (letra >= 'a') and (letra <= 'z') then
			res := 0
		else
			if (letra >= 'A') and (letra <= 'Z') then
				res := 1
			else
				res := 2;

		analizarLetra := res;
	end; { fin de la funcion analizarLetra }

procedure leer;
var
	analizada: retorno;
	begin
		readln(letra);
		analizada := analizarLetra;
		if (analizada = 0) then
			writeln('Se trata de una minuscula')
		else 
			if (analizada = 1) then
				writeln('Se trata de una mayuscula')
			else
				writeln('Se trata de un caracter no alfabetico');
	end; { fin del procedure leer}
	
var
	ok: retorno;
begin { programa principal }
	leer;
	ok := analizarLetra;
	if (ok = 0) then
		writeln('Gracias, vuelva prontosss');
end.