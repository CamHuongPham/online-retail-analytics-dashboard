# SQL

This folder contains SQL scripts used to transform the cleaned retail dataset into analytical tables for Power BI.

## Prerequisites

Before running the SQL scripts:

1. Run the R preprocessing script to generate:

```text
data/online_retail_100k.csv
```

2. Import `online_retail_100k.csv` into MySQL.

3. Create (or import into) a table named:

```text
online_retail
```

> **Note:** All SQL scripts in this folder assume the imported table is named `online_retail`.

---

## Execution Order

Run the SQL scripts in the following order:

1. `01_create_monthly_sales.sql`
2. `02_create_country_metrics.sql`
3. `03_create_product_metrics.sql`
4. `04_create_customer_metrics.sql`

---

## Run Individual Scripts

Each SQL file can also be executed independently after the `online_retail` table has been created.

| Script | Output Table | Purpose |
|---------|--------------|---------|
| `01_create_monthly_sales.sql` | `monthly_sales` | Monthly revenue and order summary |
| `02_create_country_metrics.sql` | `country_metrics` | Country-level sales metrics |
| `03_create_product_metrics.sql` | `product_metrics` | Product-level sales metrics |
| `04_create_customer_metrics.sql` | `customer_metrics` | Customer purchase behavior and revenue metrics |

---

## Output Tables

After running all scripts, the database will contain:

```text
online_retail
monthly_sales
country_metrics
product_metrics
customer_metrics
```

These tables are used as data sources for the Power BI dashboard.
