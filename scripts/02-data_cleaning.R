#### Preamble ####
# Purpose: Cleans the raw plane data and remove the NA value
# Author: JIEFENG LI
# Date: 21 September 2024 
# Contact: jiefeng.li@mail.utoronto.ca
# License: MIT


#### Workspace setup ####
library(tidyverse)

#### Clean data ####
raw_data <- read_csv("data/raw_data/Car_theft_data.csv")
selected_data <- raw_data %>%
  select(
    REPORT_DATE, OCC_DATE, REPORT_YEAR, REPORT_MONTH, REPORT_DAY, REPORT_DOY, REPORT_DOW, REPORT_HOUR, 
    OCC_YEAR, OCC_MONTH, OCC_DAY, OCC_DOY, OCC_DOW, OCC_HOUR, 
    DIVISION, LOCATION_TYPE, PREMISES_TYPE, HOOD_158
  )

clean_data <- na.omit(selected_data)




#### Save data ####
write_csv(clean_data, "data/analysis_data/analysis_data.csv")
