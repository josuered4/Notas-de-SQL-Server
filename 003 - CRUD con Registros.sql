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


--Inserts de practica 
-- Insertar clientes de ejemplo
INSERT INTO Clients (Name, LastName) VALUES ('Juan', 'Perez');
INSERT INTO Clients (Name, LastName) VALUES ('Maria', 'Gomez');
INSERT INTO Clients (Name, LastName) VALUES ('Carlos', 'Lopez');
INSERT INTO Clients (Name, LastName) VALUES ('Ana', 'Rodriguez');
INSERT INTO Clients (Name, LastName) VALUES ('Pedro', 'Martinez');
INSERT INTO Clients (Name, LastName) VALUES ('Laura', 'Hernandez');
INSERT INTO Clients (Name, LastName) VALUES ('Roberto', 'Diaz');
INSERT INTO Clients (Name, LastName) VALUES ('Sofia', 'Fernandez');
INSERT INTO Clients (Name, LastName) VALUES ('Miguel', 'Gonzalez');
INSERT INTO Clients (Name, LastName) VALUES ('Isabel', 'Torres');
