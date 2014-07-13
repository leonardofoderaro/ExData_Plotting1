  
# change the working dir to your own
setwd('/Users/iLeo/coursera/DataScience/RProgramming/01/ExData_Plotting1')

# data has been already properly subsetted, we can just load them
data <- read.csv('data.csv', sep=';')

# open the device
png("plot1.png", width=480, height=480)
hist(data$Global_active_power, main="Global Active Power", col="red", xlab="Global Active Power (kilowatts)")

#close the device
dev.off()


