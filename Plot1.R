source('PrepareData.R')

# Load data from Internet
data <- getData()

# Plot histogram on screen device
with(data, hist(Global_active_power, xlab = "Global Active Power (kilowatts)",
                       col = "red", main = "Global Active Power"))

# Copy plot to PNG file
dev.copy(device = png, width = 480, height = 480, file = "Plot1.png")
dev.off()