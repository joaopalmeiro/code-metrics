# Imports
library(gt)
library(styler)
library(jsonlite)
library(tibble)
library(purrr)
library(dplyr)
library(tidyr)

# Constants
path_json <- "../raw_metrics.json"
metric_col <- "Code Metric"
number_col <- "Count"

# Arial and sans-serif
default_font_stack <- tail(default_fonts(), 2)
default_font_stack

# Helper functions
recode_fun <- function(metric) {
  recode(metric,
    "loc" = "LOC",
    "lloc" = "LLOC",
    "sloc" = "SLOC",
    "comments" = "Comments",
    "multi" = "Multi",
    "blank" = "Blank",
    "single_comments" = "Single comments"
  )
}

# Data processing
raw_json <- jsonlite::fromJSON(path_json)
str(raw_json, max.level = 1)

df <- raw_json %>%
  purrr::transpose() %>%
  as_tibble() %>%
  unnest(tidyr::everything())
head(df)

total_df <- df %>% summarise_all(sum)
total_df

# SLOC + Multi + Single comments + Blank = LOC
long_total_df <- total_df %>%
  pivot_longer(
    tidyr::everything(),
    names_to = metric_col,
    values_to = number_col
  ) %>%
  mutate_at(vars(metric_col), recode_fun)
long_total_df
