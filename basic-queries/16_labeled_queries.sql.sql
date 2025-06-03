// 1
SELECT * FROM products;

// 2 
SELECT ProductID, ProductName, UnitPrice
FROM northwind.products;

//3
SELECT ProductID, ProductName, UnitPrice
FROM northwind.products
ORDER BY UnitPrice;

// 4
SELECT * FROM northwind.products
WHERE UnitPrice <= 7.50;

//5

