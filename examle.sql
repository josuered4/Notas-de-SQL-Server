Use Practica

--Select complejos v2

--Selecciona a un cliente y su orden 
SELECT O.ClientsId, C.Name AS ClientName, P.Name AS ProductName
FROM Clients AS C
INNER JOIN Orders AS O ON O.ClientsId = C.Id
INNER JOIN OrderDetails AS OD ON OD.OrderID = O.Id
INNER JOIN Product AS P ON P.Id = OD.ProductID
WHERE C.Id = 3 AND O.Id = 1;



	SELECT 
		O.ClientsId, 
		C.Name AS ClientName, 
		STRING_AGG(P.Name, ', ') AS ProductNames
	FROM Clients AS C
	INNER JOIN Orders AS O ON O.ClientsId = C.Id
	INNER JOIN OrderDetails AS OD ON OD.OrderID = O.Id
	INNER JOIN Product AS P ON P.Id = OD.ProductID
	WHERE  O.Id = 1 --C.Id = 3 AND
	GROUP BY O.ClientsId, C.Name;



Create view order_products
AS
SELECT 
	O.ClientsId, 
	C.Name AS ClientName, 
	STRING_AGG(P.Name, ', ') AS ProductNames
FROM Clients AS C
INNER JOIN Orders AS O ON O.ClientsId = C.Id
INNER JOIN OrderDetails AS OD ON OD.OrderID = O.Id
INNER JOIN Product AS P ON P.Id = OD.ProductID
--WHERE  O.Id = 1 --C.Id = 3 AND
GROUP BY O.ClientsId, C.Name;


Create View OrderProducts
as
Select O.[Id], C.[Name], STRING_AGG(P.Name, ', ') AS ProductNames
From Orders as O
Inner Join Clients as C
	On C.[Id] = O.[ClientsId]
INNER JOIN OrderDetails AS OD ON OD.OrderID = O.Id
INNER JOIN Product AS P ON P.Id = OD.ProductID
GROUP BY  O.[Id], C.[Name]


Select * From OrderProducts
