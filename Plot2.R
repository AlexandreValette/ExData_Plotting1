source('PrepareData.R')

# Load data from Internet
data <- getData()

# Plot histogram on screen device
with(data, plot(DateTime, Global_active_power, type = 'l', xlab = "", ylab = "Global Active Power (kilowatts)",
                col = "black"))

# Copy plot to PNG file
dev.copy(device = png, width = 480, height = 480, file = "Plot2.png")
dev.off()