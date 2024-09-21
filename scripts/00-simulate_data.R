#### Preamble ####
# Purpose: Simulates Car theft trend based on time dimension(hour)
# Author: JIEFENG LI
# Date: 21 September 2024 
# Contact: jiefeng.li@mail.utoronto.ca
# License: MIT



#### Workspace setup ####
library(tidyverse)


#### Simulate data ####
set.seed(856)


start_date <- as.Date("2014-01-01")
end_date <- as.Date("2024-06-30")


OCC_HOUR <- 100

data <-
  tibble(
    dates = as.Date(
      runif(
        n = OCC_HOUR,
        min = as.numeric(start_date),
        max = as.numeric(end_date)
      ),
      origin = "1970-01-01"
    ),
    number_of_Theft_from_Motor_Vehicle = rpois(n = OCC_HOUR, lambda = 15)
  )

write_csv(data, file = "data/raw_data/simulated.csv")


