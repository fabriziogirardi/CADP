program Pratica_1_1_Ejercicio_7;
var
  codigo: integer;
  precio_actual, precio_nuevo: real;
begin
  repeat
    write('Indique el codigo del producto: ');
    readln(codigo);
    write('Indique el precio actual del producto: ');
    readln(precio_actual);
    write('Indique el precio nuevo del producto: ');
    readln(precio_nuevo);

    if (precio_nuevo > (precio_actual * 1.1)) then
      writeln('El aumento del precio del producto ', codigo, ' es superior al 10%')
    else
      writeln('El aumento del precio del producto ', codigo, ' no supera al 10%');
  until (codigo = 32767);
end.