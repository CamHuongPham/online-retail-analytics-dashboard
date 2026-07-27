CREATE TABLE country_metrics AS
SELECT
    Country,
    COUNT(DISTINCT Invoice) AS orders,
    COUNT(DISTINCT `Customer ID`) AS customers,
    SUM(Quantity * Price) AS revenue
FROM online_retail
GROUP BY Country;
