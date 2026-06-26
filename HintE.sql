#Sales by Category
CREATE VIEW vw_sales_by_category AS
SELECT products.Category, SUM(orders.Sales) AS Total_Sales, AVG(orders.Sales) AS Average_Sales, SUM(orders.Profit) AS Total_Profit
FROM orders
JOIN products
    ON orders.`Product ID` = products.`Product ID`
GROUP BY products.Category;

#Sales by Region 
CREATE VIEW vw_sales_by_region AS
SELECT customers.Region, SUM(orders.Sales) AS Total_Sales, AVG(orders.Sales) AS Average_Sales, SUM(orders.Profit) AS Total_Profit
FROM orders
JOIN customers
    ON orders.`Customer ID` = customers.`Customer ID`
GROUP BY customers.Region;