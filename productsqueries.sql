
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
-- 6. What are the products that we carry where we have at least 100 units on hand?
-- Order them in descending order by price. If they have the same price, list by product name in ascending order
SELECT productName, UnitPrice
FROM products
WHERE UnitsInStock > 100
ORDER BY UnitPrice DESC, productName ASC;
------------------------------------------------------------------------
-- 7. What are the products that we carry where we have no units on hand, but 1
-- or more units of them are on backorder? Order by product name
SELECT productName, UnitsInStock, UnitsOnOrder
FROM products
WHERE UnitsInStock = 0 AND UnitsOnOrder >= 1
ORDER BY ProductName;
------------------------------------------------------------------------
-- 8. What is the name of the table that holds the types (categories) of the items
-- Northwind sells?
-- ANSWER : categories
------------------------------------------------------------------------
-- 9. Write a query that lists all the columns and all of the rows of the categories table?
-- What is the category id of seafood?
SELECT *
FROM categories;
-- seafood id is 8
------------------------------------------------------------------------
-- 10. Examine the products table. How does it identify the category of each item?
-- Write a query to list all of the seafood items we carry.
SELECT *
FROM products
WHERE CategoryID = 8;
------------------------------------------------------------------------
-- 11. What are the first and last names of all the employees?
SELECT FirstName, LastName
FROM employees;
------------------------------------------------------------------------
-- 12. What employees have "manager" in their titles?
SELECT FirstName, LastName, Title
FROM employees
WHERE Title LIKE "%Manager%";
------------------------------------------------------------------------
-- 13. List the distinct job titles in employees
SELECT DISTINCT Title
FROM employees;
------------------------------------------------------------------------
-- 14. What employees have a salary between $2000 and $2500?
SELECT FirstName, LastName, Salary
FROM employees
WHERE Salary BETWEEN 2000 AND 2500;
------------------------------------------------------------------------
-- 15. List all the information about all of Northwind's suppliers
SELECT *
FROM suppliers;
------------------------------------------------------------------------
-- 16. Examine the products table. How do you know what supplier supplies
-- which product? Write a query to list all of the items that "Tokyo Traders"
-- supplies to Northwind
SELECT SupplierID, CompanyName
FROM suppliers;

SELECT *
FROM products
WHERE SupplierID = 4;
------------------------------------------------------------------------
-- What are the products that we carry where we have no units on handler
------------------------------------------------------------------------
SELECT * from products