x <- HPC_1$DateTime
y1 <- HPC_1$Sub_metering_1
y2 <- HPC_1$Sub_metering_2
y3 <- HPC_1$Sub_metering_3

# Plot 1
plot(x, y1, type = "l", frame = FALSE, col = "black", 
     ylab = "Energy sub metering", xlab = " ")

# Add line 2
lines(x, y2, type = "l", frame = FALSE, col = "red")

# Add line 3
lines(x, y3, type = "l", col = "blue")

# Add legend
legend("topright", legend=c("Sub_metering_1", 
      "Sub_metering_2", "Sub_metering_3"),
      col=c("black", "red", "blue"),
      lty = 1, cex=0.8)

# Add box around plot
box(which = "plot", lty = "solid")

## Copy my plot to a PNG file
dev.copy(png, file = "plot3.png", width=480, height=480)

## Close the png file device
dev.off()
            