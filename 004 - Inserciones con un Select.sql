Use Practica

--Insertar datos mediantes un select 

--Creamos una tabla persons
Create Table Persons(
	Id Int Primary Key Identity,
	[Name] Varchar(50) Not Null,
	customerId Integer Null,
	Foreign Key(customerId) References Clients On Delete Set Null
);

--Realizamos la insercion
Insert Into Persons([Name], [customerId]) 
	Select [Name], [Id] From Clients


--validamos inserciones 
Select * from Persons