source('PrepareData.R')

# Load data from Internet
data <- getData()

# The plot grid 2*2
par(mfrow = c(2,2))

# Top-Left
with(data, plot(DateTime, Global_active_power, type = 'l', xlab = "", ylab = "Global Active Power (kilowatts)",
                col = "black"))

# Top-Right
with(data, plot(DateTime, Voltage, type = "l", xlab = "datetime",
                ylab = "Voltage"))

# Bottom-Left
with(data, plot(DateTime, Sub_metering_1, type = 'l', xlab = "", ylab = "Energy sub metering",
))
with(data, lines(DateTime, Sub_metering_2, col="red"))
with(data, lines(DateTime, Sub_metering_3, col="blue"))
legend("topright",lty = 1, col=c("black","red","blue"),
       legend = c("Sub_metering_1","Sub_metering_2","Sub_metering_3"))

# Bottom-Right
with(data, plot(DateTime, Global_reactive_power, type= "l", 
                       xlab = "datetime", 
                       ylab = "Global_reactive_power"))


# Copy plot to PNG file
dev.copy(device = png, width = 480, height = 480, file = "Plot4.png")
dev.off()
