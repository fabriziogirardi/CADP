program Practica_4_1_Ejercicio_3_c;

const
  dimF = 10;

type
  arrayType = array[1..dimF] of integer;

procedure printHalfArray(a: arrayType);
var
  i: integer;
  half: integer;
begin
  half := dimF div 2;
  writeln('Array desde la mitad hasta el final: ');
  
  for i := half to dimF do
    writeln(a[i]);
  
  writeln('Array desde la mitad hasta el inicio: ');

  for i := half downto 1 do
    writeln(a[i]);
end;

var
  a: arrayType;
  i: integer;
begin
  for i := 1 to dimF do
    a[i] := i;
  printHalfArray(a);
end.