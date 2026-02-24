--> Cek data selama tahun 2018
SELECT *
FROM `tokopaedi.orders`
WHERE EXTRACT(YEAR FROM Order_Date) = 2018;

--> Total sales & total profit per region
SELECT 
  Region,
  SUM(Sales) AS total_sales,
  SUM(Profit) AS total_profit
FROM `tokopaedi.orders`
GROUP BY Region
ORDER BY total_sales DESC;

--> Profit margin per category
SELECT
  Category,
  SUM(Profit)/SUM(Sales) AS profit_margin
FROM `tokopaedi.orders`
GROUP BY Category
ORDER BY profit_margin DESC;

--> Top 10 Customer
SELECT
  Customer_Name,
  SUM(Sales) AS total_sales
FROM `tokopaedi.orders`
GROUP BY Customer_Name
ORDER BY total_sales DESC
LIMIT 10;