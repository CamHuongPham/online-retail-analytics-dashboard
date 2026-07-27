CREATE TABLE customer_metrics AS
SELECT
    `Customer ID`,
    COUNT(DISTINCT Invoice) AS frequency,
    SUM(Quantity * Price) AS revenue
FROM online_retail
GROUP BY `Customer ID`;
