
# change the working dir to your own
setwd('/Users/iLeo/moocs/Coursera-Data-Science/Exploratory-Data-Analysis/ExData_Plotting1')

# data has been already properly subsetted, we can just load them
data <- read.csv('data.csv', sep=';')

# open the device
png("plot3.png", width=480, height=480)

plot(data$Sub_metering_1, type="l", xaxt="n", xlab="", ylab="Energy sub metering")
lines(data$Sub_metering_2, type="l", col="red")
lines(data$Sub_metering_3, type="l", col="blue")

axis(1, at=c(0, table(data$Date)[[2]], nrow(data)), labels=c('Thu', 'Fri', 'Sat'))

legend(x="topright", # places a legend at the appropriate place 
       c("Sub_metering_1","Sub_metering_2", "Sub_metering_3"), # puts text in the legend 
       lty=c(1,1,1), # gives the legend appropriate symbols (lines)
       lwd=c(2.5,2.5,2.5),col=c("black", "red","blue")) # gives the legend lines the correct color and width

# close the device
dev.off()

