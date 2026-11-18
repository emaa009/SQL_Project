PRAGMA foreign_keys = ON;

CREATE TABLE Customers (
    CustomerID INTEGER PRIMARY KEY,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    Country VARCHAR(50),
    Score INTEGER
);

CREATE TABLE Products (
    ProductID INTEGER PRIMARY KEY,
    Product VARCHAR(100),
    Category VARCHAR(50),
    Price DECIMAL(10,2)
);

CREATE TABLE Employees (
    EmployeeID INTEGER PRIMARY KEY,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    Department VARCHAR(50),
    BirthDate DATE,
    Gender VARCHAR(10),
    Salary DECIMAL(10,2),
    ManagerID INTEGER,
    FOREIGN KEY (ManagerID) REFERENCES Employees(EmployeeID)
);

CREATE TABLE Orders (
    OrderID INTEGER PRIMARY KEY,
    ProductID INTEGER,
    CustomerID INTEGER,
    SalesPersonID INTEGER,
    OrderDate DATE,
    ShipDate DATE,
    OrderStatus VARCHAR(30),
    ShipAddress VARCHAR(150),
    BillAddress VARCHAR(150),
    Quantity INTEGER,
    Sales DECIMAL(10,2),
    CreationTime DATETIME,
    FOREIGN KEY (ProductID) REFERENCES Products(ProductID),
    FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID),
    FOREIGN KEY (SalesPersonID) REFERENCES Employees(EmployeeID)
);

INSERT INTO Customers VALUES
(1, 'Ayla', 'Karimova', 'Azerbaijan', 720),
(2, 'John', 'Miller', 'USA', 450),
(3, 'Emma', 'Schmidt', 'Germany', 860),
(4, 'Sara', 'Martin', 'France', 280),
(5, 'Lukas', 'Weber', 'Germany', 550),
(6, 'Noah', 'Adams', 'USA', 610),
(7, 'Lea', 'Fischer', 'Germany', 680),
(8, 'Sofia', 'Rossi', 'Italy', 700),
(9, 'Ali', 'Hasanov', 'Azerbaijan', 330);

INSERT INTO Products VALUES
(101, 'Wireless Mouse', 'Electronics', 55.00),
(102, 'Office Chair', 'Furniture', 230.00),
(103, 'Laptop', 'Electronics', 850.00),
(104, 'Notebook', 'Stationery', 12.00),
(105, 'Smart Phone', 'Electronics', 420.00),
(106, 'Standing Desk', 'Furniture', 380.00),
(107, 'USB Hub', 'Electronics', 45.00),
(108, 'Desk Lamp', 'Furniture', 65.00);

INSERT INTO Employees VALUES
(12, 'Maya', 'Brown', 'Sales', '1990-07-09', 'Female', 2400.00, NULL),
(11, 'David', 'Lee', 'Sales', '1987-05-14', 'Male', 2200.00, 12),
(13, 'Alex', 'Green', 'Support', '1994-11-21', 'Male', 1900.00, 12),
(14, 'Omar', 'Ali', 'Sales', '1995-02-17', 'Male', 2100.00, 12),
(15, 'Nina', 'Stone', 'Sales', '1998-08-03', 'Female', 2000.00, 12);

INSERT INTO Orders VALUES
(201, 101, 1, 11, '2026-10-04', '2026-10-06', 'Delivered', '10 Nizami St, Baku', '10 Nizami St, Baku', 2, 110.00, '2026-10-04 10:00:00'),
(202, 103, 3, 12, '2026-10-08', '2026-10-18', 'Shipped', '22 Oak St, Berlin', '22 Oak St, Berlin', 1, 850.00, '2026-10-08 10:00:00'),
(203, 102, 2, 11, '2026-10-12', NULL, 'Pending', NULL, '45 Main St, New York', 1, 230.00, '2026-10-12 10:00:00'),
(204, 105, 5, 12, '2026-10-15', '2026-10-19', 'Delivered', '16 Park Rd, Munich', '16 Park Rd, Munich', 1, 420.00, '2026-10-15 10:00:00'),
(205, 103, 3, 12, '2026-10-20', '2026-10-22', 'Delivered', '22 Oak St, Berlin', '22 Oak St, Berlin', 8, 6800.00, '2026-10-20 10:00:00'),
(206, 105, 2, 11, '2026-10-21', '2026-10-23', 'Delivered', '45 Main St, New York', '9 Pine St, Boston', 3, 1260.00, '2026-10-21 10:00:00'),
(207, 102, 6, 14, '2026-10-22', '2026-10-24', 'Delivered', '31 Oak St, Boston', '31 Oak St, Boston', 4, 920.00, '2026-10-22 10:00:00'),
(208, 101, 4, 11, '2026-10-23', NULL, 'Pending', NULL, '8 Rue Lyon, Paris', 2, 110.00, '2026-10-23 10:00:00'),
(209, 106, 1, 14, '2026-10-24', '2026-10-27', 'Delivered', '10 Nizami St, Baku', '10 Nizami St, Baku', 2, 760.00, '2026-10-24 10:00:00'),
(210, 103, 6, 14, '2026-10-25', NULL, 'Cancelled', '31 Oak St, Boston', '31 Oak St, Boston', 2, 1700.00, '2026-10-25 10:00:00'),
(211, 104, 5, 11, '2026-10-26', '2026-10-28', 'Delivered', '16 Park Rd, Munich', '16 Park Rd, Munich', 10, 120.00, '2026-10-26 10:00:00'),
(212, 105, 3, 12, '2026-10-27', NULL, 'Pending', NULL, '22 Oak St, Berlin', 2, 840.00, '2026-10-27 10:00:00'),
(213, 107, 2, 11, '2026-10-28', '2026-10-30', 'Shipped', '45 Main St, New York', '45 Main St, New York', 3, 135.00, '2026-10-28 10:00:00'),
(214, 103, 8, 14, '2026-10-29', '2026-11-01', 'Delivered', '18 Via Roma, Milan', '18 Via Roma, Milan', 1, 850.00, '2026-10-29 10:00:00'),
(215, 106, 5, 12, '2026-10-30', NULL, 'Pending', '16 Park Rd, Munich', '16 Park Rd, Munich', 1, 380.00, '2026-10-30 10:00:00'),
(216, 101, 1, 11, '2026-11-02', '2026-11-04', 'Delivered', '10 Nizami St, Baku', '10 Nizami St, Baku', 1, 55.00, '2026-11-02 10:00:00'),
(217, 102, 7, 14, '2026-11-03', '2026-11-05', 'Shipped', '9 River St, Berlin', '9 River St, Berlin', 1, 230.00, '2026-11-03 10:00:00'),
(218, 105, 6, 14, '2026-11-04', NULL, 'Pending', '31 Oak St, Boston', NULL, 1, 420.00, '2026-11-04 10:00:00'),
(219, 103, 3, 12, '2026-11-05', '2026-11-06', 'Shipped', '22 Oak St, Berlin', '22 Oak St, Berlin', 1, 850.00, '2026-11-05 10:00:00'),
(220, 104, 2, 11, '2026-11-06', '2026-11-07', 'Delivered', '45 Main St, New York', '45 Main St, New York', 5, 60.00, '2026-11-06 10:00:00'),
(221, 107, 6, 14, '2026-10-28', NULL, 'Shipped', '31 Oak St, Boston', '31 Oak St, Boston', 1, 45.00, '2026-10-28 10:00:00'),
(222, 102, 4, 11, '2026-10-31', '2026-10-30', 'Shipped', '8 Rue Lyon, Paris', '8 Rue Lyon, Paris', 1, 230.00, '2026-10-31 10:00:00'),
(223, 102, 2, 11, '2026-10-29', '2026-10-31', 'Delivered', '45 Main St, New York', '45 Main St, New York', 1, 230.00, '2026-10-29 10:00:00'),
(224, 101, 3, 12, '2026-11-02', NULL, 'Pending', '22 Oak St, Berlin', '22 Oak St, Berlin', 2, 110.00, '2026-11-02 10:00:00');

-- b01
SELECT * FROM Customers;
SELECT FirstName, LastName, Country FROM Customers;

-- b02
SELECT CustomerID, FirstName, LastName, Country 
FROM Customers 
WHERE Country = 'Germany';

-- b03
SELECT CustomerID, FirstName, LastName, Country, Score 
FROM Customers 
WHERE Score >= 300 AND Country IN ('Germany', 'France');

-- b04
SELECT ProductID, Product, Category, Price 
FROM Products 
ORDER BY Price DESC;

-- b05
SELECT Product, Price 
FROM Products 
WHERE Price BETWEEN 50 AND 300;

-- b06
SELECT Product, Category 
FROM Products 
WHERE Product LIKE '%Phone%';

-- b07
SELECT DISTINCT Category 
FROM Products 
ORDER BY Category ASC;

-- b08
SELECT o.OrderID, c.FirstName, c.LastName 
FROM Orders o
INNER JOIN Customers c ON o.CustomerID = c.CustomerID;

-- b09
SELECT OrderStatus, COUNT(OrderID) AS OrderCount, SUM(Sales) AS TotalSales 
FROM Orders 
GROUP BY OrderStatus 
ORDER BY TotalSales DESC;

-- b10 
INSERT INTO Products (ProductID, Product, Category, Price) 
VALUES (999, 'Test Item', 'Electronics', 50.00);

UPDATE Products 
SET Price = 60.00 
WHERE ProductID = 999;

SELECT * FROM Products WHERE ProductID = 999;

DELETE FROM Products 
WHERE ProductID = 999;


-- 1.1
SELECT FirstName, LastName, Country, Score
FROM Customers
WHERE Score > 500
ORDER BY Score DESC;

-- 1.2
SELECT FirstName, LastName, Country, Score
FROM Customers
WHERE Country IN ('Germany', 'France', 'USA') AND Score >= 300;

-- 1.3
SELECT c.FirstName || ' ' || c.LastName AS CustomerName, o.OrderID, o.OrderDate, o.Sales
FROM Orders o
INNER JOIN Customers c ON o.CustomerID = c.CustomerID;

-- 1.4
SELECT c.CustomerID, c.FirstName, c.LastName, c.Country
FROM Customers c
LEFT JOIN Orders o ON c.CustomerID = o.CustomerID
WHERE o.OrderID IS NULL;

-- 1.5
SELECT c.CustomerID, c.FirstName || ' ' || c.LastName AS CustomerName, c.Country, SUM(o.Sales) AS TotalSales
FROM Customers c
INNER JOIN Orders o ON c.CustomerID = o.CustomerID
GROUP BY c.CustomerID, c.FirstName, c.LastName, c.Country
ORDER BY TotalSales DESC;

-- 1.6
SELECT c.CustomerID, c.FirstName || ' ' || c.LastName AS CustomerName, c.Country, SUM(o.Sales) AS TotalSales
FROM Customers c
INNER JOIN Orders o ON c.CustomerID = o.CustomerID
GROUP BY c.CustomerID, c.FirstName, c.LastName, c.Country
HAVING SUM(o.Sales) > 1000
ORDER BY TotalSales DESC;

-- 1.7
SELECT c.CustomerID, c.FirstName || ' ' || c.LastName AS CustomerName, c.Country, SUM(o.Sales) AS TotalSales
FROM Customers c
INNER JOIN Orders o ON c.CustomerID = o.CustomerID
GROUP BY c.CustomerID, c.FirstName, c.LastName, c.Country
ORDER BY TotalSales DESC
LIMIT 5;


-- Part 2: Scenario 2 (2.1 - 2.9)


-- 2.1
SELECT OrderID, CustomerID, OrderDate, ShipDate, OrderStatus
FROM Orders
WHERE OrderDate BETWEEN '2026-10-01' AND '2026-10-31';

-- 2.2
SELECT *
FROM Orders
WHERE OrderStatus = 'Pending'
ORDER BY OrderDate ASC;

-- 2.3
SELECT o.OrderID, c.FirstName || ' ' || c.LastName AS CustomerName, o.OrderDate, o.ShipDate
FROM Orders o
INNER JOIN Customers c ON o.CustomerID = c.CustomerID
WHERE o.ShipDate IS NOT NULL AND (julianday(o.ShipDate) - julianday(o.OrderDate)) > 7;

-- 2.4
SELECT DISTINCT c.FirstName || ' ' || c.LastName AS CustomerName, c.Country
FROM Orders o
INNER JOIN Customers c ON o.CustomerID = c.CustomerID
WHERE o.ShipDate IS NOT NULL AND (julianday(o.ShipDate) - julianday(o.OrderDate)) > 7;

-- 2.5 (Practice copy modification)
INSERT INTO Orders (OrderID, ProductID, CustomerID, SalesPersonID, OrderDate, ShipDate, OrderStatus, ShipAddress, BillAddress, Quantity, Sales, CreationTime)
VALUES (105, 101, 1, 11, '2026-11-01', NULL, 'Pending', '10 Nizami St, Baku', '10 Nizami St, Baku', 1, 55.00, '2026-11-01 10:00:00');
SELECT * FROM Orders WHERE OrderID = 105;
UPDATE Orders SET OrderStatus = 'Shipped', ShipDate = '2026-11-05' WHERE OrderID = 105;
SELECT * FROM Orders WHERE OrderID = 105;

-- 2.6 (Practice copy modification)
INSERT INTO Orders (OrderID, ProductID, CustomerID, SalesPersonID, OrderDate, ShipDate, OrderStatus, ShipAddress, BillAddress, Quantity, Sales, CreationTime)
VALUES (110, 102, 1, 11, '2026-11-02', NULL, 'Pending', 'Old Address, Baku', 'Old Address, Baku', 1, 230.00, '2026-11-02 10:00:00');
SELECT * FROM Orders WHERE OrderID = 110;
UPDATE Orders SET ShipAddress = '45 Main Street, Baku' WHERE OrderID = 110;
SELECT * FROM Orders WHERE OrderID = 110;

-- 2.7 (Practice copy modification)
INSERT INTO Orders (OrderID, ProductID, CustomerID, SalesPersonID, OrderDate, ShipDate, OrderStatus, ShipAddress, BillAddress, Quantity, Sales, CreationTime)
VALUES (999, 104, 2, 11, '2026-11-03', NULL, 'Pending', 'Test Addr', 'Test Addr', 1, 12.00, '2026-11-03 10:00:00');
SELECT * FROM Orders WHERE OrderID = 999;
DELETE FROM Orders WHERE OrderID = 999;

-- 2.8
SELECT OrderStatus, COUNT(OrderID) AS OrderCount
FROM Orders
GROUP BY OrderStatus;

-- 2.9
SELECT o.OrderID, c.FirstName || ' ' || c.LastName AS CustomerName, o.OrderDate, o.ShipDate, o.OrderStatus
FROM Orders o
INNER JOIN Customers c ON o.CustomerID = c.CustomerID
WHERE o.ShipDate IS NULL;

-- Part 2: SCcenario 3 (3.1 - 3.12)

-- 3.1
SELECT Product, Category, Price
FROM Products
WHERE Price BETWEEN 50 AND 300
ORDER BY Price ASC;

-- 3.2
SELECT ProductID, Product, Category, Price
FROM Products
WHERE Category = 'Electronics' AND Price > 500;

-- 3.3
SELECT p.Product, p.Category, o.Quantity, o.Sales
FROM Products p
INNER JOIN Orders o ON p.ProductID = o.ProductID;

-- 3.4
SELECT p.ProductID, p.Product, SUM(o.Quantity) AS TotalQuantity
FROM Products p
INNER JOIN Orders o ON p.ProductID = o.ProductID
GROUP BY p.ProductID, p.Product
ORDER BY TotalQuantity DESC
LIMIT 5;

-- 3.5
SELECT p.ProductID, p.Product, p.Category, p.Price
FROM Products p
LEFT JOIN Orders o ON p.ProductID = o.ProductID
WHERE o.OrderID IS NULL;

-- 3.6
SELECT e.EmployeeID, e.FirstName || ' ' || e.LastName AS EmployeeName, e.Department, COALESCE(SUM(o.Sales), 0) AS TotalSales
FROM Employees e
LEFT JOIN Orders o ON e.EmployeeID = o.SalesPersonID
GROUP BY e.EmployeeID, e.FirstName, e.LastName, e.Department;

-- 3.7
SELECT e.EmployeeID, e.FirstName || ' ' || e.LastName AS EmployeeName, e.Department, SUM(o.Sales) AS TotalSales
FROM Employees e
INNER JOIN Orders o ON e.EmployeeID = o.SalesPersonID
GROUP BY e.EmployeeID, e.FirstName, e.LastName, e.Department
HAVING SUM(o.Sales) > 5000
ORDER BY TotalSales DESC;

-- 3.8 (Practice copy modification)
INSERT INTO Products (ProductID, Product, Category, Price)
VALUES (501, 'Wireless Keyboard', 'Electronics', 75.00);

-- 3.9 (Practice copy modification)
UPDATE Products
SET Price = 90.00
WHERE ProductID = 501;

-- 3.10 (Practice copy modification)
ALTER TABLE Products ADD COLUMN StockQuantity INTEGER;

-- 3.11
SELECT FirstName, LastName FROM Customers
UNION
SELECT FirstName, LastName FROM Employees;

-- 3.12
SELECT p.Category, SUM(o.Quantity) AS TotalQuantity, SUM(o.Sales) AS TotalSales
FROM Products p
INNER JOIN Orders o ON p.ProductID = o.ProductID
GROUP BY p.Category
HAVING SUM(o.Sales) > 2000
ORDER BY TotalSales DESC;

-- Part 2: Scenario 4 (4.1 - 4.10 - Clean Reference Data)

-- 4.1
SELECT o.OrderID, o.OrderDate, c.CustomerID, c.FirstName || ' ' || c.LastName AS CustomerName,
       c.Country, p.Product, p.Category, e.FirstName || ' ' || e.LastName AS EmployeeName,
       o.Quantity, o.Sales
FROM Orders o
INNER JOIN Customers c ON o.CustomerID = c.CustomerID
INNER JOIN Products p ON o.ProductID = p.ProductID
INNER JOIN Employees e ON o.SalesPersonID = e.EmployeeID
WHERE o.OrderStatus IN ('Shipped', 'Delivered')
  AND o.ShipDate IS NOT NULL
  AND o.ShipDate >= o.OrderDate
  AND o.OrderDate BETWEEN '2026-10-01' AND '2026-10-31'
  AND c.Country IN ('Germany', 'France', 'USA')
ORDER BY c.Country, o.OrderDate, o.OrderID;

-- 4.2
SELECT o.OrderID, c.CustomerID, c.FirstName || ' ' || c.LastName AS CustomerName,
       c.Country, c.Score, p.Product, o.Sales
FROM Orders o
INNER JOIN Customers c ON o.CustomerID = c.CustomerID
INNER JOIN Products p ON o.ProductID = p.ProductID
WHERE o.OrderStatus IN ('Shipped', 'Delivered')
  AND o.ShipDate IS NOT NULL
  AND o.ShipDate >= o.OrderDate
  AND o.OrderDate BETWEEN '2026-10-01' AND '2026-10-31'
  AND c.Country IN ('Germany', 'France', 'USA')
  AND p.Category = 'Electronics'
  AND (c.Score >= 500 OR o.Sales >= 1000);

-- 4.3
SELECT ProductID, Product, Category, Price
FROM Products
WHERE Category = 'Electronics'
  AND Price BETWEEN 40 AND 100
  AND (Product LIKE '%Wireless%' OR Product LIKE '%USB%')
ORDER BY Price ASC, ProductID ASC;

-- 4.4
SELECT DISTINCT c.CustomerID, c.FirstName, c.LastName, c.Country, c.Score
FROM Customers c
INNER JOIN Orders o ON c.CustomerID = o.CustomerID
INNER JOIN Products p ON o.ProductID = p.ProductID
WHERE o.OrderStatus IN ('Shipped', 'Delivered')
  AND o.ShipDate IS NOT NULL
  AND o.ShipDate >= o.OrderDate
  AND o.OrderDate BETWEEN '2026-10-01' AND '2026-10-31'
  AND c.Country IN ('Germany', 'France', 'USA')
  AND c.Score >= 500
  AND p.Category = 'Electronics';

-- 4.5
SELECT c.CustomerID, c.FirstName || ' ' || c.LastName AS CustomerName,
       COUNT(o.OrderID) AS OrderCount, SUM(o.Quantity) AS TotalQuantity, SUM(o.Sales) AS TotalSales
FROM Customers c
INNER JOIN Orders o ON c.CustomerID = o.CustomerID
WHERE o.OrderStatus IN ('Shipped', 'Delivered')
  AND o.ShipDate IS NOT NULL
  AND o.ShipDate >= o.OrderDate
  AND o.OrderDate BETWEEN '2026-10-01' AND '2026-10-31'
  AND c.Country IN ('Germany', 'France', 'USA')
GROUP BY c.CustomerID, c.FirstName, c.LastName
HAVING COUNT(o.OrderID) >= 2 AND SUM(o.Sales) >= 1000
ORDER BY TotalSales DESC, c.CustomerID ASC;

-- 4.6
SELECT c.Country, p.Category, COUNT(o.OrderID) AS OrderCount,
       SUM(o.Quantity) AS TotalQuantity, SUM(o.Sales) AS TotalSales
FROM Orders o
INNER JOIN Customers c ON o.CustomerID = c.CustomerID
INNER JOIN Products p ON o.ProductID = p.ProductID
WHERE o.OrderStatus IN ('Shipped', 'Delivered')
  AND o.ShipDate IS NOT NULL
  AND o.ShipDate >= o.OrderDate
  AND o.OrderDate BETWEEN '2026-10-01' AND '2026-10-31'
  AND c.Country IN ('Germany', 'France', 'USA')
GROUP BY c.Country, p.Category
HAVING SUM(o.Sales) > 500;

-- 4.7
SELECT c.CustomerID, c.FirstName || ' ' || c.LastName AS CustomerName, c.Country, c.Score
FROM Customers c
LEFT JOIN Orders o ON c.CustomerID = o.CustomerID
  AND o.OrderStatus IN ('Shipped', 'Delivered')
  AND o.ShipDate IS NOT NULL
  AND o.ShipDate >= o.OrderDate
  AND o.OrderDate BETWEEN '2026-10-01' AND '2026-10-31'
WHERE c.Country IN ('Germany', 'France', 'USA')
  AND o.OrderID IS NULL;

-- 4.8
SELECT o.CustomerID
FROM Orders o
INNER JOIN Customers c ON o.CustomerID = c.CustomerID
INNER JOIN Products p ON o.ProductID = p.ProductID
WHERE o.OrderStatus IN ('Shipped', 'Delivered') AND o.ShipDate IS NOT NULL AND o.ShipDate >= o.OrderDate
  AND o.OrderDate BETWEEN '2026-10-01' AND '2026-10-31' AND c.Country IN ('Germany', 'France', 'USA')
  AND p.Category = 'Electronics'
INTERSECT
SELECT o.CustomerID
FROM Orders o
INNER JOIN Customers c ON o.CustomerID = c.CustomerID
INNER JOIN Products p ON o.ProductID = p.ProductID
WHERE o.OrderStatus IN ('Shipped', 'Delivered') AND o.ShipDate IS NOT NULL AND o.ShipDate >= o.OrderDate
  AND o.OrderDate BETWEEN '2026-10-01' AND '2026-10-31' AND c.Country IN ('Germany', 'France', 'USA')
  AND p.Category = 'Furniture';

-- 4.9
SELECT CustomerID FROM (
    SELECT o.CustomerID
    FROM Orders o
    INNER JOIN Customers c ON o.CustomerID = c.CustomerID
    INNER JOIN Products p ON o.ProductID = p.ProductID
    WHERE o.OrderStatus IN ('Shipped', 'Delivered') AND o.ShipDate IS NOT NULL AND o.ShipDate >= o.OrderDate
      AND o.OrderDate BETWEEN '2026-10-01' AND '2026-10-31' AND c.Country IN ('Germany', 'France', 'USA')
      AND p.Category = 'Electronics'
    UNION
    SELECT o.CustomerID
    FROM Orders o
    INNER JOIN Customers c ON o.CustomerID = c.CustomerID
    INNER JOIN Products p ON o.ProductID = p.ProductID
    WHERE o.OrderStatus IN ('Shipped', 'Delivered') AND o.ShipDate IS NOT NULL AND o.ShipDate >= o.OrderDate
      AND o.OrderDate BETWEEN '2026-10-01' AND '2026-10-31' AND c.Country IN ('Germany', 'France', 'USA')
      AND p.Category = 'Furniture'
)
ORDER BY CustomerID ASC;

-- 4.10
SELECT CustomerID FROM (
    SELECT o.CustomerID
    FROM Orders o
    INNER JOIN Customers c ON o.CustomerID = c.CustomerID
    INNER JOIN Products p ON o.ProductID = p.ProductID
    WHERE o.OrderStatus IN ('Shipped', 'Delivered') AND o.ShipDate IS NOT NULL AND o.ShipDate >= o.OrderDate
      AND o.OrderDate BETWEEN '2026-10-01' AND '2026-10-31' AND c.Country IN ('Germany', 'France', 'USA')
      AND p.Category = 'Electronics'
    EXCEPT
    SELECT o.CustomerID
    FROM Orders o
    INNER JOIN Customers c ON o.CustomerID = c.CustomerID
    INNER JOIN Products p ON o.ProductID = p.ProductID
    WHERE o.OrderStatus IN ('Shipped', 'Delivered') AND o.ShipDate IS NOT NULL AND o.ShipDate >= o.OrderDate
      AND o.OrderDate BETWEEN '2026-10-01' AND '2026-10-31' AND c.Country IN ('Germany', 'France', 'USA')
      AND p.Category = 'Furniture'
)
ORDER BY CustomerID ASC;

-- PART II: SCENARIO 5 (5.1 - 5.10)

-- 5.1
SELECT o.OrderID, o.OrderDate, c.FirstName || ' ' || c.LastName AS CustomerName,
       c.Country, p.Product, o.Quantity, o.Sales,
       e.FirstName || ' ' || e.LastName AS EmployeeName, o.ShipAddress
FROM Orders o
INNER JOIN Customers c ON o.CustomerID = c.CustomerID
INNER JOIN Products p ON o.ProductID = p.ProductID
INNER JOIN Employees e ON o.SalesPersonID = e.EmployeeID
WHERE o.OrderStatus = 'Pending' AND o.OrderDate <= '2026-11-07'
ORDER BY o.OrderDate ASC;

-- 5.2
SELECT o.OrderID, c.FirstName || ' ' || c.LastName AS CustomerName,
       o.OrderDate, p.Product, e.FirstName || ' ' || e.LastName AS EmployeeName, o.Sales
FROM Orders o
INNER JOIN Customers c ON o.CustomerID = c.CustomerID
INNER JOIN Products p ON o.ProductID = p.ProductID
INNER JOIN Employees e ON o.SalesPersonID = e.EmployeeID
WHERE o.OrderStatus = 'Pending'
  AND o.ShipDate IS NULL
  AND o.OrderDate < '2026-10-31';

-- 5.3
SELECT o.OrderID, c.CustomerID, c.FirstName || ' ' || c.LastName AS CustomerName,
       e.FirstName || ' ' || e.LastName AS EmployeeName, o.ShipAddress
FROM Orders o
INNER JOIN Customers c ON o.CustomerID = c.CustomerID
INNER JOIN Employees e ON o.SalesPersonID = e.EmployeeID
WHERE o.OrderStatus = 'Pending'
  AND (o.ShipAddress IS NULL OR TRIM(o.ShipAddress) = '');

-- 5.4
SELECT o.OrderID, c.FirstName || ' ' || c.LastName AS CustomerName,
       o.ShipAddress, o.BillAddress, o.OrderStatus
FROM Orders o
INNER JOIN Customers c ON o.CustomerID = c.CustomerID
WHERE o.OrderStatus <> 'Cancelled'
  AND o.ShipAddress IS NOT NULL AND TRIM(o.ShipAddress) <> ''
  AND o.BillAddress IS NOT NULL AND TRIM(o.BillAddress) <> ''
  AND o.ShipAddress <> o.BillAddress;

-- 5.5
SELECT o.OrderID, o.OrderStatus, o.OrderDate, o.ShipDate,
       c.FirstName || ' ' || c.LastName AS CustomerName,
       e.FirstName || ' ' || e.LastName AS EmployeeName
FROM Orders o
INNER JOIN Customers c ON o.CustomerID = c.CustomerID
INNER JOIN Employees e ON o.SalesPersonID = e.EmployeeID
WHERE o.ShipDate < o.OrderDate
   OR (o.OrderStatus IN ('Shipped', 'Delivered') AND o.ShipDate IS NULL);

-- 5.6
SELECT o.OrderID, c.FirstName || ' ' || c.LastName AS CustomerName,
       p.Product, o.OrderDate, o.ShipDate,
       CAST(julianday(o.ShipDate) - julianday(o.OrderDate) AS INTEGER) AS DaysToShip
FROM Orders o
INNER JOIN Customers c ON o.CustomerID = c.CustomerID
INNER JOIN Products p ON o.ProductID = p.ProductID
WHERE o.OrderStatus <> 'Cancelled'
  AND o.ShipDate IS NOT NULL
  AND o.ShipDate >= o.OrderDate
  AND (julianday(o.ShipDate) - julianday(o.OrderDate)) > 7
ORDER BY DaysToShip DESC, o.OrderID ASC;

-- 5.7
SELECT e.EmployeeID, e.FirstName || ' ' || e.LastName AS EmployeeName,
       COUNT(o.OrderID) AS PendingOrderCount, COALESCE(SUM(o.Sales), 0) AS PendingSales
FROM Employees e
LEFT JOIN Orders o ON e.EmployeeID = o.SalesPersonID
  AND o.OrderStatus = 'Pending'
  AND o.ShipDate IS NULL
WHERE e.Department = 'Sales'
GROUP BY e.EmployeeID, e.FirstName, e.LastName;

-- 5.8
SELECT c.CustomerID, c.FirstName || ' ' || c.LastName AS CustomerName,
       COUNT(o.OrderID) AS PendingOrderCount, SUM(o.Sales) AS PendingSales
FROM Customers c
INNER JOIN Orders o ON c.CustomerID = o.CustomerID
WHERE o.OrderStatus = 'Pending' AND o.ShipDate IS NULL
GROUP BY c.CustomerID, c.FirstName, c.LastName
HAVING COUNT(o.OrderID) >= 2;

-- 5.9
SELECT o.OrderID, c.FirstName || ' ' || c.LastName AS CustomerName,
       c.Country, p.Product, o.Sales, o.OrderStatus, o.OrderDate, o.ShipDate
FROM Orders o
INNER JOIN Customers c ON o.CustomerID = c.CustomerID
INNER JOIN Products p ON o.ProductID = p.ProductID
WHERE o.OrderStatus <> 'Cancelled'
  AND c.Country IN ('Germany', 'USA')
  AND o.Sales >= 500
  AND (
      (o.OrderStatus = 'Pending' AND o.ShipDate IS NULL)
      OR (o.ShipDate IS NOT NULL AND o.ShipDate >= o.OrderDate AND (julianday(o.ShipDate) - julianday(o.OrderDate)) > 7)
  );

-- 5.10
SELECT o.OrderID, c.FirstName || ' ' || c.LastName AS CustomerName,
       c.Country, p.Product, o.Quantity, o.ShipAddress,
       e.FirstName || ' ' || e.LastName AS EmployeeName
FROM Orders o
INNER JOIN Customers c ON o.CustomerID = c.CustomerID
INNER JOIN Products p ON o.ProductID = p.ProductID
INNER JOIN Employees e ON o.SalesPersonID = e.EmployeeID
WHERE o.OrderStatus = 'Pending'
  AND o.ShipDate IS NULL
  AND o.ShipAddress IS NOT NULL AND TRIM(o.ShipAddress) <> ''
ORDER BY c.Country, o.OrderDate, o.OrderID;

-- ==========================================
-- PART II: SCENARIO 6 (6.1 - 6.10)
-- ==========================================

-- 6.1
SELECT e.EmployeeID, e.FirstName || ' ' || e.LastName AS EmployeeName, e.Department,
       e.ManagerID, m.FirstName || ' ' || m.LastName AS ManagerName
FROM Employees e
LEFT JOIN Employees m ON e.ManagerID = m.EmployeeID;

-- 6.2
SELECT e.EmployeeID, e.FirstName || ' ' || e.LastName AS EmployeeName,
       COUNT(o.OrderID) AS OrderCount, COALESCE(SUM(o.Quantity), 0) AS TotalQuantity,
       COALESCE(SUM(o.Sales), 0) AS TotalSales
FROM Employees e
LEFT JOIN Orders o ON e.EmployeeID = o.SalesPersonID
  AND o.OrderStatus IN ('Shipped', 'Delivered')
  AND o.ShipDate IS NOT NULL
  AND o.ShipDate >= o.OrderDate
  AND o.OrderDate BETWEEN '2026-10-01' AND '2026-10-31'
WHERE e.Department = 'Sales'
GROUP BY e.EmployeeID, e.FirstName, e.LastName
ORDER BY TotalSales DESC, e.EmployeeID ASC;

-- 6.3
SELECT m.EmployeeID AS ManagerID, m.FirstName || ' ' || m.LastName AS ManagerName,
       COUNT(DISTINCT e.EmployeeID) AS DirectSalesStaffCount,
       COUNT(o.OrderID) AS TeamOrderCount,
       COALESCE(SUM(o.Sales), 0) AS TeamSales
FROM Employees m
INNER JOIN Employees e ON m.EmployeeID = e.ManagerID AND e.Department = 'Sales'
LEFT JOIN Orders o ON e.EmployeeID = o.SalesPersonID
  AND o.OrderStatus IN ('Shipped', 'Delivered')
  AND o.ShipDate IS NOT NULL
  AND o.ShipDate >= o.OrderDate
  AND o.OrderDate BETWEEN '2026-10-01' AND '2026-10-31'
GROUP BY m.EmployeeID, m.FirstName, m.LastName;

-- 6.4
SELECT e.EmployeeID, e.FirstName || ' ' || e.LastName AS EmployeeName,
       COUNT(o.OrderID) AS OrderCount, SUM(o.Sales) AS TotalSales
FROM Employees e
INNER JOIN Orders o ON e.EmployeeID = o.SalesPersonID
WHERE e.Department = 'Sales'
  AND o.OrderStatus IN ('Shipped', 'Delivered')
  AND o.ShipDate IS NOT NULL
  AND o.ShipDate >= o.OrderDate
  AND o.OrderDate BETWEEN '2026-10-01' AND '2026-10-31'
GROUP BY e.EmployeeID, e.FirstName, e.LastName
HAVING COUNT(o.OrderID) >= 2 AND SUM(o.Sales) >= 1000
ORDER BY TotalSales DESC, e.EmployeeID ASC;

-- 6.5
SELECT e.EmployeeID, e.FirstName || ' ' || e.LastName AS EmployeeName,
       COUNT(DISTINCT o.CustomerID) AS DistinctCustomers,
       COUNT(DISTINCT c.Country) AS DistinctCountries
FROM Employees e
LEFT JOIN Orders o ON e.EmployeeID = o.SalesPersonID
  AND o.OrderStatus IN ('Shipped', 'Delivered')
  AND o.ShipDate IS NOT NULL
  AND o.ShipDate >= o.OrderDate
  AND o.OrderDate BETWEEN '2026-10-01' AND '2026-10-31'
LEFT JOIN Customers c ON o.CustomerID = c.CustomerID
WHERE e.Department = 'Sales'
GROUP BY e.EmployeeID, e.FirstName, e.LastName;

-- 6.6
SELECT e.EmployeeID, e.FirstName || ' ' || e.LastName AS EmployeeName, e.Department
FROM Employees e
LEFT JOIN Orders o ON e.EmployeeID = o.SalesPersonID
  AND o.OrderStatus IN ('Shipped', 'Delivered')
  AND o.ShipDate IS NOT NULL
  AND o.ShipDate >= o.OrderDate
  AND o.OrderDate BETWEEN '2026-10-01' AND '2026-10-31'
WHERE e.Department = 'Sales' AND o.OrderID IS NULL;

-- 6.7
SELECT CustomerID FROM (
    SELECT o.CustomerID FROM Orders o
    WHERE o.OrderStatus IN ('Shipped', 'Delivered') AND o.ShipDate IS NOT NULL AND o.ShipDate >= o.OrderDate
      AND o.OrderDate BETWEEN '2026-10-01' AND '2026-10-31'
    INTERSECT
    SELECT o.CustomerID FROM Orders o
    WHERE o.OrderStatus IN ('Shipped', 'Delivered') AND o.ShipDate IS NOT NULL AND o.ShipDate >= o.OrderDate
      AND o.OrderDate BETWEEN '2026-11-01' AND '2026-11-07'
)
ORDER BY CustomerID ASC;

-- 6.8
SELECT CustomerID FROM (
    SELECT o.CustomerID FROM Orders o
    WHERE o.OrderStatus IN ('Shipped', 'Delivered') AND o.ShipDate IS NOT NULL AND o.ShipDate >= o.OrderDate
      AND o.OrderDate BETWEEN '2026-10-01' AND '2026-10-31'
    EXCEPT
    SELECT o.CustomerID FROM Orders o
    WHERE o.OrderStatus IN ('Shipped', 'Delivered') AND o.ShipDate IS NOT NULL AND o.ShipDate >= o.OrderDate
      AND o.OrderDate BETWEEN '2026-11-01' AND '2026-11-07'
)
ORDER BY CustomerID ASC;

-- 6.9
SELECT CustomerID FROM (
    SELECT o.CustomerID FROM Orders o
    WHERE o.OrderStatus IN ('Shipped', 'Delivered') AND o.ShipDate IS NOT NULL AND o.ShipDate >= o.OrderDate
      AND o.OrderDate BETWEEN '2026-11-01' AND '2026-11-07'
    EXCEPT
    SELECT o.CustomerID FROM Orders o
    WHERE o.OrderStatus IN ('Shipped', 'Delivered') AND o.ShipDate IS NOT NULL AND o.ShipDate >= o.OrderDate
      AND o.OrderDate BETWEEN '2026-10-01' AND '2026-10-31'
)
ORDER BY CustomerID ASC;

-- 6.10
SELECT 'October 2026' AS PeriodLabel, o.OrderID, o.OrderDate, c.CustomerID,
       c.FirstName || ' ' || c.LastName AS CustomerName,
       e.FirstName || ' ' || e.LastName AS EmployeeName, o.Sales
FROM Orders o
INNER JOIN Customers c ON o.CustomerID = c.CustomerID
INNER JOIN Employees e ON o.SalesPersonID = e.EmployeeID
WHERE o.OrderStatus IN ('Shipped', 'Delivered') AND o.ShipDate IS NOT NULL AND o.ShipDate >= o.OrderDate
  AND o.OrderDate BETWEEN '2026-10-01' AND '2026-10-31'
UNION ALL
SELECT 'November 01-07' AS PeriodLabel, o.OrderID, o.OrderDate, c.CustomerID,
       c.FirstName || ' ' || c.LastName AS CustomerName,
       e.FirstName || ' ' || e.LastName AS EmployeeName, o.Sales
FROM Orders o
INNER JOIN Customers c ON o.CustomerID = c.CustomerID
INNER JOIN Employees e ON o.SalesPersonID = e.EmployeeID
WHERE o.OrderStatus IN ('Shipped', 'Delivered') AND o.ShipDate IS NOT NULL AND o.ShipDate >= o.OrderDate
  AND o.OrderDate BETWEEN '2026-11-01' AND '2026-11-07'
ORDER BY OrderDate ASC, OrderID ASC;
