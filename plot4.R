# This script plots graph #4 for Week 1 assignment. It assumes the data4 data frame is loaded with correct content, filtered for the two days we need.
# The code to set data4 is on the two commented lines below and it assumes the "household_power_consumption.txt" file was placed in the working directory

# data <- read.csv("household_power_consumption.txt", sep = ";")
# data4 <- subset(data, data$Date == "1/2/2007" | data$Date == "2/2/2007")

# Load libraries "lattice" and "grid" needed to build plot 4 
library(lattice)
library(grid)

# Open the png device
png("plot4.png", width = 480, height = 480)

# Prepares a 2x2 grid for the 4 graphs in plot 4
par(mfrow = c(2, 2))

# Plot top left graph
with(data4, plot(DateTime, as.numeric(as.character(Global_active_power)), type = "l", xlab = "", ylab = "Global Active Power"))

# Plot top right graph
with(data4, plot(DateTime, as.numeric(as.character(Voltage)), type = "l", xlab = "datetime", ylab = "Voltage"))

# Plot bottom left graph
with(data4, plot(DateTime, as.numeric(as.character(Sub_metering_1)), type = "l", xlab = "", ylab = "Energy sub metering"))
with(data4, lines(DateTime, as.numeric(as.character(Sub_metering_2)), col = "red"))
with(data4, lines(DateTime, as.numeric(as.character(Sub_metering_3)), col = "blue"))
legend("topright", c("Sub_metering_1","Sub_metering_2", "Sub_metering_3"), col = c('black', 'red', 'blue'), lwd = 1, bty = "n")

# Plot bottom right graph
with(data4, plot(DateTime, as.numeric(as.character(Global_reactive_power)), type = "h", xlab = "datetime", ylab = "Global_reactive_power"))

# Shut down the png device
dev.off()