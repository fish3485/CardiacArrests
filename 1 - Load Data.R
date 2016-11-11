library("tidyverse")
library("devtools")
library("xml2")

devtools::session_info()

arrest.data <- read_xml("CPR summary report.xml", encoding = "UTF-8", as_html = FALSE)

class(arrest.data)
