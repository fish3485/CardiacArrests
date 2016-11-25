library("tidyverse")
library("XML")
library("tibble")

arrest.data <- xmlParse("CPR summary report.xml") %>%
  xmlToDataFrame(stringsAsFactors = FALSE) %>%
  as_tibble()

rate <- as.numeric(arrest.data$CompressionRate)
summary(rate)

ratio <- as.numeric(arrest.data$CompressionsRatio)
summary(rate)

paused <- as.numeric(arrest.data$LongestPause)
summary(paused)

shocks <- as.integer(arrest.data$NumberOfShocks)
summary(shocks)

#Change "Append = FALSE" to TRUE if you want to append data to the CSV
write_csv(arrest.data, "Cardiac Arrest Analysis.csv", na = "NA", append = FALSE, col_names = TRUE)
