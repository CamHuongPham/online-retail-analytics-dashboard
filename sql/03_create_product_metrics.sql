CREATE TABLE product_metrics AS
SELECT
    StockCode,
    Description,
    SUM(Quantity) AS total_quantity,
    SUM(Quantity * Price) AS revenue
FROM online_retail
GROUP BY StockCode, Description;
