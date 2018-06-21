library(tidyverse)
library(lubridate)

# Timezones: http://en.wikipedia.org/wiki/List_of_tz_database_time_zones

test <- c("3 January 2018, 21:08", "3 January 2018, 21:15", "3 January 2018, 21:17",
          "3 January 2018, 22:43", "3 January 2018, 22:54", "3 January 2018, 23:03")

date <- dmy_hm(test)

# Rounding Date Times ----------------------------------------------------------
round_date(date, "hour")
round_date(date, "15 mins")