program Practica_3_Ejercicio_5;

{ La marca de corte }
const
	BRAND_TO_STOP = 'ZZZ';

type
	{ Tipo de dato para los autos }
	carType = record
		brand: string[30];
		model: string[30];
		price: integer;
	end;

{ Lee un auto y lo guarda en la variable car. Si la marca es la marca de corte, no lee el resto de los datos }
procedure readCar(var car: carType);
	begin
		write('Ingrese la marca del auto: ');
		readln(car.brand);
		if (car.brand <> BRAND_TO_STOP) then begin
			write('Ingrese el modelo del auto: ');
			readln(car.model);
			write('Ingrese el precio del auto: ');
			readln(car.price);
		end;
	end;

{ Variables locales al programa }
var
	car: carType;
	maxBrand: string[30];
	maxModel: string[30];
	maxPrice: integer;
	currentBrand: string[30];
	count: integer;
	average: real;

{ Programa principal }
begin

	{ Inicializo las variables }
	maxPrice := -1;
	currentBrand := '';

	{ Leo el primer auto }
	readCar(car);
	
	{ Mientras no se ingrese la marca de corte, leo autos }
	while (car.brand <> BRAND_TO_STOP) do begin
		
		{ Si la marca del auto es distinta a la marca actual, reinicio el promedio y la cantidad de autos }
		if (car.brand <> currentBrand) then begin
			currentBrand := car.brand;
			average := 0;
			count := 0;
		end;

		{ Sumo el precio al total y aumento la cantidad de autos para luego calcular el promedio }
		average := average + car.price;
		count := count + 1;

		{ Si el precio del auto es mayor al maximo, lo guardo como el maximo }
		if (car.price > maxPrice) then begin
			maxPrice := car.price;
			maxBrand := car.brand;
			maxModel := car.model;
		end;

		{ Leo el siguiente auto }
		readCar(car);

		{ Si la marca del auto es distinta a la marca actual, imprimo el promedio de precios de la marca anterior }
		if (car.brand <> currentBrand) then
			writeln('El promedio de precios de los autos de la marca ', currentBrand, ' es: ', (average / count):2:2);
	end;

	{ Imprimo el auto mas caro }
	writeln('El auto mas caro es de la marca ', maxBrand, ' y modelo ', maxModel, ' y cuesta ', maxPrice);
end.