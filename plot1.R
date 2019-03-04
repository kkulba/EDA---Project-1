library(tidyverse)

HPC <- read_csv2("household_power_consumption.txt")

library(lubridate)
HPC <- HPC %>%
  mutate(Date = lubridate::dmy(Date))

HPC <- HPC %>% 
  mutate(Global_active_power = as.numeric(Global_active_power)) %>% 
  mutate(Global_reactive_power = as.numeric(Global_reactive_power)) %>%
  mutate(Sub_metering_1 = as.numeric(Sub_metering_1)) %>%
  mutate(Sub_metering_2 = as.numeric(Sub_metering_2)) %>%
  mutate(Sub_metering_3 = as.numeric(Sub_metering_3)) 
  
HPC_1 <- HPC %>% 
  filter(Date == "2007-02-01"|Date == "2007-02-02")

hist(x=HPC_1$Global_active_power, col = "red", main = "Global Active Power", 
xlab = "Global Active Power (kilowatts)", ylab = "Frequency")

## Copy my plot to a PNG file
dev.copy(png, file = "plot1.png", width=480, height=480)

## Close the png file device
dev.off()
