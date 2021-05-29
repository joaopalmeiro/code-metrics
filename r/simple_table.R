source("./data.R")

tab <- long_total_df %>%
  gt() %>%
  tab_header(
    title = "Title"
  ) %>%
  # More info: https://gt.rstudio.com/reference/opt_table_font.html
  opt_table_font(
    # font = c(
    #   google_font(name = "Fira Sans"), default_font_stack
    # )
    font = google_font(name = "Fira Sans")
  )
tab

# tab %>%
#   gtsave(
#     "raw_metrics.html",
#     path = "../images/"
#   )

tab %>%
  gtsave(
    "raw_metrics.png",
    path = "../images/",
    # More info: https://wch.github.io/webshot/reference/webshot.html
    expand = 10, # Margin
    zoom = 5 # Scale
  )
