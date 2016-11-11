library("tidyverse")
library("devtools")
library("XML")

devtools::session_info()

arrest.data <- xmlParse("CPR summary report.xml") %>%
  xmlToDataFrame()

write_csv(arrest.data, "../Cardiac Arrest Analysis", na = "NA", append = TRUE, col_names = TRUE)
