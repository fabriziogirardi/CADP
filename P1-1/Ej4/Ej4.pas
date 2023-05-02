program Practica_1_1_Ejercicio_4;
var
  num, aux: real;
begin
  write('Introduzca un numero: ');
  readln(num);
  aux := num * 2;

  while (num <> aux) do begin
    write('Introduzca un numero: ');
    readln(num);
  end;
end.