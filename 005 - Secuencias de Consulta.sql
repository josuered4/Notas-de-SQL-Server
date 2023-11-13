--Seleccion de datos de forma avanzada 
Use Practica

--La secuencia típica en una consulta SQL es:

--SELECT: Seleccionar las columnas que quieres mostrar.
--FROM: Especificar la tabla o tablas de donde provienen los datos.
--WHERE: Filtrar filas antes de agrupar (opcional).
--GROUP BY: Agrupar los resultados según ciertas columnas.
--HAVING: Filtrar los grupos después de la agrupación (opcional).
--ORDER BY: Ordenar los resultados (opcional).

--Uso de Where
Select * From Clients
	Where Id <= 10 AND Name like 'J%' --like ->"coincide con?"


--Orden de Seleccion Asc o Desc 
Select * from Clients
	Where Id <= 10 AND Name like 'J%' --like ->"coincide con?"
	Order by Name Desc


--Agrupacion.
Select Left(Name, 1) as Initial, Name, LastName From Clients 
	Group By Left(Name, 1),  Name, LastName --Se requiere de toda columna seleccionada 
Order by Left(Name, 1) DESC

--Contador de Agrupacion
Select Left(Name, 1) as Initial, Count(*) as Cantidad From Clients --el contador es una funcion que incrementa segun las coindicencias
	Group By Left(Name, 1) --En este caso solo hay una columna 

--Suma por agrupacion, sumaremos ids, 
Select Left(Name, 1) as Initial, SUM(Id) From Clients --Sum tiene un funcionamiento casi similar al count
	Group By Left(Name, 1) 
	

--Filtrado de un Group
Select Left(Name, 1) as Initial, SUM(Id) From Clients 
	Group By Left(Name, 1)
	HAVING SUM(Id) > 10  -->Recordar que siempre va despues de una suma este filtro
