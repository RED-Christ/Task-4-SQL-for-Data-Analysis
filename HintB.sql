CREATE TABLE customers AS
SELECT DISTINCT `Customer ID`, `Customer Name`, Segment, City, State, Region
FROM superstore;

CREATE TABLE products AS
SELECT DISTINCT `Product ID`, `Product Name`, Category, `Sub-Category`
FROM superstore;

CREATE TABLE orders AS
SELECT `Order ID`, `Order Date`, `Ship Date`, `Ship Mode`, `Customer ID`, `Product ID`, Sales, Quantity, Discount, Profit
FROM superstore;

SELECT orders.`Order ID`, customers.`Customer Name`, customers.State, orders.Sales, orders.Profit
FROM orders
INNER JOIN customers
    ON orders.`Customer ID` = customers.`Customer ID`;
    
SELECT customers.`Customer Name`, customers.State, orders.`Order ID`, orders.Sales
FROM customers
LEFT JOIN orders
    ON customers.`Customer ID` = orders.`Customer ID`;
    
SELECT customers.`Customer Name`, orders.`Order ID`, orders.Sales
FROM customers
RIGHT JOIN orders
    ON customers.`Customer ID` = orders.`Customer ID`;