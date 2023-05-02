program Practica_1_2_Ejercicio_4_a;
var
  i, num, min1, min2: integer;
begin
  write('Ingrese un numero: ');
  readln(num);
  min1 := num;
  min2 := num;

  while (num <> 0) do begin
    if (num < min1) then begin
      min2 := min1;
      min1 := num;
      end 
    else begin
      if (num < min2) then
        min2 := num;
    end;
    
    write('Ingrese un numero: ');
    readln(num);
  end;

  writeln('El menor es: ', min1, ' y el segundo menor es: ', min2);
end.