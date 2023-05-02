program Practica_4_1_Ejercicio_3_a;

const
  dimF = 10;

type
  arrayType = array[1..dimF] of integer;

procedure printArray(a: arrayType);
var
  i: integer;
begin
  for i := 1 to dimF do
    writeln(a[i]);
end;

var
  a: arrayType;
  i: integer;
begin
  for i := 1 to dimF do
    a[i] := i;
  printArray(a);
end.