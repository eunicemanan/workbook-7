-- 1. List the product id, product name, unit price and category name of all
-- products. Order by category name and within that, by product name.
select
productid,
productname,
unitprice,
products.categoryid,
categories .*
from products
inner join categories on products.categoryid = categories.categoryid
order by CategoryName, ProductName;
-- inner join table2 on tablel.idcolumn = table2.idcolumnfortable2

-- 2. List the product id, product name, unit price and supplier name of all
-- products that cost more than $75. Order by product name. 
select 
ProductID, 
ProductName, 
UnitPrice
CompanyName
from products
inner  join suppliers on products.SupplierID = suppliers.SupplierID
where UnitPrice > 75
order by ProductName;0

-- 3. List the product id, product name, unit price, category name, and supplier
-- name of every product. Order by product name.
select ProductID, ProductName, UnitPrice, CategoryName, CompanyName
from products
join categories on products.CategoryID = categories.CategoryID
join suppliers on products.SupplierID = suppliers.SupplierID
order by ProductName; 

-- 4. What is the product name(s) and categories of the most expensive
-- products? HINT: Find the max price in a subquery and then use that in
-- your more complex query that joins products with categories.
select ProductName, categories.CategoryName, UnitPrice
from products
join categories on products.CategoryID = categories.CategoryID
where products.UnitPrice = ( 
	select MAX(UnitPrice)
    from products);



-- 5. List the order id, ship name, ship address, and shipping company name of
-- every order that shipped to Germany.
select OrderID,

-- 6. List the order id, order date, ship name, ship address of all orders that
-- ordered "Sasquatch Ale"?