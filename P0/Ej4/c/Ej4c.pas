program Practica_0_Ejercicio_4_c;
const
  PI = 3.14159265358979323846;
var
  diametro: real;
begin
  write('Ingrese el diametro de la circunferencia: ');
  readln(diametro);
  writeln('El perimetro de la circunferencia es: ', (PI * diametro):0:2);
end.