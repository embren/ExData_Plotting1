setwd("C:\\Users\\A580489\\Documents\\R\\Coursera\\Exploratory Data Analysis\\exdata-data-household_power_consumption")
data <- read.table("household_power_consumption.txt",sep=";", header=T,stringsAsFactors=F)
data$Date <- as.Date(data$Date, format = "%d/%m/%Y") 
data2 <- data[c(which(data$Date=="2007-02-01"),which(data$Date=="2007-02-02")),]
data2$DateTime <- strptime(paste(data2$Date, data2$Time, sep=" "), format = "%Y-%m-%d %H:%M:%S")
png("Plot2.png",width=480,height=480)
plot(data2$DateTime, data2$Global_active_power, type="l",xlab="",ylab="Global Active Power (kilowatts)" )
dev.off()
