
------------------------------------------------------------------------
-- 1. What is the name of the table that holds the items Northwind sells?
-- products
------------------------------------------------------------------------
-- 2. Write a query to list the product id, product name, and unit price of every product

SELECT productID, productName, UnitPrice
FROM products;
------------------------------------------------------------------------
-- 3. Write a query to list the product id, product name, and unit price of every product.
-- This time, order them in ascending order by price

SELECT productID, productName, UnitPrice
FROM products
ORDER BY UnitPrice ASC;
------------------------------------------------------------------------
-- 4. What are the products that we carry where the unit price is $7.50 or less?
SELECT productID, productName, UnitPrice
FROM products
WHERE UnitPrice < 7.5;
------------------------------------------------------------------------
-- 5. What are the products that we carry where we have at least 100 units on hand?
-- Order them in descending order by price
SELECT productName, UnitPrice
FROM products
WHERE UnitsInStock > 100
ORDER BY UnitPrice DESC;
------------------------------------------------------------------------
-- What are the products that we carry where we have no units on handler
------------------------------------------------------------------------
SELECT * from products