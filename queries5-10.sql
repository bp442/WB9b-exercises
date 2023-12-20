-- 1. Add a new supplier
INSERT INTO suppliers (SupplierID, CompanyName, ContactName, ContactTitle, Address, City, Region, PostalCode, Country, Phone, Fax, HomePage)
VALUES (30, "Deep Frozen Packaging", "Brian Park", "Supreme Overlord", "1 Origin Lane", "The Moon", "MOON", "00000", "Space", "NONE","NONE", "NONE");
----------------------------------------------------------
-- 2. Add a product from that supplier
INSERT INTO products (productID, ProductName, SupplierID, CategoryID, QuantityPerUnit, UnitPrice, UnitsInStock, UnitsOnOrder, ReorderLevel, Discontinued)
VALUES (78, "Freeze Dried Ice Cream", 30, 7, "4, 250g packs", 16.0000, 37, 0, 30, 0);
----------------------------------------------------------
-- 3. List all products and their suppliers
SELECT ProductID, ProductName, SupplierID, UnitPrice
FROM products;
----------------------------------------------------------
-- 4. Raise the price of your new product by 15%
UPDATE products
SET UnitPrice = UnitPrice * 1.15
WHERE productID = 78;
----------------------------------------------------------
-- 5. List the products and prices of all products from that supplier
SELECT ProductID, ProductName, SupplierID, UnitPrice
FROM products
WHERE SupplierID = 30;
----------------------------------------------------------
-- 6. Delete the new product
DELETE FROM products
WHERE ProductID = 78;
----------------------------------------------------------
-- 7. Delete the new supplier
DELETE FROM suppliers
WHERE SupplierID = 30;
----------------------------------------------------------
-- 8. List all products
SELECT *
FROM products;
----------------------------------------------------------
-- 9. List all suppliers
SELECT *
FROM suppliers;