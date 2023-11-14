Use Practica

CREATE TABLE OrderDetails (
    Id INT PRIMARY KEY IDENTITY,
    OrderID INT,
    ProductID INT,
    Quantity INT,
    FOREIGN KEY (OrderID) REFERENCES Orders(Id),
    FOREIGN KEY (ProductID) REFERENCES Product(Id)
);

--Para agregar complegidad, se agrega una tabla "OrderDetails"
--para relacionar "Order" y "Productos"


INSERT INTO OrderDetails (OrderID, ProductID, Quantity) VALUES (1, 1, 2);
INSERT INTO OrderDetails (OrderID, ProductID, Quantity) VALUES (1, 3, 1);
INSERT INTO OrderDetails (OrderID, ProductID, Quantity) VALUES (2, 2, 3);
INSERT INTO OrderDetails (OrderID, ProductID, Quantity) VALUES (3, 4, 1);
INSERT INTO OrderDetails (OrderID, ProductID, Quantity) VALUES (3, 5, 2);
INSERT INTO OrderDetails (OrderID, ProductID, Quantity) VALUES (4, 6, 1);
INSERT INTO OrderDetails (OrderID, ProductID, Quantity) VALUES (5, 7, 1);
INSERT INTO OrderDetails (OrderID, ProductID, Quantity) VALUES (6, 8, 2);
INSERT INTO OrderDetails (OrderID, ProductID, Quantity) VALUES (7, 9, 1);
INSERT INTO OrderDetails (OrderID, ProductID, Quantity) VALUES (7, 10, 1);
INSERT INTO OrderDetails (OrderID, ProductID, Quantity) VALUES (8, 11, 3);
INSERT INTO OrderDetails (OrderID, ProductID, Quantity) VALUES (9, 12, 1);
INSERT INTO OrderDetails (OrderID, ProductID, Quantity) VALUES (9, 13, 2);
INSERT INTO OrderDetails (OrderID, ProductID, Quantity) VALUES (10, 14, 1);
INSERT INTO OrderDetails (OrderID, ProductID, Quantity) VALUES (11, 15, 1);
INSERT INTO OrderDetails (OrderID, ProductID, Quantity) VALUES (12, 16, 2);
INSERT INTO OrderDetails (OrderID, ProductID, Quantity) VALUES (13, 17, 1);
INSERT INTO OrderDetails (OrderID, ProductID, Quantity) VALUES (14, 18, 1);
INSERT INTO OrderDetails (OrderID, ProductID, Quantity) VALUES (15, 19, 3);
INSERT INTO OrderDetails (OrderID, ProductID, Quantity) VALUES (16, 20, 1);

INSERT INTO OrderDetails (OrderID, ProductID, Quantity) VALUES (17, 18, 2);
INSERT INTO OrderDetails (OrderID, ProductID, Quantity) VALUES (17, 19, 1);
INSERT INTO OrderDetails (OrderID, ProductID, Quantity) VALUES (18, 20, 3);
INSERT INTO OrderDetails (OrderID, ProductID, Quantity) VALUES (19, 1, 1);
INSERT INTO OrderDetails (OrderID, ProductID, Quantity) VALUES (19, 2, 2);
INSERT INTO OrderDetails (OrderID, ProductID, Quantity) VALUES (20, 3, 1);
INSERT INTO OrderDetails (OrderID, ProductID, Quantity) VALUES (21, 4, 2);
INSERT INTO OrderDetails (OrderID, ProductID, Quantity) VALUES (21, 5, 1);
INSERT INTO OrderDetails (OrderID, ProductID, Quantity) VALUES (22, 6, 1);
INSERT INTO OrderDetails (OrderID, ProductID, Quantity) VALUES (23, 7, 3);
INSERT INTO OrderDetails (OrderID, ProductID, Quantity) VALUES (23, 8, 1);
INSERT INTO OrderDetails (OrderID, ProductID, Quantity) VALUES (24, 9, 1);
INSERT INTO OrderDetails (OrderID, ProductID, Quantity) VALUES (25, 10, 2);
INSERT INTO OrderDetails (OrderID, ProductID, Quantity) VALUES (25, 11, 1);
INSERT INTO OrderDetails (OrderID, ProductID, Quantity) VALUES (26, 12, 1);
INSERT INTO OrderDetails (OrderID, ProductID, Quantity) VALUES (27, 13, 1);
INSERT INTO OrderDetails (OrderID, ProductID, Quantity) VALUES (28, 14, 2);
INSERT INTO OrderDetails (OrderID, ProductID, Quantity) VALUES (29, 15, 1);
INSERT INTO OrderDetails (OrderID, ProductID, Quantity) VALUES (30, 16, 1);
INSERT INTO OrderDetails (OrderID, ProductID, Quantity) VALUES (30, 17, 3);