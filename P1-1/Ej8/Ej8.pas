program Practica_1_1_Ejercicio_8;
var
  char1, char2, char3: char;
begin
  write('Introduzca la primera letra: ');
  readln(char1);
  write('Introduzca la segunda letra: ');
  readln(char2);
  write('Introduzca la tercera letra: ');
  readln(char3);

  if (char1 <> 'a') and (char1 <> 'e') and (char1 <> 'i') and (char1 <> 'o') and (char1 <> 'u') then
    writeln('Al menos una letra no es vocal')
  else begin
    if (char2 <> 'a') and (char2 <> 'e') and (char2 <> 'i') and (char2 <> 'o') and (char2 <> 'u') then
      writeln('Al menos una letra no es vocal')
    else begin
      if (char3 <> 'a') and (char3 <> 'e') and (char3 <> 'i') and (char3 <> 'o') and (char3 <> 'u') then
        writeln('Al menos una letra no es vocal')
      else
        writeln('Todas las letras son vocales');
    end;
  end;
end.