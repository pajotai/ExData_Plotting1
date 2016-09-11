# This script plots graph #2 for Week 1 assignment. It assumes the data4 data frame is loaded with correct content, filtered for the two days we need.
# The code to set data4 is on the two commented lines below and it assumes the "household_power_consumption.txt" file was placed in the working directory

# data <- read.csv("household_power_consumption.txt", sep = ";")
# data4 <- subset(data, data$Date == "1/2/2007" | data$Date == "2/2/2007")

# Add a new column to data4 data frame, called "DateTime" and formed by combining the "Date" and "Time" columns
data4$DateTime <- with(data4, as.POSIXct(paste(Date, Time), format="%d/%m/%Y %H:%M:%S"))

# Open the png device
png("plot2.png", width = 480, height = 480)

# Plot the graph to the open device
with(data4, plot(DateTime, as.numeric(as.character(Global_active_power)), type = "l", xlab = "", ylab = "Global Active Power (kilowatts)"))

# Shut down the png device
dev.off()