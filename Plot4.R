par(mfrow=c(2,2))
plot(x$Time,x$Global_active_power,type="l",xlab="",ylab="Global Active Power")
plot(x$Time,x$Voltage,type="l",xlab="datetime",ylab="Voltage")
plot(x$Time,x$Sub_metering_1,type="l")
points(x$Time,x$Sub_metering_2,col="red",type="l")
points(x$Time,x$Sub_metering_3,col="blue",type="l")
legend("topright",c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),fill=c("black","red","blue"),horiz = FALSE)

plot(x$Time,x$Global_reactive_power,type="l",xlab="datetime",ylab="Global_reactive_power")
dev.copy(png, file ="plot4.png") #copy my plot png file
png(filename="plot4.png", width=480,height=480)
dev.off()