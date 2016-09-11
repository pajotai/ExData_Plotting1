# This script plots graph #1 for Week 1 assignment.
# This being the first plot, we are setting data4 here and the next two lines of code are commented for the other 3 plots.
# The code to set data4 is on the two  lines below and it assumes the "household_power_consumption.txt" file was placed in the working directory.

data <- read.csv("household_power_consumption.txt", sep = ";")
data4 <- subset(data, data$Date == "1/2/2007" | data$Date == "2/2/2007")

# Open the png device
png("plot1.png", width = 480, height = 480)

# Plot the graph to the open device
hist(as.numeric(as.character(data4$Global_active_power)), col = "red", main = "Global Active Power", xlab = "Global Active Power (kilowatts)")

# Shut down the png device
dev.off()