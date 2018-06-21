library(tidyverse)

# Big file...
ozone <- read_csv("./data/hourly_44201_2014.csv",
                  col_types = "ccccinnccccccncnncccccc")

saveRDS(ozone, "ozone.rds")
ozone <- readRDS("ozone.rds")  

# Quick make names...

names(ozone) <- make.names(names(ozone))

# How many rows?
nrow(ozone)

# How many columns?
ncol(ozone)

# str() will give you a good idea of what the data looks like...
str(ozone)

# Check the top and bottom...

head(ozone[, c(6:7, 10)])
tail(ozone[, c(6:7, 10)])

# Check counts of certain measurements to see if anything is odd...
table(ozone$Time.Local)
table(ozone$Date.Local)

# - MAKE VIS OF THIS?
select(ozone, State.Name) %>% unique %>% nrow

unique(ozone$State.Name)

summary(ozone$Sample.Measurement)
quantile(ozone$Sample.Measurement, seq(0, 1, 0.1))


# Build ranking

ranking <- group_by(ozone, State.Name, County.Name) %>%
  summarize(ozone = mean(Sample.Measurement)) %>%
  as.data.frame %>%
  arrange(desc(ozone))

head(ranking, 10)
tail(ranking, 10)