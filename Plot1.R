url <- "https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip"
download.file(url,"./Exzip")
unzip(zipfile = "./Exzip")
file <- read.table("household_power_consumption.txt",sep=";", header = TRUE)
x <- file[which(file$Date %in% c("1/2/2007", "2/2/2007")),]
x$Global_active_power <- as.numeric(x$Global_active_power)
hist(x$Global_active_power, col = "red",main = "Global Active Power", xlab = "Global Active power(killowatts)")
dev.copy(png, file ="plot1.png") #copy my plot png file
png(filename="plot1.png", width=480,height=480)
dev.off()