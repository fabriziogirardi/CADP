program Practica_4_1_Ejercicio_7;

{ Constantes del programa }
const
  breakLoop = -1;

{ Declaracion de tipos de datos }
type
  arrayRange = 0..9;
  arrayInt = array[arrayRange] of integer;

{ Inicializa un array con todos sus elementos en 0. }
procedure initArray(var arr: arrayInt);
var
  i: integer;
begin
  for i := 0 to 9 do
    arr[i] := 0;
end;

{ Parsea cada elemento de un numero y lo suma a su indice en el array. }
procedure parseNumberIntoArray(var arr: arrayInt; number: integer);
var
  i, modResult, divResult: integer;
begin
  while (number <> 0) do begin
    modResult := number mod 10;
    divResult := number div 10;
    arr[modResult] := arr[modResult] + 1;
    number := divResult;
  end;
end;

{ Imprime el resultado del programa. }
procedure printResult(arr: arrayInt);
var
  i, auxArrDimL: arrayRange;
  max: integer;
  auxArr: arrayInt;
begin
  max := arr[0];
  auxArrDimL := 0;

  { Loopeo el array buscando elementos usados, los imprimo y almaceno el máximo.}
  for i := 0 to 9 do begin
    if (arr[i] <> 0) then begin
      writeln('Numero ', i, ': ', arr[i], ' veces.');
      if (arr[i] > max) then
        max := arr[i];
    end else begin
      auxArr[auxArrDimL] := i;
      auxArrDimL := auxArrDimL + 1;
    end;
  end;

  { Imprimo el maximo }
  write('El digito mas leido fue el ', max, '.)

  { Imprimo los elementos que no tuvieron ocurrencias excepto el ultimo para evitar la ultima coma. }
  write('Los digitos que no tuvieron ocurrencias son: ');
  for i := 0 to (auxArrDimL - 2) do begin
    write(auxArr[i], ', ');
  end;

  { Imprimo el ultimo elemento del array de elementos no usados fuera del loop para evitar la ultima coma. }
  write(auxArr[auxArrDimL - 1], '.');
end;

{ Programa principal }
var
  number: integer;
  arr: arrayInt;
begin

  { Inicializo el array y leo el primer numero. }
  initArray(arr);
  writeln('Ingrese los numeros (-1 para salir): ');
  read(number);

  { Mientras el numero no sea el de corte, parseo el numero y leo el siguiente. }
  while (number <> breakLoop) do begin
    parseNumberIntoArray(arr, number);
    read(number);
  end;

  { Imprimo el resultado. }
  printResult(arr);
end.