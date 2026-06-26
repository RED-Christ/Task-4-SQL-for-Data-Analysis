SELECT SUM(Sales) AS Total_Sales
FROM orders;

SELECT AVG(Sales) AS Average_Sales
FROM orders;

SELECT SUM(Profit) AS Total_Profit
FROM orders;

SELECT AVG(Profit) AS Average_Profit
FROM orders;

SELECT customers.Region, SUM(orders.Sales) AS Total_Sales
FROM orders
JOIN customers
    ON orders.`Customer ID` = customers.`Customer ID`
GROUP BY customers.Region
ORDER BY Total_Sales DESC;