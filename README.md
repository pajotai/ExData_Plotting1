## The .R scripts in this repository plot the four graphs for Week 1 assignment

### Instructions for preparing data for plotting

The file at https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip is saved locally and the txt file in the archive is placed in the RStudio working directory.
The code to set data4 is on the two commented lines below and it assumes the "household_power_consumption.txt" file was placed in the working directory. These lines are repeated, commented or not, in each of the plotX.R files.

data <- read.csv("household_power_consumption.txt", sep = ";")
data4 <- subset(data, data$Date == "1/2/2007" | data$Date == "2/2/2007")

### Generating the graphs

Once data4 data frame is available, the code in plot1.R, plot2.R, plot3.R, and plot4.R can be executed and the results will be the generation of plot1.png, plot2.png, plot3.png, and plot4.png in the working directory.
If the code for loading data4 above has been already executed, then the two lines in plot1.R doing the same should be commented before executing plot1.R. The data4 generation code is commented in the other R files.