# Data

This folder contains the datasets used in this project.

## Raw Dataset

Download the **Online Retail II** dataset from the UCI Machine Learning Repository:

https://archive.ics.uci.edu/dataset/502/online+retail+ii

After downloading and extracting the archive, you will obtain a folder similar to:

```text
online+retail+ii/
└── online_retail_II.xlsx
```

Copy the extracted file:

```text
online_retail_II.xlsx
```

to the project's `data/` folder:

```text
data/
└── online_retail_II.xlsx
```

## Preprocessed Dataset

Run the preprocessing script:

```text
r/01_data_preprocessing.R
```

The script will:

- Merge the two yearly worksheets
- Remove records with missing Customer ID
- Remove transactions with non-positive quantities
- Randomly sample 100,000 transactions
- Save the processed dataset as:

```text
data/
└── online_retail_100k.csv
```

This processed dataset is used for SQL data transformation and Power BI dashboard development.
