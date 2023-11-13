Use Practica


--Insertar registros

	--Insertar por Orden
	Insert Into Clients Values ('Josue', 'Reyes');

	--Insertar por nombre
	Insert Into Clients(LastName, Name) Values('Perez', 'Isaac')


--Seleccionar todo registro
Select * From Clients

--Seleccion por un atributo
Select * From Clients
	Where Id = 1

--Actualizacion
Update Clients
Set Name = 'Israel' , LastName = 'Aguilar'
Where Id = 2


--Eliminar Un registro
Delete Clients 
	Where Id = 2