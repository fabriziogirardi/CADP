program Practica_4_1_Ejercicio_3_b;

const
  dimF = 10;

type
  arrayType = array[1..dimF] of integer;

procedure printArrayReverse(a: arrayType);
var
  i: integer;
begin
  for i := dimf downto 1 do
    writeln(a[i]);
end;

var
  a: arrayType;
  i: integer;
begin
  for i := 1 to dimF do
    a[i] := i;
  printArrayReverse(a);
end.