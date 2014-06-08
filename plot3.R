
# change the working dir to your own
setwd('/Users/iLeo/coursera/DataScience/RProgramming/01/ExData_Plotting1')

# data has been already properly subsetted, we can just load them
data <- read.csv('data.csv', sep=';')

# open the device
png("plot4.png", width=480, height=480)
par(mfrow=c(2,2))
plot(data$Global_active_power, type="l", xaxt="n", ylab="Globa Active Power", xlab="")
axis(1, at=c(0, table(data$Date)[[2]], nrow(data)), labels=c('Thu', 'Fri', 'Sat'))

plot(data$Voltage, type="l", xaxt="n", ylab="Voltage", xlab="datetime")
axis(1, at=c(0, table(data$Date)[[2]], nrow(data)), labels=c('Thu', 'Fri', 'Sat'))

plot(data$Sub_metering_1, type="l", xaxt="n", xlab="", ylab="Energy sub metering")
lines(data$Sub_metering_2, type="l", col="red")
lines(data$Sub_metering_3, type="l", col="blue")
axis(1, at=c(0, table(data$Date)[[2]], nrow(data)), labels=c('Thu', 'Fri', 'Sat'))
legend(x="topright", # places a legend at the appropriate place
       box.lwd=0,
       c("Sub_metering_1","Sub_metering_2", "Sub_metering_3"), # puts text in the legend
       lty=c(1,1,1), # gives the legend appropriate symbols (lines)
       lwd=c(2.5,2.5,2.5),col=c("black", "red","blue")) # gives the legend lines the correct color and width

plot(data$Global_reactive_power, type="l", xaxt="n", xlab="datetime", ylab="Global Reactive Power")
axis(1, at=c(0, table(data$Date)[[2]], nrow(data)), labels=c('Thu', 'Fri', 'Sat'))

