#### Preamble ####
# Purpose: Downloads and saves the data from opendatatoronto
# Author:JIEFENG LI
# Date: 21 September 2024
# Contact: jiefeng.li@mail.utoronto.ca
# License: MIT



#### Workspace setup ####
library(opendatatoronto)
library(tidyverse)
library(dplyr)

#### Download data ####



# get package
package <- show_package("1fc65d1e-7dae-4766-98dd-3b172e40a089")
package

# get all resources for this package
resources <- list_package_resources("1fc65d1e-7dae-4766-98dd-3b172e40a089")

# identify datastore resources; by default, Toronto Open Data sets datastore resource format to CSV for non-geospatial and GeoJSON for geospatial resources
datastore_resources <- filter(resources, tolower(format) %in% c('csv', 'geojson'))

# load the first datastore resource as a sample
Car_theft_data <- filter(datastore_resources, row_number()==1) %>% get_resource()
Car_theft_data


#### Save data ####
# change the_raw_data to whatever name you assigned when you downloaded it.
write_csv(Car_theft_data, "data/raw_data/Car_theft_data.csv") 

         
