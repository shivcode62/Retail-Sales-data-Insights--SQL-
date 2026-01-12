
-- total sales and profit 
SELECT SUM(sales) as total_sales,
 SUM(Profit) as total_profit
FROM sales_data;

-- total orders 
SELECT COUNT(DISTINCT order_id) AS  total_orders
FROM sales_data;

-- profit margin 
SELECT (SUM(Profit)/ SUM(sales) )* 100 AS  profit_margin FROM sales_data;

-- sales and profit by region 
SELECT region ,
SUM(sales) as total_sales,
SUM(profit) as total_profit
FROM sales_data 
GROUP BY region 
ORDER BY total_sales DESC;

-- CATEGORY (product) Performance 
SELECT category,
SUM(sales) as total_sales,
SUM(profit) as total_profit
FROM sales_data
GROUP BY category 
ORDER BY total_profit DESC;

-- segment performance 
SELECT segment ,
SUM(sales) as total_sales,
SUM(profit) as total_profit 
FROM sales_data
GROUP BY segment 
ORDER BY total_profit DESC;

-- MONTHLY TREND 
SELECT DATE_FORMAT(order_date , '%y-%m') as month,
SUM(sales) as total_sales
FROM sales_data
GROUP BY month
ORDER BY month;

-- Top 10 profit making Products 
SELECT product_name,
SUM(profit) as total_profit
FROM sales_data 
GROUP BY product_name
ORDER BY  total_profit DESC 
LIMIT 10;

-- bottom 10 loss making products 
SELECT product_name,
SUM(profit) as total_profit 
FROM sales_data 
GROUP BY product_name
ORDER BY total_profit ASC
LIMIT 10;

-- discount vs average profit 
SELECT discount ,
AVG(profit) as average_profit 
FROM sales_data
GROUP BY discount
ORDER BY discount ;