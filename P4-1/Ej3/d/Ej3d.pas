program Practica_4_1_Ejercicio_3_d;

const
  dimF = 10;

type
  arrayType = array[1..dimF] of integer;

procedure printHalfArray(a: arrayType; start, finish: integer);
var 
  i: integer;
begin
  if start = finish then begin
    writeln('No se puede tener inicio y fin iguales');
  end
  else begin
    if start > finish then begin
      for i := start downto finish do
        writeln(a[i]);
    end
    else begin
      for i := start to finish do
        writeln(a[i]);
    end;
  end;
end;

var
  a: arrayType;
  i, fromIndex, toIndex: integer;
begin
  for i := 1 to dimF do
    a[i] := i;
  
  write('Desde: ');
  readln(fromIndex);
  write('Hasta: ');
  readln(toIndex);
  printHalfArray(a,fromIndex,toIndex);
end.