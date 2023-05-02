program Practica_4_1_Ejercicio_5;

{ Constantes }
const
  arraySize = 100;

{ Declaracion de tipos de datos }
type
  arrayRange = 1..arraySize;
  arrayType = array[arrayRange] of integer;
  dimFRange = 0..arraySize;

var
  dimF: dimFRange;

{ Obtiene la posición de un elemento en un array y la retorna. En caso de no encontrarlo, retorna -1. }
function getPosition(arr: arrayType; item: integer): integer;
var
  i: integer;
begin
  i := 1;
  while (arr[i] <> item) and (i <= dimF) do
    i := i + 1;
  
  if (arr[i] = item) then
    getPosition := i
  else
    getPosition := -1;
end;

{ Intercambia dos elementos de un array. }
procedure exchangeItems(var arr: arrayType; pos1, pos2: arrayRange);
var
  aux: integer;
begin
  aux := arr[pos1];
  arr[pos1] := arr[pos2];
  arr[pos2] := aux;
end;

{ Suma todos los elementos de un array y retorna el resultado. }
function sumArray(arr: arrayType): integer;
var
  i, sum: integer;
begin
  sum := 0;
  for i := 1 to dimF do
    sum := sum + arr[i];
  
  sumArray := sum;
end;

{ Calcula el promedio de todos los elementos de un array y retorna el resultado. }
function averageArray(arr: arrayType): real;
begin
  averageArray := sumArray(arr) / dimF;
end;

{ Obtiene el elemento máximo de un array y retorna su posición. }
function getMax(arr: arrayType): integer;
var
  i, max, pos: integer;
begin
  max := arr[1];
  pos := 1;
  for i := 2 to dimF do
    if (arr[i] > max) then begin
      max := arr[i];
      pos := i;
    end;
  
  getMax := pos;
end;

{ Obtiene el elemento mínimo de un array y retorna su posición. }
function getMin(arr: arrayType): integer;
var
  i, min, pos: integer;
begin
  min := arr[1];
  pos := 1;
  for i := 2 to dimF do
    if (arr[i] < min) then begin
      min := arr[i];
      pos := i;
    end;
  
  getMin := pos;
end;

{ Programa principal }
var
  arr: arrayType;
  maxItem, maxPos, minItem, minPos: integer;
begin

  dimF := 0;

  { Lectura de datos }
  writeln('Ingrese los elementos del array (0 para terminar): ');
  repeat
    dimF := dimF + 1;
    readln(arr[dimF]);
  until (arr[dimF] = 0) or (dimF = arraySize);

  { Procesamiento de datos }
  maxPos := getMax(arr);
  minPos := getMin(arr);
  maxItem := arr[maxPos];
  minItem := arr[minPos];
  exchangeItems(arr, maxPos, minPos);

  { Salida de datos }
  writeln('El elemento maximo ', maxItem, ' que se encontraba en la posicion ', maxPos, ' fue intercambiado con el elemento minimo ', minItem, ' que se encontraba en la posicion ', minPos, '.')
end.