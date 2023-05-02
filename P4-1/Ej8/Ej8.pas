program Practica_4_1_Ejercicio_8;

{ Constantes del programa }
const
  ReadCount = 400;

{ Tipo de datos }
type

  { Rangos y strings }
  arrayRange = 1..ReadCount;
  yearRange = 1900..2015;
  namesString = string[30];

  { Tipo de dato para el registro de estudiante }
  student = record
    inscriptionNumber: integer;
    ID: integer;
    lastName: namesString;
    firstName: namesString;
    yearOfBirth: yearRange;
  end;

  studentArray = array[arrayRange] of student;

{ Cargar los estudiantes en el array }
procedure loadStudents(var students: studentArray, var evenIdNumbers: integer);
var
  i: integer;
begin
  { Carga los datos de cada estudiante }
  for i := 1 to ReadCount do begin
    loadStudent(students[i]);
    { Cuenta los estudiantes con DNI par }
    if evenIdNumber(students[i]) then begin
      evenIdNumbers := evenIdNumbers + 1;
    end;
  end;
end;

{ Cargar los datos de un estudiante }
procedure loadStudent(student: student);
begin
  with students[i] do begin
    writeln('Ingrese los datos del estudiante ', i, ':');
    write('Numero de inscripcion: ');
    readln(inscriptionNumber);
    write('Numero de DNI: ');
    readln(ID);
    write('Apellido: ');
    readln(lastName);
    write('Nombre: ');
    readln(firstName);
    write('Año de nacimiento: ');
    readln(yearOfBirth);
    writeln('----------------------------------------');
  end;
end;

{ Chequea si el estudiante tiene DNI compuesto por numeros pares }
function evenIdNumber(student: student): boolean;
var
  number: integer;
  isAllEven: boolean;
begin
  isAllEven := true;
  number := student.ID;

  { Chequea si todos los digitos del DNI son pares }
  while (number <> 0) do begin
    if (number mod 2) <> 0 then begin
      isAllEven := false;
    end;
    number := number div 10;
  end;

  evenIdNumber := isAllEven;
end;

{ Porcentaje de estudiantes con DNI par }
function evenIdNumberPercentage(evenIdNumbers: integer): real;
begin
  evenIdNumberPercentage := (evenIdNumbers / ReadCount) * 100;
end;

{ Apellido y nombre de alumnos de mayor edad }
procedure oldestStudents(students: studentArray);
var
  i, oldestStudentIndex1, oldestStudentIndex2: integer;
begin
  oldestStudentIndex1 := 1;
  oldestStudentIndex2 := 1;

  { Busca los dos estudiantes de mayor edad }
  for i := 2 to ReadCount do begin
    if students[i].yearOfBirth < students[oldestStudentIndex1].yearOfBirth then begin
      oldestStudentIndex2 := oldestStudentIndex1;
      oldestStudentIndex1 := i;
    end else if students[i].yearOfBirth < students[oldestStudentIndex2].yearOfBirth then begin
      oldestStudentIndex2 := i;
    end;
  end;

  { Imprime los datos de los estudiantes de mayor edad }
  writeln('Los estudiantes de mayor edad son:');
  writeln(students[oldestStudentIndex1].lastName, ', ', students[oldestStudentIndex1].firstName);
  writeln(students[oldestStudentIndex2].lastName, ', ', students[oldestStudentIndex2].firstName);
end;

{ Programa principal }
var
  students: studentArray;
  evenIdNumbers: integer;
begin
  evenIdNumbers := 0;

  { Carga los estudiantes en el array }
  loadStudents(students, evenIdNumbers);

  { Imprime el porcentaje de estudiantes con DNI par }
  writeln('El porcentaje de estudiantes con DNI par es: ', evenIdNumberPercentage(evenIdNumbers):0:2, '%');

  { Imprime los datos de los estudiantes de mayor edad }
  oldestStudents(students);
end.