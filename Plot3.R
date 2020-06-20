source('PrepareData.R')

# Load data from Internet
data <- getData()

# Plot histogram on screen device
with(data, plot(DateTime, Sub_metering_1, type = 'l', xlab = "", ylab = "Energy sub metering",
                ))
# And lines
with(data, lines(DateTime, Sub_metering_2, col="red"))
with(data, lines(DateTime, Sub_metering_3, col="blue"))

# And the legend
legend("topright",lty = 1, col=c("black","red","blue"),
       legend = c("Sub_metering_1","Sub_metering_2","Sub_metering_3"))

# Copy plot to PNG file
dev.copy(device = png, width = 480, height = 480, file = "Plot3.png")
dev.off()
