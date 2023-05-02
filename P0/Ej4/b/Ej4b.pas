program Practica_0_Ejercicio_4_b;
const
  PI = 3.14159265358979323846;
var
  diametro, radio: real;
begin
  write('Ingrese el diametro de la circunferencia: ');
  readln(diametro);
  radio := diametro / 2;
  writeln('El área de la circunferencia es: ', (PI * radio * radio):0:2);
end.