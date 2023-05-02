program Practica_3_Ejercicio_3;

{ Constante de proporción. Menor es mejor }
const
  proportion = 23.435;

{ Definición de tipos }
type
  cadenaCorta = string[8];
  cadenaLarga = string[30];

  { Tipo de dato escuela }
  schoolType = record
    cue: cadenaCorta;
    name: cadenaLarga;
    teachers: integer;
    students: integer;
    city: cadenaLarga;
  end;

{ Procedimiento para leer una escuela }
procedure readSchool(var s: schoolType);
  begin
    writeln('Ingrese los datos de la escuela: ');
    write('CUE: ');
    readln(s.cue);
    write('Nombre: ');
    readln(s.name);
    write('Cantidad de docentes: ');
    readln(s.teachers);
    write('Cantidad de alumnos: ');
    readln(s.students);
    write('Localidad: ');
    readln(s.city);
    write('-----');
  end;

{ Función para calcular la proporción de una escuela }
function calculateProportion(s: schoolType): real;
  begin
    calculateProportion := s.students / s.teachers;
  end;

{ Variables para el programa principal }
var
  school: schoolType;
  biggerThanConstantInLaPlata, i: integer;
  bestCue, bestCue2: string[8];
  bestName, bestName2: string[30];
  schoolProportion, bestProportion, bestProportion2: real;

begin
  bestProportion := 999;
  bestProportion2 := 999;
  biggerThanConstantInLaPlata := 0;

  { Loop principal }
  for i := 1 to 2400 do begin

    { Leemos la escuela y calculamos su proporción }
    readSchool(school);
    schoolProportion := calculateProportion(school);

    { Si la escuela está en La Plata y tiene mejor proporción que la constante, sumamos 1 al contador }
    if ((schoolProportion < proportion) and (school.city = 'La Plata')) then
      biggerThanConstantInLaPlata := biggerThanConstantInLaPlata + 1;
    
    { Si la proporción de la escuela es mejor que la mejor proporción, la escuela pasa a ser la mejor }
    if (schoolProportion < bestProportion) then begin
      bestProportion2 := bestProportion;
      bestName2 := bestName;
      bestCue2 := bestCue;
      bestProportion := schoolProportion;
      bestName := school.name;
      bestCue := school.cue;
    end 

    { Caso contrario del anterior IF, controlamos si es mejor que la segunda mejor proporción }
    else begin
      if (schoolProportion < bestProportion2) then begin
        bestProportion2 := schoolProportion;
        bestName2 := school.name;
        bestCue2 := school.cue;
      end;
    end;
  end;

  { Imprimimos los resultados }
  writeln('Cantidad de escuelas con una proporcion mayor a ', proportion:0:3, ' en La Plata es: ', biggerThanConstantInLaPlata);
  writeln('Las 2 escuelas con mejor proporcion son: ', bestName, ' (', bestProportion:0:3, ') y ', bestName2, ' (', bestProportion2:0:3, ')');

end.