-- 1. How many suppliers are there? Use a query!
SELECT Count(SupplierID)
FROM suppliers;

----------------------------------------------------------------------
-- 2. What is the sum of all the employee's salaries?
SELECT SUM(Salary)
FROM employees;
----------------------------------------------------------------------
-- 3. What is the price of the cheapest item that Northwind sells?
SELECT MIN(UnitPrice)
FROM products;
----------------------------------------------------------------------
-- 4. What is the average price of items that Northwind sells?
SELECT AVG(UnitPrice)
FROM products;
----------------------------------------------------------------------
-- 5. What is the price of the most expensive item that Northwind sells?
SELECT MAX(UnitPrice)
FROM products;
----------------------------------------------------------------------
-- 6. What is the supplier ID of each supplier and the number of items they supply? You can answer this query by
-- only looking at the Products table
SELECT supplierID, COUNT(*)
FROM products
GROUP BY supplierID;
----------------------------------------------------------------------
-- 7. What is the category ID of each category and the average price of each
-- item in the category? You can answer this query by only looking at products.
SELECT categoryID, AVG(UnitPrice)
FROM products
GROUP BY categoryID;
----------------------------------------------------------------------
-- 8. For suppliers that provide at least 5 items to Northwind, what is the supplier
-- ID of each supplier and the number of items they supply? Only look at products.
SELECT supplierID, COUNT(*)
FROM products
GROUP BY supplierID
HAVING COUNT(*) >= 5;
----------------------------------------------------------------------
-- 9. List the product id, name, and inventory value (unit price * num units).
-- Sort the results in descending order, and if they have the same value, order by name
SELECT ProductID, ProductName, UnitPrice * UnitsInStock AS inventoryValue
FROM products
ORDER BY inventoryValue DESC, ProductName;
----------------------------------------------------------------------