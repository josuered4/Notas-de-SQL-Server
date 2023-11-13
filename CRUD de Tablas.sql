--Uso de una base de datos 
Use Practica

--Agregar una tabla
Create Table Clients(
	Id Int Primary Key, 
	Name varchar(50) Not Null
);

--Insertar datos en una tabla
Insert Into Clients Values(1,'Josue','Reyes');

--Seleccionar todas las tablas
Select * from sys.tables

--Agregar columnas 
Alter table Clients 
	Add LastName Varchar(50) 

--Eliminar Columnas 
Alter Table Clients
	Drop Column LastName