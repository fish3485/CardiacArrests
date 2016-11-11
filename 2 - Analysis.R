library(ggplot2)
library(tidyverse)

# Objects must be loaded from first script for analysis of compression ratio and rate

qplot(rate, binwidth = 5)
qplot(ratio, binwidth = 5)
qplot(paused, binwidth = 30)
qplot(shocks, binwidth = 1)

summary(rate)
summary(ratio)
summary(paused)
summary(shocks)
