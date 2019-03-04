HPC_1$DateTime <- as.POSIXct(paste(HPC_1$Date, HPC_1$Time), format="%Y-%m-%d %H:%M:%S")

plot(x = HPC_1$DateTime, y = HPC_1$Global_active_power, 
     type = "l", col = "black", xlab = " ", ylab = "Global Active Power (kilowatts)")

## Copy my plot to a PNG file
dev.copy(png, file = "plot2.png", width=480, height=480)

## Close the png file device
dev.off()
