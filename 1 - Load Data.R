library("readr")
library("XML")

arrest.data <- xmlParse("CPR summary report.xml") %>%
  xmlToDataFrame(colClasses = c(character, 
                                date, 
                                character, 
                                numeric, 
                                numeric, 
                                numeric, 
                                numeric, 
                                numeric, 
                                numeric, 
                                integer,
                                character)) %>%
  as_tibble()

write_csv(arrest.data, "Cardiac Arrest Analysis.csv", na = "NA", append = TRUE, col_names = TRUE)
