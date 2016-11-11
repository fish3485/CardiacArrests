library("tidyverse")
library("devtools")
library("XML")

devtools::session_info()

arrest.data <- xmlParse("CPR summary report.xml")

rootnode <- xmlRoot(arrest.data)

arrest <- xmlToDataFrame("CPR summary report.xml") %>%
  as_tibble()

View(arrest)
