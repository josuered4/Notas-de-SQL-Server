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
