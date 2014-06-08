# change the working dir to your own
setwd('/Users/iLeo/coursera/DataScience/RProgramming/01/ExData_Plotting1')

# data has been already properly subsetted, we can just load them
data <- read.csv('data.csv', sep=';')

# open the device
png("plot2.png", width=480, height=480)
plot(data$Global_active_power, type="l", xaxt="n", xlab="", ylab="Global Active Power (kilowatts)")
axis(1, at=c(0, table(data$Date)[[2]], nrow(data)), labels=c('Thu', 'Fri', 'Sat'))

# close the device
dev.off()


