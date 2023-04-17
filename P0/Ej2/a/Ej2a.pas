program Practica_0_Ejercicio_2_a;
var
  num1, num2, sum: integer;
begin
  write('Ingrese el primer numero: ');
  readln(num1);
  write('Ingrese el segundo numero: ');
  readln(num2);
  sum := num1 + num2;
  writeln('Se ingresaron los valores ', num1, ' y ', num2, ' y la suma es ', sum);
end.