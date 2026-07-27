library(readxl)
library(dplyr)
library(readr)
library(here)

retail <- bind_rows(
  read_excel(
    here("data", "online_retail_II.xlsx"),
    sheet = "Year 2009-2010"
  ),
  read_excel(
    here("data", "online_retail_II.xlsx"),
    sheet = "Year 2010-2011"
  )
)

data_clean <- retail %>%
  filter(
    !is.na(`Customer ID`),
    Quantity > 0
  )

set.seed(123)

retail_sample_100k <- data_clean %>%
  slice_sample(n = 100000)

write_csv(
  retail_sample_100k,
  here("data", "online_retail_100k.csv")
)
