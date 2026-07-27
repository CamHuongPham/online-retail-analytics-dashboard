CREATE TABLE monthly_sales AS
SELECT
    STR_TO_DATE(
        DATE_FORMAT(
            STR_TO_DATE(InvoiceDate, '%Y-%m-%dT%H:%i:%sZ'),
            '%Y-%m-01'
        ),
        '%Y-%m-%d'
    ) AS sales_month,

    DATE_FORMAT(
        STR_TO_DATE(InvoiceDate, '%Y-%m-%dT%H:%i:%sZ'),
        '%b %Y'
    ) AS month_label,

    COUNT(DISTINCT Invoice) AS orders,

    SUM(Quantity * Price) AS revenue

FROM online_retail

GROUP BY
    sales_month,
    month_label

ORDER BY
    sales_month;
