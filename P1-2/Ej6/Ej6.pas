program Practica_1_2_Ejercicio_6;
const
  productos = 200;
var
  i, codigo, codigoBarato1, codigoBarato2, cantidadPrecioMas16CodigoPar: integer;
  precio: real;
begin
  cantidadPrecioMas16CodigoPar := 0;

  for i := 1 to productos do begin
    write('Ingrese codigo del producto ', i, ': ');
    readln(codigo);
    write('Ingrese precio del producto ', i, ': ');
    readln(precio);

    if (i = 1) then begin
      codigoBarato1 := codigo;
      codigoBarato2 := codigo;
    end else begin
      if (precio < codigoBarato1) then begin
        codigoBarato2 := codigoBarato1;
        codigoBarato1 := codigo;
      end else if (precio < codigoBarato2) then begin
        codigoBarato2 := codigo;
      end;
    end;

    if ((precio > 16) and (codigo mod 2 = 0)) then begin
      cantidadPrecioMas16CodigoPar := cantidadPrecioMas16CodigoPar + 1;
    end;
  end;

  writeln('Los codigos de los dos productos mas baratos son: ', codigoBarato1, ' y ', codigoBarato2);
  writeln('La cantidad de productos con precio mayor a 16 y codigo par es: ', cantidadPrecioMas16CodigoPar);
end.