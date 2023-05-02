program Practica_1_2_Ejercicio_2;
const
  nums = 10;
var
  i, num, max: integer;
begin
  writeln('Ingrese 10 numeros y se mostrara el mayor de ellos');
  readln(num);
  max := num;

  for i := 2 to nums do begin
    readln(num);
    if num > max then
      max := num;
    end;

  writeln('El numero mayor es: ', max);
end.