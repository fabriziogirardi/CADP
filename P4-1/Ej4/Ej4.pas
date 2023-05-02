program Practica_4_1_Ejercicio_4;

{ Constantes }
const
	arraySize = 100;

{ Declaracion de tipos de datos }
type
	arrayRange = 1..arraySize;
	arrayType = array[arrayRange] of integer;

{ Obtiene la posición de un elemento en un array y la retorna. En caso de no encontrarlo, retorna -1. }
function getPosition(arr: arrayType; item: integer): integer;
var
	i: integer;
begin
	i := 1;
	while (arr[i] <> item) and (i <= arraySize) do
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
	for i := 1 to arraySize do
		sum := sum + arr[i];
	
	sumArray := sum;
end;

{ Calcula el promedio de todos los elementos de un array y retorna el resultado. }
function averageArray(arr: arrayType): real;
begin
	averageArray := sumArray(arr) / arraySize;
end;

{ Obtiene el elemento máximo de un array y retorna su posición. }
function getMax(arr: arrayType): integer;
var
	i, max, pos: integer;
begin
	max := arr[1];
	pos := 1;
	for i := 2 to arraySize do
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
	for i := 2 to arraySize do
		if (arr[i] < min) then begin
			min := arr[i];
			pos := i;
		end;
	
	getMin := pos;
end;

{ Programa principal }
begin
end.