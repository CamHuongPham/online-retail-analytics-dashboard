# Data Dictionary

This document describes the variables used throughout the Online Retail Analytics project.

## Original Dataset

| Variable | Type | Description |
|----------|------|-------------|
| Invoice | String | Unique invoice number for each transaction. |
| StockCode | String | Unique product identifier. |
| Description | String | Product description. |
| Quantity | Integer | Number of units purchased in a transaction. |
| InvoiceDate | Datetime | Date and time of the transaction (UTC). |
| Price | Decimal | Unit price of the product. |
| Customer ID | Integer | Unique customer identifier. |
| Country | String | Country where the customer is located. |

---

## Derived Variables

| Variable | Type | Description |
|----------|------|-------------|
| Revenue | Decimal | Sales revenue calculated as `Quantity × Price`. |
| Orders | Integer | Number of distinct invoices. |
| Frequency | Integer | Number of distinct purchase invoices per customer. |
| Total Quantity | Integer | Total quantity sold per product. |
| Customers | Integer | Number of distinct customers. |
| Sales Month | Date | First day of each month used for chronological sorting. |
| Month Label | String | Display label in the format `MMM YYYY` (e.g., Jan 2010). |

---

## Analytical Tables

### monthly_sales

| Variable | Description |
|----------|-------------|
| sales_month | Month used for chronological sorting. |
| month_label | Display month label. |
| orders | Total orders aggregated by month. |
| revenue | Total revenue aggregated by month. |

---

### country_metrics

| Variable | Description |
|----------|-------------|
| Country | Customer country. |
| Orders | Total orders aggregated by country. |
| Customers | Total unique customers aggregated by country. |
| Revenue | Total revenue aggregated by country. |

---

### product_metrics

| Variable | Description |
|----------|-------------|
| StockCode | Product identifier. |
| Description | Product description. |
| Total Quantity | Total quantity sold aggregated by product. |
| Revenue | Total revenue aggregated by product. |

---

### customer_metrics

| Variable | Description |
|----------|-------------|
| Customer ID | Customer identifier. |
| Frequency | Total purchase frequency aggregated by customer. |
| Revenue | Total revenue aggregated by customer. |
