program Practica_1_1_Ejercicio_2;
var
  num: real;
begin
  write('Introduzca un numero real: ');
  readln(num);

  if (num < 0) then
    num := num * -1;

  writeln('El valor absoluto del numero es: ', num:0:0);
end.