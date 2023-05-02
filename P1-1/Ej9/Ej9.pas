program Practica_1_1_Ejercicio_9;
var
  signo: char;
  num, resultado: integer;
begin
  write('Ingrese una operacion suma o resta con el signo + o - respectivamente: ');
  readln(signo);

  if (signo <> '+') and (signo <> '-') then
    writeln('El signo ingresado no es valido')
  else begin
    resultado := 0;
    repeat
      write('Ingrese un numero: ');
      readln(num);
      if (signo = '+') then
        resultado := resultado + num
      else
        resultado := resultado - num;
    until (num = 0);
    writeln('El resultado es: ', resultado);
  end;
end.