library("tidyverse")
library("devtools")
library("XML")

devtools::session_info()

arrest <- xmlParse("CPR summary report.xml") %>%
  xmlRoot() %>%
  xmlToDataFrame() %>%
  as_tibble()

as.numeric(arrest$LongestPause)
as.numeric(arrest$CompressionDepth)
as.numeric(arrest$CompressionDepth)
as.numeric(arrest$NumberOfShocks)

summary(arrest$LongestPause)

View(arrest)
