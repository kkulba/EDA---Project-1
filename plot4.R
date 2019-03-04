#Set up panel - 2x2
par(mfrow = c(2, 2))

# Plot 1 - plot2.png (remove "kilowatts" from Y-axis label)

plot(x = HPC_1$DateTime, y = HPC_1$Global_active_power, 
     type = "l", col = "black", xlab = " ", ylab = "Global Active Power")

# Plot 2 - x = day, y = voltage (x-axis: datetime, y-axis: Voltage)

Voltage_Div <- (HPC_1$Voltage)/1000

plot(x = HPC_1$DateTime, y = Voltage_Div, 
     type = "l", col = "black", xlab = "datetime", ylab = "Voltage")

# Plot 3 - plot3.png (remove box from around the legend)

# Plot 3-1
plot(x, y1, type = "l", frame = FALSE, col = "black", 
     ylab = "Energy sub metering", xlab = " ")

# Add line (3-2)
lines(x, y2, type = "l", frame = FALSE, col = "red")

# Add line (3-3)
lines(x, y3, type = "l", col = "blue")

# Add legend (3-4)
legend("topright", legend=c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"),
       col=c("black", "red", "blue"),
       lty = 1, cex=0.8, bty='n')

# Add box around plot (3-5)
box(which = "plot", lty = "solid")

# Plot 4 - x = day, y = global reactive power (x-axis: datetime, y-axis: Global_reactive_power)

plot(x = HPC_1$DateTime, y = HPC_1$Global_reactive_power, 
     type = "l", col = "black", xlab = "datetime", ylab = "Global_reactive_power")

## Copy my plot to a PNG file
dev.copy(png, file = "plot4.png")

## Close the png file device
dev.off()
