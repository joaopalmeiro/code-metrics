library(gt)
library(styler)
library(jsonlite)
library(tibble)
library(purrr)
library(dplyr)
library(tidyr)

path_json <- "../raw_metrics.json"

raw_json <- jsonlite::fromJSON(path_json)
str(raw_json, max.level = 1)

df <- raw_json %>%
  purrr::transpose() %>%
  as_tibble() %>%
  unnest(tidyr::everything())
head(df)

total_df <- df %>% summarise_all(sum)
total_df
