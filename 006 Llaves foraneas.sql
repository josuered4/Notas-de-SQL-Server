Use Practica

-- llaves foraneas
Create Table Orders(
	Id Integer Primary Key Identity, 
	ClientsId Integer Not Null,
	Foreign Key(ClientsId) References Clients(Id)
);

--No hay mucha diferencia entre las tablas con relacion y las que no lo tienen
--solo hay dos puntos a tomar en cuenta al hacer operaciones de datos con ellas 
	--Al insertar datos se debe insertar la llave foranea, debe ser un Id de registro valido 
	--la eliminacion de un objeto que contiene la llave segundaria, afectara a los objetos relacionados
	
--cláusulas de integridad referenciala
	--Elementos importantes que nos ayudan con la integridad de los datos secundarios, cuando 
	--se elimina un primario.

	--Sin clausula "No es posible eliminar datos primarios si tene datos secundarios"
	Create Table Orders(
		Id Integer Primary Key Identity, 
		ClientsId Integer Not Null,
		Foreign Key(ClientsId) References Clients(Id) 
	);

	--ON DELETE SET NULL, al eliminar un dato primario su referencia en secundario queda como null
	Create Table Orders(
		Id Integer Primary Key Identity, 
		ClientsId Integer Not Null,
		Foreign Key(ClientsId) References Clients(Id) ON DELETE SET NULL
	);

	--ON DELETE CASCADE, al eliminar un dato primario, se eliminara todo dato relacionado con el.
	Create Table Orders(
		Id Integer Primary Key Identity, 
		ClientsId Integer Not Null,
		Foreign Key(ClientsId) References Clients(Id) ON DELETE CASCADE
	);


	INSERT INTO Orders (ClientsId) VALUES (3);
INSERT INTO Orders (ClientsId) VALUES (4);
INSERT INTO Orders (ClientsId) VALUES (6);
INSERT INTO Orders (ClientsId) VALUES (7);
INSERT INTO Orders (ClientsId) VALUES (8);
INSERT INTO Orders (ClientsId) VALUES (9);
INSERT INTO Orders (ClientsId) VALUES (10);
INSERT INTO Orders (ClientsId) VALUES (11);
INSERT INTO Orders (ClientsId) VALUES (12);
INSERT INTO Orders (ClientsId) VALUES (13);
INSERT INTO Orders (ClientsId) VALUES (4);
INSERT INTO Orders (ClientsId) VALUES (6);
INSERT INTO Orders (ClientsId) VALUES (8);
INSERT INTO Orders (ClientsId) VALUES (10);
INSERT INTO Orders (ClientsId) VALUES (12);
INSERT INTO Orders (ClientsId) VALUES (13);
INSERT INTO Orders (ClientsId) VALUES (3);
INSERT INTO Orders (ClientsId) VALUES (7);
INSERT INTO Orders (ClientsId) VALUES (11);
INSERT INTO Orders (ClientsId) VALUES (9);

