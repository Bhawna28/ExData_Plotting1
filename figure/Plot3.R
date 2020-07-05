data<-read.table("C:/Users/KALYANI/Desktop/R-WORK/household_power_consumption.txt", sep = ";", na.strings = "?",skip=66636,nrows = 2880,header=TRUE,col.names = c( "Date","Time","Global_active Power","Global_reactive Power","Voltage","Global Intensity","Sub_Metering_1","Sub_Metering_2","Sub_Metering_3"),stringsAsFactors = FALSE)
summary(data)
data$DateTime <- strptime(paste(data$Date, data$Time), format="%d/%m/%Y %H:%M:%S")

library(graphics)
library(lubridate)
x<-data$Sub_Metering_1
y<-data$Sub_Metering_2
z<-data$Sub_Metering_3

##plotting of Graph
plot(data$DateTime,x,xlab="datetime",ylab = "Energy Sub_Metering",type = 'n')
lines(data$DateTime, x)
lines(data$DateTime, y,col='blue')
lines(data$DateTime,z,col='red')
legend("topright",pch='-',col=c("black","blue","Red"),legend=c("Sub_Metering1","Sub_Metering2","Sub_Metering3"))

##png for plot 3
png(file="Plot3.png")
plot(data$DateTime,x,xlab="datetime",ylab = "Energy Sub_Metering",type = 'n')
lines(data$DateTime, x)
lines(data$DateTime, y,col='blue')
lines(data$DateTime,z,col='red')
legend("topright",pch='-',col=c("black","blue","Red"),legend=c("Sub_Metering1","Sub_Metering2","Sub_Metering3"))
dev.off()