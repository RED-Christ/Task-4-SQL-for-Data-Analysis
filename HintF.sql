ALTER TABLE orders
MODIFY COLUMN `Order ID` VARCHAR(20),
MODIFY COLUMN `Order Date` VARCHAR(20),
MODIFY COLUMN `Ship Date` VARCHAR(20),
MODIFY COLUMN `Ship Mode` VARCHAR(30),
MODIFY COLUMN `Customer ID` VARCHAR(20),
MODIFY COLUMN `Product ID` VARCHAR(20);

CREATE INDEX idx_orders_customer_id
ON orders (`Customer ID`);

CREATE INDEX idx_orders_product_id
ON orders (`Product ID`);

ALTER TABLE customers
MODIFY COLUMN `Customer ID` VARCHAR(20),
MODIFY COLUMN `Customer Name` VARCHAR(30),
MODIFY COLUMN `Segment` VARCHAR(20),
MODIFY COLUMN `City` VARCHAR(30),
MODIFY COLUMN `State` VARCHAR(20),
MODIFY COLUMN `Region` VARCHAR(20);

CREATE INDEX idx_customers_customer_id
ON customers (`Customer ID`);

ALTER TABLE products
MODIFY COLUMN `Product ID` VARCHAR(20),
MODIFY COLUMN `Product Name` VARCHAR(200),
MODIFY COLUMN `Category` VARCHAR(20),
MODIFY COLUMN `Sub-Category` VARCHAR(20);

CREATE INDEX idx_products_product_id
ON products (`Product ID`);