program Practica0Ejercicio6;
var
  monto_transaccion, valor_dolar, porcentaje_comision: real;
begin
  write('Ingrese el monto de la transaccion: ');
  readln(monto_transaccion);
  write('Ingrese el valor del dolar: ');
  readln(valor_dolar);
  write('Ingrese el porcentaje de comision: ');
  readln(porcentaje_comision);
  writeln('La transacción será de ', ((monto_transaccion * valor_dolar) * ((porcentaje_comision / 100) + 1)) :0:2, ' pesos argentinos.');
end.