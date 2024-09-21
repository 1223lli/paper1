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

clean_data <- na.omit(raw_data)
glimpse(clean_data)




#### Save data ####
write_csv(clean_data, "data/analysis_data/analysis_data.csv")
