# change the working dir to your own
setwd('/Users/iLeo/moocs/Coursera-Data-Science/Exploratory-Data-Analysis/ExData_Plotting1')

# data has been already properly subsetted, we can just load them
data <- read.csv('data.csv', sep=';')

# open the device
png("plot2.png", width=480, height=480)

# plot
plot(data$Global_active_power, type="l", xaxt="n", xlab="", ylab="Global Active Power (kilowatts)")

# add axis annotations
axis(1, at=c(0, table(data$Date)[[2]], nrow(data)), labels=c('Thu', 'Fri', 'Sat'))

# close the device
dev.off()


