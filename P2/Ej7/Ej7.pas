program Practica_2_1_Ejercicio_7;
var
  suma, cant : integer;
  
  function calcularPromedio : real;
  var
    prom : real;
  begin
    if (cant = 0) then
      prom := -1
    else
      prom := suma / cant;

    calcularPromedio := prom;
  end;

var
  resultado: real;
begin 
  readln(suma);
  readln(cant);

  resultado := calcularPromedio;

  if (resultado <> -1) then begin
    cant := 0;
    writeln('El promedio es: ' , resultado:0:0);
  end else
    writeln('Dividir por cero no parece ser una buena idea');
end.